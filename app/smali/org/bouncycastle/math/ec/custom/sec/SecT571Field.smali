.class public Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;
.super Ljava/lang/Object;


# static fields
.field private static final M59:J = 0x7ffffffffffffffL

.field private static final ROOT_Z:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    return-void

    :array_0
    .array-data 8
        0x2be1195f08cafb99L    # 2.5016400602366306E-97
        -0x6a0f73507b9a83ddL    # -5.27848393260514E-203
        -0x3507b9a83dcd41efL    # -1.4531635499737842E53
        0x657c232be1195f08L    # 7.297283174828906E180
        -0x7b9a83dcf73507cL
        0x7c232be1195f08caL    # 9.34156735235881E289
        -0x41ee6a0f73507b9bL    # -1.02362256409199E-9
        0x5f08caf84657c232L    # 6.340366030377565E149
        0x784657c232be119L
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add([JI[JI[JI)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    add-int v1, p5, v0

    add-int v2, p1, v0

    aget-wide v2, p0, v2

    add-int v4, p3, v0

    aget-wide v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static add([J[J[J)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addBothTo([JI[JI[JI)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    add-int v1, p5, v0

    aget-wide v2, p4, v1

    add-int v4, p1, v0

    aget-wide v4, p0, v4

    add-int v6, p3, v0

    aget-wide v6, p2, v6

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addBothTo([J[J[J)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v2, p2, v0

    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addExt([J[J[J)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x12

    if-ge v0, v1, :cond_0

    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addOne([J[J)V
    .locals 5

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    aput-wide v0, p1, v4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v2, p0, v0

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static addTo([J[J)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x9

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static fromBigInteger(Ljava/math/BigInteger;)[J
    .locals 1

    const/16 v0, 0x23b

    invoke-static {v0, p0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger64(ILjava/math/BigInteger;)[J

    move-result-object v0

    return-object v0
.end method

.method public static halfTrace([J[J)V
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v1

    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat576;->copy64([J[J)V

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x23b

    if-ge v0, v2, :cond_0

    invoke-static {p1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    invoke-static {p1, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addTo([J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static implMultiply([J[J[J)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x6

    const/4 v10, 0x5

    const/16 v9, 0x8

    const/4 v8, 0x7

    const/16 v0, 0x10

    new-array v1, v0, [J

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    shl-int/lit8 v7, v0, 0x1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-wide v2, p2, v0

    const/4 v0, 0x1

    aget-wide v4, p2, v0

    const/4 v0, 0x2

    aget-wide v6, p2, v0

    xor-long/2addr v2, v6

    const/4 v0, 0x1

    xor-long v6, v2, v4

    aput-wide v6, p2, v0

    aget-wide v6, p2, v12

    xor-long/2addr v4, v6

    const/4 v0, 0x4

    aget-wide v6, p2, v0

    xor-long/2addr v2, v6

    const/4 v0, 0x2

    xor-long v6, v2, v4

    aput-wide v6, p2, v0

    aget-wide v6, p2, v10

    xor-long/2addr v4, v6

    aget-wide v6, p2, v11

    xor-long/2addr v2, v6

    xor-long v6, v2, v4

    aput-wide v6, p2, v12

    aget-wide v6, p2, v8

    xor-long/2addr v4, v6

    aget-wide v6, p2, v9

    xor-long/2addr v2, v6

    const/4 v0, 0x4

    xor-long v6, v2, v4

    aput-wide v6, p2, v0

    const/16 v0, 0x9

    aget-wide v6, p2, v0

    xor-long/2addr v4, v6

    const/16 v0, 0xa

    aget-wide v6, p2, v0

    xor-long/2addr v2, v6

    xor-long v6, v2, v4

    aput-wide v6, p2, v10

    const/16 v0, 0xb

    aget-wide v6, p2, v0

    xor-long/2addr v4, v6

    const/16 v0, 0xc

    aget-wide v6, p2, v0

    xor-long/2addr v2, v6

    xor-long v6, v2, v4

    aput-wide v6, p2, v11

    const/16 v0, 0xd

    aget-wide v6, p2, v0

    xor-long/2addr v4, v6

    const/16 v0, 0xe

    aget-wide v6, p2, v0

    xor-long/2addr v2, v6

    xor-long v6, v2, v4

    aput-wide v6, p2, v8

    const/16 v0, 0xf

    aget-wide v6, p2, v0

    xor-long/2addr v4, v6

    const/16 v0, 0x10

    aget-wide v6, p2, v0

    xor-long/2addr v2, v6

    xor-long v6, v2, v4

    aput-wide v6, p2, v9

    const/16 v0, 0x11

    aget-wide v6, p2, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v0, 0x9

    const/4 v4, 0x0

    aget-wide v4, p2, v4

    xor-long/2addr v4, v2

    aput-wide v4, p2, v0

    const/16 v0, 0xa

    const/4 v4, 0x1

    aget-wide v4, p2, v4

    xor-long/2addr v4, v2

    aput-wide v4, p2, v0

    const/16 v0, 0xb

    const/4 v4, 0x2

    aget-wide v4, p2, v4

    xor-long/2addr v4, v2

    aput-wide v4, p2, v0

    const/16 v0, 0xc

    aget-wide v4, p2, v12

    xor-long/2addr v4, v2

    aput-wide v4, p2, v0

    const/16 v0, 0xd

    const/4 v4, 0x4

    aget-wide v4, p2, v4

    xor-long/2addr v4, v2

    aput-wide v4, p2, v0

    const/16 v0, 0xe

    aget-wide v4, p2, v10

    xor-long/2addr v4, v2

    aput-wide v4, p2, v0

    const/16 v0, 0xf

    aget-wide v4, p2, v11

    xor-long/2addr v4, v2

    aput-wide v4, p2, v0

    const/16 v0, 0x10

    aget-wide v4, p2, v8

    xor-long/2addr v4, v2

    aput-wide v4, p2, v0

    const/16 v0, 0x11

    aget-wide v4, p2, v9

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const/4 v0, 0x1

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    const/4 v0, 0x1

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    const/4 v7, 0x1

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const/4 v0, 0x2

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    const/4 v0, 0x2

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    const/4 v7, 0x2

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    aget-wide v4, p0, v12

    xor-long/2addr v2, v4

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    aget-wide v6, p1, v12

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v12

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    const/4 v0, 0x2

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    const/4 v0, 0x2

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v12

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const/4 v0, 0x4

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    const/4 v0, 0x4

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    const/4 v7, 0x4

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    aget-wide v4, p0, v12

    xor-long/2addr v2, v4

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    aget-wide v6, p1, v12

    xor-long/2addr v4, v6

    const/4 v7, 0x4

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    aget-wide v4, p0, v10

    xor-long/2addr v2, v4

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    aget-wide v6, p1, v10

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v10

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    const/4 v0, 0x4

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    const/4 v0, 0x4

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v10

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x2

    aget-wide v2, p0, v0

    aget-wide v4, p0, v12

    xor-long/2addr v2, v4

    const/4 v0, 0x2

    aget-wide v4, p1, v0

    aget-wide v6, p1, v12

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v10

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    aget-wide v4, p0, v11

    xor-long/2addr v2, v4

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    aget-wide v6, p1, v11

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v11

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    aget-wide v4, p0, v10

    xor-long/2addr v2, v4

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    aget-wide v6, p1, v10

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v11

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x2

    aget-wide v2, p0, v0

    const/4 v0, 0x4

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    const/4 v0, 0x2

    aget-wide v4, p1, v0

    const/4 v0, 0x4

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v11

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    aget-wide v4, p0, v8

    xor-long/2addr v2, v4

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    aget-wide v6, p1, v8

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v8

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    aget-wide v4, p0, v11

    xor-long/2addr v2, v4

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    aget-wide v6, p1, v11

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v8

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x2

    aget-wide v2, p0, v0

    aget-wide v4, p0, v10

    xor-long/2addr v2, v4

    const/4 v0, 0x2

    aget-wide v4, p1, v0

    aget-wide v6, p1, v10

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v8

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v12

    const/4 v0, 0x4

    aget-wide v4, p0, v0

    xor-long/2addr v2, v4

    aget-wide v4, p1, v12

    const/4 v0, 0x4

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v8

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    aget-wide v4, p0, v9

    xor-long/2addr v2, v4

    const/4 v0, 0x0

    aget-wide v4, p1, v0

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v9

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    aget-wide v4, p0, v8

    xor-long/2addr v2, v4

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    aget-wide v6, p1, v8

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v9

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x2

    aget-wide v2, p0, v0

    aget-wide v4, p0, v11

    xor-long/2addr v2, v4

    const/4 v0, 0x2

    aget-wide v4, p1, v0

    aget-wide v6, p1, v11

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v9

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v12

    aget-wide v4, p0, v10

    xor-long/2addr v2, v4

    aget-wide v4, p1, v12

    aget-wide v6, p1, v10

    xor-long/2addr v4, v6

    move-object v6, p2

    move v7, v9

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    aget-wide v4, p0, v9

    xor-long/2addr v2, v4

    const/4 v0, 0x1

    aget-wide v4, p1, v0

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    const/16 v7, 0x9

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x2

    aget-wide v2, p0, v0

    aget-wide v4, p0, v8

    xor-long/2addr v2, v4

    const/4 v0, 0x2

    aget-wide v4, p1, v0

    aget-wide v6, p1, v8

    xor-long/2addr v4, v6

    const/16 v7, 0x9

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v12

    aget-wide v4, p0, v11

    xor-long/2addr v2, v4

    aget-wide v4, p1, v12

    aget-wide v6, p1, v11

    xor-long/2addr v4, v6

    const/16 v7, 0x9

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x4

    aget-wide v2, p0, v0

    aget-wide v4, p0, v10

    xor-long/2addr v2, v4

    const/4 v0, 0x4

    aget-wide v4, p1, v0

    aget-wide v6, p1, v10

    xor-long/2addr v4, v6

    const/16 v7, 0x9

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x2

    aget-wide v2, p0, v0

    aget-wide v4, p0, v9

    xor-long/2addr v2, v4

    const/4 v0, 0x2

    aget-wide v4, p1, v0

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    const/16 v7, 0xa

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v12

    aget-wide v4, p0, v8

    xor-long/2addr v2, v4

    aget-wide v4, p1, v12

    aget-wide v6, p1, v8

    xor-long/2addr v4, v6

    const/16 v7, 0xa

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x4

    aget-wide v2, p0, v0

    aget-wide v4, p0, v11

    xor-long/2addr v2, v4

    const/4 v0, 0x4

    aget-wide v4, p1, v0

    aget-wide v6, p1, v11

    xor-long/2addr v4, v6

    const/16 v7, 0xa

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v12

    aget-wide v4, p0, v9

    xor-long/2addr v2, v4

    aget-wide v4, p1, v12

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    const/16 v7, 0xb

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x4

    aget-wide v2, p0, v0

    aget-wide v4, p0, v8

    xor-long/2addr v2, v4

    const/4 v0, 0x4

    aget-wide v4, p1, v0

    aget-wide v6, p1, v8

    xor-long/2addr v4, v6

    const/16 v7, 0xb

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v10

    aget-wide v4, p0, v11

    xor-long/2addr v2, v4

    aget-wide v4, p1, v10

    aget-wide v6, p1, v11

    xor-long/2addr v4, v6

    const/16 v7, 0xb

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    const/4 v0, 0x4

    aget-wide v2, p0, v0

    aget-wide v4, p0, v9

    xor-long/2addr v2, v4

    const/4 v0, 0x4

    aget-wide v4, p1, v0

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    const/16 v7, 0xc

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v10

    aget-wide v4, p0, v8

    xor-long/2addr v2, v4

    aget-wide v4, p1, v10

    aget-wide v6, p1, v8

    xor-long/2addr v4, v6

    const/16 v7, 0xc

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v10

    aget-wide v4, p0, v9

    xor-long/2addr v2, v4

    aget-wide v4, p1, v10

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    const/16 v7, 0xd

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v11

    aget-wide v4, p0, v8

    xor-long/2addr v2, v4

    aget-wide v4, p1, v11

    aget-wide v6, p1, v8

    xor-long/2addr v4, v6

    const/16 v7, 0xd

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v11

    aget-wide v4, p0, v9

    xor-long/2addr v2, v4

    aget-wide v4, p1, v11

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    const/16 v7, 0xe

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    aget-wide v2, p0, v8

    aget-wide v4, p0, v9

    xor-long/2addr v2, v4

    aget-wide v4, p1, v8

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    const/16 v7, 0xf

    move-object v6, p2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMulwAcc([JJJ[JI)V

    return-void
.end method

.method protected static implMultiplyPrecomp([J[J[J)V
    .locals 9

    const/16 v8, 0xf

    const/16 v0, 0x38

    move v7, v0

    :goto_0
    if-ltz v7, :cond_1

    const/4 v0, 0x1

    move v6, v0

    :goto_1
    const/16 v0, 0x9

    if-ge v6, v0, :cond_0

    aget-wide v0, p0, v6

    ushr-long/2addr v0, v7

    long-to-int v0, v0

    and-int v1, v0, v8

    ushr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v8

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v5, v6, -0x1

    move-object v0, p1

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    add-int/lit8 v0, v6, 0x2

    move v6, v0

    goto :goto_1

    :cond_0
    const/16 v0, 0x10

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    add-int/lit8 v0, v7, -0x8

    move v7, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x38

    move v6, v0

    :goto_2
    if-ltz v6, :cond_4

    const/4 v5, 0x0

    :goto_3
    const/16 v0, 0x9

    if-ge v5, v0, :cond_2

    aget-wide v0, p0, v5

    ushr-long/2addr v0, v6

    long-to-int v0, v0

    and-int v1, v0, v8

    ushr-int/lit8 v0, v0, 0x4

    and-int/2addr v0, v8

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v0, v0, 0x10

    mul-int/lit8 v3, v0, 0x9

    move-object v0, p1

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addBothTo([JI[JI[JI)V

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_2
    if-lez v6, :cond_3

    const/16 v0, 0x12

    const/4 v2, 0x0

    const/16 v3, 0x8

    const-wide/16 v4, 0x0

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ)J

    :cond_3
    add-int/lit8 v0, v6, -0x8

    move v6, v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method protected static implMulwAcc([JJJ[JI)V
    .locals 11

    const/4 v0, 0x1

    aput-wide p3, p0, v0

    const/4 v0, 0x2

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    ushr-int/lit8 v1, v0, 0x1

    aget-wide v2, p0, v1

    const/4 v1, 0x1

    shl-long/2addr v2, v1

    aput-wide v2, p0, v0

    add-int/lit8 v1, v0, 0x1

    aget-wide v2, p0, v0

    xor-long/2addr v2, p3

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    long-to-int v0, p1

    const-wide/16 v4, 0x0

    and-int/lit8 v1, v0, 0xf

    aget-wide v2, p0, v1

    ushr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0xf

    aget-wide v0, p0, v0

    const/4 v6, 0x4

    shl-long/2addr v0, v6

    xor-long/2addr v2, v0

    const/16 v0, 0x38

    :cond_1
    ushr-long v6, p1, v0

    long-to-int v1, v6

    and-int/lit8 v6, v1, 0xf

    aget-wide v6, p0, v6

    ushr-int/lit8 v1, v1, 0x4

    and-int/lit8 v1, v1, 0xf

    aget-wide v8, p0, v1

    const/4 v1, 0x4

    shl-long/2addr v8, v1

    xor-long/2addr v6, v8

    shl-long v8, v6, v0

    xor-long/2addr v2, v8

    neg-int v1, v0

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    add-int/lit8 v0, v0, -0x8

    if-gtz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x7

    if-ge v0, v1, :cond_2

    const-wide v6, -0x101010101010102L

    and-long/2addr v6, p1

    const/4 v1, 0x1

    ushr-long p1, v6, v1

    shl-long v6, p3, v0

    const/16 v1, 0x3f

    shr-long/2addr v6, v1

    and-long/2addr v6, p1

    xor-long/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aget-wide v0, p5, p6

    xor-long/2addr v0, v2

    aput-wide v0, p5, p6

    add-int/lit8 v0, p6, 0x1

    aget-wide v2, p5, v0

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    return-void
.end method

.method protected static implSquare([J[J)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x9

    invoke-static {p0, v1, v0, p1, v1}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128([JII[JI)V

    return-void
.end method

.method public static invert([J[J)V
    .locals 8

    const/16 v7, 0xb4

    const/16 v6, 0x3c

    const/16 v5, 0x1e

    const/4 v4, 0x5

    invoke-static {p0}, Lorg/bouncycastle/math/raw/Nat576;->isZero64([J)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v2

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    invoke-static {v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->square([J[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/4 v3, 0x2

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v0, v2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v0, v4, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v1, v4, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    const/16 v3, 0xf

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v2, v5, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v0, v6, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v1, v6, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v0, v7, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v1, v7, v1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->squareN([JI[J)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    return-void
.end method

.method public static multiply([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyAddToExt([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiply([J[J[J)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    return-void
.end method

.method public static multiplyPrecomp([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiplyPrecomp([J[J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    return-void
.end method

.method public static multiplyPrecompAddToExt([J[J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implMultiplyPrecomp([J[J[J)V

    invoke-static {p2, v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    return-void
.end method

.method public static precompMultiplicand([J)[J
    .locals 10

    const/16 v9, 0x90

    const/16 v0, 0x120

    new-array v2, v0, [J

    const/4 v0, 0x0

    const/16 v1, 0x9

    const/16 v3, 0x9

    invoke-static {p0, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    const/4 v0, 0x7

    move v8, v0

    :goto_0
    if-lez v8, :cond_0

    add-int/lit8 v7, v7, 0x12

    const/16 v1, 0x9

    ushr-int/lit8 v3, v7, 0x1

    const-wide/16 v4, 0x0

    move-object v6, v2

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBit64(I[JIJ[JI)J

    invoke-static {v2, v7}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce5([JI)V

    const/16 v1, 0x9

    add-int/lit8 v5, v7, 0x9

    move-object v0, v2

    move v3, v7

    move-object v4, v2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([JI[JI[JI)V

    add-int/lit8 v0, v8, -0x1

    move v8, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    move v1, v9

    move-object v7, v2

    move v8, v9

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/math/raw/Nat;->shiftUpBits64(I[JIIJ[JI)J

    return-object v2
.end method

.method public static reduce([J[J)V
    .locals 10

    const/16 v0, 0x9

    aget-wide v0, p0, v0

    const/16 v2, 0x11

    aget-wide v2, p0, v2

    const/16 v4, 0x3b

    ushr-long v4, v2, v4

    xor-long/2addr v0, v4

    const/16 v4, 0x39

    ushr-long v4, v2, v4

    xor-long/2addr v0, v4

    const/16 v4, 0x36

    ushr-long v4, v2, v4

    xor-long/2addr v0, v4

    const/16 v4, 0x31

    ushr-long v4, v2, v4

    xor-long/2addr v4, v0

    const/16 v0, 0x8

    aget-wide v0, p0, v0

    const/4 v6, 0x5

    shl-long v6, v2, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x7

    shl-long v6, v2, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xa

    shl-long v6, v2, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xf

    shl-long/2addr v2, v6

    xor-long/2addr v2, v0

    const/16 v0, 0x10

    :goto_0
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    aget-wide v6, p0, v0

    add-int/lit8 v1, v0, -0x8

    const/16 v8, 0x3b

    ushr-long v8, v6, v8

    xor-long/2addr v2, v8

    const/16 v8, 0x39

    ushr-long v8, v6, v8

    xor-long/2addr v2, v8

    const/16 v8, 0x36

    ushr-long v8, v6, v8

    xor-long/2addr v2, v8

    const/16 v8, 0x31

    ushr-long v8, v6, v8

    xor-long/2addr v2, v8

    aput-wide v2, p1, v1

    add-int/lit8 v1, v0, -0x9

    aget-wide v2, p0, v1

    const/4 v1, 0x5

    shl-long v8, v6, v1

    xor-long/2addr v2, v8

    const/4 v1, 0x7

    shl-long v8, v6, v1

    xor-long/2addr v2, v8

    const/16 v1, 0xa

    shl-long v8, v6, v1

    xor-long/2addr v2, v8

    const/16 v1, 0xf

    shl-long/2addr v6, v1

    xor-long/2addr v2, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/16 v1, 0x3b

    ushr-long v6, v4, v1

    xor-long/2addr v2, v6

    const/16 v1, 0x39

    ushr-long v6, v4, v1

    xor-long/2addr v2, v6

    const/16 v1, 0x36

    ushr-long v6, v4, v1

    xor-long/2addr v2, v6

    const/16 v1, 0x31

    ushr-long v6, v4, v1

    xor-long/2addr v2, v6

    aput-wide v2, p1, v0

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x5

    shl-long v2, v4, v2

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    shl-long v2, v4, v2

    xor-long/2addr v0, v2

    const/16 v2, 0xa

    shl-long v2, v4, v2

    xor-long/2addr v0, v2

    const/16 v2, 0xf

    shl-long v2, v4, v2

    xor-long/2addr v0, v2

    const/16 v2, 0x8

    aget-wide v2, p1, v2

    const/16 v4, 0x3b

    ushr-long v4, v2, v4

    const/4 v6, 0x0

    xor-long/2addr v0, v4

    const/4 v7, 0x2

    shl-long v8, v4, v7

    xor-long/2addr v0, v8

    const/4 v7, 0x5

    shl-long v8, v4, v7

    xor-long/2addr v0, v8

    const/16 v7, 0xa

    shl-long/2addr v4, v7

    xor-long/2addr v0, v4

    aput-wide v0, p1, v6

    const/16 v0, 0x8

    const-wide v4, 0x7ffffffffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static reduce5([JI)V
    .locals 10

    add-int/lit8 v0, p1, 0x8

    aget-wide v0, p0, v0

    const/16 v2, 0x3b

    ushr-long v2, v0, v2

    aget-wide v4, p0, p1

    const/4 v6, 0x2

    shl-long v6, v2, v6

    xor-long/2addr v6, v2

    const/4 v8, 0x5

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    const/16 v8, 0xa

    shl-long/2addr v2, v8

    xor-long/2addr v2, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, p1

    add-int/lit8 v2, p1, 0x8

    const-wide v4, 0x7ffffffffffffffL

    and-long/2addr v0, v4

    aput-wide v0, p0, v2

    return-void
.end method

.method public static sqrt([J[J)V
    .locals 12

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->create64()[J

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v1, 0x1

    aget-wide v6, p0, v1

    invoke-static {v6, v7}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v6

    add-int/lit8 v1, v4, 0x1

    aget-wide v4, p0, v4

    invoke-static {v4, v5}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v4

    const-wide v8, 0xffffffffL

    and-long/2addr v8, v6

    const/16 v10, 0x20

    shl-long v10, v4, v10

    or-long/2addr v8, v10

    aput-wide v8, v2, v0

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    const-wide v8, -0x100000000L

    and-long/2addr v4, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-wide v0, p0, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/raw/Interleave;->unshuffle(J)J

    move-result-wide v0

    const/4 v4, 0x4

    const-wide v6, 0xffffffffL

    and-long/2addr v6, v0

    aput-wide v6, v2, v4

    const/4 v4, 0x4

    const/16 v5, 0x20

    ushr-long/2addr v0, v5

    aput-wide v0, v3, v4

    sget-object v0, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->ROOT_Z:[J

    invoke-static {v3, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->multiply([J[J[J)V

    invoke-static {p1, v2, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->add([J[J[J)V

    return-void
.end method

.method public static square([J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    return-void
.end method

.method public static squareAddToExt([J[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->addExt([J[J[J)V

    return-void
.end method

.method public static squareN([JI[J)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat576;->createExt64()[J

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, v0}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->implSquare([J[J)V

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecT571Field;->reduce([J[J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static trace([J)I
    .locals 6

    const/16 v5, 0x8

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    aget-wide v2, p0, v5

    const/16 v4, 0x31

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    aget-wide v2, p0, v5

    const/16 v4, 0x39

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
