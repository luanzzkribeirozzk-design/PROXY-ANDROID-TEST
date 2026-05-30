.class Lorg/bouncycastle/math/ec/WNafUtil$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/WNafUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lorg/bouncycastle/math/ec/ECCurve;

.field final synthetic val$includeNegated:Z

.field final synthetic val$minWidth:I

.field final synthetic val$p:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>(IZLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECCurve;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput p1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    iput-object p3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    iput-object p4, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .locals 2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/math/ec/WNafUtil$2;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z
    .locals 1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 14

    const/16 v10, 0x10

    const/4 v9, 0x2

    const/4 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    instance-of v1, p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    :goto_0
    iget v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$minWidth:I

    invoke-static {v10, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v9, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v4, -0x2

    shl-int v1, v7, v1

    iget-boolean v2, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    invoke-direct {p0, p1, v4, v1, v2}, Lorg/bouncycastle/math/ec/WNafUtil$2;->checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    :goto_1
    return-object p1

    :cond_0
    move-object p1, v0

    goto :goto_0

    :cond_1
    new-instance v5, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {v5}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    move-result v1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setConfWidth(I)V

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    :goto_2
    invoke-virtual {v5}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getConfWidth()I

    move-result v8

    invoke-static {v8, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v10, v4}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int/lit8 v4, v12, -0x2

    shl-int v13, v7, v4

    if-nez v3, :cond_3

    invoke-static {}, Lorg/bouncycastle/math/ec/WNafUtil;->access$000()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    move v11, v6

    :goto_3
    if-ge v11, v13, :cond_d

    invoke-static {v3, v13}, Lorg/bouncycastle/math/ec/WNafUtil;->access$100([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    if-ne v13, v7, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    aput-object v0, v4, v6

    move-object v0, v4

    :goto_4
    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$includeNegated:Z

    if-eqz v3, :cond_8

    if-nez v2, :cond_7

    new-array v2, v13, [Lorg/bouncycastle/math/ec/ECPoint;

    move v3, v6

    :cond_2
    :goto_5
    if-ge v3, v13, :cond_8

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_3
    array-length v11, v3

    goto :goto_3

    :cond_4
    if-nez v11, :cond_c

    iget-object v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    aput-object v3, v4, v6

    move v10, v7

    :goto_6
    if-ne v13, v9, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECPoint;->threeTimes()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, v4, v7

    :goto_7
    iget-object v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    sub-int v7, v13, v11

    invoke-virtual {v3, v4, v11, v7, v0}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;IILorg/bouncycastle/math/ec/ECFieldElement;)V

    move-object v0, v4

    goto :goto_4

    :cond_5
    add-int/lit8 v3, v10, -0x1

    aget-object v7, v4, v3

    if-nez v1, :cond_b

    aget-object v1, v4, v6

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->twice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECPoint;->isInfinity()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {v1}, Lorg/bouncycastle/math/ec/ECAlgorithms;->isFpCurve(Lorg/bouncycastle/math/ec/ECCurve;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v1

    const/16 v3, 0x40

    if-lt v1, v3, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getCoordinateSystem()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_6
    move-object v8, v9

    move-object v3, v9

    :goto_8
    if-ge v10, v13, :cond_9

    add-int/lit8 v9, v10, 0x1

    invoke-virtual {v7, v8}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v4, v10

    move-object v7, v1

    move v10, v9

    goto :goto_8

    :pswitch_0
    invoke-virtual {v9, v6}, Lorg/bouncycastle/math/ec/ECPoint;->getZCoord(I)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/WNafUtil$2;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECPoint;->getXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v9}, Lorg/bouncycastle/math/ec/ECPoint;->getYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lorg/bouncycastle/math/ec/ECCurve;->createPoint(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v8

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->square()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->multiply(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v7, v1}, Lorg/bouncycastle/math/ec/ECPoint;->scaleX(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v1, v3}, Lorg/bouncycastle/math/ec/ECPoint;->scaleY(Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    if-nez v11, :cond_a

    aput-object v1, v4, v6

    move-object v7, v1

    move-object v3, v9

    goto :goto_8

    :cond_7
    array-length v3, v2

    if-ge v3, v13, :cond_2

    invoke-static {v2, v13}, Lorg/bouncycastle/math/ec/WNafUtil;->access$100([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    goto/16 :goto_5

    :cond_8
    invoke-virtual {v5, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v5, v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v5, v1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {v5, v12}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    move-object p1, v5

    goto/16 :goto_1

    :cond_9
    move-object v1, v3

    goto/16 :goto_7

    :cond_a
    move-object v7, v1

    move-object v3, v9

    goto :goto_8

    :cond_b
    move-object v8, v1

    move-object v3, v1

    goto :goto_8

    :cond_c
    move v10, v11

    goto/16 :goto_6

    :cond_d
    move-object v0, v3

    goto/16 :goto_4

    :cond_e
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
