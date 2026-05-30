.class Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toUnsignedInt(B)I
    .locals 1

    and-int/lit16 v0, p1, 0xff

    return v0
.end method

.method private toUnsignedLong(B)J
    .locals 4

    int-to-long v0, p1

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method bytes_to_int([BI)I
    .locals 2

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x0

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x3

    aget-byte v1, p1, v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedInt(B)I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method bytes_to_int_array([BII)[I
    .locals 3

    new-array v1, p3, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p2

    invoke-virtual {p0, p1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method bytes_to_long([BI)J
    .locals 5

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v0

    const/4 v2, 0x0

    shl-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x1

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x3

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x4

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v2

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x5

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x6

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v2

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p2, 0x7

    aget-byte v2, p1, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->toUnsignedLong(B)J

    move-result-wide v2

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method int_to_bytes(I)[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x0

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    ushr-int/lit8 v2, p1, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    ushr-int/lit8 v2, p1, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method long_to_bytes(J)[B
    .locals 7

    const/16 v5, 0x8

    const/4 v4, 0x0

    new-array v0, v5, [B

    ushr-long v2, p1, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, v4

    const/4 v1, 0x1

    ushr-long v2, p1, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x18

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x28

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x38

    ushr-long v2, p1, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method
