.class public Lorg/bouncycastle/math/ec/ECAlgorithms;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point must be on the same curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/ECPoint;->getEncoded(Z)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method static implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isValidPartial()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid result"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method

.method private static implShamirsTrickFixedPoint(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 17

    invoke-virtual/range {p0 .. p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-gt v4, v3, :cond_0

    invoke-virtual/range {p3 .. p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    if-le v4, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/bouncycastle/math/ec/FixedPointUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/math/ec/FixedPointUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v8

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v9

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v10

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v4

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v5

    if-eq v4, v5, :cond_2

    new-instance v2, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;

    invoke-direct {v2}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;->multiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    div-int v11, v3, v4

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    mul-int v2, v11, v4

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v12

    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v13

    add-int/lit8 v14, v2, -0x1

    const/4 v2, 0x0

    move v5, v2

    move-object v6, v3

    :goto_1
    if-ge v5, v11, :cond_4

    const/4 v4, 0x0

    const/4 v3, 0x0

    sub-int v2, v14, v5

    :goto_2
    if-ltz v2, :cond_3

    ushr-int/lit8 v15, v2, 0x5

    aget v15, v12, v15

    and-int/lit8 v16, v2, 0x1f

    ushr-int v15, v15, v16

    ushr-int/lit8 v16, v15, 0x1

    xor-int v4, v4, v16

    shl-int/lit8 v4, v4, 0x1

    xor-int/2addr v4, v15

    ushr-int/lit8 v15, v2, 0x5

    aget v15, v13, v15

    and-int/lit8 v16, v2, 0x1f

    ushr-int v15, v15, v16

    ushr-int/lit8 v16, v15, 0x1

    xor-int v3, v3, v16

    shl-int/lit8 v3, v3, 0x1

    xor-int/2addr v3, v15

    sub-int/2addr v2, v11

    goto :goto_2

    :cond_3
    invoke-interface {v9, v4}, Lorg/bouncycastle/math/ec/ECLookupTable;->lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-interface {v10, v3}, Lorg/bouncycastle/math/ec/ECLookupTable;->lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v6, v3

    goto :goto_1

    :cond_4
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v6, v2}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto :goto_0
.end method

.method static implShamirsTrickJsf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p0, p2}, Lorg/bouncycastle/math/ec/ECPoint;->subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    new-array v4, v9, [Lorg/bouncycastle/math/ec/ECPoint;

    aput-object p2, v4, v5

    aput-object v3, v4, v6

    aput-object p0, v4, v7

    aput-object v2, v4, v8

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    const/16 v0, 0x9

    new-array v2, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    aget-object v0, v4, v8

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v2, v5

    aget-object v0, v4, v7

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v2, v6

    aget-object v0, v4, v6

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v2, v7

    aget-object v0, v4, v5

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v2, v8

    aput-object v1, v2, v9

    const/4 v0, 0x5

    aget-object v3, v4, v5

    aput-object v3, v2, v0

    const/4 v0, 0x6

    aget-object v3, v4, v6

    aput-object v3, v2, v0

    const/4 v0, 0x7

    aget-object v3, v4, v7

    aput-object v3, v2, v0

    const/16 v0, 0x8

    aget-object v3, v4, v8

    aput-object v3, v2, v0

    invoke-static {p1, p3}, Lorg/bouncycastle/math/ec/WNafUtil;->generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B

    move-result-object v3

    array-length v0, v3

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget-byte v4, v3, v0

    shl-int/lit8 v5, v4, 0x18

    shr-int/lit8 v5, v5, 0x1c

    shl-int/lit8 v4, v4, 0x1c

    shr-int/lit8 v4, v4, 0x1c

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    aget-object v4, v2, v4

    invoke-virtual {v1, v4}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method static implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    const/4 v2, 0x0

    const/16 v9, 0x8

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_1

    move v1, v0

    :goto_0
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-static {v3, v9}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v3

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    invoke-static {v4, v9}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v4

    invoke-static {p0, v3, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    invoke-static {p2, v4, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v0

    if-nez v1, :cond_2

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-gt v3, v0, :cond_2

    invoke-virtual {p3}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-gt v3, v0, :cond_2

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->isPromoted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->isPromoted()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickFixedPoint(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-eqz v1, :cond_3

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_2
    if-eqz v2, :cond_4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    :goto_3
    if-eqz v1, :cond_5

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :goto_4
    if-eqz v2, :cond_6

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    :goto_5
    invoke-static {v8, v5}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v9, v6}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B[Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    goto :goto_5
.end method

.method static implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    const/4 v2, 0x0

    const/16 v9, 0x8

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_1

    move v1, v0

    :goto_0
    invoke-virtual {p3}, Ljava/math/BigInteger;->signum()I

    move-result v3

    if-gez v3, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p2}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p3}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v5}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3, v9}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v3

    invoke-static {p1, v3, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v4

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-interface {p0}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;

    move-result-object v7

    invoke-static {v3, v7, v4, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;Lorg/bouncycastle/math/ec/WNafPreCompInfo;Z)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v7

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    if-eqz v1, :cond_2

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    :goto_2
    if-eqz v1, :cond_4

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :goto_3
    if-eqz v2, :cond_5

    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    :goto_4
    invoke-static {v8, v5}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v9, v6}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf([Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B[Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    goto :goto_4
.end method

.method private static implShamirsTrickWNaf([Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B[Lorg/bouncycastle/math/ec/ECPoint;[Lorg/bouncycastle/math/ec/ECPoint;[B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 9

    const/4 v1, 0x0

    array-length v0, p2

    array-length v2, p5

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    add-int/lit8 v0, v0, -0x1

    move v7, v0

    move v2, v1

    move-object v3, v5

    :goto_0
    if-ltz v7, :cond_6

    array-length v0, p2

    if-ge v7, v0, :cond_0

    aget-byte v0, p2, v7

    :goto_1
    array-length v4, p5

    if-ge v7, v4, :cond_1

    aget-byte v4, p5, v7

    move v6, v4

    :goto_2
    or-int v4, v0, v6

    if-nez v4, :cond_2

    add-int/lit8 v0, v2, 0x1

    :goto_3
    add-int/lit8 v4, v7, -0x1

    move v7, v4

    move v2, v0

    goto :goto_0

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v6, v1

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gez v0, :cond_4

    move-object v0, p1

    :goto_4
    ushr-int/lit8 v4, v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v5, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    :goto_5
    if-eqz v6, :cond_3

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-gez v6, :cond_5

    move-object v0, p4

    :goto_6
    ushr-int/lit8 v6, v8, 0x1

    aget-object v0, v0, v6

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    move-object v4, v0

    :cond_3
    if-lez v2, :cond_8

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    move v0, v1

    move-object v3, v2

    :goto_7
    invoke-virtual {v3, v4}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    goto :goto_3

    :cond_4
    move-object v0, p0

    goto :goto_4

    :cond_5
    move-object v0, p3

    goto :goto_6

    :cond_6
    if-lez v2, :cond_7

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    :cond_7
    return-object v3

    :cond_8
    move v0, v2

    goto :goto_7

    :cond_9
    move-object v4, v5

    goto :goto_5
.end method

.method static implSumOfMultiplies(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;[Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 16

    move-object/from16 v0, p1

    array-length v3, v0

    shl-int/lit8 v1, v3, 0x1

    new-array v4, v1, [Z

    new-array v5, v1, [Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    new-array v6, v1, [[B

    invoke-interface/range {p0 .. p0}, Lorg/bouncycastle/math/ec/endo/ECEndomorphism;->getPointMap()Lorg/bouncycastle/math/ec/ECPointMap;

    move-result-object v7

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_2

    shl-int/lit8 v8, v2, 0x1

    add-int/lit8 v9, v8, 0x1

    aget-object v10, p2, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    aput-boolean v1, v4, v8

    invoke-virtual {v10}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v10

    aget-object v11, p2, v9

    invoke-virtual {v11}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    :goto_2
    aput-boolean v1, v4, v9

    invoke-virtual {v11}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v10}, Ljava/math/BigInteger;->bitLength()I

    move-result v11

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    const/16 v12, 0x8

    invoke-static {v11, v12}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v11

    aget-object v12, p1, v2

    const/4 v13, 0x1

    invoke-static {v12, v11, v13}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v12

    const/4 v13, 0x1

    invoke-static {v12, v7, v11, v13}, Lorg/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;Lorg/bouncycastle/math/ec/WNafPreCompInfo;Z)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v12

    const/16 v13, 0x8

    invoke-virtual {v11}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v14

    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v13

    const/16 v14, 0x8

    invoke-virtual {v12}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v14

    aput-object v11, v5, v8

    aput-object v12, v5, v9

    invoke-static {v13, v10}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v10

    aput-object v10, v6, v8

    invoke-static {v14, v1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v1

    aput-object v1, v6, v9

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-static {v4, v5, v6}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    return-object v1
.end method

.method static implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 11

    const/16 v10, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v4, p0

    new-array v5, v4, [Z

    new-array v6, v4, [Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    new-array v7, v4, [[B

    move v3, v2

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v8, p1, v3

    invoke-virtual {v8}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-gez v0, :cond_0

    move v0, v1

    :goto_1
    aput-boolean v0, v5, v3

    invoke-virtual {v8}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v8

    invoke-static {v8, v10}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(II)I

    move-result v8

    aget-object v9, p0, v3

    invoke-static {v9, v8, v1}, Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v9

    invoke-static {v10, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    aput-object v8, v6, v3

    invoke-static {v9, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->generateWindowNaf(ILjava/math/BigInteger;)[B

    move-result-object v0

    aput-object v0, v7, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    invoke-static {v5, v6, v7}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Z[Lorg/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method private static implSumOfMultiplies([Z[Lorg/bouncycastle/math/ec/WNafPreCompInfo;[[B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 12

    const/4 v1, 0x0

    array-length v8, p2

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v8, :cond_0

    aget-object v3, p2, v0

    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v0, p1, v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    add-int/lit8 v0, v2, -0x1

    move v7, v0

    move v3, v1

    move-object v4, v6

    :goto_1
    if-ltz v7, :cond_6

    move v5, v1

    move-object v2, v6

    :goto_2
    if-ge v5, v8, :cond_4

    aget-object v0, p2, v5

    array-length v9, v0

    if-ge v7, v9, :cond_1

    aget-byte v0, v0, v7

    :goto_3
    if-eqz v0, :cond_9

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v9

    aget-object v10, p1, v5

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_4
    aget-boolean v11, p0, v5

    if-ne v0, v11, :cond_3

    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_5
    ushr-int/lit8 v9, v9, 0x1

    aget-object v0, v0, v9

    invoke-virtual {v2, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_6
    add-int/lit8 v5, v5, 0x1

    move-object v2, v0

    goto :goto_2

    :cond_1
    move v0, v1

    goto :goto_3

    :cond_2
    move v0, v1

    goto :goto_4

    :cond_3
    invoke-virtual {v10}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_5

    :cond_4
    if-ne v2, v6, :cond_5

    add-int/lit8 v0, v3, 0x1

    :goto_7
    add-int/lit8 v2, v7, -0x1

    move v7, v2

    move v3, v0

    goto :goto_1

    :cond_5
    if-lez v3, :cond_8

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move v0, v1

    move-object v4, v3

    :goto_8
    invoke-virtual {v4, v2}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    goto :goto_7

    :cond_6
    if-lez v3, :cond_7

    invoke-virtual {v4, v3}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    :cond_7
    return-object v4

    :cond_8
    move v0, v3

    goto :goto_8

    :cond_9
    move-object v0, v2

    goto :goto_6
.end method

.method static implSumOfMultipliesGLV([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 9

    const/4 v1, 0x0

    aget-object v0, p0, v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    array-length v4, p0

    shl-int/lit8 v0, v4, 0x1

    new-array v5, v0, [Ljava/math/BigInteger;

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v6, p1, v2

    invoke-virtual {v6, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {p2, v6}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->decomposeScalar(Ljava/math/BigInteger;)[Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    aget-object v8, v6, v1

    aput-object v8, v5, v0

    add-int/lit8 v0, v7, 0x1

    const/4 v8, 0x1

    aget-object v6, v6, v8

    aput-object v6, v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;->hasEfficientPointMap()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2, p0, v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;[Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    shl-int/lit8 v0, v4, 0x1

    new-array v3, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    move v0, v1

    move v2, v1

    :goto_2
    if-ge v2, v4, :cond_2

    aget-object v1, p0, v2

    invoke-static {p2, v1}, Lorg/bouncycastle/math/ec/endo/EndoUtil;->mapPoint(Lorg/bouncycastle/math/ec/endo/ECEndomorphism;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    aput-object v1, v3, v0

    add-int/lit8 v0, v7, 0x1

    aput-object v6, v3, v7

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_2
    invoke-static {v3, v5}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1
.end method

.method public static importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/math/ec/ECCurve;->equals(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Point must be on the same curve"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->importPoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static isF2mCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isF2mField(Lorg/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static isF2mField(Lorg/bouncycastle/math/field/FiniteField;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v1

    if-le v1, v0, :cond_0

    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getCharacteristic()Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/math/ec/ECConstants;->TWO:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p0, Lorg/bouncycastle/math/field/PolynomialExtensionField;

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECCurve;->getField()Lorg/bouncycastle/math/field/FiniteField;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpField(Lorg/bouncycastle/math/field/FiniteField;)Z

    move-result v0

    return v0
.end method

.method public static isFpField(Lorg/bouncycastle/math/field/FiniteField;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-interface {p0}, Lorg/bouncycastle/math/field/FiniteField;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;IILorg/bouncycastle/math/ec/ECFieldElement;)V

    return-void
.end method

.method public static montgomeryTrick([Lorg/bouncycastle/math/ec/ECFieldElement;IILorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 6

    const/4 v0, 0x0

    new-array v3, p2, [Lorg/bouncycastle/math/ec/ECFieldElement;

    aget-object v1, p0, p1

    aput-object v1, v3, v0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_0

    add-int/lit8 v1, v0, -0x1

    aget-object v1, v3, v1

    add-int v2, p1, v0

    aget-object v2, p0, v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    aput-object v1, v3, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, -0x1

    if-eqz p3, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0, p3}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    aput-object v0, v3, v1

    :cond_1
    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->invert()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    :goto_1
    if-lez v1, :cond_2

    add-int/lit8 v2, v1, -0x1

    add-int/2addr v1, p1

    aget-object v4, p0, v1

    aget-object v5, v3, v2

    invoke-virtual {v5, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v5

    aput-object v5, p0, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    move v1, v2

    goto :goto_1

    :cond_2
    aput-object v0, p0, p1

    return-void
.end method

.method public static referenceMultiply(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    invoke-virtual {p1}, Ljava/math/BigInteger;->abs()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v0, p0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-ge v1, v3, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object p0

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0, p0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v1

    if-gez v1, :cond_3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :cond_3
    return-object v0
.end method

.method public static shamirsTrick(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickJsf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static sumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    const/4 v0, 0x1

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    array-length v1, p0

    array-length v2, p1

    if-ne v1, v2, :cond_0

    array-length v1, p0

    if-ge v1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "point and scalar arrays should be non-null, and of equal, non-zero, length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v1, p0

    packed-switch v1, :pswitch_data_0

    aget-object v2, p0, v5

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v3

    new-array v4, v1, [Lorg/bouncycastle/math/ec/ECPoint;

    aput-object v2, v4, v5

    :goto_0
    if-ge v0, v1, :cond_2

    aget-object v2, p0, v0

    invoke-static {v3, v2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    aget-object v0, p0, v5

    aget-object v1, p1, v5

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_1
    aget-object v1, p0, v5

    aget-object v2, p1, v5

    aget-object v3, p0, v0

    aget-object v0, p1, v0

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v4, p1, v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v4, p1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultiplies([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-static {v1, p2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->importPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    instance-of v0, v1, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    if-eqz v0, :cond_0

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->isKoblitz()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v2, p3}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getEndomorphism()Lorg/bouncycastle/math/ec/endo/ECEndomorphism;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    if-eqz v1, :cond_1

    new-array v1, v5, [Lorg/bouncycastle/math/ec/ECPoint;

    aput-object p0, v1, v3

    aput-object v2, v1, v4

    new-array v2, v5, [Ljava/math/BigInteger;

    aput-object p1, v2, v3

    aput-object p3, v2, v4

    check-cast v0, Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implSumOfMultipliesGLV([Lorg/bouncycastle/math/ec/ECPoint;[Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/GLVEndomorphism;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, v2, p3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implShamirsTrickWNaf(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/ECAlgorithms;->implCheckResult(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    goto :goto_0
.end method

.method public static validatePoint(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Invalid point"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method
