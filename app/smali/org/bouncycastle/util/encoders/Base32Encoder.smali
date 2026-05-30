.class public Lorg/bouncycastle/util/encoders/Base32Encoder;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/encoders/Encoder;


# static fields
.field private static final DEAULT_ENCODING_TABLE:[B

.field private static final DEFAULT_PADDING:B = 0x3dt


# instance fields
.field private final decodingTable:[B

.field private final encodingTable:[B

.field private final padding:B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->DEAULT_ENCODING_TABLE:[B

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
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    sget-object v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->DEAULT_ENCODING_TABLE:[B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    const/16 v0, 0x3d

    iput-byte v0, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/Base32Encoder;->initialiseDecodingTable()V

    return-void
.end method

.method public constructor <init>([BB)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    array-length v0, p1

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "encoding table needs to be length 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    iput-byte p2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    invoke-virtual {p0}, Lorg/bouncycastle/util/encoders/Base32Encoder;->initialiseDecodingTable()V

    return-void
.end method

.method private decodeLastBlock(Ljava/io/OutputStream;CCCCCCCC)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-byte v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    move/from16 v0, p9

    if-ne v0, v1, :cond_9

    iget-byte v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    move/from16 v0, p8

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v1, v1, p2

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v2, v2, p3

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v3, v3, p4

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v4, v4, p5

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v5, v5, p6

    iget-object v6, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v6, v6, p7

    iget-object v7, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v7, v7, p8

    or-int v8, v1, v2

    or-int/2addr v8, v3

    or-int/2addr v8, v4

    or-int/2addr v8, v5

    or-int/2addr v8, v6

    or-int/2addr v8, v7

    if-gez v8, :cond_0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid characters encountered at end of base32 data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    shl-int/lit8 v1, v1, 0x3

    shr-int/lit8 v8, v2, 0x2

    or-int/2addr v1, v8

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v2, 0x6

    shl-int/lit8 v2, v3, 0x1

    or-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x4

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v4, 0x4

    shr-int/lit8 v2, v5, 0x1

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v5, 0x7

    shl-int/lit8 v2, v6, 0x2

    or-int/2addr v1, v2

    shr-int/lit8 v2, v7, 0x3

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x4

    :goto_0
    return v1

    :cond_1
    iget-byte v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    move/from16 v0, p7

    if-eq v0, v1, :cond_2

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid characters encountered at end of base32 data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-byte v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    move/from16 v0, p6

    if-eq v0, v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v1, v1, p2

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v2, v2, p3

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v3, v3, p4

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v4, v4, p5

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v5, v5, p6

    or-int v6, v1, v2

    or-int/2addr v6, v3

    or-int/2addr v6, v4

    or-int/2addr v6, v5

    if-gez v6, :cond_3

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid characters encountered at end of base32 data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    shl-int/lit8 v1, v1, 0x3

    shr-int/lit8 v6, v2, 0x2

    or-int/2addr v1, v6

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v2, 0x6

    shl-int/lit8 v2, v3, 0x1

    or-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x4

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v4, 0x4

    shr-int/lit8 v2, v5, 0x1

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x3

    goto :goto_0

    :cond_4
    iget-byte v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-eq p5, v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v1, v1, p2

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v2, v2, p3

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v3, v3, p4

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v4, v4, p5

    or-int v5, v1, v2

    or-int/2addr v5, v3

    or-int/2addr v5, v4

    if-gez v5, :cond_5

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid characters encountered at end of base32 data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    shl-int/lit8 v1, v1, 0x3

    shr-int/lit8 v5, v2, 0x2

    or-int/2addr v1, v5

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v2, 0x6

    shl-int/lit8 v2, v3, 0x1

    or-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x4

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x2

    goto/16 :goto_0

    :cond_6
    iget-byte v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    if-eq p4, v1, :cond_7

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid characters encountered at end of base32 data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v1, v1, p2

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v2, v2, p3

    or-int v3, v1, v2

    if-gez v3, :cond_8

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid characters encountered at end of base32 data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    shl-int/lit8 v1, v1, 0x3

    shr-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v1, v1, p2

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v2, v2, p3

    iget-object v3, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v3, v3, p4

    iget-object v4, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v4, v4, p5

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v5, v5, p6

    iget-object v6, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v6, v6, p7

    iget-object v7, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v7, v7, p8

    iget-object v8, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    aget-byte v8, v8, p9

    or-int v9, v1, v2

    or-int/2addr v9, v3

    or-int/2addr v9, v4

    or-int/2addr v9, v5

    or-int/2addr v9, v6

    or-int/2addr v9, v7

    or-int/2addr v9, v8

    if-gez v9, :cond_a

    new-instance v1, Ljava/io/IOException;

    const-string v2, "invalid characters encountered at end of base32 data"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    shl-int/lit8 v1, v1, 0x3

    shr-int/lit8 v9, v2, 0x2

    or-int/2addr v1, v9

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v2, 0x6

    shl-int/lit8 v2, v3, 0x1

    or-int/2addr v1, v2

    shr-int/lit8 v2, v4, 0x4

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v4, 0x4

    shr-int/lit8 v2, v5, 0x1

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v5, 0x7

    shl-int/lit8 v2, v6, 0x2

    or-int/2addr v1, v2

    shr-int/lit8 v2, v7, 0x3

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    shl-int/lit8 v1, v7, 0x5

    or-int/2addr v1, v8

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v1, 0x5

    goto/16 :goto_0
.end method

.method private encodeBlock([BI[BI)V
    .locals 9

    add-int/lit8 v0, p2, 0x1

    aget-byte v1, p1, p2

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, p4, 0x1

    iget-object v6, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    ushr-int/lit8 v7, v1, 0x3

    and-int/lit8 v7, v7, 0x1f

    aget-byte v6, v6, v7

    aput-byte v6, p3, p4

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v1, v1, 0x2

    ushr-int/lit8 v8, v0, 0x6

    or-int/2addr v1, v8

    and-int/lit8 v1, v1, 0x1f

    aget-byte v1, v7, v1

    aput-byte v1, p3, v5

    add-int/lit8 v1, v6, 0x1

    iget-object v5, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    ushr-int/lit8 v7, v0, 0x1

    and-int/lit8 v7, v7, 0x1f

    aget-byte v5, v5, v7

    aput-byte v5, p3, v6

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v7, v2, 0x4

    or-int/2addr v0, v7

    and-int/lit8 v0, v0, 0x1f

    aget-byte v0, v6, v0

    aput-byte v0, p3, v1

    add-int/lit8 v0, v5, 0x1

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v2, v2, 0x1

    ushr-int/lit8 v6, v3, 0x7

    or-int/2addr v2, v6

    and-int/lit8 v2, v2, 0x1f

    aget-byte v1, v1, v2

    aput-byte v1, p3, v5

    add-int/lit8 v1, v0, 0x1

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    ushr-int/lit8 v5, v3, 0x2

    and-int/lit8 v5, v5, 0x1f

    aget-byte v2, v2, v5

    aput-byte v2, p3, v0

    add-int/lit8 v0, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    shl-int/lit8 v3, v3, 0x3

    ushr-int/lit8 v5, v4, 0x5

    or-int/2addr v3, v5

    and-int/lit8 v3, v3, 0x1f

    aget-byte v2, v2, v3

    aput-byte v2, p3, v1

    iget-object v1, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    and-int/lit8 v2, v4, 0x1f

    aget-byte v1, v1, v2

    aput-byte v1, p3, v0

    return-void
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

.method private nextI([BII)I
    .locals 1

    :goto_0
    if-ge p2, p3, :cond_0

    aget-byte v0, p1, p2

    int-to-char v0, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/util/encoders/Base32Encoder;->ignore(C)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method


# virtual methods
.method public decode(Ljava/lang/String;Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2, p2}, Lorg/bouncycastle/util/encoders/Base32Encoder;->decode([BIILjava/io/OutputStream;)I

    move-result v0

    return v0
.end method

.method public decode([BIILjava/io/OutputStream;)I
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x37

    new-array v9, v3, [B

    const/4 v6, 0x0

    const/4 v5, 0x0

    add-int v8, p2, p3

    :goto_0
    move/from16 v0, p2

    if-le v8, v0, :cond_0

    add-int/lit8 v3, v8, -0x1

    aget-byte v3, p1, v3

    int-to-char v3, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/util/encoders/Base32Encoder;->ignore(C)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-nez v8, :cond_2

    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    move v7, v8

    :goto_2
    move/from16 v0, p2

    if-le v7, v0, :cond_4

    const/16 v4, 0x8

    if-eq v3, v4, :cond_4

    add-int/lit8 v4, v7, -0x1

    aget-byte v4, p1, v4

    int-to-char v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lorg/bouncycastle/util/encoders/Base32Encoder;->ignore(C)Z

    move-result v4

    if-nez v4, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v4, v7, -0x1

    move v7, v4

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v7}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v3

    move v4, v3

    move v13, v5

    :goto_3
    if-ge v4, v7, :cond_7

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p1, v4

    aget-byte v3, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v7}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v10, v4, 0x1

    aget-byte v4, p1, v4

    aget-byte v4, v5, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10, v7}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v11, v5, 0x1

    aget-byte v5, p1, v5

    aget-byte v5, v10, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11, v7}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v12, v10, 0x1

    aget-byte v10, p1, v10

    aget-byte v10, v11, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12, v7}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v14, v11, 0x1

    aget-byte v11, p1, v11

    aget-byte v11, v12, v11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v7}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v15, v12, 0x1

    aget-byte v12, p1, v12

    aget-byte v12, v14, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v15, v7}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    add-int/lit8 v16, v14, 0x1

    aget-byte v14, p1, v14

    aget-byte v14, v15, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v16

    invoke-direct {v0, v1, v2, v7}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    move-object/from16 v16, v0

    add-int/lit8 v17, v15, 0x1

    aget-byte v15, p1, v15

    aget-byte v15, v16, v15

    or-int v16, v3, v4

    or-int v16, v16, v5

    or-int v16, v16, v10

    or-int v16, v16, v11

    or-int v16, v16, v12

    or-int v16, v16, v14

    or-int v16, v16, v15

    if-gez v16, :cond_5

    new-instance v3, Ljava/io/IOException;

    const-string v4, "invalid characters encountered in base32 data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_5
    add-int/lit8 v16, v6, 0x1

    shl-int/lit8 v3, v3, 0x3

    shr-int/lit8 v18, v4, 0x2

    or-int v3, v3, v18

    int-to-byte v3, v3

    aput-byte v3, v9, v6

    add-int/lit8 v3, v16, 0x1

    shl-int/lit8 v4, v4, 0x6

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    shr-int/lit8 v5, v10, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v9, v16

    add-int/lit8 v4, v3, 0x1

    shl-int/lit8 v5, v10, 0x4

    shr-int/lit8 v6, v11, 0x1

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v9, v3

    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v3, v11, 0x7

    shl-int/lit8 v6, v12, 0x2

    or-int/2addr v3, v6

    shr-int/lit8 v6, v14, 0x3

    or-int/2addr v3, v6

    int-to-byte v3, v3

    aput-byte v3, v9, v4

    add-int/lit8 v3, v5, 0x1

    shl-int/lit8 v4, v14, 0x5

    or-int/2addr v4, v15

    int-to-byte v4, v4

    aput-byte v4, v9, v5

    array-length v4, v9

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/io/OutputStream;->write([B)V

    const/4 v3, 0x0

    :cond_6
    add-int/lit8 v5, v13, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v7}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v4

    move v13, v5

    move v6, v3

    goto/16 :goto_3

    :cond_7
    if-lez v6, :cond_8

    const/4 v3, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9, v3, v6}, Ljava/io/OutputStream;->write([BII)V

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v3

    add-int/lit8 v4, v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v4, v8}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v4

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v8}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v7

    add-int/lit8 v5, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v8}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v9

    add-int/lit8 v5, v9, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v8}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v10

    add-int/lit8 v5, v10, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v8}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v11

    add-int/lit8 v5, v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v8}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v12

    add-int/lit8 v5, v12, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v8}, Lorg/bouncycastle/util/encoders/Base32Encoder;->nextI([BII)I

    move-result v14

    aget-byte v3, p1, v3

    int-to-char v5, v3

    aget-byte v3, p1, v4

    int-to-char v6, v3

    aget-byte v3, p1, v7

    int-to-char v7, v3

    aget-byte v3, p1, v9

    int-to-char v8, v3

    aget-byte v3, p1, v10

    int-to-char v9, v3

    aget-byte v3, p1, v11

    int-to-char v10, v3

    aget-byte v3, p1, v12

    int-to-char v11, v3

    aget-byte v3, p1, v14

    int-to-char v12, v3

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    invoke-direct/range {v3 .. v12}, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodeLastBlock(Ljava/io/OutputStream;CCCCCCCC)I

    move-result v3

    add-int/2addr v3, v13

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

    const/16 v0, 0x2d

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/util/encoders/Base32Encoder;->encode([BII[BI)I

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    add-int v0, p2, p3

    add-int/lit8 v2, v0, -0x4

    move v0, p5

    move v1, p2

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-direct {p0, p1, v1, p4, v0}, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodeBlock([BI[BI)V

    add-int/lit8 v1, v1, 0x5

    add-int/lit8 v0, v0, 0x8

    goto :goto_0

    :cond_0
    sub-int v2, v1, p2

    sub-int v2, p3, v2

    if-lez v2, :cond_1

    const/4 v3, 0x5

    new-array v3, v3, [B

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v3, v4, p4, v0}, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodeBlock([BI[BI)V

    packed-switch v2, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x8

    :cond_1
    sub-int/2addr v0, p5

    return v0

    :pswitch_0
    add-int/lit8 v1, v0, 0x2

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x3

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x4

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x5

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x6

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x7

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    goto :goto_1

    :pswitch_1
    add-int/lit8 v1, v0, 0x4

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x5

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x6

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x7

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    goto :goto_1

    :pswitch_2
    add-int/lit8 v1, v0, 0x5

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x6

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    add-int/lit8 v1, v0, 0x7

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    goto :goto_1

    :pswitch_3
    add-int/lit8 v1, v0, 0x7

    iget-byte v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->padding:B

    aput-byte v2, p4, v1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getEncodedLength(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x4

    div-int/lit8 v0, v0, 0x5

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getMaxDecodedLength(I)I
    .locals 1

    div-int/lit8 v0, p1, 0x8

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method protected initialiseDecodingTable()V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    array-length v0, v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->decodingTable:[B

    iget-object v2, p0, Lorg/bouncycastle/util/encoders/Base32Encoder;->encodingTable:[B

    aget-byte v2, v2, v1

    int-to-byte v3, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
