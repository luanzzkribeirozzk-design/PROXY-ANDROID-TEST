.class public Lorg/bouncycastle/mime/encoding/Base64InputStream;
.super Ljava/io/InputStream;


# static fields
.field private static final decodingTable:[B


# instance fields
.field bufPtr:I

.field in:Ljava/io/InputStream;

.field outBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    const/16 v0, 0x41

    :goto_0
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x41

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x61

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v1, 0x39

    if-gt v0, v1, :cond_2

    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    add-int/lit8 v2, v0, -0x30

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    const/16 v1, 0x2b

    const/16 v2, 0x3e

    aput-byte v2, v0, v1

    sget-object v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    const/16 v1, 0x2f

    const/16 v2, 0x3f

    aput-byte v2, v0, v1

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x3

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->outBuf:[I

    iput v1, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    iput-object p1, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    return-void
.end method

.method private decode(IIII[I)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    const/16 v3, 0x3d

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x2

    if-gez p4, :cond_0

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "unexpected end of file in armored stream."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ne p3, v3, :cond_1

    sget-object v1, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v1, v1, p1

    and-int/lit16 v1, v1, 0xff

    sget-object v2, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v2, v2, p2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v1, v1, 0x2

    shr-int/lit8 v2, v2, 0x4

    or-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aput v1, p5, v0

    :goto_0
    return v0

    :cond_1
    if-ne p4, v3, :cond_2

    sget-object v2, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v2, v2, p1

    sget-object v3, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v3, v3, p2

    sget-object v4, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v4, v4, p3

    shl-int/lit8 v2, v2, 0x2

    shr-int/lit8 v5, v3, 0x4

    or-int/2addr v2, v5

    and-int/lit16 v2, v2, 0xff

    aput v2, p5, v1

    shl-int/lit8 v2, v3, 0x4

    shr-int/lit8 v3, v4, 0x2

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aput v2, p5, v0

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v3, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v3, v3, p1

    sget-object v4, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v4, v4, p2

    sget-object v5, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v5, v5, p3

    sget-object v6, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decodingTable:[B

    aget-byte v6, v6, p4

    shl-int/lit8 v3, v3, 0x2

    shr-int/lit8 v7, v4, 0x4

    or-int/2addr v3, v7

    and-int/lit16 v3, v3, 0xff

    aput v3, p5, v2

    shl-int/lit8 v3, v4, 0x4

    shr-int/lit8 v4, v5, 0x2

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aput v3, p5, v1

    shl-int/lit8 v1, v5, 0x6

    or-int/2addr v1, v6

    and-int/lit16 v1, v1, 0xff

    aput v1, p5, v0

    move v0, v2

    goto :goto_0
.end method

.method private readIgnoreSpace()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :sswitch_0
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method

.method private readIgnoreSpaceFirst()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :sswitch_0
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    const/4 v1, 0x2

    if-le v0, v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpaceFirst()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpace()I

    move-result v2

    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpace()I

    move-result v3

    invoke-direct {p0}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->readIgnoreSpace()I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->outBuf:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/mime/encoding/Base64InputStream;->decode(IIII[I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->outBuf:[I

    iget v1, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/mime/encoding/Base64InputStream;->bufPtr:I

    aget v0, v0, v1

    goto :goto_0
.end method
