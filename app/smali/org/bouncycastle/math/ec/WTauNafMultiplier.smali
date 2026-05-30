.class public Lorg/bouncycastle/math/ec/WTauNafMultiplier;
.super Lorg/bouncycastle/math/ec/AbstractECMultiplier;


# static fields
.field static final PRECOMP_NAME:Ljava/lang/String; = "bc_wtnaf"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECMultiplier;-><init>()V

    return-void
.end method

.method private static multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 8

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    const-string v3, "bc_wtnaf"

    new-instance v4, Lorg/bouncycastle/math/ec/WTauNafMultiplier$1;

    invoke-direct {v4, p0, v1}, Lorg/bouncycastle/math/ec/WTauNafMultiplier$1;-><init>(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;B)V

    invoke-virtual {v0, p0, v3, v4}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->precompute(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WTauNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v6

    array-length v0, v6

    new-array v7, v0, [Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move v1, v2

    :goto_0
    array-length v0, v6

    if-ge v1, v0, :cond_0

    aget-object v0, v6, v1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    aput-object v0, v7, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getInfinity()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    move v5, v2

    move-object v3, v0

    :goto_1
    if-ltz v4, :cond_2

    add-int/lit8 v0, v5, 0x1

    aget-byte v1, p1, v4

    if-eqz v1, :cond_4

    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    if-lez v1, :cond_1

    ushr-int/lit8 v0, v1, 0x1

    aget-object v0, v6, v0

    :goto_2
    invoke-virtual {v3, v0}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move v1, v2

    move-object v3, v0

    :goto_3
    add-int/lit8 v0, v4, -0x1

    move v4, v0

    move v5, v1

    goto :goto_1

    :cond_1
    neg-int v0, v1

    ushr-int/lit8 v0, v0, 0x1

    aget-object v0, v7, v0

    goto :goto_2

    :cond_2
    if-lez v5, :cond_3

    invoke-virtual {v3, v5}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->tauPow(I)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v3

    :cond_3
    return-object v3

    :cond_4
    move v1, v0

    goto :goto_3
.end method

.method private multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;BB)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;
    .locals 3

    const/4 v2, 0x4

    if-nez p3, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha0:[Lorg/bouncycastle/math/ec/ZTauElement;

    :goto_0
    invoke-static {p4, v2}, Lorg/bouncycastle/math/ec/Tnaf;->getTw(BI)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    invoke-static {p4, p2, v2, v1, v0}, Lorg/bouncycastle/math/ec/Tnaf;->tauAdicWNaf(BLorg/bouncycastle/math/ec/ZTauElement;II[Lorg/bouncycastle/math/ec/ZTauElement;)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyFromWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;[B)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/math/ec/Tnaf;->alpha1:[Lorg/bouncycastle/math/ec/ZTauElement;

    goto :goto_0
.end method


# virtual methods
.method protected multiplyPositive(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    instance-of v0, p1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only ECPoint.AbstractF2m can be used in WTauNafMultiplier"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->byteValue()B

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/math/ec/Tnaf;->getMu(I)B

    move-result v2

    const/16 v3, 0xa

    invoke-static {v0, p2, v1, v2, v3}, Lorg/bouncycastle/math/ec/Tnaf;->partModReduction(Lorg/bouncycastle/math/ec/ECCurve$AbstractF2m;Ljava/math/BigInteger;BBB)Lorg/bouncycastle/math/ec/ZTauElement;

    move-result-object v0

    invoke-direct {p0, p1, v0, v1, v2}, Lorg/bouncycastle/math/ec/WTauNafMultiplier;->multiplyWTnaf(Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;Lorg/bouncycastle/math/ec/ZTauElement;BB)Lorg/bouncycastle/math/ec/ECPoint$AbstractF2m;

    move-result-object v0

    return-object v0
.end method
