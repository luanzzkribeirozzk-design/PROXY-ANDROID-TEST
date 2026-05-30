.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
.super Ljava/lang/Object;


# instance fields
.field private coeffs:[J

.field private numCoeffs:I


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    move v0, v1

    move v2, v1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v0, v1, :cond_3

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v1, v0, 0x1

    aget v0, v3, v0

    move v3, v0

    :goto_1
    if-gez v3, :cond_0

    add-int/lit16 v0, v3, 0x800

    move v3, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v1, v0, :cond_1

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v0, v1, 0x1

    aget v1, v4, v1

    int-to-long v4, v1

    :goto_2
    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    const-wide/16 v8, 0x800

    add-long/2addr v4, v8

    goto :goto_2

    :cond_1
    move-wide v4, v6

    move v0, v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    int-to-long v8, v3

    const/16 v3, 0x18

    shl-long/2addr v4, v3

    add-long/2addr v4, v8

    aput-wide v4, v1, v2

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    return-void
.end method

.method private add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V
    .locals 6

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v2, v2, v0

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    const-wide v4, 0x7ff0007ffL

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .locals 14

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v5, v0

    const/16 v0, 0x20

    if-gt v5, v0, :cond_2

    mul-int/lit8 v6, v5, 0x2

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    new-array v0, v6, [J

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v6, :cond_1

    const/4 v0, 0x0

    sub-int v7, v2, v5

    add-int/lit8 v7, v7, 0x1

    invoke-static {v0, v7}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    add-int/lit8 v7, v5, -0x1

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-gt v0, v7, :cond_0

    sub-int v7, v2, v0

    aget-wide v8, v3, v7

    aget-wide v10, v4, v0

    mul-long/2addr v8, v10

    const-wide v10, 0x7ff000000L

    const-wide/16 v12, 0x7ff

    and-long/2addr v12, v8

    add-long/2addr v10, v12

    and-long/2addr v10, v8

    const/16 v7, 0x30

    ushr-long/2addr v8, v7

    const-wide/16 v12, 0x7ff

    and-long/2addr v8, v12

    iget-object v7, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v12, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v12, v12, v2

    add-long/2addr v10, v12

    const-wide v12, 0x7ff0007ffL

    and-long/2addr v10, v12

    aput-wide v10, v7, v2

    iget-object v7, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int/lit8 v10, v2, 0x1

    iget-object v11, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int/lit8 v12, v2, 0x1

    aget-wide v12, v11, v12

    add-long/2addr v8, v12

    const-wide v12, 0x7ff0007ffL

    and-long/2addr v8, v12

    aput-wide v8, v7, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_2
    return-object v0

    :cond_2
    div-int/lit8 v2, v5, 0x2

    new-instance v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    new-instance v7, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v3, v2, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v4, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    new-instance v8, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-static {v4, v2, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([JII)[J

    move-result-object v0

    invoke-direct {v8, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-direct {v0, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    invoke-direct {v1, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    invoke-direct {v6, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v3

    invoke-direct {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v4

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v6

    invoke-direct {v6, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    invoke-direct {v6, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    mul-int/lit8 v0, v5, 0x2

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>(I)V

    const/4 v0, 0x0

    :goto_3
    iget-object v5, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v5, v5

    if-ge v0, v5, :cond_3

    iget-object v5, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v7, v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v8, v7, v0

    const-wide v10, 0x7ff0007ffL

    and-long/2addr v8, v10

    aput-wide v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    :goto_4
    iget-object v3, v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v3

    if-ge v0, v3, :cond_4

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int v5, v2, v0

    iget-object v7, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int v8, v2, v0

    aget-wide v8, v7, v8

    iget-object v7, v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v10, v7, v0

    add-long/2addr v8, v10

    const-wide v10, 0x7ff0007ffL

    and-long/2addr v8, v10

    aput-wide v8, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget-object v3, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v0

    iget-object v6, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v7, v0

    aget-wide v6, v6, v7

    iget-object v8, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v8, v8, v0

    add-long/2addr v6, v8

    const-wide v8, 0x7ff0007ffL

    and-long/2addr v6, v8

    aput-wide v6, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    move-object v0, v1

    goto/16 :goto_2
.end method

.method private sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)V
    .locals 6

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const-wide v2, 0x800000800000L

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    add-long/2addr v2, v4

    iget-object v4, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    sub-long/2addr v2, v4

    const-wide v4, 0x7ff0007ffL

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-virtual {v0}, [J->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput v0, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    check-cast p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([J[J)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v0

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iget v2, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Number of coefficients must be the same"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->multRecursive(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    move-result-object v2

    iget-object v0, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v0, v0

    if-le v0, v1, :cond_3

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    move v0, v1

    :goto_0
    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v3

    if-ge v0, v3, :cond_2

    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v4, v0, v1

    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v6, v0, v1

    aget-wide v6, v5, v6

    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v8, v5, v0

    add-long/2addr v6, v8

    const-wide v8, 0x7ff0007ffL

    and-long/2addr v6, v8

    aput-wide v6, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    :cond_3
    :goto_1
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;

    iget-object v1, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;-><init>([J)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    iput v1, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    return-object v0

    :cond_4
    move v0, v1

    :goto_2
    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v4, v0, v1

    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v6, v0, v1

    aget-wide v6, v5, v6

    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    add-int/lit8 v8, v0, -0x1

    aget-wide v8, v5, v8

    const/16 v5, 0x18

    shr-long/2addr v8, v5

    add-long/2addr v6, v8

    aput-wide v6, v3, v4

    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v4, v0, v1

    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v6, v0, v1

    aget-wide v6, v5, v6

    iget-object v5, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v8, v5, v0

    const-wide/16 v10, 0x7ff

    and-long/2addr v8, v10

    const/16 v5, 0x18

    shl-long/2addr v8, v5

    add-long/2addr v6, v8

    aput-wide v6, v3, v4

    iget-object v3, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    sub-int v4, v0, v1

    aget-wide v6, v3, v4

    const-wide v8, 0x7ff0007ffL

    and-long/2addr v6, v8

    aput-wide v6, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    iput-object v0, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v0, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v1, v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget-wide v4, v0, v1

    const-wide/16 v6, 0x7ff

    and-long/2addr v4, v6

    aput-wide v4, v0, v1

    goto :goto_1
.end method

.method public mult2And(I)V
    .locals 7

    int-to-long v0, p1

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    int-to-long v2, p1

    add-long/2addr v2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v4, v4, v0

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    and-long/2addr v4, v2

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subAnd(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;I)V
    .locals 8

    int-to-long v0, p2

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    int-to-long v2, p2

    add-long/2addr v2, v0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    const-wide v4, 0x800000800000L

    iget-object v6, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v6, v6, v0

    add-long/2addr v4, v6

    iget-object v6, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    and-long/2addr v4, v2

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 10

    const-wide/16 v8, 0x7ff

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v3, v2, 0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v6, v1, v0

    and-long/2addr v6, v8

    long-to-int v1, v6

    aput v1, v4, v2

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->numCoeffs:I

    if-ge v3, v1, :cond_1

    add-int/lit8 v1, v3, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial2;->coeffs:[J

    aget-wide v6, v2, v0

    const/16 v2, 0x18

    shr-long/2addr v6, v2

    and-long/2addr v6, v8

    long-to-int v2, v6

    aput v2, v4, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0

    :cond_1
    move v1, v3

    goto :goto_1
.end method
