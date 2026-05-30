.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;
.super Ljava/lang/Object;


# instance fields
.field private coeffs:[J

.field private numCoeffs:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V
    .locals 10

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    add-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0x5

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v6, v4, v3

    iget-object v5, p1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v5, v5, v0

    int-to-long v8, v5

    shl-long/2addr v8, v2

    or-long/2addr v6, v8

    aput-wide v6, v4, v3

    add-int/lit8 v2, v2, 0xc

    const/16 v4, 0x3c

    if-lt v2, v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>([JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    return-void
.end method


# virtual methods
.method public mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;
    .locals 18

    const/4 v2, 0x5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v3, v3

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;->size()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[J

    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;->getOnes()[I

    move-result-object v6

    const/4 v3, 0x0

    :goto_0
    array-length v4, v6

    if-eq v3, v4, :cond_1

    aget v4, v6, v3

    div-int/lit8 v5, v4, 0x5

    mul-int/lit8 v7, v5, 0x5

    sub-int v7, v4, v7

    const/4 v4, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v8, v8

    if-ge v4, v8, :cond_0

    aget-object v8, v2, v7

    aget-object v9, v2, v7

    aget-wide v10, v9, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v12, v9, v4

    add-long/2addr v10, v12

    const-wide v12, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v10, v12

    aput-wide v10, v8, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {p1 .. p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;->getNegOnes()[I

    move-result-object v6

    const/4 v3, 0x0

    :goto_2
    array-length v4, v6

    if-eq v3, v4, :cond_3

    aget v4, v6, v3

    div-int/lit8 v5, v4, 0x5

    mul-int/lit8 v7, v5, 0x5

    sub-int v7, v4, v7

    const/4 v4, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v8, v8

    if-ge v4, v8, :cond_2

    aget-object v8, v2, v7

    const-wide v10, 0x800800800800800L

    aget-object v9, v2, v7

    aget-wide v12, v9, v5

    add-long/2addr v10, v12

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v12, v9, v4

    sub-long/2addr v10, v12

    const-wide v12, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v10, v12

    aput-wide v10, v8, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    aget-object v4, v2, v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOf([JI)[J

    move-result-object v6

    const/4 v3, 0x1

    move v4, v3

    :goto_4
    const/4 v3, 0x4

    if-gt v4, v3, :cond_5

    mul-int/lit8 v5, v4, 0xc

    rsub-int/lit8 v7, v5, 0x3c

    const-wide/16 v8, 0x1

    shl-long/2addr v8, v7

    const-wide/16 v10, 0x1

    sub-long/2addr v8, v10

    aget-object v3, v2, v4

    array-length v10, v3

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v10, :cond_4

    aget-object v11, v2, v4

    aget-wide v12, v11, v3

    shr-long/2addr v12, v7

    aget-object v11, v2, v4

    aget-wide v14, v11, v3

    and-long/2addr v14, v8

    aget-wide v16, v6, v3

    shl-long/2addr v14, v5

    add-long v14, v14, v16

    const-wide v16, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long v14, v14, v16

    aput-wide v14, v6, v3

    add-int/lit8 v11, v3, 0x1

    aget-wide v14, v6, v11

    add-long/2addr v12, v14

    const-wide v14, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v12, v14

    aput-wide v12, v6, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    rem-int/lit8 v2, v2, 0x5

    mul-int/lit8 v7, v2, 0xc

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    :goto_6
    array-length v3, v6

    if-ge v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_7

    const-wide/16 v4, 0x0

    :goto_7
    const/4 v3, 0x0

    :goto_8
    div-int/lit8 v8, v3, 0x5

    mul-int/lit8 v9, v8, 0x5

    sub-int/2addr v3, v9

    mul-int/lit8 v9, v3, 0xc

    shl-long v10, v4, v9

    rsub-int/lit8 v3, v3, 0x5

    mul-int/lit8 v3, v3, 0xc

    shr-long/2addr v4, v3

    aget-wide v12, v6, v8

    add-long/2addr v10, v12

    const-wide v12, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v10, v12

    aput-wide v10, v6, v8

    add-int/lit8 v3, v8, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    array-length v8, v8

    if-ge v3, v8, :cond_6

    aget-wide v8, v6, v3

    add-long/2addr v4, v8

    const-wide v8, 0x7ff7ff7ff7ff7ffL    # 3.726599941343702E-270

    and-long/2addr v4, v8

    aput-wide v4, v6, v3

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    aget-wide v4, v6, v2

    shr-long/2addr v4, v7

    goto :goto_7

    :cond_8
    aget-wide v4, v6, v2

    mul-int/lit8 v3, v2, 0x5

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    sub-int/2addr v3, v8

    goto :goto_8

    :cond_9
    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    invoke-direct {v2, v6, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;-><init>([JI)V

    return-object v2
.end method

.method public toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    new-array v4, v0, [I

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->numCoeffs:I

    if-ge v0, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/LongPolynomial5;->coeffs:[J

    aget-wide v6, v5, v3

    shr-long/2addr v6, v2

    const-wide/16 v8, 0x7ff

    and-long/2addr v6, v8

    long-to-int v5, v6

    aput v5, v4, v0

    add-int/lit8 v2, v2, 0xc

    const/16 v5, 0x3c

    if-lt v2, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>([I)V

    return-object v0
.end method
