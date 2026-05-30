.class final Lorg/conscrypt/BufferUtils;
.super Ljava/lang/Object;
.source "BufferUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkNotNull([Ljava/nio/ByteBuffer;)V
    .locals 3
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 31
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 32
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    if-nez v0, :cond_0

    .line 33
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Null buffer in array"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_1
    return-void
.end method

.method static consume([Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p0, "sourceBuffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "toConsume"    # I

    .prologue
    .line 55
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, p0, v2

    .line 56
    .local v1, "sourceBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {v4, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 57
    .local v0, "amount":I
    if-lez v0, :cond_1

    .line 58
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 59
    sub-int/2addr p1, v0

    .line 60
    if-nez p1, :cond_1

    .line 65
    .end local v0    # "amount":I
    .end local v1    # "sourceBuffer":Ljava/nio/ByteBuffer;
    :cond_0
    if-lez p1, :cond_2

    .line 66
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "toConsume > data size"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    .restart local v0    # "amount":I
    .restart local v1    # "sourceBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v0    # "amount":I
    .end local v1    # "sourceBuffer":Ljava/nio/ByteBuffer;
    :cond_2
    return-void
.end method

.method static copyNoConsume([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 8
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "destination"    # Ljava/nio/ByteBuffer;
    .param p2, "maxAmount"    # I

    .prologue
    const/4 v6, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, p2, :cond_1

    const/4 v5, 0x1

    :goto_0
    const-string v7, "Destination buffer too small"

    invoke-static {v5, v7}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 104
    move v1, p2

    .line 105
    .local v1, "needed":I
    array-length v5, p0

    :goto_1
    if-ge v6, v5, :cond_0

    aget-object v0, p0, v6

    .line 106
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 107
    .local v4, "remaining":I
    if-lez v4, :cond_3

    .line 110
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 111
    .local v3, "oldPosition":I
    if-gt v4, v1, :cond_2

    .line 112
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 113
    sub-int/2addr v1, v4

    .line 123
    :goto_2
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 124
    if-nez v1, :cond_3

    .line 129
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v3    # "oldPosition":I
    .end local v4    # "remaining":I
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 130
    return-object p1

    .end local v1    # "needed":I
    :cond_1
    move v5, v6

    .line 103
    goto :goto_0

    .line 115
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "needed":I
    .restart local v3    # "oldPosition":I
    .restart local v4    # "remaining":I
    :cond_2
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    .line 116
    .local v2, "oldLimit":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v0, v7}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 117
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 118
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 119
    const/4 v1, 0x0

    goto :goto_2

    .line 105
    .end local v2    # "oldLimit":I
    .end local v3    # "oldPosition":I
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method static getBufferLargerThan([Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;
    .locals 7
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "minSize"    # I

    .prologue
    const/4 v5, 0x0

    .line 75
    array-length v3, p0

    .line 76
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_4

    .line 77
    aget-object v0, p0, v1

    .line 78
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 79
    .local v4, "remaining":I
    if-lez v4, :cond_3

    .line 80
    if-lt v4, p1, :cond_1

    .line 91
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "remaining":I
    :cond_0
    :goto_1
    return-object v0

    .line 83
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v4    # "remaining":I
    :cond_1
    add-int/lit8 v2, v1, 0x1

    .local v2, "j":I
    :goto_2
    if-ge v2, v3, :cond_0

    .line 84
    aget-object v6, p0, v2

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-lez v6, :cond_2

    move-object v0, v5

    .line 85
    goto :goto_1

    .line 83
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 76
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v4    # "remaining":I
    :cond_4
    move-object v0, v5

    .line 91
    goto :goto_1
.end method

.method static remaining([Ljava/nio/ByteBuffer;)J
    .locals 8
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;

    .prologue
    .line 42
    const-wide/16 v2, 0x0

    .line 43
    .local v2, "size":J
    array-length v4, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, p0, v1

    .line 44
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    int-to-long v6, v5

    add-long/2addr v2, v6

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    :cond_0
    return-wide v2
.end method
