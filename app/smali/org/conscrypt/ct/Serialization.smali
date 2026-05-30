.class public Lorg/conscrypt/ct/Serialization;
.super Ljava/lang/Object;
.source "Serialization.java"


# static fields
.field private static final DER_LENGTH_LONG_FORM_FLAG:I = 0x80

.field private static final DER_TAG_MASK:I = 0x3f

.field private static final DER_TAG_OCTET_STRING:I = 0x4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readByte(Ljava/io/InputStream;)B
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 167
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 168
    .local v0, "b":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 169
    new-instance v2, Lorg/conscrypt/ct/SerializationException;

    const-string v3, "Premature end of input, could not read byte."

    invoke-direct {v2, v3}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    .end local v0    # "b":I
    :catch_0
    move-exception v1

    .line 173
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v2, v1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 171
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "b":I
    :cond_0
    int-to-byte v2, v0

    return v2
.end method

.method public static readDEROctetString(Ljava/io/InputStream;)[B
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 41
    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v3

    and-int/lit8 v1, v3, 0x3f

    .line 42
    .local v1, "tag":I
    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    .line 43
    new-instance v3, Lorg/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong DER tag, expected OCTET STRING, got "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 46
    :cond_0
    const/4 v3, 0x1

    invoke-static {p0, v3}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v2

    .line 47
    .local v2, "width":I
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    .line 48
    and-int/lit16 v3, v2, -0x81

    invoke-static {p0, v3}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    .line 53
    .local v0, "length":I
    :goto_0
    invoke-static {p0, v0}, Lorg/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    return-object v3

    .line 50
    .end local v0    # "length":I
    :cond_1
    move v0, v2

    .restart local v0    # "length":I
    goto :goto_0
.end method

.method public static readDEROctetString([B)[B
    .locals 1
    .param p0, "input"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0}, Lorg/conscrypt/ct/Serialization;->readDEROctetString(Ljava/io/InputStream;)[B

    move-result-object v0

    return-object v0
.end method

.method public static readFixedBytes(Ljava/io/InputStream;I)[B
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 105
    if-gez p1, :cond_0

    .line 106
    :try_start_0
    new-instance v3, Lorg/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Negative length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :catch_0
    move-exception v2

    .line 117
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v3, v2}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 109
    .end local v2    # "e":Ljava/io/IOException;
    :cond_0
    :try_start_1
    new-array v1, p1, [B

    .line 110
    .local v1, "data":[B
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 111
    .local v0, "count":I
    if-ge v0, p1, :cond_1

    .line 112
    new-instance v3, Lorg/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Premature end of input, expected "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes, only read "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :cond_1
    return-object v1
.end method

.method public static readList(Ljava/io/InputStream;II)[[B
    .locals 4
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 72
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v0

    .line 73
    .local v0, "data":[B
    new-instance p0, Ljava/io/ByteArrayInputStream;

    .end local p0    # "input":Ljava/io/InputStream;
    invoke-direct {p0, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 75
    .restart local p0    # "input":Ljava/io/InputStream;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v3

    if-lez v3, :cond_0

    .line 76
    invoke-static {p0, p2}, Lorg/conscrypt/ct/Serialization;->readVariableBytes(Ljava/io/InputStream;I)[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v1

    .line 79
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v3, v1}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 81
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [[B

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    return-object v3
.end method

.method public static readList([BII)[[B
    .locals 1
    .param p0, "input"    # [B
    .param p1, "listWidth"    # I
    .param p2, "elemWidth"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v0, p1, p2}, Lorg/conscrypt/ct/Serialization;->readList(Ljava/io/InputStream;II)[[B

    move-result-object v0

    return-object v0
.end method

.method public static readLong(Ljava/io/InputStream;I)J
    .locals 9
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 149
    if-gt p1, v8, :cond_0

    if-gez p1, :cond_1

    .line 150
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 153
    :cond_1
    const-wide/16 v2, 0x0

    .line 154
    .local v2, "result":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 155
    shl-long v4, v2, v8

    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-long v6, v1

    or-long v2, v4, v6

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 158
    :cond_2
    return-wide v2
.end method

.method public static readNumber(Ljava/io/InputStream;I)I
    .locals 5
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 129
    const/4 v2, 0x4

    if-gt p1, v2, :cond_0

    if-gez p1, :cond_1

    .line 130
    :cond_0
    new-instance v2, Lorg/conscrypt/ct/SerializationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid width: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 133
    :cond_1
    const/4 v1, 0x0

    .line 134
    .local v1, "result":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_2

    .line 135
    shl-int/lit8 v2, v1, 0x8

    invoke-static {p0}, Lorg/conscrypt/ct/Serialization;->readByte(Ljava/io/InputStream;)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    or-int v1, v2, v3

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_2
    return v1
.end method

.method public static readVariableBytes(Ljava/io/InputStream;I)[B
    .locals 2
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->readNumber(Ljava/io/InputStream;I)I

    move-result v0

    .line 94
    .local v0, "length":I
    invoke-static {p0, v0}, Lorg/conscrypt/ct/Serialization;->readFixedBytes(Ljava/io/InputStream;I)[B

    move-result-object v1

    return-object v1
.end method

.method public static writeFixedBytes(Ljava/io/OutputStream;[B)V
    .locals 2
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 198
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    return-void

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeNumber(Ljava/io/OutputStream;JI)V
    .locals 9
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "value"    # J
    .param p3, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 214
    if-gez p3, :cond_0

    .line 215
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Negative width: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :cond_0
    const/16 v1, 0x8

    if-ge p3, v1, :cond_1

    const-wide/16 v4, 0x1

    mul-int/lit8 v1, p3, 0x8

    shl-long/2addr v4, v1

    cmp-long v1, p1, v4

    if-ltz v1, :cond_1

    .line 218
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Number too large, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " does not fit in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_1
    :goto_0
    if-lez p3, :cond_3

    .line 224
    add-int/lit8 v1, p3, -0x1

    int-to-long v4, v1

    const-wide/16 v6, 0x8

    mul-long v2, v4, v6

    .line 226
    .local v2, "shift":J
    const-wide/16 v4, 0x40

    cmp-long v1, v2, v4

    if-gez v1, :cond_2

    .line 227
    long-to-int v1, v2

    shr-long v4, p1, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    long-to-int v1, v4

    int-to-byte v1, v1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    .line 232
    :goto_1
    add-int/lit8 p3, p3, -0x1

    .line 233
    goto :goto_0

    .line 229
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/conscrypt/ct/SerializationException;

    invoke-direct {v1, v0}, Lorg/conscrypt/ct/SerializationException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 237
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "shift":J
    :cond_3
    return-void
.end method

.method public static writeVariableBytes(Ljava/io/OutputStream;[BI)V
    .locals 2
    .param p0, "output"    # Ljava/io/OutputStream;
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/ct/SerializationException;
        }
    .end annotation

    .prologue
    .line 187
    array-length v0, p1

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p2}, Lorg/conscrypt/ct/Serialization;->writeNumber(Ljava/io/OutputStream;JI)V

    .line 188
    invoke-static {p0, p1}, Lorg/conscrypt/ct/Serialization;->writeFixedBytes(Ljava/io/OutputStream;[B)V

    .line 189
    return-void
.end method
