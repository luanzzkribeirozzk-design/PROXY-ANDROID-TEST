.class Lorg/conscrypt/OpenSSLBIOInputStream;
.super Ljava/io/FilterInputStream;
.source "OpenSSLBIOInputStream.java"


# instance fields
.field private ctx:J


# direct methods
.method constructor <init>(Ljava/io/InputStream;Z)V
    .locals 2
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "isFinite"    # Z

    .prologue
    .line 32
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    invoke-static {p0, p2}, Lorg/conscrypt/NativeCrypto;->create_BIO_InputStream(Lorg/conscrypt/OpenSSLBIOInputStream;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/conscrypt/OpenSSLBIOInputStream;->ctx:J

    .line 35
    return-void
.end method


# virtual methods
.method getBioContext()J
    .locals 2

    .prologue
    .line 38
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLBIOInputStream;->ctx:J

    return-wide v0
.end method

.method gets([B)I
    .locals 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_2

    .line 51
    :cond_0
    const/4 v1, 0x0

    .line 74
    :cond_1
    return v1

    .line 54
    :cond_2
    const/4 v1, 0x0

    .line 55
    .local v1, "offset":I
    const/4 v0, 0x0

    .line 56
    .local v0, "inputByte":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 57
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLBIOInputStream;->read()I

    move-result v0

    .line 58
    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 62
    const/16 v3, 0xa

    if-ne v0, v3, :cond_3

    .line 63
    if-nez v1, :cond_1

    goto :goto_0

    .line 71
    :cond_3
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "offset":I
    .local v2, "offset":I
    int-to-byte v3, v0

    aput-byte v3, p1, v1

    move v1, v2

    .end local v2    # "offset":I
    .restart local v1    # "offset":I
    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/conscrypt/OpenSSLBIOInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 89
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    array-length v3, p1

    sub-int/2addr v3, p2

    if-le p3, v3, :cond_1

    .line 90
    :cond_0
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    const-string v3, "Invalid bounds"

    invoke-direct {v2, v3}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 92
    :cond_1
    if-nez p3, :cond_3

    .line 93
    const/4 v1, 0x0

    .line 105
    :cond_2
    :goto_0
    return v1

    .line 95
    :cond_3
    const/4 v1, 0x0

    .line 98
    .local v1, "totalRead":I
    :cond_4
    add-int v3, p2, v1

    sub-int v4, p3, v1

    sub-int/2addr v4, p2

    invoke-super {p0, p1, v3, v4}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 99
    .local v0, "read":I
    if-ne v0, v2, :cond_5

    .line 105
    :goto_1
    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    .line 102
    :cond_5
    add-int/2addr v1, v0

    .line 103
    add-int v3, p2, v1

    if-lt v3, p3, :cond_4

    goto :goto_1
.end method

.method release()V
    .locals 2

    .prologue
    .line 42
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLBIOInputStream;->ctx:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 43
    return-void
.end method
