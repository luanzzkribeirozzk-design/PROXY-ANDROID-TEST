.class Lorg/bouncycastle/math/ec/ECPoint$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/ECPoint;->implIsValid(ZZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/ECPoint;

.field final synthetic val$checkOrder:Z

.field final synthetic val$decompressed:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECPoint;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->this$0:Lorg/bouncycastle/math/ec/ECPoint;

    iput-boolean p2, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    iput-boolean p3, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public precompute(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/PreCompInfo;
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;

    move-object v0, p1

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;

    invoke-direct {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;-><init>()V

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->hasFailed()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->hasCurveEquationPassed()Z

    move-result v1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$decompressed:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->this$0:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->satisfiesCurveEquation()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportCurveEquationPassed()V

    :cond_5
    iget-boolean v1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->val$checkOrder:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->hasOrderPassed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECPoint$1;->this$0:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECPoint;->satisfiesOrder()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportFailed()V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ValidityPrecompInfo;->reportOrderPassed()V

    goto :goto_1
.end method
