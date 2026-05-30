.class Lorg/bouncycastle/pqc/crypto/cmce/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitrev(SI)S
    .locals 3

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    and-int/lit16 v1, v0, 0xf0f

    shl-int/lit8 v1, v1, 0x4

    const v2, 0xf0f0

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x4

    or-int/2addr v0, v1

    int-to-short v0, v0

    and-int/lit16 v1, v0, 0x3333

    shl-int/lit8 v1, v1, 0x2

    const v2, 0xcccc

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v1

    int-to-short v0, v0

    and-int/lit16 v1, v0, 0x5555

    shl-int/lit8 v1, v1, 0x1

    const v2, 0xaaaa

    and-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    or-int/2addr v0, v1

    int-to-short v0, v0

    const/16 v1, 0xc

    if-ne p1, v1, :cond_0

    shr-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_0
    shr-int/lit8 v0, v0, 0x3

    int-to-short v0, v0

    goto :goto_0
.end method

.method static load4([BI)I
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method static load8([BI)J
    .locals 2

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v0

    return-wide v0
.end method

.method static load_gf([BII)S
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v0

    and-int/2addr v0, p2

    int-to-short v0, v0

    return v0
.end method

.method static store8([BIJ)V
    .locals 6

    const-wide/16 v4, 0xff

    add-int/lit8 v0, p1, 0x0

    const/4 v1, 0x0

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x8

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x2

    const/16 v1, 0x10

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x3

    const/16 v1, 0x18

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x4

    const/16 v1, 0x20

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x5

    const/16 v1, 0x28

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x6

    const/16 v1, 0x30

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x38

    shr-long v2, p2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method

.method static store_gf([BIS)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    return-void
.end method
