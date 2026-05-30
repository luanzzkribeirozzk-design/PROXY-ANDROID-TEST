.class public Lorg/bouncycastle/est/CTEChunkedInputStream;
.super Ljava/io/InputStream;


# instance fields
.field chunkLen:I

.field private src:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    iput-object p1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->src:Ljava/io/InputStream;

    return-void
.end method

.method private readEOL()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    and-int/lit16 v2, v1, 0xff

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v3, -0x80000000

    const/4 v0, -0x1

    iget v1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    if-ne v1, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    if-nez v1, :cond_4

    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/est/CTEChunkedInputStream;->readEOL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_3
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    iget v1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    if-nez v1, :cond_4

    invoke-direct {p0}, Lorg/bouncycastle/est/CTEChunkedInputStream;->readEOL()Ljava/lang/String;

    iput v3, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/bouncycastle/est/CTEChunkedInputStream;->chunkLen:I

    goto :goto_0
.end method
