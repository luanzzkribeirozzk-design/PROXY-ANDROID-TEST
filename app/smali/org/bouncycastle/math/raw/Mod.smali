.class public abstract Lorg/bouncycastle/math/raw/Mod;
.super Ljava/lang/Object;


# static fields
.field private static final M30:I = 0x3fffffff

.field private static final M32L:J = 0xffffffffL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add30(I[I[I)I
    .locals 5

    const/4 v1, 0x0

    add-int/lit8 v3, p0, -0x1

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v1, p1, v0

    aget v4, p2, v0

    add-int/2addr v1, v4

    add-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p1, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    aget v0, p1, v3

    aget v1, p2, v3

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    aput v0, p1, v3

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public static checkedModOddInverse([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public static checkedModOddInverseVar([I[I[I)V
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Inverse does not exist."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method private static cnegate30(II[I)V
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v3, p0, -0x1

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v1, p2, v0

    xor-int/2addr v1, p1

    sub-int/2addr v1, p1

    add-int/2addr v1, v2

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p2, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    aget v0, p2, v3

    xor-int/2addr v0, p1

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    aput v0, p2, v3

    return-void
.end method

.method private static cnormalize30(II[I[I)V
    .locals 8

    const v7, 0x3fffffff    # 1.9999999f

    const/4 v1, 0x0

    add-int/lit8 v3, p0, -0x1

    aget v0, p2, v3

    shr-int/lit8 v4, v0, 0x1f

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v5, p2, v0

    aget v6, p3, v0

    and-int/2addr v6, v4

    add-int/2addr v5, v6

    xor-int/2addr v5, p1

    sub-int/2addr v5, p1

    add-int/2addr v2, v5

    and-int v5, v2, v7

    aput v5, p2, v0

    shr-int/lit8 v2, v2, 0x1e

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, p2, v3

    aget v5, p3, v3

    and-int/2addr v4, v5

    add-int/2addr v0, v4

    xor-int/2addr v0, p1

    sub-int/2addr v0, p1

    add-int/2addr v0, v2

    aput v0, p2, v3

    aget v0, p2, v3

    shr-int/lit8 v4, v0, 0x1f

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v3, :cond_1

    aget v1, p2, v0

    aget v5, p3, v0

    and-int/2addr v5, v4

    add-int/2addr v1, v5

    add-int/2addr v1, v2

    and-int v2, v1, v7

    aput v2, p2, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_1

    :cond_1
    aget v0, p2, v3

    aget v1, p3, v3

    and-int/2addr v1, v4

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    aput v0, p2, v3

    return-void
.end method

.method private static decode30(I[I[I)V
    .locals 9

    const/16 v8, 0x20

    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    move v5, v4

    move v0, v4

    move v1, v4

    :goto_0
    if-lez p0, :cond_1

    move v4, v1

    :goto_1
    invoke-static {v8, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-ge v4, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    aget v0, p1, v0

    int-to-long v6, v0

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    add-int/lit8 v4, v4, 0x1e

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v5, 0x1

    long-to-int v1, v2

    aput v1, p2, v5

    ushr-long/2addr v2, v8

    add-int/lit8 v1, v4, -0x20

    add-int/lit8 p0, p0, -0x20

    move v5, v6

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static divsteps30Var(III[I)I
    .locals 12

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x1e

    :goto_0
    const/4 v5, -0x1

    shl-int/2addr v5, v0

    or-int/2addr v5, p2

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v6

    shr-int v8, p2, v6

    shl-int/2addr v4, v6

    shl-int v11, v3, v6

    sub-int v5, p0, v6

    sub-int/2addr v0, v6

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    aput v4, p3, v0

    const/4 v0, 0x1

    aput v11, p3, v0

    const/4 v0, 0x2

    aput v2, p3, v0

    const/4 v0, 0x3

    aput v1, p3, v0

    return v5

    :cond_0
    if-gtz v5, :cond_2

    rsub-int/lit8 v5, v5, 0x2

    neg-int v7, p1

    neg-int v10, v4

    neg-int v9, v11

    if-le v5, v0, :cond_1

    move v3, v0

    :goto_1
    const/4 v4, -0x1

    rsub-int/lit8 v3, v3, 0x20

    ushr-int v3, v4, v3

    and-int/lit8 v3, v3, 0x3f

    mul-int v4, v8, v7

    mul-int v6, v8, v8

    add-int/lit8 v6, v6, -0x2

    mul-int/2addr v4, v6

    and-int v6, v4, v3

    move p1, v8

    move v3, v1

    move v4, v2

    move p0, v5

    :goto_2
    mul-int v1, p1, v6

    add-int p2, v7, v1

    mul-int v1, v4, v6

    add-int v2, v10, v1

    mul-int v1, v3, v6

    add-int/2addr v1, v9

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    if-le v5, v0, :cond_3

    move v3, v0

    :goto_3
    const/4 v6, -0x1

    rsub-int/lit8 v3, v3, 0x20

    ushr-int v3, v6, v3

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v6, p1, 0x1

    and-int/lit8 v6, v6, 0x4

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v6, p1

    neg-int v7, v8

    mul-int/2addr v6, v7

    and-int/2addr v6, v3

    move v7, v8

    move v9, v1

    move v10, v2

    move v3, v11

    move p0, v5

    goto :goto_2

    :cond_3
    move v3, v5

    goto :goto_3
.end method

.method private static encode30(I[I[I)V
    .locals 11

    const/16 v10, 0x1e

    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    move v5, v0

    move v1, v0

    move v4, v0

    :goto_0
    if-lez p0, :cond_0

    invoke-static {v10, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-ge v4, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    aget v1, p1, v1

    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    shl-long/2addr v6, v4

    or-long/2addr v2, v6

    add-int/lit8 v1, v4, 0x20

    move v4, v1

    :goto_1
    add-int/lit8 v6, v5, 0x1

    long-to-int v1, v2

    const v7, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v7

    aput v1, p2, v5

    ushr-long/2addr v2, v10

    add-int/lit8 v4, v4, -0x1e

    add-int/lit8 p0, p0, -0x1e

    move v5, v6

    move v1, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static equalTo(I[II)I
    .locals 3

    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int v1, v0, p2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p0, :cond_0

    aget v2, p1, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v1, 0x1

    and-int/lit8 v1, v1, 0x1

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private static equalToVar(I[II)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget v2, p1, v1

    xor-int v3, v2, p2

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    move v2, v0

    :goto_1
    if-ge v2, p0, :cond_1

    aget v4, p1, v2

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-nez v3, :cond_2

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private static getMaximumDivsteps(I)I
    .locals 4

    const-wide/32 v0, 0x2e1e2

    int-to-long v2, p0

    mul-long/2addr v2, v0

    const/16 v0, 0x2e

    if-ge p0, v0, :cond_0

    const v0, 0x4b4b5

    :goto_0
    int-to-long v0, v0

    add-long/2addr v0, v2

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0

    :cond_0
    const v0, 0x2c3c4

    goto :goto_0
.end method

.method private static getMaximumHDDivsteps(I)I
    .locals 4

    const-wide/32 v0, 0x24db4

    int-to-long v2, p0

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x183ab

    add-long/2addr v0, v2

    const/16 v2, 0x10

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static hddivsteps30(III[I)I
    .locals 11

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    move v4, v1

    move v5, v1

    move v6, v3

    :goto_0
    const/16 v3, 0x1e

    if-ge v0, v3, :cond_0

    shr-int/lit8 v3, p0, 0x1f

    and-int/lit8 v7, p2, 0x1

    neg-int v7, v7

    xor-int v8, p1, v3

    xor-int v9, v6, v3

    xor-int v10, v5, v3

    and-int/2addr v8, v7

    sub-int v8, p2, v8

    and-int/2addr v9, v7

    sub-int/2addr v4, v9

    and-int v9, v10, v7

    sub-int/2addr v2, v9

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v7

    xor-int v7, p0, v3

    add-int/lit8 p0, v7, 0x1

    and-int v7, v8, v3

    add-int/2addr p1, v7

    and-int v7, v4, v3

    add-int/2addr v6, v7

    and-int/2addr v3, v2

    add-int/2addr v5, v3

    shr-int/lit8 p2, v8, 0x1

    shr-int/lit8 v3, v4, 0x1

    shr-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    move v4, v3

    goto :goto_0

    :cond_0
    aput v6, p3, v1

    const/4 v0, 0x1

    aput v5, p3, v0

    const/4 v0, 0x2

    aput v4, p3, v0

    const/4 v0, 0x3

    aput v2, p3, v0

    return p0
.end method

.method public static inverse32(I)I
    .locals 2

    mul-int v0, p0, p0

    rsub-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p0

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    mul-int v1, p0, v0

    rsub-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    return v0
.end method

.method public static modOddInverse([I[I[I)I
    .locals 15

    array-length v1, p0

    shl-int/lit8 v2, v1, 0x5

    add-int/lit8 v1, v1, -0x1

    aget v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    sub-int v9, v2, v1

    add-int/lit8 v1, v9, 0x1d

    div-int/lit8 v1, v1, 0x1e

    const/4 v2, 0x4

    new-array v4, v2, [I

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v10, v1, [I

    new-array v11, v1, [I

    new-array v6, v1, [I

    const/4 v5, 0x0

    const/4 v7, 0x1

    aput v7, v3, v5

    move-object/from16 v0, p1

    invoke-static {v9, v0, v11}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    invoke-static {v9, p0, v6}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-static {v6, v5, v10, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v8, 0x0

    const/4 v5, 0x0

    aget v5, v6, v5

    invoke-static {v5}, Lorg/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v5

    invoke-static {v9}, Lorg/bouncycastle/math/raw/Mod;->getMaximumHDDivsteps(I)I

    move-result v12

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v12, :cond_0

    const/4 v13, 0x0

    aget v13, v10, v13

    const/4 v14, 0x0

    aget v14, v11, v14

    invoke-static {v8, v13, v14, v4}, Lorg/bouncycastle/math/raw/Mod;->hddivsteps30(III[I)I

    move-result v8

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    invoke-static {v1, v10, v11, v4}, Lorg/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    add-int/lit8 v7, v7, 0x1e

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, -0x1

    aget v3, v10, v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-static {v1, v3, v10}, Lorg/bouncycastle/math/raw/Mod;->cnegate30(II[I)V

    invoke-static {v1, v3, v2, v6}, Lorg/bouncycastle/math/raw/Mod;->cnormalize30(II[I[I)V

    move-object/from16 v0, p2

    invoke-static {v9, v2, v0}, Lorg/bouncycastle/math/raw/Mod;->decode30(I[I[I)V

    const/4 v2, 0x1

    invoke-static {v1, v10, v2}, Lorg/bouncycastle/math/raw/Mod;->equalTo(I[II)I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v11, v3}, Lorg/bouncycastle/math/raw/Mod;->equalTo(I[II)I

    move-result v1

    and-int/2addr v1, v2

    return v1
.end method

.method public static modOddInverseVar([I[I[I)Z
    .locals 16

    move-object/from16 v0, p0

    array-length v2, v0

    shl-int/lit8 v1, v2, 0x5

    add-int/lit8 v3, v2, -0x1

    aget v3, p0, v3

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v3

    sub-int v10, v1, v3

    add-int/lit8 v1, v10, 0x1d

    div-int/lit8 v1, v1, 0x1e

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lorg/bouncycastle/math/raw/Nat;->getBitLength(I[I)I

    move-result v2

    sub-int v7, v10, v2

    const/4 v2, 0x4

    new-array v4, v2, [I

    new-array v2, v1, [I

    new-array v3, v1, [I

    new-array v11, v1, [I

    new-array v12, v1, [I

    new-array v6, v1, [I

    const/4 v5, 0x0

    const/4 v8, 0x1

    aput v8, v3, v5

    move-object/from16 v0, p1

    invoke-static {v10, v0, v12}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    move-object/from16 v0, p0

    invoke-static {v10, v0, v6}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v5, v11, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-int v9, v7

    const/4 v5, 0x0

    aget v5, v6, v5

    invoke-static {v5}, Lorg/bouncycastle/math/raw/Mod;->inverse32(I)I

    move-result v5

    invoke-static {v10}, Lorg/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v13

    move v8, v1

    :goto_0
    const/4 v14, 0x0

    invoke-static {v8, v12, v14}, Lorg/bouncycastle/math/raw/Mod;->equalToVar(I[II)Z

    move-result v14

    if-nez v14, :cond_1

    if-lt v7, v13, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v7, v7, 0x1e

    const/4 v14, 0x0

    aget v14, v11, v14

    const/4 v15, 0x0

    aget v15, v12, v15

    invoke-static {v9, v14, v15, v4}, Lorg/bouncycastle/math/raw/Mod;->divsteps30Var(III[I)I

    move-result v9

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/raw/Mod;->updateDE30(I[I[I[II[I)V

    invoke-static {v8, v11, v12, v4}, Lorg/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    invoke-static {v8, v11, v12}, Lorg/bouncycastle/math/raw/Mod;->trimFG30(I[I[I)I

    move-result v8

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v8, -0x1

    aget v3, v11, v3

    shr-int/lit8 v4, v3, 0x1f

    add-int/lit8 v3, v1, -0x1

    aget v3, v2, v3

    shr-int/lit8 v3, v3, 0x1f

    if-gez v3, :cond_2

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    move-result v3

    :cond_2
    if-gez v4, :cond_3

    invoke-static {v1, v2}, Lorg/bouncycastle/math/raw/Mod;->negate30(I[I)I

    move-result v3

    invoke-static {v8, v11}, Lorg/bouncycastle/math/raw/Mod;->negate30(I[I)I

    :cond_3
    const/4 v4, 0x1

    invoke-static {v8, v11, v4}, Lorg/bouncycastle/math/raw/Mod;->equalToVar(I[II)Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v1, 0x0

    goto :goto_1

    :cond_4
    if-gez v3, :cond_5

    invoke-static {v1, v2, v6}, Lorg/bouncycastle/math/raw/Mod;->add30(I[I[I)I

    :cond_5
    move-object/from16 v0, p2

    invoke-static {v10, v2, v0}, Lorg/bouncycastle/math/raw/Mod;->decode30(I[I[I)V

    const/4 v1, 0x1

    goto :goto_1
.end method

.method public static modOddIsCoprime([I[I)I
    .locals 10

    const/4 v1, 0x0

    array-length v0, p0

    shl-int/lit8 v2, v0, 0x5

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v0

    sub-int v0, v2, v0

    add-int/lit8 v2, v0, 0x1d

    div-int/lit8 v3, v2, 0x1e

    const/4 v2, 0x4

    new-array v4, v2, [I

    new-array v5, v3, [I

    new-array v6, v3, [I

    new-array v2, v3, [I

    invoke-static {v0, p1, v6}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    invoke-static {v0, p0, v2}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    invoke-static {v2, v1, v5, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lorg/bouncycastle/math/raw/Mod;->getMaximumHDDivsteps(I)I

    move-result v7

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v7, :cond_0

    aget v8, v5, v1

    aget v9, v6, v1

    invoke-static {v2, v8, v9, v4}, Lorg/bouncycastle/math/raw/Mod;->hddivsteps30(III[I)I

    move-result v2

    invoke-static {v3, v5, v6, v4}, Lorg/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    add-int/lit8 v0, v0, 0x1e

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v3, -0x1

    aget v0, v5, v0

    shr-int/lit8 v0, v0, 0x1f

    invoke-static {v3, v0, v5}, Lorg/bouncycastle/math/raw/Mod;->cnegate30(II[I)V

    const/4 v0, 0x1

    invoke-static {v3, v5, v0}, Lorg/bouncycastle/math/raw/Mod;->equalTo(I[II)I

    move-result v0

    invoke-static {v3, v6, v1}, Lorg/bouncycastle/math/raw/Mod;->equalTo(I[II)I

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public static modOddIsCoprimeVar([I[I)Z
    .locals 10

    const/4 v3, 0x0

    array-length v0, p0

    shl-int/lit8 v1, v0, 0x5

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v2

    sub-int v4, v1, v2

    add-int/lit8 v1, v4, 0x1d

    div-int/lit8 v1, v1, 0x1e

    invoke-static {v0, p1}, Lorg/bouncycastle/math/raw/Nat;->getBitLength(I[I)I

    move-result v0

    sub-int v0, v4, v0

    const/4 v2, 0x4

    new-array v5, v2, [I

    new-array v6, v1, [I

    new-array v7, v1, [I

    new-array v2, v1, [I

    invoke-static {v4, p1, v7}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    invoke-static {v4, p0, v2}, Lorg/bouncycastle/math/raw/Mod;->encode30(I[I[I)V

    invoke-static {v2, v3, v6, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    neg-int v2, v0

    invoke-static {v4}, Lorg/bouncycastle/math/raw/Mod;->getMaximumDivsteps(I)I

    move-result v4

    :goto_0
    invoke-static {v1, v7, v3}, Lorg/bouncycastle/math/raw/Mod;->equalToVar(I[II)Z

    move-result v8

    if-nez v8, :cond_1

    if-lt v0, v4, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1e

    aget v8, v6, v3

    aget v9, v7, v3

    invoke-static {v2, v8, v9, v5}, Lorg/bouncycastle/math/raw/Mod;->divsteps30Var(III[I)I

    move-result v2

    invoke-static {v1, v6, v7, v5}, Lorg/bouncycastle/math/raw/Mod;->updateFG30(I[I[I[I)V

    invoke-static {v1, v6, v7}, Lorg/bouncycastle/math/raw/Mod;->trimFG30(I[I[I)I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    aget v0, v6, v0

    shr-int/lit8 v0, v0, 0x1f

    if-gez v0, :cond_2

    invoke-static {v1, v6}, Lorg/bouncycastle/math/raw/Mod;->negate30(I[I)I

    :cond_2
    const/4 v0, 0x1

    invoke-static {v1, v6, v0}, Lorg/bouncycastle/math/raw/Mod;->equalToVar(I[II)Z

    move-result v0

    goto :goto_1
.end method

.method private static negate30(I[I)I
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v3, p0, -0x1

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget v1, p1, v0

    sub-int v1, v2, v1

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v2, v1

    aput v2, p1, v0

    shr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    aget v0, p1, v3

    sub-int v0, v2, v0

    aput v0, p1, v3

    shr-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method public static random([I)[I
    .locals 6

    array-length v1, p0

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-static {v1}, Lorg/bouncycastle/math/raw/Nat;->create(I)[I

    move-result-object v3

    add-int/lit8 v0, v1, -0x1

    aget v0, p0, v0

    ushr-int/lit8 v4, v0, 0x1

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x2

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x4

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x8

    or-int/2addr v0, v4

    ushr-int/lit8 v4, v0, 0x10

    or-int/2addr v4, v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_1

    invoke-virtual {v2}, Ljava/util/Random;->nextInt()I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v1, -0x1

    aget v5, v3, v0

    and-int/2addr v5, v4

    aput v5, v3, v0

    invoke-static {v1, v3, p0}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v3
.end method

.method private static trimFG30(I[I[I)I
    .locals 4

    add-int/lit8 v0, p0, -0x1

    aget v0, p1, v0

    add-int/lit8 v1, p0, -0x1

    aget v1, p2, v1

    add-int/lit8 v2, p0, -0x2

    shr-int/lit8 v2, v2, 0x1f

    shr-int/lit8 v3, v0, 0x1f

    xor-int/2addr v3, v0

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x1f

    xor-int/2addr v3, v1

    or-int/2addr v2, v3

    if-nez v2, :cond_0

    add-int/lit8 v2, p0, -0x2

    aget v3, p1, v2

    shl-int/lit8 v0, v0, 0x1e

    or-int/2addr v0, v3

    aput v0, p1, v2

    add-int/lit8 v0, p0, -0x2

    aget v2, p2, v0

    shl-int/lit8 v1, v1, 0x1e

    or-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 p0, p0, -0x1

    :cond_0
    return p0
.end method

.method private static updateDE30(I[I[I[II[I)V
    .locals 24

    const/4 v2, 0x0

    aget v7, p3, v2

    const/4 v2, 0x1

    aget v8, p3, v2

    const/4 v2, 0x2

    aget v9, p3, v2

    const/4 v2, 0x3

    aget v10, p3, v2

    add-int/lit8 v2, p0, -0x1

    aget v2, p1, v2

    shr-int/lit8 v2, v2, 0x1f

    add-int/lit8 v3, p0, -0x1

    aget v3, p2, v3

    shr-int/lit8 v3, v3, 0x1f

    and-int v4, v7, v2

    and-int v5, v8, v3

    add-int/2addr v4, v5

    and-int/2addr v2, v9

    and-int/2addr v3, v10

    add-int/2addr v2, v3

    const/4 v3, 0x0

    aget v3, p5, v3

    const/4 v5, 0x0

    aget v5, p1, v5

    const/4 v6, 0x0

    aget v6, p2, v6

    int-to-long v12, v7

    int-to-long v14, v5

    mul-long/2addr v12, v14

    int-to-long v14, v8

    int-to-long v0, v6

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v12, v14

    int-to-long v14, v9

    int-to-long v0, v5

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    int-to-long v0, v10

    move-wide/from16 v16, v0

    int-to-long v0, v6

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    long-to-int v5, v12

    mul-int v5, v5, p4

    add-int/2addr v5, v4

    const v6, 0x3fffffff    # 1.9999999f

    and-int/2addr v5, v6

    sub-int v11, v4, v5

    long-to-int v4, v14

    mul-int v4, v4, p4

    add-int/2addr v4, v2

    const v5, 0x3fffffff    # 1.9999999f

    and-int/2addr v4, v5

    sub-int v16, v2, v4

    int-to-long v4, v3

    int-to-long v0, v11

    move-wide/from16 v18, v0

    mul-long v4, v4, v18

    add-long/2addr v4, v12

    int-to-long v2, v3

    move/from16 v0, v16

    int-to-long v12, v0

    mul-long/2addr v2, v12

    add-long/2addr v2, v14

    const/16 v6, 0x1e

    shr-long/2addr v4, v6

    const/16 v6, 0x1e

    shr-long/2addr v2, v6

    const/4 v6, 0x1

    :goto_0
    move/from16 v0, p0

    if-ge v6, v0, :cond_0

    aget v12, p5, v6

    aget v13, p1, v6

    aget v14, p2, v6

    int-to-long v0, v7

    move-wide/from16 v18, v0

    int-to-long v0, v13

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    int-to-long v0, v8

    move-wide/from16 v20, v0

    int-to-long v0, v14

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    add-long v18, v18, v20

    int-to-long v0, v12

    move-wide/from16 v20, v0

    int-to-long v0, v11

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    add-long v18, v18, v20

    add-long v4, v4, v18

    int-to-long v0, v9

    move-wide/from16 v18, v0

    int-to-long v0, v13

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    int-to-long v0, v10

    move-wide/from16 v20, v0

    int-to-long v14, v14

    mul-long v14, v14, v20

    add-long v14, v14, v18

    int-to-long v12, v12

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v12, v12, v18

    add-long/2addr v12, v14

    add-long/2addr v2, v12

    add-int/lit8 v12, v6, -0x1

    long-to-int v13, v4

    const v14, 0x3fffffff    # 1.9999999f

    and-int/2addr v13, v14

    aput v13, p1, v12

    const/16 v12, 0x1e

    shr-long/2addr v4, v12

    add-int/lit8 v12, v6, -0x1

    long-to-int v13, v2

    const v14, 0x3fffffff    # 1.9999999f

    and-int/2addr v13, v14

    aput v13, p2, v12

    const/16 v12, 0x1e

    shr-long/2addr v2, v12

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, p0, -0x1

    long-to-int v4, v4

    aput v4, p1, v6

    add-int/lit8 v4, p0, -0x1

    long-to-int v2, v2

    aput v2, p2, v4

    return-void
.end method

.method private static updateFG30(I[I[I[I)V
    .locals 20

    const/4 v2, 0x0

    aget v7, p3, v2

    const/4 v2, 0x1

    aget v8, p3, v2

    const/4 v2, 0x2

    aget v9, p3, v2

    const/4 v2, 0x3

    aget v10, p3, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x0

    aget v3, p2, v3

    int-to-long v4, v7

    int-to-long v12, v2

    mul-long/2addr v4, v12

    int-to-long v12, v8

    int-to-long v14, v3

    mul-long/2addr v12, v14

    add-long/2addr v4, v12

    int-to-long v12, v9

    int-to-long v14, v2

    mul-long/2addr v12, v14

    int-to-long v14, v10

    int-to-long v2, v3

    mul-long/2addr v2, v14

    add-long/2addr v2, v12

    const/16 v6, 0x1e

    shr-long/2addr v4, v6

    const/16 v6, 0x1e

    shr-long/2addr v2, v6

    const/4 v6, 0x1

    :goto_0
    move/from16 v0, p0

    if-ge v6, v0, :cond_0

    aget v11, p1, v6

    aget v12, p2, v6

    int-to-long v14, v7

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    int-to-long v0, v8

    move-wide/from16 v16, v0

    int-to-long v0, v12

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    add-long/2addr v4, v14

    int-to-long v14, v9

    int-to-long v0, v11

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    int-to-long v0, v10

    move-wide/from16 v16, v0

    int-to-long v12, v12

    mul-long v12, v12, v16

    add-long/2addr v12, v14

    add-long/2addr v2, v12

    add-int/lit8 v11, v6, -0x1

    long-to-int v12, v4

    const v13, 0x3fffffff    # 1.9999999f

    and-int/2addr v12, v13

    aput v12, p1, v11

    const/16 v11, 0x1e

    shr-long/2addr v4, v11

    add-int/lit8 v11, v6, -0x1

    long-to-int v12, v2

    const v13, 0x3fffffff    # 1.9999999f

    and-int/2addr v12, v13

    aput v12, p2, v11

    const/16 v11, 0x1e

    shr-long/2addr v2, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, p0, -0x1

    long-to-int v4, v4

    aput v4, p1, v6

    add-int/lit8 v4, p0, -0x1

    long-to-int v2, v2

    aput v2, p2, v4

    return-void
.end method
