.class public Lorg/bouncycastle/math/ec/FixedPointCombMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 12

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-le v3, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fixed-point comb doesn\'t support scalars larger than the curve order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/math/ec/FixedPointUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v6

    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    div-int v7, v1, v3

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    mul-int v1, v7, v3

    invoke-static {v1, p2}, Lorg/bouncycastle/math/raw/Nat;->fromBigInteger(ILjava/math/BigInteger;)[I

    move-result-object v8

    add-int/lit8 v9, v1, -0x1

    move v3, v2

    move-object v4, v0

    :goto_0
    if-ge v3, v7, :cond_2

    sub-int v0, v9, v3

    move v1, v2

    :goto_1
    if-ltz v0, :cond_1

    ushr-int/lit8 v10, v0, 0x5

    aget v10, v8, v10

    and-int/lit8 v11, v0, 0x1f

    ushr-int/2addr v10, v11

    ushr-int/lit8 v11, v10, 0x1

    xor-int/2addr v1, v11

    shl-int/lit8 v1, v1, 0x1

    xor-int/2addr v1, v10

    sub-int/2addr v0, v7

    goto :goto_1

    :cond_1
    invoke-interface {v6, v1}, Lorg/bouncycastle/math/ec/ECLookupTable;->lookup(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECPoint;->twicePlus(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move-object v4, v1

    goto :goto_0

    :cond_2
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getOffset()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
