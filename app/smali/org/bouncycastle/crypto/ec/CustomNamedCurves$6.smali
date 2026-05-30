.class Lorg/bouncycastle/crypto/ec/CustomNamedCurves$6;
.super Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/ec/CustomNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/x9/X9ECParametersHolder;-><init>()V

    return-void
.end method


# virtual methods
.method protected createCurve()Lorg/bouncycastle/math/ec/ECCurve;
    .locals 11

    const/4 v4, 0x2

    const/4 v10, 0x1

    const/4 v5, 0x0

    const/16 v9, 0x10

    new-instance v6, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;

    new-instance v7, Ljava/math/BigInteger;

    const-string v0, "bb85691939b869c1d087f601554b96b80cb4f55b35f433c2"

    invoke-direct {v7, v0, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v8, Ljava/math/BigInteger;

    const-string v0, "3d84f26c12238d7b4f3d516613c1759033b1a5800175d0b1"

    invoke-direct {v8, v0, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v0, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;

    new-array v1, v4, [Ljava/math/BigInteger;

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "71169be7330b3038edb025f1"

    invoke-direct {v2, v3, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v5

    new-instance v2, Ljava/math/BigInteger;

    const-string v3, "-b3fb3400dec5c4adceb8655c"

    invoke-direct {v2, v3, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v2, v1, v10

    new-array v2, v4, [Ljava/math/BigInteger;

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "12511cfe811d0f4e6bc688b4d"

    invoke-direct {v3, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v5

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "71169be7330b3038edb025f1"

    invoke-direct {v3, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    aput-object v3, v2, v10

    new-instance v3, Ljava/math/BigInteger;

    const-string v4, "71169be7330b3038edb025f1d0f9"

    invoke-direct {v3, v4, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    new-instance v4, Ljava/math/BigInteger;

    const-string v5, "b3fb3400dec5c4adceb8655d4c94"

    invoke-direct {v4, v5, v9}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;I)V

    const/16 v5, 0xd0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;-><init>([Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V

    invoke-direct {v6, v7, v8, v0}, Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/endo/ScalarSplitParameters;)V

    new-instance v0, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Curve;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/custom/sec/SecP192K1Curve;-><init>()V

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->access$200(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/endo/GLVTypeBParameters;)Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    return-object v0
.end method

.method protected createParameters()Lorg/bouncycastle/asn1/x9/X9ECParameters;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves$6;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    const-string v0, "04DB4FF10EC057E9AE26B07D0280B7F4341DA5D1B1EAE06C7D9B2F2F6D9C5628A7844163D015BE86344082AA88D95E2F9D"

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/ec/CustomNamedCurves;->access$100(Lorg/bouncycastle/math/ec/ECCurve;Ljava/lang/String;)Lorg/bouncycastle/asn1/x9/X9ECPoint;

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/asn1/x9/X9ECParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCofactor()Ljava/math/BigInteger;

    move-result-object v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/asn1/x9/X9ECParameters;-><init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/asn1/x9/X9ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    return-object v0
.end method
