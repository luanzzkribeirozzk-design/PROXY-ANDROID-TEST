.class Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;
.super Ljava/lang/Object;


# instance fields
.field private final PARAM_N:I

.field private final RED_MASK:J

.field private final VEC_N_SIZE_64:I


# direct methods
.method constructor <init>(IIJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    iput-wide p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->RED_MASK:J

    return-void
.end method

.method static addLongs([J[J[J)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v2, p1, v0

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private base_mul([JIJJ)V
    .locals 23

    const/16 v2, 0x10

    new-array v10, v2, [J

    const/4 v2, 0x4

    new-array v11, v2, [J

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v10, v2

    const/4 v2, 0x1

    const-wide v4, 0xfffffffffffffffL

    and-long v4, v4, p5

    aput-wide v4, v10, v2

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    shl-long/2addr v4, v3

    aput-wide v4, v10, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    aget-wide v6, v10, v3

    xor-long/2addr v4, v6

    aput-wide v4, v10, v2

    const/4 v2, 0x4

    const/4 v3, 0x2

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    shl-long/2addr v4, v3

    aput-wide v4, v10, v2

    const/4 v2, 0x5

    const/4 v3, 0x4

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    aget-wide v6, v10, v3

    xor-long/2addr v4, v6

    aput-wide v4, v10, v2

    const/4 v2, 0x6

    const/4 v3, 0x3

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    shl-long/2addr v4, v3

    aput-wide v4, v10, v2

    const/4 v2, 0x7

    const/4 v3, 0x6

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    aget-wide v6, v10, v3

    xor-long/2addr v4, v6

    aput-wide v4, v10, v2

    const/16 v2, 0x8

    const/4 v3, 0x4

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    shl-long/2addr v4, v3

    aput-wide v4, v10, v2

    const/16 v2, 0x9

    const/16 v3, 0x8

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    aget-wide v6, v10, v3

    xor-long/2addr v4, v6

    aput-wide v4, v10, v2

    const/16 v2, 0xa

    const/4 v3, 0x5

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    shl-long/2addr v4, v3

    aput-wide v4, v10, v2

    const/16 v2, 0xb

    const/16 v3, 0xa

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    aget-wide v6, v10, v3

    xor-long/2addr v4, v6

    aput-wide v4, v10, v2

    const/16 v2, 0xc

    const/4 v3, 0x6

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    shl-long/2addr v4, v3

    aput-wide v4, v10, v2

    const/16 v2, 0xd

    const/16 v3, 0xc

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    aget-wide v6, v10, v3

    xor-long/2addr v4, v6

    aput-wide v4, v10, v2

    const/16 v2, 0xe

    const/4 v3, 0x7

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    shl-long/2addr v4, v3

    aput-wide v4, v10, v2

    const/16 v2, 0xf

    const/16 v3, 0xe

    aget-wide v4, v10, v3

    const/4 v3, 0x1

    aget-wide v6, v10, v3

    xor-long/2addr v4, v6

    aput-wide v4, v10, v2

    const-wide/16 v4, 0x0

    const-wide/16 v2, 0xf

    and-long v6, p3, v2

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    int-to-long v8, v2

    sub-long v8, v6, v8

    aget-wide v12, v10, v2

    const-wide/16 v14, 0x1

    neg-long v0, v8

    move-wide/from16 v16, v0

    or-long v8, v8, v16

    const/16 v3, 0x3f

    ushr-long/2addr v8, v3

    sub-long v8, v14, v8

    neg-long v8, v8

    and-long/2addr v8, v12

    xor-long/2addr v4, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v8, 0x0

    const/4 v2, 0x4

    move v3, v2

    move-wide v6, v4

    :goto_1
    const/16 v2, 0x40

    if-ge v3, v2, :cond_2

    const-wide/16 v4, 0x0

    shr-long v12, p3, v3

    const-wide/16 v14, 0xf

    and-long/2addr v12, v14

    const/4 v2, 0x0

    :goto_2
    const/16 v14, 0x10

    if-ge v2, v14, :cond_1

    int-to-long v14, v2

    sub-long v14, v12, v14

    aget-wide v16, v10, v2

    const-wide/16 v18, 0x1

    neg-long v0, v14

    move-wide/from16 v20, v0

    or-long v14, v14, v20

    const/16 v20, 0x3f

    ushr-long v14, v14, v20

    sub-long v14, v18, v14

    neg-long v14, v14

    and-long v14, v14, v16

    xor-long/2addr v4, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    shl-long v12, v4, v3

    xor-long/2addr v6, v12

    rsub-int/lit8 v2, v3, 0x40

    ushr-long/2addr v4, v2

    xor-long/2addr v4, v8

    add-int/lit8 v2, v3, 0x4

    int-to-byte v2, v2

    move v3, v2

    move-wide v8, v4

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/16 v3, 0x3c

    shr-long v4, p5, v3

    const-wide/16 v12, 0x1

    and-long/2addr v4, v12

    neg-long v4, v4

    aput-wide v4, v11, v2

    const/4 v2, 0x1

    const/16 v3, 0x3d

    shr-long v4, p5, v3

    const-wide/16 v12, 0x1

    and-long/2addr v4, v12

    neg-long v4, v4

    aput-wide v4, v11, v2

    const/4 v2, 0x2

    const/16 v3, 0x3e

    shr-long v4, p5, v3

    const-wide/16 v12, 0x1

    and-long/2addr v4, v12

    neg-long v4, v4

    aput-wide v4, v11, v2

    const/4 v2, 0x3

    const/16 v3, 0x3f

    shr-long v4, p5, v3

    const-wide/16 v12, 0x1

    and-long/2addr v4, v12

    neg-long v4, v4

    aput-wide v4, v11, v2

    const/16 v2, 0x3c

    shl-long v2, p3, v2

    const/4 v4, 0x0

    aget-wide v4, v11, v4

    and-long/2addr v2, v4

    xor-long/2addr v2, v6

    const/4 v4, 0x4

    ushr-long v4, p3, v4

    const/4 v6, 0x0

    aget-wide v6, v11, v6

    and-long/2addr v4, v6

    xor-long/2addr v4, v8

    const/16 v6, 0x3d

    shl-long v6, p3, v6

    const/4 v8, 0x1

    aget-wide v8, v11, v8

    and-long/2addr v6, v8

    xor-long/2addr v2, v6

    const/4 v6, 0x3

    ushr-long v6, p3, v6

    const/4 v8, 0x1

    aget-wide v8, v11, v8

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/16 v6, 0x3e

    shl-long v6, p3, v6

    const/4 v8, 0x2

    aget-wide v8, v11, v8

    and-long/2addr v6, v8

    xor-long/2addr v2, v6

    const/4 v6, 0x2

    ushr-long v6, p3, v6

    const/4 v8, 0x2

    aget-wide v8, v11, v8

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/16 v6, 0x3f

    shl-long v6, p3, v6

    const/4 v8, 0x3

    aget-wide v8, v11, v8

    and-long/2addr v6, v8

    xor-long/2addr v2, v6

    const/4 v6, 0x1

    ushr-long v6, p3, v6

    const/4 v8, 0x3

    aget-wide v8, v11, v8

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x0

    aput-wide v2, p1, v6

    add-int/lit8 v2, p2, 0x1

    aput-wide v4, p1, v2

    return-void
.end method

.method private karatsuba([JI[JI[JII[JI)V
    .locals 32

    const/4 v2, 0x1

    move/from16 v0, p7

    if-ne v0, v2, :cond_0

    add-int/lit8 v2, p4, 0x0

    aget-wide v6, p3, v2

    add-int/lit8 v2, p6, 0x0

    aget-wide v8, p5, v2

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->base_mul([JIJJ)V

    :goto_0
    return-void

    :cond_0
    div-int/lit8 v19, p7, 0x2

    add-int/lit8 v2, p7, 0x1

    div-int/lit8 v9, v2, 0x2

    add-int v24, p9, v9

    add-int v31, v24, v9

    mul-int/lit8 v2, v9, 0x2

    add-int v14, p2, v2

    mul-int/lit8 v2, v9, 0x4

    add-int v11, p9, v2

    add-int v16, p4, v9

    add-int v18, p6, v9

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v15, p3

    move-object/from16 v17, p5

    move-object/from16 v20, p8

    move/from16 v21, v11

    invoke-direct/range {v12 .. v21}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    move-object/from16 v20, p0

    move-object/from16 v21, p8

    move/from16 v22, p9

    move-object/from16 v23, p8

    move-object/from16 v25, p3

    move/from16 v26, p4

    move-object/from16 v27, p5

    move/from16 v28, p6

    move/from16 v29, v9

    move/from16 v30, v19

    invoke-direct/range {v20 .. v30}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba_add1([JI[JI[JI[JIII)V

    move-object/from16 v2, p0

    move-object/from16 v3, p8

    move/from16 v4, v31

    move-object/from16 v5, p8

    move/from16 v6, p9

    move-object/from16 v7, p8

    move/from16 v8, v24

    move-object/from16 v10, p8

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p8

    move/from16 v6, v31

    move-object/from16 v7, p1

    move v8, v14

    move/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba_add2([JI[JI[JIII)V

    goto :goto_0
.end method

.method private karatsuba_add1([JI[JI[JI[JIII)V
    .locals 8

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p10

    if-ge v2, v0, :cond_0

    add-int v3, v2, p2

    add-int v4, v2, p6

    aget-wide v4, p5, v4

    add-int v6, v2, p9

    add-int/2addr v6, p6

    aget-wide v6, p5, v6

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    add-int v3, v2, p4

    add-int v4, v2, p8

    aget-wide v4, p7, v4

    add-int v6, v2, p9

    add-int v6, v6, p8

    aget-wide v6, p7, v6

    xor-long/2addr v4, v6

    aput-wide v4, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move/from16 v0, p10

    move/from16 v1, p9

    if-ge v0, v1, :cond_1

    add-int v2, p10, p2

    add-int v3, p10, p6

    aget-wide v4, p5, v3

    aput-wide v4, p1, v2

    add-int v2, p10, p4

    add-int v3, p10, p8

    aget-wide v4, p7, v3

    aput-wide v4, p3, v2

    :cond_1
    return-void
.end method

.method private karatsuba_add2([JI[JI[JIII)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v1, p7, 0x2

    if-ge v0, v1, :cond_0

    add-int v1, v0, p4

    add-int v2, v0, p4

    aget-wide v2, p3, v2

    add-int v4, v0, p2

    aget-wide v4, p1, v4

    xor-long/2addr v2, v4

    aput-wide v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_1
    mul-int/lit8 v1, p8, 0x2

    if-ge v0, v1, :cond_1

    add-int v1, v0, p4

    add-int v2, v0, p4

    aget-wide v2, p3, v2

    add-int v4, v0, p6

    aget-wide v4, p5, v4

    xor-long/2addr v2, v4

    aput-wide v2, p3, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    mul-int/lit8 v1, p7, 0x2

    if-ge v0, v1, :cond_2

    add-int v1, v0, p7

    add-int/2addr v1, p2

    add-int v2, v0, p7

    add-int/2addr v2, p2

    aget-wide v2, p1, v2

    add-int v4, v0, p4

    aget-wide v4, p3, v4

    xor-long/2addr v2, v4

    aput-wide v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private reduce([J[J)V
    .locals 12

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-wide v2, p2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    and-int/lit8 v1, v1, 0x3f

    ushr-long/2addr v2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    add-int/2addr v1, v0

    aget-wide v4, p2, v1

    const-wide/16 v6, 0x40

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->PARAM_N:I

    int-to-long v8, v1

    const-wide/16 v10, 0x3f

    and-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v1, v6

    shl-long/2addr v4, v1

    aget-wide v6, p2, v0

    xor-long/2addr v2, v6

    xor-long/2addr v2, v4

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, p1, v0

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->RED_MASK:J

    and-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method


# virtual methods
.method protected multLongs([J[J[J)V
    .locals 10

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    shl-int/lit8 v0, v0, 0x3

    new-array v8, v0, [J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [J

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->VEC_N_SIZE_64:I

    move-object v0, p0

    move-object v3, p2

    move v4, v2

    move-object v5, p3

    move v6, v2

    move v9, v2

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->karatsuba([JI[JI[JII[JI)V

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->reduce([J[J)V

    return-void
.end method
