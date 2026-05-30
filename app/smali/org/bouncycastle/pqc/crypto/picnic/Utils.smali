.class Lorg/bouncycastle/pqc/crypto/picnic/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static ceil_log2(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->nlz(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    goto :goto_0
.end method

.method protected static getBit([BI)B
    .locals 2

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    xor-int/lit8 v1, v1, 0x7

    aget-byte v0, p0, v0

    ushr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    return v0
.end method

.method protected static getBit(II)I
    .locals 1

    xor-int/lit8 v0, p1, 0x7

    ushr-int v0, p0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static getBit([II)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    xor-int/lit8 v1, v1, 0x7

    aget v0, p0, v0

    ushr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static getBitFromWordArray([II)I
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([II)I

    move-result v0

    return v0
.end method

.method protected static getCrumbAligned([BI)B
    .locals 2

    ushr-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x6

    xor-int/lit8 v1, v1, 0x6

    aget-byte v0, p0, v0

    ushr-int/2addr v0, v1

    and-int/lit8 v1, v0, 0x1

    shl-int/lit8 v1, v1, 0x1

    and-int/lit8 v0, v0, 0x2

    shr-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method protected static getTrailingBitsMask(I)I
    .locals 4

    and-int/lit8 v1, p0, -0x8

    const/4 v0, -0x1

    shl-int/2addr v0, v1

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v2, p0, 0x7

    if-eqz v2, :cond_0

    const v3, 0xff00

    ushr-int v2, v3, v2

    and-int/lit16 v2, v2, 0xff

    shl-int v1, v2, v1

    xor-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private static nlz(I)I
    .locals 3

    if-nez p0, :cond_0

    const/16 v0, 0x20

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    ushr-int/lit8 v1, p0, 0x10

    if-nez v1, :cond_4

    const/16 v0, 0x11

    shl-int/lit8 v1, p0, 0x10

    :goto_1
    ushr-int/lit8 v2, v1, 0x18

    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x8

    shl-int/lit8 v1, v1, 0x8

    :cond_1
    ushr-int/lit8 v2, v1, 0x1c

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x4

    shl-int/lit8 v1, v1, 0x4

    :cond_2
    ushr-int/lit8 v2, v1, 0x1e

    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x2

    shl-int/lit8 v1, v1, 0x2

    :cond_3
    ushr-int/lit8 v1, v1, 0x1f

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_4
    move v1, p0

    goto :goto_1
.end method

.method protected static numBytes(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected static parity([BI)I
    .locals 3

    const/4 v0, 0x0

    aget-byte v1, p0, v0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v1, 0xff

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static parity16(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static parity32(I)I
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static setBit(III)I
    .locals 2

    xor-int/lit8 v0, p1, 0x7

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, p0

    shl-int v0, p2, v0

    or-int/2addr v0, v1

    return v0
.end method

.method protected static setBit([BIB)V
    .locals 4

    ushr-int/lit8 v0, p1, 0x3

    and-int/lit8 v1, p1, 0x7

    xor-int/lit8 v1, v1, 0x7

    aget-byte v2, p0, v0

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    shl-int v1, p2, v1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method protected static setBit([III)V
    .locals 4

    ushr-int/lit8 v0, p1, 0x5

    and-int/lit8 v1, p1, 0x1f

    xor-int/lit8 v1, v1, 0x7

    aget v2, p0, v0

    const/4 v3, 0x1

    shl-int/2addr v3, v1

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    shl-int v1, p2, v1

    or-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method protected static setBitInWordArray([III)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([III)V

    return-void
.end method

.method protected static zeroTrailingBits([II)V
    .locals 3

    and-int/lit8 v0, p1, 0x1f

    if-eqz v0, :cond_0

    ushr-int/lit8 v0, p1, 0x5

    aget v1, p0, v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result v2

    and-int/2addr v1, v2

    aput v1, p0, v0

    :cond_0
    return-void
.end method
