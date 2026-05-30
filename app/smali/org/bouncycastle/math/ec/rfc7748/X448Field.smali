.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X448Field;
.super Ljava/lang/Object;


# static fields
.field private static final M28:I = 0xfffffff

.field private static final P32:[I

.field public static final SIZE:I = 0x10

.field private static final U32:J = 0xffffffffL


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->P32:[I

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x2
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static addOne([I)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    return-void
.end method

.method public static addOne([II)V
    .locals 1

    aget v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public static areEqual([I[I)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v3, p1, v0

    xor-int/2addr v1, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v2, 0x1

    and-int/lit8 v1, v2, 0x1

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static areEqualVar([I[I)Z
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->areEqual([I[I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static carry([I)V
    .locals 18

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x4

    aget v4, p0, v4

    const/4 v5, 0x5

    aget v5, p0, v5

    const/4 v6, 0x6

    aget v6, p0, v6

    const/4 v7, 0x7

    aget v7, p0, v7

    const/16 v8, 0x8

    aget v8, p0, v8

    const/16 v9, 0x9

    aget v9, p0, v9

    const/16 v10, 0xa

    aget v10, p0, v10

    const/16 v11, 0xb

    aget v11, p0, v11

    const/16 v12, 0xc

    aget v12, p0, v12

    const/16 v13, 0xd

    aget v13, p0, v13

    const/16 v14, 0xe

    aget v14, p0, v14

    const/16 v15, 0xf

    aget v15, p0, v15

    ushr-int/lit8 v16, v0, 0x1c

    add-int v1, v1, v16

    const v16, 0xfffffff

    and-int v0, v0, v16

    ushr-int/lit8 v16, v4, 0x1c

    add-int v5, v5, v16

    const v16, 0xfffffff

    and-int v4, v4, v16

    ushr-int/lit8 v16, v8, 0x1c

    add-int v9, v9, v16

    const v16, 0xfffffff

    and-int v8, v8, v16

    ushr-int/lit8 v16, v12, 0x1c

    add-int v13, v13, v16

    const v16, 0xfffffff

    and-int v12, v12, v16

    ushr-int/lit8 v16, v1, 0x1c

    add-int v2, v2, v16

    const v16, 0xfffffff

    and-int v1, v1, v16

    ushr-int/lit8 v16, v5, 0x1c

    add-int v6, v6, v16

    const v16, 0xfffffff

    and-int v5, v5, v16

    ushr-int/lit8 v16, v9, 0x1c

    add-int v10, v10, v16

    const v16, 0xfffffff

    and-int v9, v9, v16

    ushr-int/lit8 v16, v13, 0x1c

    add-int v14, v14, v16

    const v16, 0xfffffff

    and-int v13, v13, v16

    ushr-int/lit8 v16, v2, 0x1c

    add-int v3, v3, v16

    const v16, 0xfffffff

    and-int v2, v2, v16

    ushr-int/lit8 v16, v6, 0x1c

    add-int v7, v7, v16

    const v16, 0xfffffff

    and-int v6, v6, v16

    ushr-int/lit8 v16, v10, 0x1c

    add-int v11, v11, v16

    const v16, 0xfffffff

    and-int v10, v10, v16

    ushr-int/lit8 v16, v14, 0x1c

    add-int v15, v15, v16

    const v16, 0xfffffff

    and-int v14, v14, v16

    ushr-int/lit8 v16, v15, 0x1c

    const v17, 0xfffffff

    and-int v15, v15, v17

    add-int v0, v0, v16

    add-int v8, v8, v16

    ushr-int/lit8 v16, v3, 0x1c

    add-int v4, v4, v16

    const v16, 0xfffffff

    and-int v3, v3, v16

    ushr-int/lit8 v16, v7, 0x1c

    add-int v8, v8, v16

    const v16, 0xfffffff

    and-int v7, v7, v16

    ushr-int/lit8 v16, v11, 0x1c

    add-int v12, v12, v16

    const v16, 0xfffffff

    and-int v11, v11, v16

    ushr-int/lit8 v16, v0, 0x1c

    add-int v1, v1, v16

    const v16, 0xfffffff

    and-int v0, v0, v16

    ushr-int/lit8 v16, v4, 0x1c

    add-int v5, v5, v16

    const v16, 0xfffffff

    and-int v4, v4, v16

    ushr-int/lit8 v16, v8, 0x1c

    add-int v9, v9, v16

    const v16, 0xfffffff

    and-int v8, v8, v16

    ushr-int/lit8 v16, v12, 0x1c

    add-int v13, v13, v16

    const v16, 0xfffffff

    and-int v12, v12, v16

    const/16 v16, 0x0

    aput v0, p0, v16

    const/4 v0, 0x1

    aput v1, p0, v0

    const/4 v0, 0x2

    aput v2, p0, v0

    const/4 v0, 0x3

    aput v3, p0, v0

    const/4 v0, 0x4

    aput v4, p0, v0

    const/4 v0, 0x5

    aput v5, p0, v0

    const/4 v0, 0x6

    aput v6, p0, v0

    const/4 v0, 0x7

    aput v7, p0, v0

    const/16 v0, 0x8

    aput v8, p0, v0

    const/16 v0, 0x9

    aput v9, p0, v0

    const/16 v0, 0xa

    aput v10, p0, v0

    const/16 v0, 0xb

    aput v11, p0, v0

    const/16 v0, 0xc

    aput v12, p0, v0

    const/16 v0, 0xd

    aput v13, p0, v0

    const/16 v0, 0xe

    aput v14, p0, v0

    const/16 v0, 0xf

    aput v15, p0, v0

    return-void
.end method

.method public static cmov(I[II[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    add-int v1, p4, v0

    aget v1, p3, v1

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v2, v1

    and-int/2addr v2, p0

    xor-int/2addr v1, v2

    add-int v2, p4, v0

    aput v1, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static cnegate(I[I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    neg-int v1, p0

    invoke-static {v1, v0, v2, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->cmov(I[II[II)V

    return-void
.end method

.method public static copy([II[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    add-int v1, p3, v0

    add-int v2, p1, v0

    aget v2, p0, v2

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static create()[I
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createTable(I)[I
    .locals 1

    mul-int/lit8 v0, p0, 0x10

    new-array v0, v0, [I

    return-object v0
.end method

.method public static cswap(I[I[I)V
    .locals 5

    rsub-int/lit8 v1, p0, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    aget v3, p2, v0

    xor-int v4, v2, v3

    and-int/2addr v4, v1

    xor-int/2addr v2, v4

    aput v2, p1, v0

    xor-int v2, v3, v4

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static decode([BI[I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x7

    const/4 v1, 0x2

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0xe

    const/4 v1, 0x4

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x15

    const/4 v1, 0x6

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x1c

    const/16 v1, 0x8

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x23

    const/16 v1, 0xa

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x2a

    const/16 v1, 0xc

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x31

    const/16 v1, 0xe

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    return-void
.end method

.method public static decode([BI[II)V
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x7

    add-int/lit8 v1, p3, 0x2

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0xe

    add-int/lit8 v1, p3, 0x4

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x15

    add-int/lit8 v1, p3, 0x6

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x1c

    add-int/lit8 v1, p3, 0x8

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x23

    add-int/lit8 v1, p3, 0xa

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x2a

    add-int/lit8 v1, p3, 0xc

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    add-int/lit8 v0, p1, 0x31

    add-int/lit8 v1, p3, 0xe

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    return-void
.end method

.method public static decode([B[I)V
    .locals 3

    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    const/4 v0, 0x7

    const/4 v1, 0x2

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    const/4 v0, 0x4

    invoke-static {p0, v2, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    const/16 v0, 0x15

    const/4 v1, 0x6

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    const/16 v0, 0x1c

    const/16 v1, 0x8

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    const/16 v0, 0x23

    const/16 v1, 0xa

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    const/16 v0, 0x2a

    const/16 v1, 0xc

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    const/16 v0, 0x31

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode56([BI[II)V

    return-void
.end method

.method public static decode([II[I)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode224([II[II)V

    add-int/lit8 v0, p1, 0x7

    const/16 v1, 0x8

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode224([II[II)V

    return-void
.end method

.method private static decode224([II[II)V
    .locals 10

    const v9, 0xfffffff

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    add-int/lit8 v6, p1, 0x6

    aget v6, p0, v6

    add-int/lit8 v7, p3, 0x0

    and-int v8, v0, v9

    aput v8, p2, v7

    add-int/lit8 v7, p3, 0x1

    ushr-int/lit8 v0, v0, 0x1c

    shl-int/lit8 v8, v1, 0x4

    or-int/2addr v0, v8

    and-int/2addr v0, v9

    aput v0, p2, v7

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, v1, 0x18

    shl-int/lit8 v7, v2, 0x8

    or-int/2addr v1, v7

    and-int/2addr v1, v9

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, v2, 0x14

    shl-int/lit8 v2, v3, 0xc

    or-int/2addr v1, v2

    and-int/2addr v1, v9

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    ushr-int/lit8 v1, v3, 0x10

    shl-int/lit8 v2, v4, 0x10

    or-int/2addr v1, v2

    and-int/2addr v1, v9

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    ushr-int/lit8 v1, v4, 0xc

    shl-int/lit8 v2, v5, 0x14

    or-int/2addr v1, v2

    and-int/2addr v1, v9

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    ushr-int/lit8 v1, v5, 0x8

    shl-int/lit8 v2, v6, 0x18

    or-int/2addr v1, v2

    and-int/2addr v1, v9

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x7

    ushr-int/lit8 v1, v6, 0x4

    aput v1, p2, v0

    return-void
.end method

.method private static decode24([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method private static decode32([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static decode56([BI[II)V
    .locals 3

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode32([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode24([BI)I

    move-result v1

    const v2, 0xfffffff

    and-int/2addr v2, v0

    aput v2, p2, p3

    add-int/lit8 v2, p3, 0x1

    ushr-int/lit8 v0, v0, 0x1c

    shl-int/lit8 v1, v1, 0x4

    or-int/2addr v0, v1

    aput v0, p2, v2

    return-void
.end method

.method public static encode([II[BI)V
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p3, 0x7

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v1, p3, 0xe

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p1, 0x6

    add-int/lit8 v1, p3, 0x15

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p1, 0x8

    add-int/lit8 v1, p3, 0x1c

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p1, 0xa

    add-int/lit8 v1, p3, 0x23

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p1, 0xc

    add-int/lit8 v1, p3, 0x2a

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    add-int/lit8 v0, p1, 0xe

    add-int/lit8 v1, p3, 0x31

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    return-void
.end method

.method public static encode([I[B)V
    .locals 3

    const/16 v2, 0xe

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/4 v0, 0x2

    const/4 v1, 0x7

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/4 v0, 0x4

    invoke-static {p0, v0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/4 v0, 0x6

    const/16 v1, 0x15

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/16 v0, 0x8

    const/16 v1, 0x1c

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/16 v0, 0xa

    const/16 v1, 0x23

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/16 v0, 0xc

    const/16 v1, 0x2a

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/16 v0, 0x31

    invoke-static {p0, v2, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    return-void
.end method

.method public static encode([I[BI)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/4 v0, 0x2

    add-int/lit8 v1, p2, 0x7

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/4 v0, 0x4

    add-int/lit8 v1, p2, 0xe

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/4 v0, 0x6

    add-int/lit8 v1, p2, 0x15

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/16 v0, 0x8

    add-int/lit8 v1, p2, 0x1c

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/16 v0, 0xa

    add-int/lit8 v1, p2, 0x23

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/16 v0, 0xc

    add-int/lit8 v1, p2, 0x2a

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    const/16 v0, 0xe

    add-int/lit8 v1, p2, 0x31

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode56([II[BI)V

    return-void
.end method

.method public static encode([I[II)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode224([II[II)V

    const/16 v0, 0x8

    add-int/lit8 v1, p2, 0x7

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode224([II[II)V

    return-void
.end method

.method private static encode224([II[II)V
    .locals 10

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    add-int/lit8 v4, p1, 0x4

    aget v4, p0, v4

    add-int/lit8 v5, p1, 0x5

    aget v5, p0, v5

    add-int/lit8 v6, p1, 0x6

    aget v6, p0, v6

    add-int/lit8 v7, p1, 0x7

    aget v7, p0, v7

    add-int/lit8 v8, p3, 0x0

    shl-int/lit8 v9, v1, 0x1c

    or-int/2addr v0, v9

    aput v0, p2, v8

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, v1, 0x4

    shl-int/lit8 v8, v2, 0x18

    or-int/2addr v1, v8

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, v2, 0x8

    shl-int/lit8 v2, v3, 0x14

    or-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, v3, 0xc

    shl-int/lit8 v2, v4, 0x10

    or-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    ushr-int/lit8 v1, v4, 0x10

    shl-int/lit8 v2, v5, 0xc

    or-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x5

    ushr-int/lit8 v1, v5, 0x14

    shl-int/lit8 v2, v6, 0x8

    or-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x6

    ushr-int/lit8 v1, v6, 0x18

    shl-int/lit8 v2, v7, 0x4

    or-int/2addr v1, v2

    aput v1, p2, v0

    return-void
.end method

.method private static encode24(I[BI)V
    .locals 2

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private static encode32(I[BI)V
    .locals 2

    int-to-byte v0, p0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, p0, 0x18

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method private static encode56([II[BI)V
    .locals 3

    aget v0, p0, p1

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    shl-int/lit8 v2, v1, 0x1c

    or-int/2addr v0, v2

    invoke-static {v0, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode32(I[BI)V

    ushr-int/lit8 v0, v1, 0x4

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode24(I[BI)V

    return-void
.end method

.method public static inv([I[I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/16 v1, 0xe

    new-array v1, v1, [I

    invoke-static {p0, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->copy([II[II)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->normalize([I)V

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode([I[II)V

    sget-object v0, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->P32:[I

    invoke-static {v0, v1, v1}, Lorg/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode([II[I)V

    return-void
.end method

.method public static invVar([I[I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/16 v1, 0xe

    new-array v1, v1, [I

    invoke-static {p0, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->copy([II[II)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->normalize([I)V

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->encode([I[II)V

    sget-object v0, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->P32:[I

    invoke-static {v0, v1, v1}, Lorg/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->decode([II[I)V

    return-void
.end method

.method public static isOne([I)I
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    xor-int/lit8 v1, v0, 0x1

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    aget v2, p0, v0

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

.method public static isOneVar([I)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->isOne([I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isZero([I)I
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, v2, 0x1

    and-int/lit8 v1, v2, 0x1

    or-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method public static isZeroVar([I)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->isZero([I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static mul([II[I)V
    .locals 30

    const/4 v2, 0x0

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    const/4 v6, 0x4

    aget v6, p0, v6

    const/4 v7, 0x5

    aget v7, p0, v7

    const/4 v8, 0x6

    aget v8, p0, v8

    const/4 v9, 0x7

    aget v9, p0, v9

    const/16 v10, 0x8

    aget v10, p0, v10

    const/16 v11, 0x9

    aget v11, p0, v11

    const/16 v12, 0xa

    aget v12, p0, v12

    const/16 v13, 0xb

    aget v13, p0, v13

    const/16 v14, 0xc

    aget v14, p0, v14

    const/16 v15, 0xd

    aget v15, p0, v15

    const/16 v16, 0xe

    aget v16, p0, v16

    const/16 v17, 0xf

    aget v17, p0, v17

    int-to-long v0, v3

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v3, v0

    const v20, 0xfffffff

    and-int v3, v3, v20

    const/16 v20, 0x1c

    ushr-long v18, v18, v20

    int-to-long v0, v7

    move-wide/from16 v20, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v7, v0

    const v22, 0xfffffff

    and-int v7, v7, v22

    const/16 v22, 0x1c

    ushr-long v20, v20, v22

    int-to-long v0, v11

    move-wide/from16 v22, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    move-wide/from16 v0, v22

    long-to-int v11, v0

    const v24, 0xfffffff

    and-int v11, v11, v24

    const/16 v24, 0x1c

    ushr-long v22, v22, v24

    int-to-long v0, v15

    move-wide/from16 v24, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    move-wide/from16 v0, v24

    long-to-int v15, v0

    const v26, 0xfffffff

    and-int v15, v15, v26

    const/16 v26, 0x1c

    ushr-long v24, v24, v26

    int-to-long v0, v4

    move-wide/from16 v26, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    add-long v18, v18, v26

    const/4 v4, 0x2

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v26, v0

    const v27, 0xfffffff

    and-int v26, v26, v27

    aput v26, p2, v4

    const/16 v4, 0x1c

    ushr-long v18, v18, v4

    int-to-long v0, v8

    move-wide/from16 v26, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    add-long v20, v20, v26

    const/4 v4, 0x6

    move-wide/from16 v0, v20

    long-to-int v8, v0

    const v26, 0xfffffff

    and-int v8, v8, v26

    aput v8, p2, v4

    const/16 v4, 0x1c

    ushr-long v20, v20, v4

    int-to-long v0, v12

    move-wide/from16 v26, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    add-long v22, v22, v26

    const/16 v4, 0xa

    move-wide/from16 v0, v22

    long-to-int v8, v0

    const v12, 0xfffffff

    and-int/2addr v8, v12

    aput v8, p2, v4

    const/16 v4, 0x1c

    ushr-long v22, v22, v4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    add-long v24, v24, v26

    const/16 v4, 0xe

    move-wide/from16 v0, v24

    long-to-int v8, v0

    const v12, 0xfffffff

    and-int/2addr v8, v12

    aput v8, p2, v4

    const/16 v4, 0x1c

    ushr-long v24, v24, v4

    int-to-long v4, v5

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v4, v4, v26

    add-long v4, v4, v18

    const/4 v8, 0x3

    long-to-int v12, v4

    const v16, 0xfffffff

    and-int v12, v12, v16

    aput v12, p2, v8

    const/16 v8, 0x1c

    ushr-long/2addr v4, v8

    int-to-long v8, v9

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v8, v8, v18

    add-long v8, v8, v20

    const/4 v12, 0x7

    long-to-int v0, v8

    move/from16 v16, v0

    const v18, 0xfffffff

    and-int v16, v16, v18

    aput v16, p2, v12

    const/16 v12, 0x1c

    ushr-long/2addr v8, v12

    int-to-long v12, v13

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v12, v12, v18

    add-long v12, v12, v22

    const/16 v16, 0xb

    long-to-int v0, v12

    move/from16 v18, v0

    const v19, 0xfffffff

    and-int v18, v18, v19

    aput v18, p2, v16

    const/16 v16, 0x1c

    ushr-long v12, v12, v16

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v16, v16, v24

    const/16 v18, 0xf

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    const v20, 0xfffffff

    and-int v19, v19, v20

    aput v19, p2, v18

    const/16 v18, 0x1c

    ushr-long v16, v16, v18

    add-long v8, v8, v16

    int-to-long v0, v6

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v4, v4, v18

    const/4 v6, 0x4

    long-to-int v0, v4

    move/from16 v18, v0

    const v19, 0xfffffff

    and-int v18, v18, v19

    aput v18, p2, v6

    const/16 v6, 0x1c

    ushr-long/2addr v4, v6

    int-to-long v0, v10

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v8, v8, v18

    const/16 v6, 0x8

    long-to-int v10, v8

    const v18, 0xfffffff

    and-int v10, v10, v18

    aput v10, p2, v6

    const/16 v6, 0x1c

    ushr-long/2addr v8, v6

    int-to-long v0, v14

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v12, v12, v18

    const/16 v6, 0xc

    long-to-int v10, v12

    const v14, 0xfffffff

    and-int/2addr v10, v14

    aput v10, p2, v6

    const/16 v6, 0x1c

    ushr-long/2addr v12, v6

    int-to-long v0, v2

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    const/4 v2, 0x0

    move-wide/from16 v0, v16

    long-to-int v6, v0

    const v10, 0xfffffff

    and-int/2addr v6, v10

    aput v6, p2, v2

    const/16 v2, 0x1c

    ushr-long v16, v16, v2

    const/4 v2, 0x1

    move-wide/from16 v0, v16

    long-to-int v6, v0

    add-int/2addr v3, v6

    aput v3, p2, v2

    const/4 v2, 0x5

    long-to-int v3, v4

    add-int/2addr v3, v7

    aput v3, p2, v2

    const/16 v2, 0x9

    long-to-int v3, v8

    add-int/2addr v3, v11

    aput v3, p2, v2

    const/16 v2, 0xd

    long-to-int v3, v12

    add-int/2addr v3, v15

    aput v3, p2, v2

    return-void
.end method

.method public static mul([I[I[I)V
    .locals 82

    const/4 v2, 0x0

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    const/4 v6, 0x4

    aget v6, p0, v6

    const/4 v7, 0x5

    aget v7, p0, v7

    const/4 v8, 0x6

    aget v8, p0, v8

    const/4 v9, 0x7

    aget v9, p0, v9

    const/16 v10, 0x8

    aget v10, p0, v10

    const/16 v11, 0x9

    aget v11, p0, v11

    const/16 v12, 0xa

    aget v12, p0, v12

    const/16 v13, 0xb

    aget v13, p0, v13

    const/16 v14, 0xc

    aget v14, p0, v14

    const/16 v15, 0xd

    aget v15, p0, v15

    const/16 v16, 0xe

    aget v16, p0, v16

    const/16 v17, 0xf

    aget v17, p0, v17

    const/16 v18, 0x0

    aget v18, p1, v18

    const/16 v19, 0x1

    aget v19, p1, v19

    const/16 v20, 0x2

    aget v20, p1, v20

    const/16 v21, 0x3

    aget v21, p1, v21

    const/16 v22, 0x4

    aget v22, p1, v22

    const/16 v23, 0x5

    aget v23, p1, v23

    const/16 v24, 0x6

    aget v24, p1, v24

    const/16 v25, 0x7

    aget v25, p1, v25

    const/16 v26, 0x8

    aget v26, p1, v26

    const/16 v27, 0x9

    aget v27, p1, v27

    const/16 v28, 0xa

    aget v28, p1, v28

    const/16 v29, 0xb

    aget v29, p1, v29

    const/16 v30, 0xc

    aget v30, p1, v30

    const/16 v31, 0xd

    aget v31, p1, v31

    const/16 v32, 0xe

    aget v32, p1, v32

    const/16 v33, 0xf

    aget v33, p1, v33

    add-int v34, v2, v10

    add-int v35, v3, v11

    add-int v36, v4, v12

    add-int v37, v5, v13

    add-int v38, v6, v14

    add-int v39, v7, v15

    add-int v40, v8, v16

    add-int v41, v9, v17

    add-int v42, v18, v26

    add-int v43, v19, v27

    add-int v44, v20, v28

    add-int v45, v21, v29

    add-int v46, v22, v30

    add-int v47, v23, v31

    add-int v48, v24, v32

    add-int v49, v25, v33

    int-to-long v0, v2

    move-wide/from16 v50, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v50, v50, v52

    int-to-long v0, v9

    move-wide/from16 v52, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    int-to-long v0, v8

    move-wide/from16 v54, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v7

    move-wide/from16 v54, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v6

    move-wide/from16 v54, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v5

    move-wide/from16 v54, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v4

    move-wide/from16 v54, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v3

    move-wide/from16 v54, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v10

    move-wide/from16 v54, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v56, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    int-to-long v0, v15

    move-wide/from16 v58, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    int-to-long v0, v14

    move-wide/from16 v58, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    int-to-long v0, v13

    move-wide/from16 v58, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    int-to-long v0, v12

    move-wide/from16 v58, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    int-to-long v0, v11

    move-wide/from16 v58, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    add-long v54, v54, v50

    add-long v54, v54, v60

    sub-long v52, v54, v52

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v54, v0

    const v55, 0xfffffff

    and-int v54, v54, v55

    const/16 v55, 0x1c

    ushr-long v52, v52, v55

    add-long v56, v56, v58

    sub-long v50, v56, v50

    add-long v50, v50, v60

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v55, v0

    const v56, 0xfffffff

    and-int v55, v55, v56

    const/16 v56, 0x1c

    ushr-long v50, v50, v56

    int-to-long v0, v3

    move-wide/from16 v56, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    int-to-long v0, v2

    move-wide/from16 v58, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    int-to-long v0, v9

    move-wide/from16 v58, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    int-to-long v0, v8

    move-wide/from16 v60, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    int-to-long v0, v7

    move-wide/from16 v60, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    int-to-long v0, v6

    move-wide/from16 v60, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    int-to-long v0, v5

    move-wide/from16 v60, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    int-to-long v0, v4

    move-wide/from16 v60, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    int-to-long v0, v11

    move-wide/from16 v60, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    int-to-long v0, v10

    move-wide/from16 v62, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v15

    move-wide/from16 v64, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v14

    move-wide/from16 v64, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v13

    move-wide/from16 v64, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v12

    move-wide/from16 v64, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    add-long v60, v60, v56

    add-long v60, v60, v66

    sub-long v58, v60, v58

    add-long v52, v52, v58

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v58, v0

    const v59, 0xfffffff

    and-int v58, v58, v59

    const/16 v59, 0x1c

    ushr-long v52, v52, v59

    add-long v60, v62, v64

    sub-long v56, v60, v56

    add-long v56, v56, v66

    add-long v50, v50, v56

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v56, v0

    const v57, 0xfffffff

    and-int v56, v56, v57

    const/16 v57, 0x1c

    ushr-long v50, v50, v57

    int-to-long v0, v4

    move-wide/from16 v60, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    int-to-long v0, v3

    move-wide/from16 v62, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    int-to-long v0, v2

    move-wide/from16 v62, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    int-to-long v0, v9

    move-wide/from16 v62, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    int-to-long v0, v8

    move-wide/from16 v64, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v7

    move-wide/from16 v64, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v6

    move-wide/from16 v64, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v5

    move-wide/from16 v64, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v12

    move-wide/from16 v64, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    int-to-long v0, v11

    move-wide/from16 v66, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v10

    move-wide/from16 v66, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    int-to-long v0, v15

    move-wide/from16 v68, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    int-to-long v0, v14

    move-wide/from16 v68, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    int-to-long v0, v13

    move-wide/from16 v68, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v70, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v70, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v70, v0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    add-long v64, v64, v60

    add-long v64, v64, v70

    sub-long v62, v64, v62

    add-long v52, v52, v62

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v57, v0

    const v59, 0xfffffff

    and-int v57, v57, v59

    const/16 v59, 0x1c

    ushr-long v52, v52, v59

    add-long v62, v66, v68

    sub-long v60, v62, v60

    add-long v60, v60, v70

    add-long v50, v50, v60

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v59, v0

    const v60, 0xfffffff

    and-int v59, v59, v60

    const/16 v60, 0x1c

    ushr-long v50, v50, v60

    int-to-long v0, v5

    move-wide/from16 v60, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    int-to-long v0, v4

    move-wide/from16 v62, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    int-to-long v0, v3

    move-wide/from16 v62, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    int-to-long v0, v2

    move-wide/from16 v62, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    int-to-long v0, v9

    move-wide/from16 v62, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    int-to-long v0, v8

    move-wide/from16 v64, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v7

    move-wide/from16 v64, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v6

    move-wide/from16 v64, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    int-to-long v0, v13

    move-wide/from16 v64, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    int-to-long v0, v12

    move-wide/from16 v66, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v11

    move-wide/from16 v66, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v10

    move-wide/from16 v66, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v66, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    int-to-long v0, v15

    move-wide/from16 v68, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    int-to-long v0, v14

    move-wide/from16 v68, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v68, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v70, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v70, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v70, v0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v70, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    add-long v64, v64, v60

    add-long v64, v64, v70

    sub-long v62, v64, v62

    add-long v52, v52, v62

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v62, v0

    const v63, 0xfffffff

    and-int v62, v62, v63

    const/16 v63, 0x1c

    ushr-long v52, v52, v63

    add-long v64, v66, v68

    sub-long v60, v64, v60

    add-long v60, v60, v70

    add-long v50, v50, v60

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v60, v0

    const v61, 0xfffffff

    and-int v60, v60, v61

    const/16 v61, 0x1c

    ushr-long v50, v50, v61

    int-to-long v0, v6

    move-wide/from16 v64, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    int-to-long v0, v5

    move-wide/from16 v66, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v4

    move-wide/from16 v66, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v3

    move-wide/from16 v66, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v2

    move-wide/from16 v66, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v9

    move-wide/from16 v66, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    int-to-long v0, v8

    move-wide/from16 v68, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    int-to-long v0, v7

    move-wide/from16 v68, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    int-to-long v0, v14

    move-wide/from16 v68, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    int-to-long v0, v13

    move-wide/from16 v70, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v12

    move-wide/from16 v70, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v11

    move-wide/from16 v70, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v10

    move-wide/from16 v70, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v70, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    int-to-long v0, v15

    move-wide/from16 v72, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v76, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v78, v0

    mul-long v76, v76, v78

    add-long v74, v74, v76

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v76, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v78, v0

    mul-long v76, v76, v78

    add-long v74, v74, v76

    add-long v68, v68, v64

    add-long v68, v68, v74

    sub-long v66, v68, v66

    add-long v52, v52, v66

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v61, v0

    const v63, 0xfffffff

    and-int v61, v61, v63

    const/16 v63, 0x1c

    ushr-long v52, v52, v63

    add-long v66, v70, v72

    sub-long v64, v66, v64

    add-long v64, v64, v74

    add-long v50, v50, v64

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v63, v0

    const v64, 0xfffffff

    and-int v63, v63, v64

    const/16 v64, 0x1c

    ushr-long v50, v50, v64

    int-to-long v0, v7

    move-wide/from16 v64, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    int-to-long v0, v6

    move-wide/from16 v66, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v5

    move-wide/from16 v66, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v4

    move-wide/from16 v66, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v3

    move-wide/from16 v66, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v2

    move-wide/from16 v66, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    add-long v64, v64, v66

    int-to-long v0, v9

    move-wide/from16 v66, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v66, v66, v68

    int-to-long v0, v8

    move-wide/from16 v68, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    add-long v66, v66, v68

    int-to-long v0, v15

    move-wide/from16 v68, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    int-to-long v0, v14

    move-wide/from16 v70, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v13

    move-wide/from16 v70, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v12

    move-wide/from16 v70, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v11

    move-wide/from16 v70, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v10

    move-wide/from16 v70, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v70, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    add-long v70, v70, v72

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v76, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v78, v0

    mul-long v76, v76, v78

    add-long v74, v74, v76

    add-long v68, v68, v64

    add-long v68, v68, v74

    sub-long v66, v68, v66

    add-long v52, v52, v66

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v66, v0

    const v67, 0xfffffff

    and-int v66, v66, v67

    const/16 v67, 0x1c

    ushr-long v52, v52, v67

    add-long v68, v70, v72

    sub-long v64, v68, v64

    add-long v64, v64, v74

    add-long v50, v50, v64

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v64, v0

    const v65, 0xfffffff

    and-int v64, v64, v65

    const/16 v65, 0x1c

    ushr-long v50, v50, v65

    int-to-long v0, v8

    move-wide/from16 v68, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    int-to-long v0, v7

    move-wide/from16 v70, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v6

    move-wide/from16 v70, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v5

    move-wide/from16 v70, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v4

    move-wide/from16 v70, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v3

    move-wide/from16 v70, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v2

    move-wide/from16 v70, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    add-long v68, v68, v70

    int-to-long v0, v9

    move-wide/from16 v70, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v72, v0

    mul-long v70, v70, v72

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v72, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v74, v0

    mul-long v72, v72, v74

    int-to-long v0, v15

    move-wide/from16 v74, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    int-to-long v0, v14

    move-wide/from16 v74, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    int-to-long v0, v13

    move-wide/from16 v74, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    int-to-long v0, v12

    move-wide/from16 v74, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    int-to-long v0, v11

    move-wide/from16 v74, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    int-to-long v0, v10

    move-wide/from16 v74, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    add-long v72, v72, v74

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v74, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v76, v0

    mul-long v74, v74, v76

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v76, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v78, v0

    mul-long v76, v76, v78

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v80, v0

    mul-long v78, v78, v80

    add-long v76, v76, v78

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v80, v0

    mul-long v78, v78, v80

    add-long v76, v76, v78

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v80, v0

    mul-long v78, v78, v80

    add-long v76, v76, v78

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v80, v0

    mul-long v78, v78, v80

    add-long v76, v76, v78

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move/from16 v0, v47

    int-to-long v0, v0

    move-wide/from16 v80, v0

    mul-long v78, v78, v80

    add-long v76, v76, v78

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v80, v0

    mul-long v78, v78, v80

    add-long v76, v76, v78

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v78, v0

    move/from16 v0, v49

    int-to-long v0, v0

    move-wide/from16 v80, v0

    mul-long v78, v78, v80

    add-long v72, v72, v68

    add-long v72, v72, v78

    sub-long v70, v72, v70

    add-long v52, v52, v70

    move-wide/from16 v0, v52

    long-to-int v0, v0

    move/from16 v65, v0

    const v67, 0xfffffff

    and-int v65, v65, v67

    const/16 v67, 0x1c

    ushr-long v52, v52, v67

    add-long v70, v74, v76

    sub-long v68, v70, v68

    add-long v68, v68, v78

    add-long v50, v50, v68

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v67, v0

    const v68, 0xfffffff

    and-int v67, v67, v68

    const/16 v68, 0x1c

    ushr-long v50, v50, v68

    int-to-long v0, v9

    move-wide/from16 v68, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v70, v0

    mul-long v68, v68, v70

    int-to-long v8, v8

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v8, v8, v18

    add-long v8, v8, v68

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v68, v0

    mul-long v18, v18, v68

    add-long v8, v8, v18

    int-to-long v6, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v6, v6, v18

    add-long/2addr v6, v8

    int-to-long v8, v5

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v8, v8, v18

    add-long/2addr v6, v8

    int-to-long v4, v4

    move/from16 v0, v23

    int-to-long v8, v0

    mul-long/2addr v4, v8

    add-long/2addr v4, v6

    int-to-long v6, v3

    move/from16 v0, v24

    int-to-long v8, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v2, v2

    move/from16 v0, v25

    int-to-long v6, v0

    mul-long/2addr v2, v6

    add-long/2addr v2, v4

    move/from16 v0, v17

    int-to-long v4, v0

    move/from16 v0, v26

    int-to-long v6, v0

    mul-long/2addr v4, v6

    move/from16 v0, v16

    int-to-long v6, v0

    move/from16 v0, v27

    int-to-long v8, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v15

    move/from16 v0, v28

    int-to-long v8, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v14

    move/from16 v0, v29

    int-to-long v8, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v13

    move/from16 v0, v30

    int-to-long v8, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v12

    move/from16 v0, v31

    int-to-long v8, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v11

    move/from16 v0, v32

    int-to-long v8, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    int-to-long v6, v10

    move/from16 v0, v33

    int-to-long v8, v0

    mul-long/2addr v6, v8

    add-long/2addr v4, v6

    move/from16 v0, v41

    int-to-long v6, v0

    move/from16 v0, v42

    int-to-long v8, v0

    mul-long/2addr v6, v8

    move/from16 v0, v40

    int-to-long v8, v0

    move/from16 v0, v43

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    move/from16 v0, v39

    int-to-long v8, v0

    move/from16 v0, v44

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    move/from16 v0, v38

    int-to-long v8, v0

    move/from16 v0, v45

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    move/from16 v0, v37

    int-to-long v8, v0

    move/from16 v0, v46

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    move/from16 v0, v36

    int-to-long v8, v0

    move/from16 v0, v47

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    move/from16 v0, v35

    int-to-long v8, v0

    move/from16 v0, v48

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    move/from16 v0, v34

    int-to-long v8, v0

    move/from16 v0, v49

    int-to-long v10, v0

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    add-long/2addr v4, v2

    add-long v4, v4, v52

    long-to-int v8, v4

    const v9, 0xfffffff

    and-int/2addr v8, v9

    const/16 v9, 0x1c

    ushr-long/2addr v4, v9

    sub-long v2, v6, v2

    add-long v2, v2, v50

    long-to-int v6, v2

    const v7, 0xfffffff

    and-int/2addr v6, v7

    const/16 v7, 0x1c

    ushr-long/2addr v2, v7

    add-long/2addr v4, v2

    move/from16 v0, v55

    int-to-long v10, v0

    add-long/2addr v4, v10

    long-to-int v7, v4

    const v9, 0xfffffff

    and-int/2addr v7, v9

    const/16 v9, 0x1c

    ushr-long/2addr v4, v9

    move/from16 v0, v54

    int-to-long v10, v0

    add-long/2addr v2, v10

    long-to-int v9, v2

    const v10, 0xfffffff

    and-int/2addr v9, v10

    const/16 v10, 0x1c

    ushr-long/2addr v2, v10

    long-to-int v4, v4

    add-int v4, v4, v56

    long-to-int v2, v2

    add-int v2, v2, v58

    const/4 v3, 0x0

    aput v9, p2, v3

    const/4 v3, 0x1

    aput v2, p2, v3

    const/4 v2, 0x2

    aput v57, p2, v2

    const/4 v2, 0x3

    aput v62, p2, v2

    const/4 v2, 0x4

    aput v61, p2, v2

    const/4 v2, 0x5

    aput v66, p2, v2

    const/4 v2, 0x6

    aput v65, p2, v2

    const/4 v2, 0x7

    aput v8, p2, v2

    const/16 v2, 0x8

    aput v7, p2, v2

    const/16 v2, 0x9

    aput v4, p2, v2

    const/16 v2, 0xa

    aput v59, p2, v2

    const/16 v2, 0xb

    aput v60, p2, v2

    const/16 v2, 0xc

    aput v63, p2, v2

    const/16 v2, 0xd

    aput v64, p2, v2

    const/16 v2, 0xe

    aput v67, p2, v2

    const/16 v2, 0xf

    aput v6, p2, v2

    return-void
.end method

.method public static negate([I[I)V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    return-void
.end method

.method public static normalize([I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->reduce([II)V

    const/4 v0, -0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->reduce([II)V

    return-void
.end method

.method public static one([I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v0, p0, v2

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static powPm3d4([I[I)V
    .locals 5

    const/16 v4, 0x25

    const/4 v3, 0x3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {v1, v3, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v1, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v2

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v1, v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v2, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v2

    const/16 v3, 0x12

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v0, v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v2, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {v0, v4, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v2, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/16 v2, 0x6f

    invoke-static {v1, v2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v1, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v2

    const/16 v3, 0xdf

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([II[I)V

    invoke-static {v2, v0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    return-void
.end method

.method private static reduce([II)V
    .locals 14

    const-wide v12, 0xffffffffL

    const/16 v10, 0x1c

    const/16 v0, 0x8

    const v9, 0xfffffff

    const/16 v8, 0xf

    aget v1, p0, v8

    and-int v4, v1, v9

    ushr-int/lit8 v1, v1, 0x1c

    add-int v5, v1, p1

    int-to-long v2, v5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v6, p0, v1

    int-to-long v6, v6

    and-long/2addr v6, v12

    add-long/2addr v2, v6

    long-to-int v6, v2

    and-int/2addr v6, v9

    aput v6, p0, v1

    shr-long/2addr v2, v10

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    int-to-long v6, v5

    add-long/2addr v2, v6

    :goto_1
    if-ge v0, v8, :cond_1

    aget v1, p0, v0

    int-to-long v6, v1

    and-long/2addr v6, v12

    add-long/2addr v2, v6

    long-to-int v1, v2

    and-int/2addr v1, v9

    aput v1, p0, v0

    shr-long/2addr v2, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    long-to-int v0, v2

    add-int/2addr v0, v4

    aput v0, p0, v8

    return-void
.end method

.method public static sqr([II[I)V
    .locals 0

    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, p2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sqr([I[I)V
    .locals 70

    const/4 v2, 0x0

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    const/4 v4, 0x2

    aget v4, p0, v4

    const/4 v5, 0x3

    aget v5, p0, v5

    const/4 v6, 0x4

    aget v6, p0, v6

    const/4 v7, 0x5

    aget v7, p0, v7

    const/4 v8, 0x6

    aget v8, p0, v8

    const/4 v9, 0x7

    aget v9, p0, v9

    const/16 v10, 0x8

    aget v10, p0, v10

    const/16 v11, 0x9

    aget v11, p0, v11

    const/16 v12, 0xa

    aget v12, p0, v12

    const/16 v13, 0xb

    aget v13, p0, v13

    const/16 v14, 0xc

    aget v14, p0, v14

    const/16 v15, 0xd

    aget v15, p0, v15

    const/16 v16, 0xe

    aget v16, p0, v16

    const/16 v17, 0xf

    aget v17, p0, v17

    mul-int/lit8 v18, v2, 0x2

    mul-int/lit8 v19, v3, 0x2

    mul-int/lit8 v20, v4, 0x2

    mul-int/lit8 v21, v5, 0x2

    mul-int/lit8 v22, v6, 0x2

    mul-int/lit8 v23, v7, 0x2

    mul-int/lit8 v24, v8, 0x2

    mul-int/lit8 v25, v10, 0x2

    mul-int/lit8 v26, v11, 0x2

    mul-int/lit8 v27, v12, 0x2

    mul-int/lit8 v28, v13, 0x2

    mul-int/lit8 v29, v14, 0x2

    mul-int/lit8 v30, v15, 0x2

    mul-int/lit8 v31, v16, 0x2

    add-int v32, v2, v10

    add-int v33, v3, v11

    add-int v34, v4, v12

    add-int v35, v5, v13

    add-int v36, v6, v14

    add-int v37, v7, v15

    add-int v38, v8, v16

    add-int v39, v9, v17

    mul-int/lit8 v40, v32, 0x2

    mul-int/lit8 v41, v33, 0x2

    mul-int/lit8 v42, v34, 0x2

    mul-int/lit8 v43, v35, 0x2

    mul-int/lit8 v44, v36, 0x2

    mul-int/lit8 v45, v37, 0x2

    mul-int/lit8 v46, v38, 0x2

    int-to-long v0, v2

    move-wide/from16 v48, v0

    int-to-long v0, v2

    move-wide/from16 v50, v0

    mul-long v48, v48, v50

    int-to-long v0, v9

    move-wide/from16 v50, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v50, v50, v52

    int-to-long v0, v8

    move-wide/from16 v52, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v50, v50, v52

    int-to-long v0, v7

    move-wide/from16 v52, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v50, v50, v52

    int-to-long v0, v6

    move-wide/from16 v52, v0

    int-to-long v0, v6

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v50, v50, v52

    int-to-long v0, v10

    move-wide/from16 v52, v0

    int-to-long v0, v10

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v56, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    int-to-long v0, v15

    move-wide/from16 v56, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    int-to-long v0, v14

    move-wide/from16 v56, v0

    int-to-long v0, v14

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v56, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0xffffffffL

    and-long v60, v60, v62

    mul-long v58, v58, v60

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0xffffffffL

    and-long v62, v62, v64

    mul-long v60, v60, v62

    add-long v58, v58, v60

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0xffffffffL

    and-long v62, v62, v64

    mul-long v60, v60, v62

    add-long v58, v58, v60

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    add-long v52, v52, v48

    add-long v52, v52, v58

    sub-long v50, v52, v50

    move-wide/from16 v0, v50

    long-to-int v2, v0

    const v10, 0xfffffff

    and-int/2addr v2, v10

    const/16 v10, 0x1c

    ushr-long v50, v50, v10

    add-long v52, v54, v56

    sub-long v48, v52, v48

    add-long v48, v48, v58

    move-wide/from16 v0, v48

    long-to-int v10, v0

    const v32, 0xfffffff

    and-int v10, v10, v32

    const/16 v32, 0x1c

    ushr-long v48, v48, v32

    int-to-long v0, v3

    move-wide/from16 v52, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    int-to-long v0, v9

    move-wide/from16 v54, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    int-to-long v0, v8

    move-wide/from16 v56, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    int-to-long v0, v7

    move-wide/from16 v56, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    int-to-long v0, v11

    move-wide/from16 v56, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    int-to-long v0, v15

    move-wide/from16 v60, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0xffffffffL

    and-long v62, v62, v64

    mul-long v60, v60, v62

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0xffffffffL

    and-long v64, v64, v66

    mul-long v62, v62, v64

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0xffffffffL

    and-long v66, v66, v68

    mul-long v64, v64, v66

    add-long v62, v62, v64

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0xffffffffL

    and-long v66, v66, v68

    mul-long v64, v64, v66

    add-long v62, v62, v64

    add-long v56, v56, v52

    add-long v56, v56, v62

    sub-long v54, v56, v54

    add-long v50, v50, v54

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v32, v0

    const v47, 0xfffffff

    and-int v32, v32, v47

    const/16 v47, 0x1c

    ushr-long v50, v50, v47

    add-long v54, v58, v60

    sub-long v52, v54, v52

    add-long v52, v52, v62

    add-long v48, v48, v52

    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v47, v0

    const v52, 0xfffffff

    and-int v47, v47, v52

    const/16 v52, 0x1c

    ushr-long v48, v48, v52

    int-to-long v0, v4

    move-wide/from16 v52, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    int-to-long v0, v3

    move-wide/from16 v54, v0

    int-to-long v0, v3

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v9

    move-wide/from16 v54, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    int-to-long v0, v8

    move-wide/from16 v56, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    int-to-long v0, v7

    move-wide/from16 v56, v0

    int-to-long v0, v7

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    int-to-long v0, v12

    move-wide/from16 v56, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    int-to-long v0, v11

    move-wide/from16 v58, v0

    int-to-long v0, v11

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    int-to-long v0, v15

    move-wide/from16 v60, v0

    int-to-long v0, v15

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0xffffffffL

    and-long v62, v62, v64

    mul-long v60, v60, v62

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0xffffffffL

    and-long v64, v64, v66

    mul-long v62, v62, v64

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0xffffffffL

    and-long v66, v66, v68

    mul-long v64, v64, v66

    add-long v62, v62, v64

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v66, v0

    mul-long v64, v64, v66

    add-long v62, v62, v64

    add-long v56, v56, v52

    add-long v56, v56, v62

    sub-long v54, v56, v54

    add-long v50, v50, v54

    move-wide/from16 v0, v50

    long-to-int v3, v0

    const v11, 0xfffffff

    and-int/2addr v3, v11

    const/16 v11, 0x1c

    ushr-long v50, v50, v11

    add-long v54, v58, v60

    sub-long v52, v54, v52

    add-long v52, v52, v62

    add-long v48, v48, v52

    move-wide/from16 v0, v48

    long-to-int v11, v0

    const v33, 0xfffffff

    and-int v11, v11, v33

    const/16 v33, 0x1c

    ushr-long v48, v48, v33

    int-to-long v0, v5

    move-wide/from16 v52, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    int-to-long v0, v4

    move-wide/from16 v54, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v9

    move-wide/from16 v54, v0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    int-to-long v0, v8

    move-wide/from16 v56, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    int-to-long v0, v13

    move-wide/from16 v56, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    int-to-long v0, v12

    move-wide/from16 v58, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v29

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0xffffffffL

    and-long v62, v62, v64

    mul-long v60, v60, v62

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0xffffffffL

    and-long v64, v64, v66

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0xffffffffL

    and-long v64, v64, v66

    mul-long v62, v62, v64

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v64, v0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0xffffffffL

    and-long v66, v66, v68

    mul-long v64, v64, v66

    add-long v62, v62, v64

    add-long v56, v56, v52

    add-long v56, v56, v62

    sub-long v54, v56, v54

    add-long v50, v50, v54

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v22, v0

    const v29, 0xfffffff

    and-int v22, v22, v29

    const/16 v29, 0x1c

    ushr-long v50, v50, v29

    add-long v54, v58, v60

    sub-long v52, v54, v52

    add-long v52, v52, v62

    add-long v48, v48, v52

    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v29, v0

    const v33, 0xfffffff

    and-int v29, v29, v33

    const/16 v33, 0x1c

    ushr-long v48, v48, v33

    int-to-long v0, v6

    move-wide/from16 v52, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    int-to-long v0, v5

    move-wide/from16 v54, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v4

    move-wide/from16 v54, v0

    int-to-long v0, v4

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v9

    move-wide/from16 v54, v0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    int-to-long v0, v8

    move-wide/from16 v56, v0

    int-to-long v0, v8

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    int-to-long v0, v13

    move-wide/from16 v58, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    int-to-long v0, v12

    move-wide/from16 v58, v0

    int-to-long v0, v12

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    add-long v56, v56, v58

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v60, v0

    mul-long v58, v58, v60

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v62, v0

    mul-long v60, v60, v62

    add-long v58, v58, v60

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v60, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0xffffffffL

    and-long v62, v62, v64

    mul-long v60, v60, v62

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0xffffffffL

    and-long v64, v64, v66

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v60, v60, v62

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v45

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide v64, 0xffffffffL

    and-long v44, v44, v64

    mul-long v44, v44, v62

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v62, v0

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v64, v0

    mul-long v62, v62, v64

    add-long v44, v44, v62

    add-long v56, v56, v52

    add-long v56, v56, v44

    sub-long v54, v56, v54

    add-long v50, v50, v54

    move-wide/from16 v0, v50

    long-to-int v4, v0

    const v12, 0xfffffff

    and-int/2addr v4, v12

    const/16 v12, 0x1c

    ushr-long v50, v50, v12

    add-long v54, v58, v60

    sub-long v52, v54, v52

    add-long v44, v44, v52

    add-long v44, v44, v48

    move-wide/from16 v0, v44

    long-to-int v12, v0

    const v23, 0xfffffff

    and-int v12, v12, v23

    const/16 v23, 0x1c

    ushr-long v44, v44, v23

    int-to-long v0, v7

    move-wide/from16 v48, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v48, v48, v52

    int-to-long v0, v6

    move-wide/from16 v52, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v48, v48, v52

    int-to-long v0, v5

    move-wide/from16 v52, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v48, v48, v52

    int-to-long v0, v9

    move-wide/from16 v52, v0

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    int-to-long v0, v15

    move-wide/from16 v54, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    int-to-long v0, v14

    move-wide/from16 v56, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    int-to-long v0, v13

    move-wide/from16 v56, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v56, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v30, v0

    mul-long v30, v30, v56

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v56, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v58, v0

    const-wide v60, 0xffffffffL

    and-long v58, v58, v60

    mul-long v56, v56, v58

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0xffffffffL

    and-long v60, v60, v62

    mul-long v58, v58, v60

    add-long v56, v56, v58

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0xffffffffL

    and-long v60, v60, v62

    mul-long v58, v58, v60

    add-long v56, v56, v58

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0xffffffffL

    and-long v60, v60, v62

    mul-long v58, v58, v60

    add-long v54, v54, v48

    add-long v54, v54, v58

    sub-long v52, v54, v52

    add-long v50, v50, v52

    move-wide/from16 v0, v50

    long-to-int v0, v0

    move/from16 v23, v0

    const v24, 0xfffffff

    and-int v23, v23, v24

    const/16 v24, 0x1c

    ushr-long v50, v50, v24

    add-long v30, v30, v56

    sub-long v30, v30, v48

    add-long v30, v30, v58

    add-long v30, v30, v44

    move-wide/from16 v0, v30

    long-to-int v0, v0

    move/from16 v24, v0

    const v33, 0xfffffff

    and-int v24, v24, v33

    const/16 v33, 0x1c

    ushr-long v30, v30, v33

    int-to-long v0, v8

    move-wide/from16 v44, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v44, v44, v48

    int-to-long v0, v7

    move-wide/from16 v48, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v48, v48, v52

    add-long v44, v44, v48

    int-to-long v0, v6

    move-wide/from16 v48, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v48, v48, v52

    add-long v44, v44, v48

    int-to-long v0, v5

    move-wide/from16 v48, v0

    int-to-long v0, v5

    move-wide/from16 v52, v0

    mul-long v48, v48, v52

    add-long v44, v44, v48

    int-to-long v0, v9

    move-wide/from16 v48, v0

    int-to-long v0, v9

    move-wide/from16 v52, v0

    mul-long v48, v48, v52

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    int-to-long v0, v15

    move-wide/from16 v54, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v14

    move-wide/from16 v54, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    int-to-long v0, v13

    move-wide/from16 v54, v0

    int-to-long v0, v13

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v56, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v58, v0

    const-wide v60, 0xffffffffL

    and-long v58, v58, v60

    mul-long v56, v56, v58

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0xffffffffL

    and-long v60, v60, v62

    mul-long v58, v58, v60

    add-long v56, v56, v58

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0xffffffffL

    and-long v60, v60, v62

    mul-long v58, v58, v60

    add-long v56, v56, v58

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v58, v0

    move/from16 v0, v35

    int-to-long v0, v0

    move-wide/from16 v34, v0

    mul-long v34, v34, v58

    add-long v34, v34, v56

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v56, v0

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v52, v52, v44

    add-long v52, v52, v56

    sub-long v48, v52, v48

    add-long v48, v48, v50

    move-wide/from16 v0, v48

    long-to-int v5, v0

    const v13, 0xfffffff

    and-int/2addr v5, v13

    const/16 v13, 0x1c

    ushr-long v48, v48, v13

    add-long v34, v34, v54

    sub-long v34, v34, v44

    add-long v34, v34, v56

    add-long v30, v30, v34

    move-wide/from16 v0, v30

    long-to-int v13, v0

    const v33, 0xfffffff

    and-int v13, v13, v33

    const/16 v33, 0x1c

    ushr-long v30, v30, v33

    int-to-long v0, v9

    move-wide/from16 v34, v0

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v44, v0

    mul-long v34, v34, v44

    int-to-long v8, v8

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v8, v8, v18

    add-long v8, v8, v34

    int-to-long v0, v7

    move-wide/from16 v18, v0

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v34, v0

    mul-long v18, v18, v34

    add-long v8, v8, v18

    int-to-long v6, v6

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v6, v6, v18

    add-long/2addr v6, v8

    move/from16 v0, v17

    int-to-long v8, v0

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v8, v8, v18

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v8, v8, v16

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v8, v8, v16

    int-to-long v14, v14

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    add-long/2addr v8, v14

    move/from16 v0, v39

    int-to-long v14, v0

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    mul-long v14, v14, v16

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v41

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    mul-long v16, v16, v18

    add-long v14, v14, v16

    move/from16 v0, v37

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    mul-long v16, v16, v18

    add-long v14, v14, v16

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move/from16 v0, v43

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    mul-long v16, v16, v18

    add-long v14, v14, v16

    add-long/2addr v8, v6

    add-long v8, v8, v48

    long-to-int v0, v8

    move/from16 v16, v0

    const v17, 0xfffffff

    and-int v16, v16, v17

    const/16 v17, 0x1c

    ushr-long v8, v8, v17

    sub-long v6, v14, v6

    add-long v6, v6, v30

    long-to-int v14, v6

    const v15, 0xfffffff

    and-int/2addr v14, v15

    const/16 v15, 0x1c

    ushr-long/2addr v6, v15

    add-long/2addr v8, v6

    int-to-long v0, v10

    move-wide/from16 v18, v0

    add-long v8, v8, v18

    long-to-int v10, v8

    const v15, 0xfffffff

    and-int/2addr v10, v15

    const/16 v15, 0x1c

    ushr-long/2addr v8, v15

    int-to-long v0, v2

    move-wide/from16 v18, v0

    add-long v6, v6, v18

    long-to-int v2, v6

    const v15, 0xfffffff

    and-int/2addr v2, v15

    const/16 v15, 0x1c

    ushr-long/2addr v6, v15

    long-to-int v8, v8

    add-int v8, v8, v47

    long-to-int v6, v6

    add-int v6, v6, v32

    const/4 v7, 0x0

    aput v2, p1, v7

    const/4 v2, 0x1

    aput v6, p1, v2

    const/4 v2, 0x2

    aput v3, p1, v2

    const/4 v2, 0x3

    aput v22, p1, v2

    const/4 v2, 0x4

    aput v4, p1, v2

    const/4 v2, 0x5

    aput v23, p1, v2

    const/4 v2, 0x6

    aput v5, p1, v2

    const/4 v2, 0x7

    aput v16, p1, v2

    const/16 v2, 0x8

    aput v10, p1, v2

    const/16 v2, 0x9

    aput v8, p1, v2

    const/16 v2, 0xa

    aput v11, p1, v2

    const/16 v2, 0xb

    aput v29, p1, v2

    const/16 v2, 0xc

    aput v12, p1, v2

    const/16 v2, 0xd

    aput v24, p1, v2

    const/16 v2, 0xe

    aput v13, p1, v2

    const/16 v2, 0xf

    aput v14, p1, v2

    return-void
.end method

.method public static sqrtRatioVar([I[I[I)Z
    .locals 4

    const/4 v0, 0x0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v2

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {v1, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {v1, p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {v2, p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {v2, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->powPm3d4([I[I)V

    invoke-static {v3, v1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v1

    invoke-static {v3, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sqr([I[I)V

    invoke-static {v1, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->mul([I[I[I)V

    invoke-static {p0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->normalize([I)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->isZeroVar([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v3, v0, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->copy([II[II)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static sub([I[I[I)V
    .locals 33

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x4

    aget v4, p0, v4

    const/4 v5, 0x5

    aget v5, p0, v5

    const/4 v6, 0x6

    aget v6, p0, v6

    const/4 v7, 0x7

    aget v7, p0, v7

    const/16 v8, 0x8

    aget v8, p0, v8

    const/16 v9, 0x9

    aget v9, p0, v9

    const/16 v10, 0xa

    aget v10, p0, v10

    const/16 v11, 0xb

    aget v11, p0, v11

    const/16 v12, 0xc

    aget v12, p0, v12

    const/16 v13, 0xd

    aget v13, p0, v13

    const/16 v14, 0xe

    aget v14, p0, v14

    const/16 v15, 0xf

    aget v15, p0, v15

    const/16 v16, 0x0

    aget v16, p1, v16

    const/16 v17, 0x1

    aget v17, p1, v17

    const/16 v18, 0x2

    aget v18, p1, v18

    const/16 v19, 0x3

    aget v19, p1, v19

    const/16 v20, 0x4

    aget v20, p1, v20

    const/16 v21, 0x5

    aget v21, p1, v21

    const/16 v22, 0x6

    aget v22, p1, v22

    const/16 v23, 0x7

    aget v23, p1, v23

    const/16 v24, 0x8

    aget v24, p1, v24

    const/16 v25, 0x9

    aget v25, p1, v25

    const/16 v26, 0xa

    aget v26, p1, v26

    const/16 v27, 0xb

    aget v27, p1, v27

    const/16 v28, 0xc

    aget v28, p1, v28

    const/16 v29, 0xd

    aget v29, p1, v29

    const/16 v30, 0xe

    aget v30, p1, v30

    const/16 v31, 0xf

    aget v31, p1, v31

    const v32, 0x1ffffffe

    add-int v0, v0, v32

    sub-int v0, v0, v16

    const v16, 0x1ffffffe

    add-int v1, v1, v16

    sub-int v1, v1, v17

    const v16, 0x1ffffffe

    add-int v2, v2, v16

    sub-int v2, v2, v18

    const v16, 0x1ffffffe

    add-int v3, v3, v16

    sub-int v3, v3, v19

    const v16, 0x1ffffffe

    add-int v4, v4, v16

    sub-int v4, v4, v20

    const v16, 0x1ffffffe

    add-int v5, v5, v16

    sub-int v5, v5, v21

    const v16, 0x1ffffffe

    add-int v6, v6, v16

    sub-int v6, v6, v22

    const v16, 0x1ffffffe

    add-int v7, v7, v16

    sub-int v7, v7, v23

    const v16, 0x1ffffffc

    add-int v8, v8, v16

    sub-int v8, v8, v24

    const v16, 0x1ffffffe

    add-int v9, v9, v16

    sub-int v9, v9, v25

    const v16, 0x1ffffffe

    add-int v10, v10, v16

    sub-int v10, v10, v26

    const v16, 0x1ffffffe

    add-int v11, v11, v16

    sub-int v11, v11, v27

    const v16, 0x1ffffffe

    add-int v12, v12, v16

    sub-int v12, v12, v28

    const v16, 0x1ffffffe

    add-int v13, v13, v16

    sub-int v13, v13, v29

    const v16, 0x1ffffffe

    add-int v14, v14, v16

    sub-int v14, v14, v30

    const v16, 0x1ffffffe

    add-int v15, v15, v16

    sub-int v15, v15, v31

    ushr-int/lit8 v16, v1, 0x1c

    add-int v2, v2, v16

    const v16, 0xfffffff

    and-int v1, v1, v16

    ushr-int/lit8 v16, v5, 0x1c

    add-int v6, v6, v16

    const v16, 0xfffffff

    and-int v5, v5, v16

    ushr-int/lit8 v16, v9, 0x1c

    add-int v10, v10, v16

    const v16, 0xfffffff

    and-int v9, v9, v16

    ushr-int/lit8 v16, v13, 0x1c

    add-int v14, v14, v16

    const v16, 0xfffffff

    and-int v13, v13, v16

    ushr-int/lit8 v16, v2, 0x1c

    add-int v3, v3, v16

    const v16, 0xfffffff

    and-int v2, v2, v16

    ushr-int/lit8 v16, v6, 0x1c

    add-int v7, v7, v16

    const v16, 0xfffffff

    and-int v6, v6, v16

    ushr-int/lit8 v16, v10, 0x1c

    add-int v11, v11, v16

    const v16, 0xfffffff

    and-int v10, v10, v16

    ushr-int/lit8 v16, v14, 0x1c

    add-int v15, v15, v16

    const v16, 0xfffffff

    and-int v14, v14, v16

    ushr-int/lit8 v16, v15, 0x1c

    const v17, 0xfffffff

    and-int v15, v15, v17

    add-int v0, v0, v16

    add-int v8, v8, v16

    ushr-int/lit8 v16, v3, 0x1c

    add-int v4, v4, v16

    const v16, 0xfffffff

    and-int v3, v3, v16

    ushr-int/lit8 v16, v7, 0x1c

    add-int v8, v8, v16

    const v16, 0xfffffff

    and-int v7, v7, v16

    ushr-int/lit8 v16, v11, 0x1c

    add-int v12, v12, v16

    const v16, 0xfffffff

    and-int v11, v11, v16

    ushr-int/lit8 v16, v0, 0x1c

    add-int v1, v1, v16

    const v16, 0xfffffff

    and-int v0, v0, v16

    ushr-int/lit8 v16, v4, 0x1c

    add-int v5, v5, v16

    const v16, 0xfffffff

    and-int v4, v4, v16

    ushr-int/lit8 v16, v8, 0x1c

    add-int v9, v9, v16

    const v16, 0xfffffff

    and-int v8, v8, v16

    ushr-int/lit8 v16, v12, 0x1c

    add-int v13, v13, v16

    const v16, 0xfffffff

    and-int v12, v12, v16

    const/16 v16, 0x0

    aput v0, p2, v16

    const/4 v0, 0x1

    aput v1, p2, v0

    const/4 v0, 0x2

    aput v2, p2, v0

    const/4 v0, 0x3

    aput v3, p2, v0

    const/4 v0, 0x4

    aput v4, p2, v0

    const/4 v0, 0x5

    aput v5, p2, v0

    const/4 v0, 0x6

    aput v6, p2, v0

    const/4 v0, 0x7

    aput v7, p2, v0

    const/16 v0, 0x8

    aput v8, p2, v0

    const/16 v0, 0x9

    aput v9, p2, v0

    const/16 v0, 0xa

    aput v10, p2, v0

    const/16 v0, 0xb

    aput v11, p2, v0

    const/16 v0, 0xc

    aput v12, p2, v0

    const/16 v0, 0xd

    aput v13, p2, v0

    const/16 v0, 0xe

    aput v14, p2, v0

    const/16 v0, 0xf

    aput v15, p2, v0

    return-void
.end method

.method public static subOne([I)V
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->create()[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v0, v1

    invoke-static {p0, v0, p0}, Lorg/bouncycastle/math/ec/rfc7748/X448Field;->sub([I[I[I)V

    return-void
.end method

.method public static zero([I)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
