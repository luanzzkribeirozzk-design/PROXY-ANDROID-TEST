.class public Lorg/bouncycastle/util/encoders/Base64Encoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B

.field protected padding:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/Base64Encoder;->initialiseDecodingTable()V

    return-void

    :array_0
    .array-data 1
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
        0x47t
        0x48t
        0x49t
        0x4at
        0x4bt
        0x4ct
        0x4dt
        0x4et
        0x4ft
        0x50t
        0x51t
        0x52t
        0x53t
        0x54t
        0x55t
        0x56t
        0x57t
        0x58t
        0x59t
        0x5at
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
        0x67t
        0x68t
        0x69t
        0x6at
        0x6bt
        0x6ct
        0x6dt
        0x6et
        0x6ft
        0x70t
        0x71t
        0x72t
        0x73t
        0x74t
        0x75t
        0x76t
        0x77t
        0x78t
        0x79t
        0x7at
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x2bt
        0x2ft
    .end array-data
.end method

.method private decodeLastBlock(Ljava/io/OutputStream;CCCC)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p4, v0, :cond_2

    iget-byte v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-eq p5, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, p3

    or-int v2, v0, v1

    if-gez v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    iget-byte v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    if-ne p5, v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v2, p4

    or-int v3, v0, v1

    or-int/2addr v3, v2

    if-gez v3, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v3, v1, 0x4

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v2, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x2

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v0, v0, p2

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v1, v1, p3

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v2, v2, p4

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    aget-byte v3, v3, p5

    or-int v4, v0, v1

    or-int/2addr v4, v2

    or-int/2addr v4, v3

    if-gez v4, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered at end of base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v4, v1, 0x4

    or-int/2addr v0, v4

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v1, 0x4

    shr-int/lit8 v1, v2, 0x2

    or-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v0, v2, 0x6

    or-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x3

    goto :goto_0
.end method

.method private ignore(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextI(Ljava/lang/String;II)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

.method private nextI([BII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x36

    new-array v8, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    :goto_0
    if-lez v7, :cond_0

    add-int/lit8 v0, v7, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    if-nez v7, :cond_2

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v7, v7, -0x1

    goto :goto_0

    :cond_2
    move v5, v7

    move v0, v1

    :goto_2
    if-lez v5, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_4

    add-int/lit8 v2, v5, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, v1, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v0

    move v2, v0

    move v6, v1

    move v4, v1

    :goto_3
    if-ge v2, v5, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v0, v0, v2

    invoke-direct {p0, p1, v3, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v2, v3, v2

    invoke-direct {p0, p1, v9, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v3

    iget-object v9, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    aget-byte v3, v9, v3

    invoke-direct {p0, p1, v10, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v9

    iget-object v10, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v11, v9, 0x1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    aget-byte v9, v10, v9

    or-int v10, v0, v2

    or-int/2addr v10, v3

    or-int/2addr v10, v9

    if-gez v10, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in base64 data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    add-int/lit8 v10, v4, 0x1

    shl-int/lit8 v0, v0, 0x2

    shr-int/lit8 v12, v2, 0x4

    or-int/2addr v0, v12

    int-to-byte v0, v0

    aput-byte v0, v8, v4

    add-int/lit8 v4, v10, 0x1

    shl-int/lit8 v0, v2, 0x4

    shr-int/lit8 v2, v3, 0x2

    or-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, v8, v10

    add-int/lit8 v0, v4, 0x1

    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, v8, v4

    add-int/lit8 v3, v6, 0x3

    array-length v2, v8

    if-ne v0, v2, :cond_6

    invoke-virtual {p2, v8}, Ljava/io/OutputStream;->write([B)V

    move v0, v1

    :cond_6
    invoke-direct {p0, p1, v11, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v2

    move v6, v3

    move v4, v0

    goto :goto_3

    :cond_7
    if-lez v4, :cond_8

    invoke-virtual {p2, v8, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_8
    invoke-direct {p0, p1, v2, v7}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, p1, v1, v7}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, p1, v2, v7}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    invoke-direct {p0, p1, v2, v7}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI(Ljava/lang/String;II)I

    move-result v5

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v0

    add-int v1, v6, v0

    goto/16 :goto_1
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x36

    new-array v8, v1, [B

    const/4 v4, 0x0

    const/4 v3, 0x0

    add-int v6, p2, p3

    :goto_0
    if-le v6, p2, :cond_0

    add-int/lit8 v1, v6, -0x1

    aget-byte v1, p1, v1

    int-to-char v1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    if-nez v6, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move v5, v6

    :goto_2
    if-le v5, p2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_4

    add-int/lit8 v2, v5, -0x1

    aget-byte v2, p1, v2

    int-to-char v2, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/util/encoders/Base64Encoder;->ignore(C)Z

    move-result v2

    if-nez v2, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    add-int/lit8 v2, v5, -0x1

    move v5, v2

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1, p2, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v1

    move v2, v1

    move v7, v3

    :goto_3
    if-ge v2, v5, :cond_7

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    aget-byte v1, v1, v2

    invoke-direct {p0, p1, v3, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v9, v2, 0x1

    aget-byte v2, p1, v2

    aget-byte v2, v3, v2

    invoke-direct {p0, p1, v9, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v3

    iget-object v9, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v10, v3, 0x1

    aget-byte v3, p1, v3

    aget-byte v3, v9, v3

    invoke-direct {p0, p1, v10, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v9

    iget-object v10, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, p1, v9

    aget-byte v9, v10, v9

    or-int v10, v1, v2

    or-int/2addr v10, v3

    or-int/2addr v10, v9

    if-gez v10, :cond_5

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid characters encountered in base64 data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    add-int/lit8 v10, v4, 0x1

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v12, v2, 0x4

    or-int/2addr v1, v12

    int-to-byte v1, v1

    aput-byte v1, v8, v4

    add-int/lit8 v4, v10, 0x1

    shl-int/lit8 v1, v2, 0x4

    shr-int/lit8 v2, v3, 0x2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v8, v10

    add-int/lit8 v1, v4, 0x1

    shl-int/lit8 v2, v3, 0x6

    or-int/2addr v2, v9

    int-to-byte v2, v2

    aput-byte v2, v8, v4

    array-length v2, v8

    if-ne v1, v2, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v0, v8}, Ljava/io/OutputStream;->write([B)V

    const/4 v1, 0x0

    :cond_6
    add-int/lit8 v3, v7, 0x3

    invoke-direct {p0, p1, v11, v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    move v7, v3

    move v4, v1

    goto :goto_3

    :cond_7
    if-lez v4, :cond_8

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v8, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_8
    invoke-direct {p0, p1, v2, v6}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, p1, v2, v6}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    invoke-direct {p0, p1, v3, v6}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v5

    add-int/lit8 v3, v5, 0x1

    invoke-direct {p0, p1, v3, v6}, Lorg/bouncycastle/util/encoders/Base64Encoder;->nextI([BII)I

    move-result v6

    aget-byte v1, p1, v1

    int-to-char v3, v1

    aget-byte v1, p1, v2

    int-to-char v4, v1

    aget-byte v1, p1, v5

    int-to-char v5, v1

    aget-byte v1, p1, v6

    int-to-char v6, v1

    move-object v1, p0

    move-object/from16 v2, p4

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCC)I

    move-result v1

    add-int/2addr v1, v7

    goto/16 :goto_1
.end method

.method public encode([BIILjava/io/OutputStream;)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    if-gez p3, :cond_0

    :goto_0
    return v5

    :cond_0
    const/16 v0, 0x48

    new-array v4, v0, [B

    move v6, p3

    move v2, p2

    :goto_1
    if-lez v6, :cond_1

    const/16 v0, 0x36

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/Base64Encoder;->encode([BII[BI)I

    move-result v0

    invoke-virtual {p4, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    sub-int v0, v6, v3

    move v6, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p3, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v5, v0, 0x4

    goto :goto_0
.end method

.method public encode([BII[BI)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    add-int/lit8 v2, v0, -0x2

    move v0, p5

    move v1, p2

    :goto_0
    if-ge v1, v2, :cond_0

    add-int/lit8 v3, v1, 0x1

    aget-byte v4, p1, v1

    add-int/lit8 v5, v3, 0x1

    aget-byte v1, p1, v3

    and-int/lit16 v3, v1, 0xff

    add-int/lit8 v1, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v0, 0x1

    iget-object v7, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v8, v4, 0x2

    and-int/lit8 v8, v8, 0x3f

    aget-byte v7, v7, v8

    aput-byte v7, p4, v0

    add-int/lit8 v0, v6, 0x1

    iget-object v7, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v4, v4, 0x4

    ushr-int/lit8 v8, v3, 0x4

    or-int/2addr v4, v8

    and-int/lit8 v4, v4, 0x3f

    aget-byte v4, v7, v4

    aput-byte v4, p4, v6

    add-int/lit8 v4, v0, 0x1

    iget-object v6, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v3, v3, 0x2

    ushr-int/lit8 v7, v5, 0x6

    or-int/2addr v3, v7

    and-int/lit8 v3, v3, 0x3f

    aget-byte v3, v6, v3

    aput-byte v3, p4, v0

    add-int/lit8 v0, v4, 0x1

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    and-int/lit8 v5, v5, 0x3f

    aget-byte v3, v3, v5

    aput-byte v3, p4, v4

    goto :goto_0

    :cond_0
    sub-int v2, v1, p2

    sub-int v2, p3, v2

    packed-switch v2, :pswitch_data_0

    :goto_1
    sub-int/2addr v0, p5

    return v0

    :pswitch_0
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0x3f

    aget-byte v3, v3, v4

    aput-byte v3, p4, v0

    add-int/lit8 v0, v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v3, v1

    aput-byte v1, p4, v2

    add-int/lit8 v1, v0, 0x1

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v2, p4, v0

    add-int/lit8 v0, v1, 0x1

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v2, p4, v1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    ushr-int/lit8 v5, v1, 0x2

    and-int/lit8 v5, v5, 0x3f

    aget-byte v4, v4, v5

    aput-byte v4, p4, v0

    add-int/lit8 v0, v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v1, v1, 0x4

    ushr-int/lit8 v5, v2, 0x4

    or-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x3f

    aget-byte v1, v4, v1

    aput-byte v1, p4, v3

    add-int/lit8 v1, v0, 0x1

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    shl-int/lit8 v2, v2, 0x2

    and-int/lit8 v2, v2, 0x3f

    aget-byte v2, v3, v2

    aput-byte v2, p4, v0

    add-int/lit8 v0, v1, 0x1

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->padding:B

    aput-byte v2, p4, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getEncodedLength(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method public getMaxDecodedLength(I)I
    .locals 1

    div-int/lit8 v0, p1, 0x4

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected initialiseDecodingTable()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->decodingTable:[B

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base64Encoder;->encodingTable:[B

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
