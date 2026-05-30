.class Lorg/bouncycastle/math/ec/WNafUtil$3;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/WNafUtil;->precomputeWithPointMap(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;Lorg/bouncycastle/math/ec/WNafPreCompInfo;Z)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

.field final synthetic val$includeNegated:Z

.field final synthetic val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/WNafPreCompInfo;ZLorg/bouncycastle/math/ec/ECPointMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    iput-object p3, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v0

    if-lt v0, p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreCompNeg()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lorg/bouncycastle/math/ec/WNafUtil$3;->checkTable([Lorg/bouncycastle/math/ec/ECPoint;I)Z

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
    .locals 7

    const/4 v1, 0x0

    instance-of v0, p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getWidth()I

    move-result v2

    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    array-length v0, v0

    iget-boolean v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    invoke-direct {p0, p1, v2, v0, v3}, Lorg/bouncycastle/math/ec/WNafUtil$3;->checkExisting(Lorg/bouncycastle/math/ec/WNafPreCompInfo;IIZ)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->decrementPromotionCountdown()I

    :cond_0
    :goto_1
    return-object p1

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-direct {p1}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPromotionCountdown()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPromotionCountdown(I)V

    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getTwice()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    invoke-interface {v3, v0}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setTwice(Lorg/bouncycastle/math/ec/ECPoint;)V

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$fromWNaf:Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->getPreComp()[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    array-length v0, v3

    new-array v4, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    move v0, v1

    :goto_2
    array-length v5, v3

    if-ge v0, v5, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$pointMap:Lorg/bouncycastle/math/ec/ECPointMap;

    aget-object v6, v3, v0

    invoke-interface {v5, v6}, Lorg/bouncycastle/math/ec/ECPointMap;->map(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v5

    aput-object v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1, v4}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreComp([Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setWidth(I)V

    iget-boolean v0, p0, Lorg/bouncycastle/math/ec/WNafUtil$3;->val$includeNegated:Z

    if-eqz v0, :cond_0

    array-length v0, v4

    new-array v0, v0, [Lorg/bouncycastle/math/ec/ECPoint;

    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_5

    aget-object v2, v4, v1

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->negate()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/WNafPreCompInfo;->setPreCompNeg([Lorg/bouncycastle/math/ec/ECPoint;)V

    goto :goto_1
.end method
