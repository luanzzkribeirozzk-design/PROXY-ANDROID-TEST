.class Lorg/bouncycastle/math/ec/FixedPointUtil$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/math/ec/PreCompCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/FixedPointUtil;->precompute(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$c:Lorg/bouncycastle/math/ec/ECCurve;

.field final synthetic val$p:Lorg/bouncycastle/math/ec/ECPoint;


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    iput-object p2, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkExisting(Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->getLookupTable()Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->checkTable(Lorg/bouncycastle/math/ec/ECLookupTable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkTable(Lorg/bouncycastle/math/ec/ECLookupTable;I)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/bouncycastle/math/ec/ECLookupTable;->getSize()I

    move-result v0

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
    .locals 11

    const/4 v4, 0x1

    const/4 v10, 0x0

    instance-of v0, p1, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-static {v0}, Lorg/bouncycastle/math/ec/FixedPointUtil;->getCombSize(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v1

    const/16 v0, 0xfa

    if-le v1, v0, :cond_1

    const/4 v0, 0x6

    :goto_1
    shl-int v5, v4, v0

    invoke-direct {p0, p1, v5}, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->checkExisting(Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_2
    return-object p1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_1

    :cond_2
    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    div-int v2, v1, v0

    add-int/lit8 v1, v0, 0x1

    new-array v6, v1, [Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$p:Lorg/bouncycastle/math/ec/ECPoint;

    aput-object v1, v6, v10

    move v1, v4

    :goto_3
    if-ge v1, v0, :cond_3

    add-int/lit8 v3, v1, -0x1

    aget-object v3, v6, v3

    invoke-virtual {v3, v2}, Lorg/bouncycastle/math/ec/ECPoint;->timesPow2(I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    aput-object v3, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    aget-object v1, v6, v10

    aget-object v2, v6, v4

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECPoint;->subtract(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    aput-object v1, v6, v0

    iget-object v1, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v6}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    new-array v7, v5, [Lorg/bouncycastle/math/ec/ECPoint;

    aget-object v1, v6, v10

    aput-object v1, v7, v10

    add-int/lit8 v1, v0, -0x1

    move v3, v1

    :goto_4
    if-ltz v3, :cond_5

    aget-object v8, v6, v3

    shl-int v2, v4, v3

    move v1, v2

    :goto_5
    if-ge v1, v5, :cond_4

    sub-int v9, v1, v2

    aget-object v9, v7, v9

    invoke-virtual {v9, v8}, Lorg/bouncycastle/math/ec/ECPoint;->add(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v9

    aput-object v9, v7, v1

    shl-int/lit8 v9, v2, 0x1

    add-int/2addr v1, v9

    goto :goto_5

    :cond_4
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    invoke-virtual {v1, v7}, Lorg/bouncycastle/math/ec/ECCurve;->normalizeAll([Lorg/bouncycastle/math/ec/ECPoint;)V

    new-instance p1, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;

    invoke-direct {p1}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/math/ec/FixedPointUtil$1;->val$c:Lorg/bouncycastle/math/ec/ECCurve;

    array-length v2, v7

    invoke-virtual {v1, v7, v10, v2}, Lorg/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->setLookupTable(Lorg/bouncycastle/math/ec/ECLookupTable;)V

    aget-object v1, v6, v0

    invoke-virtual {p1, v1}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->setOffset(Lorg/bouncycastle/math/ec/ECPoint;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/math/ec/FixedPointPreCompInfo;->setWidth(I)V

    goto :goto_2
.end method
