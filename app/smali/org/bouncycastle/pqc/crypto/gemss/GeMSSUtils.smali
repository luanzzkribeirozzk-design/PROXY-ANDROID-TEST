.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static CMP_LT_UINT(JJ)J
    .locals 10

    const-wide v6, 0x7fffffffffffffffL

    const/16 v8, 0x3f

    ushr-long v0, p0, v8

    ushr-long v2, p2, v8

    xor-long/2addr v0, v2

    ushr-long v2, p0, v8

    ushr-long v4, p2, v8

    sub-long/2addr v2, v4

    ushr-long/2addr v2, v8

    and-long/2addr v0, v2

    ushr-long v2, p0, v8

    ushr-long v4, p2, v8

    xor-long/2addr v2, v4

    const-wide/16 v4, 0x1

    xor-long/2addr v2, v4

    and-long v4, p0, v6

    and-long/2addr v6, p2

    sub-long/2addr v4, v6

    ushr-long/2addr v4, v8

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method static Highest_One(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x1

    or-int/2addr v0, p0

    ushr-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x10

    or-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x1

    xor-int/2addr v0, v1

    return v0
.end method

.method static NORBITS_UINT(J)J
    .locals 4

    const/16 v2, 0x20

    shl-long v0, p0, v2

    or-long/2addr v0, p0

    ushr-long/2addr v0, v2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    return-wide v0
.end method

.method static ORBITS_UINT(J)J
    .locals 6

    const/16 v4, 0x20

    shl-long v0, p0, v4

    or-long/2addr v0, p0

    ushr-long/2addr v0, v4

    const-wide v2, 0xffffffffL

    add-long/2addr v0, v2

    ushr-long/2addr v0, v4

    return-wide v0
.end method

.method static XORBITS_UINT(J)J
    .locals 4

    const/4 v0, 0x1

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const/4 v2, 0x2

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, -0x7777777777777778L    # -1.48603973805866E-267

    and-long/2addr v0, v2

    const-wide v2, 0x1111111111111111L

    mul-long/2addr v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    return-wide v0
.end method

.method static maskUINT(I)J
    .locals 4

    const-wide/16 v2, 0x1

    if-eqz p0, :cond_0

    shl-long v0, v2, p0

    sub-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method
