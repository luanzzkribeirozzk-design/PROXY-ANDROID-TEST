.class Lorg/bouncycastle/math/ec/ECCurve$1;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/ECCurve;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/ECCurve;

.field final synthetic val$FE_BYTES:I

.field final synthetic val$len:I

.field final synthetic val$table:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/ECCurve;II[B)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    iput p2, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$len:I

    iput p3, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    iput-object p4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private createPoint([B[B)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    iget-object v1, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v4, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->this$0:Lorg/bouncycastle/math/ec/ECCurve;

    new-instance v3, Ljava/math/BigInteger;

    invoke-direct {v3, v4, p2}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, v3}, Lorg/bouncycastle/math/ec/ECCurve;->fromBigInteger(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/math/ec/ECCurve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$len:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v4, v0, [B

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$len:I

    if-ge v0, v3, :cond_1

    xor-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v6, v3, 0x1f

    move v3, v1

    :goto_1
    iget v7, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v3, v7, :cond_0

    aget-byte v7, v4, v3

    iget-object v8, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v9, v2, v3

    aget-byte v8, v8, v9

    and-int/2addr v8, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v3

    aget-byte v7, v5, v3

    iget-object v8, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    iget v9, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    add-int/2addr v9, v2

    add-int/2addr v9, v3

    aget-byte v8, v8, v9

    and-int/2addr v8, v6

    xor-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    iget v3, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v1, v0, [B

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    new-array v2, v0, [B

    iget v0, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    mul-int/2addr v0, p1

    mul-int/lit8 v3, v0, 0x2

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    add-int v5, v3, v0

    aget-byte v4, v4, v5

    aput-byte v4, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$table:[B

    iget v5, p0, Lorg/bouncycastle/math/ec/ECCurve$1;->val$FE_BYTES:I

    add-int/2addr v5, v3

    add-int/2addr v5, v0

    aget-byte v4, v4, v5

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/math/ec/ECCurve$1;->createPoint([B[B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
