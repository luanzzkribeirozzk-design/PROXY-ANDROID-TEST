.class Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static CHECK_BIT([BI)I
    .locals 2

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v1, p1, 0x8

    aget-byte v0, p0, v0

    ushr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected static SET_BIT([BI)V
    .locals 8

    div-int/lit8 v0, p1, 0x8

    rem-int/lit8 v1, p1, 0x8

    aget-byte v2, p0, v0

    int-to-long v2, v2

    const-wide/16 v4, 0x1

    int-to-long v6, v1

    long-to-int v1, v6

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method static fromBitArrayToByteArray([B[BII)V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    int-to-long v4, p3

    move v2, v0

    move v3, v0

    :goto_0
    int-to-long v0, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    add-int/lit8 v0, v3, 0x8

    if-lt v0, p3, :cond_1

    add-int v0, p2, v3

    aget-byte v1, p1, v0

    sub-int v0, p3, v3

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-lt v0, v7, :cond_0

    add-int v6, p2, v3

    add-int/2addr v6, v0

    aget-byte v6, p1, v6

    shl-int/2addr v6, v0

    or-int/2addr v1, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    int-to-byte v0, v1

    aput-byte v0, p0, v2

    :goto_2
    add-int/lit8 v1, v3, 0x8

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v3, v1

    goto :goto_0

    :cond_1
    add-int v0, p2, v3

    aget-byte v1, p1, v0

    const/4 v0, 0x7

    :goto_3
    if-lt v0, v7, :cond_2

    add-int v6, p2, v3

    add-int/2addr v6, v0

    aget-byte v6, p1, v6

    shl-int/2addr v6, v0

    or-int/2addr v1, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_2
    int-to-byte v0, v1

    aput-byte v0, p0, v2

    goto :goto_2

    :cond_3
    return-void
.end method

.method static generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x0

    new-array v2, v9, [B

    add-int/lit8 v1, p2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-interface {p3, v2, v8, v9}, Lorg/bouncycastle/crypto/Xof;->doOutput([BII)I

    invoke-static {v2, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    int-to-long v4, v0

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    sub-int v0, p1, v1

    int-to-long v6, v0

    mul-long/2addr v4, v6

    const/16 v0, 0x20

    shr-long/2addr v4, v0

    long-to-int v0, v4

    add-int/2addr v0, v1

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->CHECK_BIT([BI)I

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    :cond_0
    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->SET_BIT([BI)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static getHammingWeight([B)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v2
.end method
