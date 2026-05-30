.class public Lorg/bouncycastle/util/encoders/HexEncoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/encoders/Encoder;


# instance fields
.field protected final decodingTable:[B

.field protected final encodingTable:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/HexEncoder;->initialiseDecodingTable()V

    return-void

    :array_0
    .array-data 1
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
        0x61t
        0x62t
        0x63t
        0x64t
        0x65t
        0x66t
    .end array-data
.end method

.method private static ignore(C)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p0, v0, :cond_0

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x24

    new-array v6, v0, [B

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    move v5, v0

    :goto_0
    if-lez v5, :cond_0

    add-int/lit8 v0, v5, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, v1

    move v3, v1

    move v4, v1

    :goto_1
    if-ge v2, v5, :cond_6

    :goto_2
    if-ge v2, v5, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    aget-byte v7, v7, v2

    :goto_3
    if-ge v0, v5, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    aget-byte v8, v8, v0

    or-int v0, v7, v8

    if-gez v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in Hex string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    array-length v3, v6

    if-ne v0, v3, :cond_5

    invoke-virtual {p2, v6}, Ljava/io/OutputStream;->write([B)V

    move v0, v1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_1

    :cond_6
    if-lez v3, :cond_7

    invoke-virtual {p2, v6, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_7
    return v4
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x24

    new-array v6, v0, [B

    add-int v0, p2, p3

    move v5, v0

    :goto_0
    if-le v5, p2, :cond_0

    add-int/lit8 v0, v5, -0x1

    aget-byte v0, p1, v0

    int-to-char v0, v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v2, p2

    move v3, v1

    move v4, v1

    :goto_1
    if-ge v2, v5, :cond_6

    :goto_2
    if-ge v2, v5, :cond_2

    aget-byte v0, p1, v2

    int-to-char v0, v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v0, v2, 0x1

    aget-byte v2, p1, v2

    aget-byte v7, v7, v2

    :goto_3
    if-ge v0, v5, :cond_3

    aget-byte v2, p1, v0

    int-to-char v2, v2

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/HexEncoder;->ignore(C)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    iget-object v8, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    aget-byte v8, v8, v0

    or-int v0, v7, v8

    if-gez v0, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in Hex data"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v3, 0x1

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    array-length v3, v6

    if-ne v0, v3, :cond_5

    invoke-virtual {p4, v6}, Ljava/io/OutputStream;->write([B)V

    move v0, v1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_1

    :cond_6
    if-lez v3, :cond_7

    invoke-virtual {p4, v6, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    :cond_7
    return v4
.end method

.method decodeStrict(Ljava/lang/String;II)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'str\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "invalid offset and/or length specified"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "a hexadecimal encoding must have an even number of characters"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    ushr-int/lit8 v1, p3, 0x1

    new-array v2, v1, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 v4, p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget-byte v3, v3, v5

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    add-int/lit8 p2, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget-byte v4, v5, v4

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v3, v4

    if-gez v3, :cond_4

    new-instance v0, Ljava/io/IOException;

    const-string v1, "invalid characters encountered in Hex string"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-object v2
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

    const/16 v0, 0x24

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/HexEncoder;->encode([BII[BI)I

    move-result v0

    invoke-virtual {p4, v4, v5, v0}, Ljava/io/OutputStream;->write([BII)V

    add-int/2addr v2, v3

    sub-int v0, v6, v3

    move v6, v0

    goto :goto_1

    :cond_1
    mul-int/lit8 v5, p3, 0x2

    goto :goto_0
.end method

.method public encode([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v2, p2, p3

    move v0, p5

    :goto_0
    if-ge p2, v2, :cond_0

    add-int/lit8 v1, p2, 0x1

    aget-byte v3, p1, p2

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v0, 0x1

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    ushr-int/lit8 v6, v3, 0x4

    aget-byte v5, v5, v6

    aput-byte v5, p4, v0

    add-int/lit8 v0, v4, 0x1

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    and-int/lit8 v3, v3, 0xf

    aget-byte v3, v5, v3

    aput-byte v3, p4, v4

    move p2, v1

    goto :goto_0

    :cond_0
    sub-int/2addr v0, p5

    return v0
.end method

.method public getEncodedLength(I)I
    .locals 1

    mul-int/lit8 v0, p1, 0x2

    return v0
.end method

.method public getMaxDecodedLength(I)I
    .locals 1

    div-int/lit8 v0, p1, 0x2

    return v0
.end method

.method protected initialiseDecodingTable()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->encodingTable:[B

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x41

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x61

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x42

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x62

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x43

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x63

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x44

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x64

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x45

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x65

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v1, 0x46

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/HexEncoder;->decodingTable:[B

    const/16 v3, 0x66

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    return-void
.end method
