.class public Lorg/bouncycastle/math/raw/Interleave;
.super Ljava/lang/Object;


# static fields
.field private static final M32:J = 0x55555555L

.field private static final M64:J = 0x5555555555555555L

.field private static final M64R:J = -0x5555555555555556L


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expand16to32(I)I
    .locals 2

    const v0, 0xffff

    and-int/2addr v0, p0

    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v0, v1

    const v1, 0xff00ff

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    const v1, 0xf0f0f0f

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    const v1, 0x33333333

    and-int/2addr v0, v1

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    const v1, 0x55555555

    and-int/2addr v0, v1

    return v0
.end method

.method public static expand32to64(I)J
    .locals 6

    const-wide/32 v4, 0x55555555

    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xf000f0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xc0c0c0c

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0x22222222

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1

    int-to-long v2, v1

    and-long/2addr v2, v4

    const/16 v1, 0x20

    shl-long/2addr v2, v1

    int-to-long v0, v0

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static expand64To128(J[JI)V
    .locals 8

    const-wide v6, 0x5555555555555555L    # 1.1945305291614955E103

    const/4 v5, 0x1

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {p0, p1, v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xff000000ff00L

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xf000f000f000f0L

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xc0c0c0c0c0c0c0cL

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0x2222222222222222L

    invoke-static {v0, v1, v2, v3, v5}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    and-long v2, v0, v6

    aput-wide v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    ushr-long/2addr v0, v5

    and-long/2addr v0, v6

    aput-wide v0, p2, v2

    return-void
.end method

.method public static expand64To128([JII[JI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    aget-wide v2, p0, v1

    invoke-static {v2, v3, p3, p4}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    add-int/lit8 p4, p4, 0x2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static expand64To128Rev(J[JI)V
    .locals 8

    const-wide v6, -0x5555555555555556L

    const/4 v5, 0x1

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {p0, p1, v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xff000000ff00L

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xf000f000f000f0L

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xc0c0c0c0c0c0c0cL

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0x2222222222222222L

    invoke-static {v0, v1, v2, v3, v5}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    and-long v2, v0, v6

    aput-wide v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    shl-long/2addr v0, v5

    and-long/2addr v0, v6

    aput-wide v0, p2, v2

    return-void
.end method

.method public static expand8to16(I)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v1, v0, 0x4

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xf0f

    shl-int/lit8 v1, v0, 0x2

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x3333

    shl-int/lit8 v1, v0, 0x1

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0x5555

    return v0
.end method

.method public static shuffle(I)I
    .locals 3

    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xf000f0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xc0c0c0c

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0x22222222

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    return v0
.end method

.method public static shuffle(J)J
    .locals 6

    const-wide v0, 0xffff0000L

    const/16 v2, 0x10

    invoke-static {p0, p1, v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xff000000ff00L

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xf000f000f000f0L

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xc0c0c0c0c0c0c0cL

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0x2222222222222222L

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static shuffle2(I)I
    .locals 3

    const v0, 0xaa00aa

    const/4 v1, 0x7

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xcccc

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xf000f0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xff00

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    return v0
.end method

.method public static shuffle2(J)J
    .locals 6

    const-wide v0, 0xff00ff00L

    const/16 v2, 0x18

    invoke-static {p0, p1, v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xcc00cc00cc00ccL

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xf0f00000f0f0L

    const/16 v4, 0xc

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xa0a0a0a0a0a0a0aL

    const/4 v4, 0x3

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static shuffle3(J)J
    .locals 6

    const-wide v0, 0xaa00aa00aa00aaL

    const/4 v2, 0x7

    invoke-static {p0, p1, v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xcccc0000ccccL

    const/16 v4, 0xe

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xf0f0f0f0L

    const/16 v4, 0x1c

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static unshuffle(I)I
    .locals 3

    const v0, 0x22222222

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xc0c0c0c

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xf000f0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xff00

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    return v0
.end method

.method public static unshuffle(J)J
    .locals 6

    const-wide v0, 0x2222222222222222L

    const/4 v2, 0x1

    invoke-static {p0, p1, v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xc0c0c0c0c0c0c0cL

    const/4 v4, 0x2

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xf000f000f000f0L

    const/4 v4, 0x4

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xff000000ff00L

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xffff0000L

    const/16 v4, 0x10

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static unshuffle2(I)I
    .locals 3

    const v0, 0xff00

    const/16 v1, 0x8

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xf000f0

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xcccc

    const/16 v2, 0xe

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    const v1, 0xaa00aa

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(III)I

    move-result v0

    return v0
.end method

.method public static unshuffle2(J)J
    .locals 6

    const-wide v0, 0xa0a0a0a0a0a0a0aL

    const/4 v2, 0x3

    invoke-static {p0, p1, v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xf0f00000f0f0L

    const/16 v4, 0xc

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xcc00cc00cc00ccL

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    const-wide v2, 0xff00ff00L

    const/16 v4, 0x18

    invoke-static {v0, v1, v2, v3, v4}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStep(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static unshuffle3(J)J
    .locals 2

    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Interleave;->shuffle3(J)J

    move-result-wide v0

    return-wide v0
.end method
