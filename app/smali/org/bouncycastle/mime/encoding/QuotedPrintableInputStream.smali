.class public Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;
.super Ljava/io/FilterInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x41

    const/16 v5, 0x39

    const/16 v4, 0x30

    const/16 v3, 0xa

    const/4 v1, -0x1

    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v2, 0xd

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    :cond_2
    :goto_1
    const/16 v2, 0x3d

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Quoted \'=\' at end of stream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    :cond_4
    if-lt v0, v4, :cond_5

    if-gt v0, v5, :cond_5

    add-int/lit8 v0, v0, -0x30

    :goto_2
    shl-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-lt v1, v4, :cond_7

    if-gt v1, v5, :cond_7

    add-int/lit8 v1, v1, -0x30

    or-int/2addr v0, v1

    goto :goto_0

    :cond_5
    if-lt v0, v6, :cond_6

    const/16 v1, 0x46

    if-gt v0, v1, :cond_6

    add-int/lit8 v0, v0, -0x41

    add-int/lit8 v0, v0, 0xa

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expecting \'0123456789ABCDEF after quote that was not immediately followed by LF or CRLF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    if-lt v1, v6, :cond_8

    const/16 v2, 0x46

    if-gt v1, v2, :cond_8

    add-int/lit8 v1, v1, -0x41

    add-int/lit8 v1, v1, 0xa

    or-int/2addr v0, v1

    goto :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Expecting second \'0123456789ABCDEF after quote that was not immediately followed by LF or CRLF"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    if-eq v0, p3, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;->read()I

    move-result v1

    if-gez v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    const/4 v0, -0x1

    :cond_1
    return v0

    :cond_2
    add-int v2, v0, p2

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
