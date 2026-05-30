.class public Lorg/bouncycastle/mime/BoundaryLimitedInputStream;
.super Ljava/io/InputStream;


# instance fields
.field private final boundary:[B

.field private final buf:[B

.field private bufOff:I

.field private ended:Z

.field private index:I

.field private lastI:I

.field private final src:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    iput v1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    iput-boolean v1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->ended:Z

    iput-object p1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->boundary:[B

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iput v1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    return-void
.end method


# virtual methods
.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xd

    const/4 v4, 0x0

    const/16 v6, 0xa

    const/4 v1, -0x1

    const/16 v5, 0x2d

    iget-boolean v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->ended:Z

    if-eqz v0, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    iget v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    if-ge v0, v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    iget v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    if-lt v2, v3, :cond_0

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    :goto_1
    iput v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->lastI:I

    if-gez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    :cond_3
    if-eq v0, v7, :cond_4

    if-ne v0, v6, :cond_0

    :cond_4
    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->index:I

    if-ne v0, v7, :cond_8

    iget-object v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-ne v2, v6, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    aput-byte v6, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    :cond_5
    :goto_2
    if-ne v2, v5, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    aput-byte v5, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    :cond_6
    if-ne v2, v5, :cond_a

    iget-object v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    aput-byte v5, v2, v3

    iget v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    :goto_3
    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    sub-int/2addr v3, v2

    iget-object v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->boundary:[B

    array-length v4, v4

    if-eq v3, v4, :cond_7

    iget-object v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v3

    if-ltz v3, :cond_7

    iget-object v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v5, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    int-to-byte v3, v3

    aput-byte v3, v4, v5

    iget-object v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->boundary:[B

    iget v5, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    sub-int/2addr v5, v2

    aget-byte v4, v4, v5

    if-eq v3, v4, :cond_9

    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    :cond_7
    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    sub-int v2, v3, v2

    iget-object v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->boundary:[B

    array-length v3, v3

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->ended:Z

    move v0, v1

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    goto :goto_2

    :cond_9
    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    goto :goto_3

    :cond_a
    if-ltz v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->buf:[B

    iget v3, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;->bufOff:I

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    goto/16 :goto_0
.end method
