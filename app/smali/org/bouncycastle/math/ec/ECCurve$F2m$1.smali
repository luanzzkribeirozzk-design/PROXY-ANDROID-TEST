.class Lorg/bouncycastle/math/ec/ECCurve$F2m$1;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/ECCurve$F2m;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

.field final synthetic val$FE_LONGS:I

.field final synthetic val$ks:[I

.field final synthetic val$len:I

.field final synthetic val$table:[J


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve$F2m;II[J[I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

    iput p2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    iput p3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    iput-object p4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iput-object p5, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    new-instance v0, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->access$100(Lorg/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v3, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v3, p1}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    new-instance v1, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-static {v2}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->access$100(Lorg/bouncycastle/math/ec/ECCurve$F2m;)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$ks:[I

    new-instance v4, Lorg/bouncycastle/math/ec/LongArray;

    invoke-direct {v4, p2}, Lorg/bouncycastle/math/ec/LongArray;-><init>([J)V

    invoke-direct {v1, v2, v3, v4}, Lorg/bouncycastle/math/ec/ECFieldElement$F2m;-><init>(I[ILorg/bouncycastle/math/ec/LongArray;)V

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve$F2m;

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/math/ec/ECCurve$F2m;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 12

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v4

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v5

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$len:I

    if-ge v0, v3, :cond_1

    xor-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v3, v3, 0x1f

    int-to-long v6, v3

    move v3, v1

    :goto_1
    iget v8, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v3, v8, :cond_0

    aget-wide v8, v4, v3

    iget-object v10, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v11, v2, v3

    aget-wide v10, v10, v11

    and-long/2addr v10, v6

    xor-long/2addr v8, v10

    aput-wide v8, v4, v3

    aget-wide v8, v5, v3

    iget-object v10, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iget v11, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    add-int/2addr v11, v2

    add-int/2addr v11, v3

    aget-wide v10, v10, v11

    and-long/2addr v10, v6

    xor-long/2addr v8, v10

    aput-wide v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Nat;->create64(I)[J

    move-result-object v2

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    mul-int/2addr v0, p1

    mul-int/lit8 v3, v0, 0x2

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    add-int v5, v3, v0

    aget-wide v4, v4, v5

    aput-wide v4, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$table:[J

    iget v5, p0, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->val$FE_LONGS:I

    add-int/2addr v5, v3

    add-int/2addr v5, v0

    aget-wide v4, v4, v5

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/math/ec/ECCurve$F2m$1;->createPoint([J[J)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
