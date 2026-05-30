.class Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;
.super Lorg/bouncycastle/math/ec/AbstractECLookupTable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->createCacheSafeLookupTable([Lorg/bouncycastle/math/ec/ECPoint;II)Lorg/bouncycastle/math/ec/ECLookupTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

.field final synthetic val$len:I

.field final synthetic val$table:[I


# direct methods
.method constructor <init>(Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;I[I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->this$0:Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    iput p2, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    iput-object p3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    invoke-direct {p0}, Lorg/bouncycastle/math/ec/AbstractECLookupTable;-><init>()V

    return-void
.end method

.method private createPoint([I[I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->this$0:Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;

    new-instance v1, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v1, p1}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    new-instance v2, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;

    invoke-direct {v2, p2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1FieldElement;-><init>([I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->access$000()[Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve;->createRawPoint(Lorg/bouncycastle/math/ec/ECFieldElement;Lorg/bouncycastle/math/ec/ECFieldElement;[Lorg/bouncycastle/math/ec/ECFieldElement;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    return v0
.end method

.method public lookup(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 11

    const/16 v10, 0xc

    const/4 v1, 0x0

    invoke-static {v10}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v4

    invoke-static {v10}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v5

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$len:I

    if-ge v0, v3, :cond_1

    xor-int v3, v0, p1

    add-int/lit8 v3, v3, -0x1

    shr-int/lit8 v6, v3, 0x1f

    move v3, v1

    :goto_1
    if-ge v3, v10, :cond_0

    aget v7, v4, v3

    iget-object v8, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int v9, v2, v3

    aget v8, v8, v9

    and-int/2addr v8, v6

    xor-int/2addr v7, v8

    aput v7, v4, v3

    aget v7, v5, v3

    iget-object v8, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int/lit8 v9, v2, 0xc

    add-int/2addr v9, v3

    aget v8, v8, v9

    and-int/2addr v8, v6

    xor-int/2addr v7, v8

    aput v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x18

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->createPoint([I[I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public lookupVar(I)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 7

    const/16 v6, 0xc

    invoke-static {v6}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v1

    invoke-static {v6}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v2

    mul-int/lit8 v0, p1, 0xc

    mul-int/lit8 v3, v0, 0x2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int v5, v3, v0

    aget v4, v4, v5

    aput v4, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->val$table:[I

    add-int/lit8 v5, v3, 0xc

    add-int/2addr v5, v0

    aget v4, v4, v5

    aput v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/math/ec/custom/sec/SecP384R1Curve$1;->createPoint([I[I)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method
