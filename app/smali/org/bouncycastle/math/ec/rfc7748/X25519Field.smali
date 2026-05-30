.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X25519Field;
.super Ljava/lang/Object;


# static fields
.field private static final M24:I = 0xffffff

.field private static final M25:I = 0x1ffffff

.field private static final M26:I = 0x3ffffff

.field private static final P32:[I

.field private static final ROOT_NEG_ONE:[I

.field public static final SIZE:I = 0xa


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->P32:[I

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->ROOT_NEG_ONE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x13
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        -0x1f15f50
        -0x79362d
        0x478c4f
        0x35697f
        0x5e8630
        0x1fbd7a7
        -0xbfd9b1
        -0xf4d4b
        0x27e0f
        0x570649
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
    const/16 v1, 0xa

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

.method public static apm([I[I[I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int v3, v1, v2

    aput v3, p2, v0

    sub-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static areEqual([I[I)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v1, 0xa

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

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->areEqual([I[I)I

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
    .locals 11

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

    shr-int/lit8 v10, v1, 0x1a

    add-int/2addr v2, v10

    const v10, 0x3ffffff

    and-int/2addr v1, v10

    shr-int/lit8 v10, v3, 0x1a

    add-int/2addr v4, v10

    const v10, 0x3ffffff

    and-int/2addr v3, v10

    shr-int/lit8 v10, v6, 0x1a

    add-int/2addr v7, v10

    const v10, 0x3ffffff

    and-int/2addr v6, v10

    shr-int/lit8 v10, v8, 0x1a

    add-int/2addr v9, v10

    const v10, 0x3ffffff

    and-int/2addr v8, v10

    shr-int/lit8 v10, v2, 0x19

    add-int/2addr v3, v10

    const v10, 0x1ffffff

    and-int/2addr v2, v10

    shr-int/lit8 v10, v4, 0x19

    add-int/2addr v5, v10

    const v10, 0x1ffffff

    and-int/2addr v4, v10

    shr-int/lit8 v10, v7, 0x19

    add-int/2addr v8, v10

    const v10, 0x1ffffff

    and-int/2addr v7, v10

    shr-int/lit8 v10, v9, 0x19

    mul-int/lit8 v10, v10, 0x26

    add-int/2addr v0, v10

    const v10, 0x1ffffff

    and-int/2addr v9, v10

    shr-int/lit8 v10, v0, 0x1a

    add-int/2addr v1, v10

    const v10, 0x3ffffff

    and-int/2addr v0, v10

    shr-int/lit8 v10, v5, 0x1a

    add-int/2addr v6, v10

    const v10, 0x3ffffff

    and-int/2addr v5, v10

    shr-int/lit8 v10, v1, 0x1a

    add-int/2addr v2, v10

    const v10, 0x3ffffff

    and-int/2addr v1, v10

    shr-int/lit8 v10, v3, 0x1a

    add-int/2addr v4, v10

    const v10, 0x3ffffff

    and-int/2addr v3, v10

    shr-int/lit8 v10, v6, 0x1a

    add-int/2addr v7, v10

    const v10, 0x3ffffff

    and-int/2addr v6, v10

    shr-int/lit8 v10, v8, 0x1a

    add-int/2addr v9, v10

    const v10, 0x3ffffff

    and-int/2addr v8, v10

    const/4 v10, 0x0

    aput v0, p0, v10

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

    return-void
.end method

.method public static cmov(I[II[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

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

    rsub-int/lit8 v1, p0, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    aget v2, p1, v0

    xor-int/2addr v2, v1

    sub-int/2addr v2, v1

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static copy([II[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

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

    const/16 v0, 0xa

    new-array v0, v0, [I

    return-object v0
.end method

.method public static createTable(I)[I
    .locals 1

    mul-int/lit8 v0, p0, 0xa

    new-array v0, v0, [I

    return-object v0
.end method

.method public static cswap(I[I[I)V
    .locals 5

    rsub-int/lit8 v1, p0, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xa

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
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    add-int/lit8 v0, p1, 0x10

    const/4 v1, 0x5

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    const/16 v0, 0x9

    aget v1, p2, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    aput v1, p2, v0

    return-void
.end method

.method public static decode([BI[II)V
    .locals 3

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    add-int/lit8 v0, p1, 0x10

    add-int/lit8 v1, p3, 0x5

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    add-int/lit8 v0, p3, 0x9

    aget v1, p2, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    aput v1, p2, v0

    return-void
.end method

.method public static decode([B[I)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    const/16 v0, 0x10

    const/4 v1, 0x5

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([BI[II)V

    const/16 v0, 0x9

    aget v1, p1, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method public static decode([II[I)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([II[II)V

    add-int/lit8 v0, p1, 0x4

    const/4 v1, 0x5

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode128([II[II)V

    const/16 v0, 0x9

    aget v1, p2, v0

    const v2, 0xffffff

    and-int/2addr v1, v2

    aput v1, p2, v0

    return-void
.end method

.method private static decode128([BI[II)V
    .locals 7

    const v6, 0x3ffffff

    add-int/lit8 v0, p1, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v0

    add-int/lit8 v1, p1, 0x4

    invoke-static {p0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v1

    add-int/lit8 v2, p1, 0x8

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v2

    add-int/lit8 v3, p1, 0xc

    invoke-static {p0, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode32([BI)I

    move-result v3

    add-int/lit8 v4, p3, 0x0

    and-int v5, v0, v6

    aput v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    shl-int/lit8 v5, v1, 0x6

    ushr-int/lit8 v0, v0, 0x1a

    or-int/2addr v0, v5

    and-int/2addr v0, v6

    aput v0, p2, v4

    add-int/lit8 v0, p3, 0x2

    shl-int/lit8 v4, v2, 0xc

    ushr-int/lit8 v1, v1, 0x14

    or-int/2addr v1, v4

    const v4, 0x1ffffff

    and-int/2addr v1, v4

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    shl-int/lit8 v1, v3, 0x13

    ushr-int/lit8 v2, v2, 0xd

    or-int/2addr v1, v2

    and-int/2addr v1, v6

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    ushr-int/lit8 v1, v3, 0x7

    aput v1, p2, v0

    return-void
.end method

.method private static decode128([II[II)V
    .locals 7

    const v6, 0x3ffffff

    add-int/lit8 v0, p1, 0x0

    aget v0, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget v1, p0, v1

    add-int/lit8 v2, p1, 0x2

    aget v2, p0, v2

    add-int/lit8 v3, p1, 0x3

    aget v3, p0, v3

    add-int/lit8 v4, p3, 0x0

    and-int v5, v0, v6

    aput v5, p2, v4

    add-int/lit8 v4, p3, 0x1

    shl-int/lit8 v5, v1, 0x6

    ushr-int/lit8 v0, v0, 0x1a

    or-int/2addr v0, v5

    and-int/2addr v0, v6

    aput v0, p2, v4

    add-int/lit8 v0, p3, 0x2

    shl-int/lit8 v4, v2, 0xc

    ushr-int/lit8 v1, v1, 0x14

    or-int/2addr v1, v4

    const v4, 0x1ffffff

    and-int/2addr v1, v4

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    shl-int/lit8 v1, v3, 0x13

    ushr-int/lit8 v2, v2, 0xd

    or-int/2addr v1, v2

    and-int/2addr v1, v6

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x4

    ushr-int/lit8 v1, v3, 0x7

    aput v1, p2, v0

    return-void
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

.method public static encode([II[BI)V
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    add-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, p3, 0x10

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    return-void
.end method

.method public static encode([I[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    const/4 v0, 0x5

    const/16 v1, 0x10

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    return-void
.end method

.method public static encode([I[BI)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    const/4 v0, 0x5

    add-int/lit8 v1, p2, 0x10

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[BI)V

    return-void
.end method

.method public static encode([I[II)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[II)V

    const/4 v0, 0x5

    add-int/lit8 v1, p2, 0x4

    invoke-static {p0, v0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode128([II[II)V

    return-void
.end method

.method private static encode128([II[BI)V
    .locals 6

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

    shl-int/lit8 v5, v1, 0x1a

    or-int/2addr v0, v5

    add-int/lit8 v5, p3, 0x0

    invoke-static {v0, p2, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    ushr-int/lit8 v0, v1, 0x6

    shl-int/lit8 v1, v2, 0x14

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x4

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    ushr-int/lit8 v0, v2, 0xc

    shl-int/lit8 v1, v3, 0xd

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0x8

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    ushr-int/lit8 v0, v3, 0x13

    shl-int/lit8 v1, v4, 0x7

    or-int/2addr v0, v1

    add-int/lit8 v1, p3, 0xc

    invoke-static {v0, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode32(I[BI)V

    return-void
.end method

.method private static encode128([II[II)V
    .locals 7

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

    add-int/lit8 v5, p3, 0x0

    shl-int/lit8 v6, v1, 0x1a

    or-int/2addr v0, v6

    aput v0, p2, v5

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, v1, 0x6

    shl-int/lit8 v5, v2, 0x14

    or-int/2addr v1, v5

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, v2, 0xc

    shl-int/lit8 v2, v3, 0xd

    or-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    ushr-int/lit8 v1, v3, 0x13

    shl-int/lit8 v2, v4, 0x7

    or-int/2addr v1, v2

    aput v1, p2, v0

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

.method public static inv([I[I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [I

    invoke-static {p0, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode([I[II)V

    sget-object v0, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->P32:[I

    invoke-static {v0, v1, v1}, Lorg/bouncycastle/math/raw/Mod;->modOddInverse([I[I[I)I

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode([II[I)V

    return-void
.end method

.method public static invVar([I[I)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    const/16 v1, 0x8

    new-array v1, v1, [I

    invoke-static {p0, v2, v0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->encode([I[II)V

    sget-object v0, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->P32:[I

    invoke-static {v0, v1, v1}, Lorg/bouncycastle/math/raw/Mod;->modOddInverseVar([I[I[I)Z

    invoke-static {v1, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->decode([II[I)V

    return-void
.end method

.method public static isOne([I)I
    .locals 3

    const/4 v0, 0x0

    aget v0, p0, v0

    xor-int/lit8 v1, v0, 0x1

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0xa

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

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->isOne([I)I

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
    const/16 v1, 0xa

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

    invoke-static {p0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->isZero([I)I

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
    .locals 24

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

    int-to-long v12, v4

    move/from16 v0, p1

    int-to-long v14, v0

    mul-long/2addr v12, v14

    long-to-int v4, v12

    const v14, 0x1ffffff

    and-int/2addr v4, v14

    const/16 v14, 0x19

    shr-long/2addr v12, v14

    int-to-long v14, v6

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    long-to-int v6, v14

    const v16, 0x1ffffff

    and-int v6, v6, v16

    const/16 v16, 0x19

    shr-long v14, v14, v16

    int-to-long v0, v9

    move-wide/from16 v16, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-int v9, v0

    const v18, 0x1ffffff

    and-int v9, v9, v18

    const/16 v18, 0x19

    shr-long v16, v16, v18

    int-to-long v0, v11

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    move-wide/from16 v0, v18

    long-to-int v11, v0

    const v20, 0x1ffffff

    and-int v11, v11, v20

    const/16 v20, 0x19

    shr-long v18, v18, v20

    const-wide/16 v20, 0x26

    mul-long v18, v18, v20

    int-to-long v0, v2

    move-wide/from16 v20, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    add-long v18, v18, v20

    const/4 v2, 0x0

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v20, v0

    const v21, 0x3ffffff

    and-int v20, v20, v21

    aput v20, p2, v2

    const/16 v2, 0x1a

    shr-long v18, v18, v2

    int-to-long v0, v7

    move-wide/from16 v20, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    add-long v14, v14, v20

    const/4 v2, 0x5

    long-to-int v7, v14

    const v20, 0x3ffffff

    and-int v7, v7, v20

    aput v7, p2, v2

    const/16 v2, 0x1a

    shr-long/2addr v14, v2

    int-to-long v2, v3

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v2, v2, v20

    add-long v2, v2, v18

    const/4 v7, 0x1

    long-to-int v0, v2

    move/from16 v18, v0

    const v19, 0x3ffffff

    and-int v18, v18, v19

    aput v18, p2, v7

    const/16 v7, 0x1a

    shr-long/2addr v2, v7

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v12, v12, v18

    const/4 v5, 0x3

    long-to-int v7, v12

    const v18, 0x3ffffff

    and-int v7, v7, v18

    aput v7, p2, v5

    const/16 v5, 0x1a

    shr-long/2addr v12, v5

    int-to-long v0, v8

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v14, v14, v18

    const/4 v5, 0x6

    long-to-int v7, v14

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    aput v7, p2, v5

    const/16 v5, 0x1a

    shr-long/2addr v14, v5

    int-to-long v0, v10

    move-wide/from16 v18, v0

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    const/16 v5, 0x8

    move-wide/from16 v0, v16

    long-to-int v7, v0

    const v8, 0x3ffffff

    and-int/2addr v7, v8

    aput v7, p2, v5

    const/16 v5, 0x1a

    shr-long v16, v16, v5

    const/4 v5, 0x2

    long-to-int v2, v2

    add-int/2addr v2, v4

    aput v2, p2, v5

    const/4 v2, 0x4

    long-to-int v3, v12

    add-int/2addr v3, v6

    aput v3, p2, v2

    const/4 v2, 0x7

    long-to-int v3, v14

    add-int/2addr v3, v9

    aput v3, p2, v2

    const/16 v2, 0x9

    move-wide/from16 v0, v16

    long-to-int v3, v0

    add-int/2addr v3, v11

    aput v3, p2, v2

    return-void
.end method

.method public static mul([I[I[I)V
    .locals 60

    const/4 v2, 0x0

    aget v2, p0, v2

    const/4 v3, 0x0

    aget v3, p1, v3

    const/4 v4, 0x1

    aget v4, p0, v4

    const/4 v5, 0x1

    aget v5, p1, v5

    const/4 v6, 0x2

    aget v6, p0, v6

    const/4 v7, 0x2

    aget v7, p1, v7

    const/4 v8, 0x3

    aget v8, p0, v8

    const/4 v9, 0x3

    aget v9, p1, v9

    const/4 v10, 0x4

    aget v10, p0, v10

    const/4 v11, 0x4

    aget v11, p1, v11

    const/4 v12, 0x5

    aget v12, p0, v12

    const/4 v13, 0x5

    aget v13, p1, v13

    const/4 v14, 0x6

    aget v14, p0, v14

    const/4 v15, 0x6

    aget v15, p1, v15

    const/16 v16, 0x7

    aget v16, p0, v16

    const/16 v17, 0x7

    aget v17, p1, v17

    const/16 v18, 0x8

    aget v18, p0, v18

    const/16 v19, 0x8

    aget v19, p1, v19

    const/16 v20, 0x9

    aget v20, p0, v20

    const/16 v21, 0x9

    aget v21, p1, v21

    int-to-long v0, v2

    move-wide/from16 v22, v0

    int-to-long v0, v3

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    int-to-long v0, v2

    move-wide/from16 v24, v0

    int-to-long v0, v5

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    int-to-long v0, v4

    move-wide/from16 v26, v0

    int-to-long v0, v3

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    add-long v24, v24, v26

    int-to-long v0, v2

    move-wide/from16 v26, v0

    int-to-long v0, v7

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    int-to-long v0, v4

    move-wide/from16 v28, v0

    int-to-long v0, v5

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    add-long v26, v26, v28

    int-to-long v0, v6

    move-wide/from16 v28, v0

    int-to-long v0, v3

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    add-long v26, v26, v28

    int-to-long v0, v4

    move-wide/from16 v28, v0

    int-to-long v0, v7

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    int-to-long v0, v6

    move-wide/from16 v30, v0

    int-to-long v0, v5

    move-wide/from16 v32, v0

    mul-long v30, v30, v32

    add-long v28, v28, v30

    const/16 v30, 0x1

    shl-long v28, v28, v30

    int-to-long v0, v2

    move-wide/from16 v30, v0

    int-to-long v0, v9

    move-wide/from16 v32, v0

    mul-long v30, v30, v32

    int-to-long v0, v8

    move-wide/from16 v32, v0

    int-to-long v0, v3

    move-wide/from16 v34, v0

    mul-long v32, v32, v34

    add-long v30, v30, v32

    add-long v28, v28, v30

    int-to-long v0, v6

    move-wide/from16 v30, v0

    int-to-long v0, v7

    move-wide/from16 v32, v0

    mul-long v30, v30, v32

    const/16 v32, 0x1

    shl-long v30, v30, v32

    int-to-long v0, v2

    move-wide/from16 v32, v0

    int-to-long v0, v11

    move-wide/from16 v34, v0

    mul-long v32, v32, v34

    int-to-long v0, v4

    move-wide/from16 v34, v0

    int-to-long v0, v9

    move-wide/from16 v36, v0

    mul-long v34, v34, v36

    add-long v32, v32, v34

    int-to-long v0, v8

    move-wide/from16 v34, v0

    int-to-long v0, v5

    move-wide/from16 v36, v0

    mul-long v34, v34, v36

    add-long v32, v32, v34

    int-to-long v0, v10

    move-wide/from16 v34, v0

    int-to-long v0, v3

    move-wide/from16 v36, v0

    mul-long v34, v34, v36

    add-long v32, v32, v34

    add-long v30, v30, v32

    int-to-long v0, v4

    move-wide/from16 v32, v0

    int-to-long v0, v11

    move-wide/from16 v34, v0

    mul-long v32, v32, v34

    int-to-long v0, v6

    move-wide/from16 v34, v0

    int-to-long v0, v9

    move-wide/from16 v36, v0

    mul-long v34, v34, v36

    add-long v32, v32, v34

    int-to-long v0, v8

    move-wide/from16 v34, v0

    int-to-long v0, v7

    move-wide/from16 v36, v0

    mul-long v34, v34, v36

    add-long v32, v32, v34

    int-to-long v0, v10

    move-wide/from16 v34, v0

    int-to-long v0, v5

    move-wide/from16 v36, v0

    mul-long v34, v34, v36

    add-long v32, v32, v34

    const/16 v34, 0x1

    shl-long v32, v32, v34

    int-to-long v0, v6

    move-wide/from16 v34, v0

    int-to-long v0, v11

    move-wide/from16 v36, v0

    mul-long v34, v34, v36

    int-to-long v0, v10

    move-wide/from16 v36, v0

    int-to-long v0, v7

    move-wide/from16 v38, v0

    mul-long v36, v36, v38

    add-long v34, v34, v36

    const/16 v36, 0x1

    shl-long v34, v34, v36

    int-to-long v0, v8

    move-wide/from16 v36, v0

    int-to-long v0, v9

    move-wide/from16 v38, v0

    mul-long v36, v36, v38

    add-long v34, v34, v36

    int-to-long v0, v8

    move-wide/from16 v36, v0

    int-to-long v0, v11

    move-wide/from16 v38, v0

    mul-long v36, v36, v38

    int-to-long v0, v10

    move-wide/from16 v38, v0

    int-to-long v0, v9

    move-wide/from16 v40, v0

    mul-long v38, v38, v40

    add-long v36, v36, v38

    int-to-long v0, v10

    move-wide/from16 v38, v0

    int-to-long v0, v11

    move-wide/from16 v40, v0

    mul-long v38, v38, v40

    const/16 v40, 0x1

    shl-long v38, v38, v40

    int-to-long v0, v12

    move-wide/from16 v40, v0

    int-to-long v0, v13

    move-wide/from16 v42, v0

    mul-long v40, v40, v42

    int-to-long v0, v12

    move-wide/from16 v42, v0

    int-to-long v0, v15

    move-wide/from16 v44, v0

    mul-long v42, v42, v44

    int-to-long v0, v14

    move-wide/from16 v44, v0

    int-to-long v0, v13

    move-wide/from16 v46, v0

    mul-long v44, v44, v46

    add-long v42, v42, v44

    int-to-long v0, v12

    move-wide/from16 v44, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v44, v44, v46

    int-to-long v0, v14

    move-wide/from16 v46, v0

    int-to-long v0, v15

    move-wide/from16 v48, v0

    mul-long v46, v46, v48

    add-long v44, v44, v46

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v46, v0

    int-to-long v0, v13

    move-wide/from16 v48, v0

    mul-long v46, v46, v48

    add-long v44, v44, v46

    int-to-long v0, v14

    move-wide/from16 v46, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v46, v46, v48

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v48, v0

    int-to-long v0, v15

    move-wide/from16 v50, v0

    mul-long v48, v48, v50

    add-long v46, v46, v48

    const/16 v48, 0x1

    shl-long v46, v46, v48

    int-to-long v0, v12

    move-wide/from16 v48, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v50, v0

    mul-long v48, v48, v50

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v50, v0

    int-to-long v0, v13

    move-wide/from16 v52, v0

    mul-long v50, v50, v52

    add-long v48, v48, v50

    add-long v46, v46, v48

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v48, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v50, v0

    mul-long v48, v48, v50

    const/16 v50, 0x1

    shl-long v48, v48, v50

    int-to-long v0, v12

    move-wide/from16 v50, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v50, v50, v52

    int-to-long v0, v14

    move-wide/from16 v52, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v50, v50, v52

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v52, v0

    int-to-long v0, v15

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v50, v50, v52

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v52, v0

    int-to-long v0, v13

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v50, v50, v52

    add-long v48, v48, v50

    int-to-long v0, v14

    move-wide/from16 v50, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v52, v0

    mul-long v50, v50, v52

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v50, v50, v52

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v50, v50, v52

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v52, v0

    int-to-long v0, v15

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    add-long v50, v50, v52

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v52, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v54, v0

    mul-long v52, v52, v54

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    const/16 v54, 0x1

    shl-long v52, v52, v54

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    add-long v52, v52, v54

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v54, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v56, v0

    mul-long v54, v54, v56

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v56, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    add-long v54, v54, v56

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v56, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v58, v0

    mul-long v56, v56, v58

    const-wide/16 v58, 0x4c

    mul-long v50, v50, v58

    sub-long v22, v22, v50

    const-wide/16 v50, 0x26

    mul-long v50, v50, v52

    sub-long v24, v24, v50

    const-wide/16 v50, 0x26

    mul-long v50, v50, v54

    sub-long v26, v26, v50

    const-wide/16 v50, 0x4c

    mul-long v50, v50, v56

    sub-long v28, v28, v50

    sub-long v32, v32, v40

    sub-long v34, v34, v42

    sub-long v36, v36, v44

    sub-long v38, v38, v46

    add-int/2addr v2, v12

    add-int/2addr v3, v13

    add-int/2addr v4, v14

    add-int/2addr v5, v15

    add-int v6, v6, v16

    add-int v7, v7, v17

    add-int v8, v8, v18

    add-int v9, v9, v19

    add-int v10, v10, v20

    add-int v11, v11, v21

    int-to-long v12, v2

    int-to-long v14, v3

    mul-long/2addr v12, v14

    int-to-long v14, v2

    int-to-long v0, v5

    move-wide/from16 v16, v0

    mul-long v14, v14, v16

    int-to-long v0, v4

    move-wide/from16 v16, v0

    int-to-long v0, v3

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    add-long v14, v14, v16

    int-to-long v0, v2

    move-wide/from16 v16, v0

    int-to-long v0, v7

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    int-to-long v0, v4

    move-wide/from16 v18, v0

    int-to-long v0, v5

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    int-to-long v0, v6

    move-wide/from16 v18, v0

    int-to-long v0, v3

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    add-long v16, v16, v18

    int-to-long v0, v4

    move-wide/from16 v18, v0

    int-to-long v0, v7

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    int-to-long v0, v6

    move-wide/from16 v20, v0

    int-to-long v0, v5

    move-wide/from16 v40, v0

    mul-long v20, v20, v40

    add-long v18, v18, v20

    const/16 v20, 0x1

    shl-long v18, v18, v20

    int-to-long v0, v2

    move-wide/from16 v20, v0

    int-to-long v0, v9

    move-wide/from16 v40, v0

    mul-long v20, v20, v40

    int-to-long v0, v8

    move-wide/from16 v40, v0

    int-to-long v0, v3

    move-wide/from16 v42, v0

    mul-long v40, v40, v42

    add-long v20, v20, v40

    add-long v18, v18, v20

    int-to-long v0, v6

    move-wide/from16 v20, v0

    int-to-long v0, v7

    move-wide/from16 v40, v0

    mul-long v20, v20, v40

    const/16 v40, 0x1

    shl-long v20, v20, v40

    int-to-long v0, v2

    move-wide/from16 v40, v0

    int-to-long v0, v11

    move-wide/from16 v42, v0

    mul-long v40, v40, v42

    int-to-long v0, v4

    move-wide/from16 v42, v0

    int-to-long v0, v9

    move-wide/from16 v44, v0

    mul-long v42, v42, v44

    add-long v40, v40, v42

    int-to-long v0, v8

    move-wide/from16 v42, v0

    int-to-long v0, v5

    move-wide/from16 v44, v0

    mul-long v42, v42, v44

    add-long v40, v40, v42

    int-to-long v0, v10

    move-wide/from16 v42, v0

    int-to-long v2, v3

    mul-long v2, v2, v42

    add-long v2, v2, v40

    add-long v2, v2, v20

    int-to-long v0, v4

    move-wide/from16 v20, v0

    int-to-long v0, v11

    move-wide/from16 v40, v0

    mul-long v20, v20, v40

    int-to-long v0, v6

    move-wide/from16 v40, v0

    int-to-long v0, v9

    move-wide/from16 v42, v0

    mul-long v40, v40, v42

    add-long v20, v20, v40

    int-to-long v0, v8

    move-wide/from16 v40, v0

    int-to-long v0, v7

    move-wide/from16 v42, v0

    mul-long v40, v40, v42

    add-long v20, v20, v40

    int-to-long v0, v10

    move-wide/from16 v40, v0

    int-to-long v4, v5

    mul-long v4, v4, v40

    add-long v4, v4, v20

    const/16 v20, 0x1

    shl-long v4, v4, v20

    int-to-long v0, v6

    move-wide/from16 v20, v0

    int-to-long v0, v11

    move-wide/from16 v40, v0

    mul-long v20, v20, v40

    int-to-long v0, v10

    move-wide/from16 v40, v0

    int-to-long v6, v7

    mul-long v6, v6, v40

    add-long v6, v6, v20

    const/16 v20, 0x1

    shl-long v6, v6, v20

    int-to-long v0, v8

    move-wide/from16 v20, v0

    int-to-long v0, v9

    move-wide/from16 v40, v0

    mul-long v20, v20, v40

    add-long v6, v6, v20

    int-to-long v0, v8

    move-wide/from16 v20, v0

    int-to-long v0, v11

    move-wide/from16 v40, v0

    mul-long v20, v20, v40

    int-to-long v0, v10

    move-wide/from16 v40, v0

    int-to-long v8, v9

    mul-long v8, v8, v40

    add-long v8, v8, v20

    int-to-long v0, v10

    move-wide/from16 v20, v0

    int-to-long v10, v11

    mul-long v10, v10, v20

    const/16 v20, 0x1

    shl-long v10, v10, v20

    sub-long v18, v18, v28

    add-long v18, v18, v38

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v20, v0

    const v21, 0x3ffffff

    and-int v20, v20, v21

    const/16 v21, 0x1a

    shr-long v18, v18, v21

    sub-long v2, v2, v30

    sub-long v2, v2, v48

    add-long v2, v2, v18

    long-to-int v0, v2

    move/from16 v18, v0

    const v19, 0x1ffffff

    and-int v18, v18, v19

    const/16 v19, 0x19

    shr-long v2, v2, v19

    add-long/2addr v2, v4

    sub-long v2, v2, v32

    const-wide/16 v4, 0x26

    mul-long/2addr v2, v4

    add-long v2, v2, v22

    const/4 v4, 0x0

    long-to-int v5, v2

    const v19, 0x3ffffff

    and-int v5, v5, v19

    aput v5, p2, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    sub-long v4, v6, v34

    const-wide/16 v6, 0x26

    mul-long/2addr v4, v6

    add-long v4, v4, v24

    add-long/2addr v2, v4

    const/4 v4, 0x1

    long-to-int v5, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p2, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    sub-long v4, v8, v36

    const-wide/16 v6, 0x26

    mul-long/2addr v4, v6

    add-long v4, v4, v26

    add-long/2addr v2, v4

    const/4 v4, 0x2

    long-to-int v5, v2

    const v6, 0x1ffffff

    and-int/2addr v5, v6

    aput v5, p2, v4

    const/16 v4, 0x19

    shr-long/2addr v2, v4

    sub-long v4, v10, v38

    const-wide/16 v6, 0x26

    mul-long/2addr v4, v6

    add-long v4, v4, v28

    add-long/2addr v2, v4

    const/4 v4, 0x3

    long-to-int v5, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p2, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    const-wide/16 v4, 0x26

    mul-long v4, v4, v48

    add-long v4, v4, v30

    add-long/2addr v2, v4

    const/4 v4, 0x4

    long-to-int v5, v2

    const v6, 0x1ffffff

    and-int/2addr v5, v6

    aput v5, p2, v4

    const/16 v4, 0x19

    shr-long/2addr v2, v4

    sub-long v4, v12, v22

    add-long v4, v4, v32

    add-long/2addr v2, v4

    const/4 v4, 0x5

    long-to-int v5, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p2, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    sub-long v4, v14, v24

    add-long v4, v4, v34

    add-long/2addr v2, v4

    const/4 v4, 0x6

    long-to-int v5, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p2, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    sub-long v4, v16, v26

    add-long v4, v4, v36

    add-long/2addr v2, v4

    const/4 v4, 0x7

    long-to-int v5, v2

    const v6, 0x1ffffff

    and-int/2addr v5, v6

    aput v5, p2, v4

    const/16 v4, 0x19

    shr-long/2addr v2, v4

    move/from16 v0, v20

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/16 v4, 0x8

    long-to-int v5, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p2, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    const/16 v4, 0x9

    long-to-int v2, v2

    add-int v2, v2, v18

    aput v2, p2, v4

    return-void
.end method

.method public static negate([I[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    neg-int v1, v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static normalize([I)V
    .locals 1

    const/16 v0, 0x9

    aget v0, p0, v0

    ushr-int/lit8 v0, v0, 0x17

    and-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->reduce([II)V

    neg-int v0, v0

    invoke-static {p0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->reduce([II)V

    return-void
.end method

.method public static one([I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x0

    aput v0, p0, v2

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static powPm5d8([I[I[I)V
    .locals 6

    const/16 v5, 0x19

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    invoke-static {p0, p1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    invoke-static {p0, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {v0, v4, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {p1, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v1

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v2

    invoke-static {v1, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v0, v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    const/16 v3, 0xa

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v1, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {v1, v5, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v0, v2, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    const/16 v3, 0x32

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v1, v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    const/16 v2, 0x7d

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v0, v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {v1, v4, v0}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([II[I)V

    invoke-static {v0, p0, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    return-void
.end method

.method private static reduce([II)V
    .locals 11

    const/4 v10, 0x0

    const v9, 0x1ffffff

    const/16 v8, 0x19

    const v7, 0x3ffffff

    const/16 v6, 0x1a

    const/16 v0, 0x9

    aget v0, p0, v0

    const v1, 0xffffff

    and-int/2addr v1, v0

    shr-int/lit8 v0, v0, 0x18

    add-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x13

    int-to-long v2, v0

    aget v0, p0, v10

    int-to-long v4, v0

    add-long/2addr v2, v4

    long-to-int v0, v2

    and-int/2addr v0, v7

    aput v0, p0, v10

    shr-long/2addr v2, v6

    const/4 v0, 0x1

    aget v0, p0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v0, 0x1

    long-to-int v4, v2

    and-int/2addr v4, v7

    aput v4, p0, v0

    shr-long/2addr v2, v6

    const/4 v0, 0x2

    aget v0, p0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v0, 0x2

    long-to-int v4, v2

    and-int/2addr v4, v9

    aput v4, p0, v0

    shr-long/2addr v2, v8

    const/4 v0, 0x3

    aget v0, p0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v0, 0x3

    long-to-int v4, v2

    and-int/2addr v4, v7

    aput v4, p0, v0

    shr-long/2addr v2, v6

    const/4 v0, 0x4

    aget v0, p0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v0, 0x4

    long-to-int v4, v2

    and-int/2addr v4, v9

    aput v4, p0, v0

    shr-long/2addr v2, v8

    const/4 v0, 0x5

    aget v0, p0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v0, 0x5

    long-to-int v4, v2

    and-int/2addr v4, v7

    aput v4, p0, v0

    shr-long/2addr v2, v6

    const/4 v0, 0x6

    aget v0, p0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v0, 0x6

    long-to-int v4, v2

    and-int/2addr v4, v7

    aput v4, p0, v0

    shr-long/2addr v2, v6

    const/4 v0, 0x7

    aget v0, p0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/4 v0, 0x7

    long-to-int v4, v2

    and-int/2addr v4, v9

    aput v4, p0, v0

    shr-long/2addr v2, v8

    const/16 v0, 0x8

    aget v0, p0, v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/16 v0, 0x8

    long-to-int v4, v2

    and-int/2addr v4, v7

    aput v4, p0, v0

    shr-long/2addr v2, v6

    const/16 v0, 0x9

    long-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method

.method public static sqr([II[I)V
    .locals 0

    invoke-static {p0, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-lez p1, :cond_0

    invoke-static {p2, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static sqr([I[I)V
    .locals 50

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

    mul-int/lit8 v12, v3, 0x2

    mul-int/lit8 v13, v4, 0x2

    mul-int/lit8 v14, v5, 0x2

    mul-int/lit8 v15, v6, 0x2

    int-to-long v0, v2

    move-wide/from16 v16, v0

    int-to-long v0, v2

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    int-to-long v0, v2

    move-wide/from16 v18, v0

    int-to-long v0, v12

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    int-to-long v0, v2

    move-wide/from16 v20, v0

    int-to-long v0, v13

    move-wide/from16 v22, v0

    mul-long v20, v20, v22

    int-to-long v0, v3

    move-wide/from16 v22, v0

    int-to-long v0, v3

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    add-long v20, v20, v22

    int-to-long v0, v12

    move-wide/from16 v22, v0

    int-to-long v0, v13

    move-wide/from16 v24, v0

    mul-long v22, v22, v24

    int-to-long v0, v2

    move-wide/from16 v24, v0

    int-to-long v0, v14

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    add-long v22, v22, v24

    int-to-long v0, v4

    move-wide/from16 v24, v0

    int-to-long v0, v13

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    int-to-long v0, v2

    move-wide/from16 v26, v0

    int-to-long v0, v15

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    add-long v24, v24, v26

    int-to-long v0, v3

    move-wide/from16 v26, v0

    int-to-long v0, v14

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    add-long v24, v24, v26

    int-to-long v0, v12

    move-wide/from16 v26, v0

    int-to-long v0, v15

    move-wide/from16 v28, v0

    mul-long v26, v26, v28

    int-to-long v0, v13

    move-wide/from16 v28, v0

    int-to-long v0, v14

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    add-long v26, v26, v28

    int-to-long v12, v13

    int-to-long v0, v15

    move-wide/from16 v28, v0

    mul-long v12, v12, v28

    int-to-long v0, v5

    move-wide/from16 v28, v0

    int-to-long v0, v5

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    add-long v12, v12, v28

    int-to-long v0, v5

    move-wide/from16 v28, v0

    int-to-long v0, v15

    move-wide/from16 v30, v0

    mul-long v28, v28, v30

    int-to-long v0, v6

    move-wide/from16 v30, v0

    int-to-long v14, v15

    mul-long v14, v14, v30

    mul-int/lit8 v30, v8, 0x2

    mul-int/lit8 v31, v9, 0x2

    mul-int/lit8 v32, v10, 0x2

    mul-int/lit8 v33, v11, 0x2

    int-to-long v0, v7

    move-wide/from16 v34, v0

    int-to-long v0, v7

    move-wide/from16 v36, v0

    mul-long v34, v34, v36

    int-to-long v0, v7

    move-wide/from16 v36, v0

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v38, v0

    mul-long v36, v36, v38

    int-to-long v0, v7

    move-wide/from16 v38, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v40, v0

    mul-long v38, v38, v40

    int-to-long v0, v8

    move-wide/from16 v40, v0

    int-to-long v0, v8

    move-wide/from16 v42, v0

    mul-long v40, v40, v42

    add-long v38, v38, v40

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v40, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v42, v0

    mul-long v40, v40, v42

    int-to-long v0, v7

    move-wide/from16 v42, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v44, v0

    mul-long v42, v42, v44

    add-long v40, v40, v42

    int-to-long v0, v9

    move-wide/from16 v42, v0

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v44, v0

    mul-long v42, v42, v44

    int-to-long v0, v7

    move-wide/from16 v44, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v44, v44, v46

    add-long v42, v42, v44

    int-to-long v0, v8

    move-wide/from16 v44, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v44, v44, v46

    add-long v42, v42, v44

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v44, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v44, v44, v46

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v46, v0

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v46, v46, v48

    add-long v44, v44, v46

    move/from16 v0, v31

    int-to-long v0, v0

    move-wide/from16 v30, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v46, v0

    mul-long v30, v30, v46

    int-to-long v0, v10

    move-wide/from16 v46, v0

    int-to-long v0, v10

    move-wide/from16 v48, v0

    mul-long v46, v46, v48

    add-long v30, v30, v46

    int-to-long v0, v10

    move-wide/from16 v46, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v48, v0

    mul-long v46, v46, v48

    int-to-long v0, v11

    move-wide/from16 v48, v0

    move/from16 v0, v33

    int-to-long v0, v0

    move-wide/from16 v32, v0

    mul-long v32, v32, v48

    const-wide/16 v48, 0x26

    mul-long v44, v44, v48

    sub-long v16, v16, v44

    const-wide/16 v44, 0x26

    mul-long v30, v30, v44

    sub-long v18, v18, v30

    const-wide/16 v30, 0x26

    mul-long v30, v30, v46

    sub-long v20, v20, v30

    const-wide/16 v30, 0x26

    mul-long v30, v30, v32

    sub-long v22, v22, v30

    sub-long v26, v26, v34

    sub-long v12, v12, v36

    sub-long v28, v28, v38

    sub-long v14, v14, v40

    add-int/2addr v2, v7

    add-int/2addr v3, v8

    add-int/2addr v4, v9

    add-int/2addr v5, v10

    add-int/2addr v6, v11

    mul-int/lit8 v7, v3, 0x2

    mul-int/lit8 v8, v4, 0x2

    mul-int/lit8 v9, v5, 0x2

    mul-int/lit8 v10, v6, 0x2

    int-to-long v0, v2

    move-wide/from16 v30, v0

    int-to-long v0, v2

    move-wide/from16 v32, v0

    mul-long v30, v30, v32

    int-to-long v0, v2

    move-wide/from16 v32, v0

    int-to-long v0, v7

    move-wide/from16 v34, v0

    mul-long v32, v32, v34

    int-to-long v0, v2

    move-wide/from16 v34, v0

    int-to-long v0, v8

    move-wide/from16 v36, v0

    mul-long v34, v34, v36

    int-to-long v0, v3

    move-wide/from16 v36, v0

    int-to-long v0, v3

    move-wide/from16 v38, v0

    mul-long v36, v36, v38

    add-long v34, v34, v36

    int-to-long v0, v7

    move-wide/from16 v36, v0

    int-to-long v0, v8

    move-wide/from16 v38, v0

    mul-long v36, v36, v38

    int-to-long v0, v2

    move-wide/from16 v38, v0

    int-to-long v0, v9

    move-wide/from16 v40, v0

    mul-long v38, v38, v40

    add-long v36, v36, v38

    int-to-long v0, v4

    move-wide/from16 v38, v0

    int-to-long v0, v8

    move-wide/from16 v40, v0

    mul-long v38, v38, v40

    int-to-long v0, v2

    move-wide/from16 v40, v0

    int-to-long v0, v10

    move-wide/from16 v44, v0

    mul-long v40, v40, v44

    add-long v38, v38, v40

    int-to-long v2, v3

    int-to-long v0, v9

    move-wide/from16 v40, v0

    mul-long v2, v2, v40

    add-long v2, v2, v38

    int-to-long v0, v7

    move-wide/from16 v38, v0

    int-to-long v0, v10

    move-wide/from16 v40, v0

    mul-long v38, v38, v40

    int-to-long v0, v8

    move-wide/from16 v40, v0

    int-to-long v0, v9

    move-wide/from16 v44, v0

    mul-long v40, v40, v44

    add-long v38, v38, v40

    int-to-long v8, v8

    int-to-long v0, v10

    move-wide/from16 v40, v0

    mul-long v8, v8, v40

    int-to-long v0, v5

    move-wide/from16 v40, v0

    int-to-long v0, v5

    move-wide/from16 v44, v0

    mul-long v40, v40, v44

    add-long v8, v8, v40

    int-to-long v4, v5

    int-to-long v0, v10

    move-wide/from16 v40, v0

    mul-long v4, v4, v40

    int-to-long v6, v6

    int-to-long v10, v10

    mul-long/2addr v6, v10

    sub-long v10, v36, v22

    add-long/2addr v10, v14

    long-to-int v0, v10

    move/from16 v36, v0

    const v37, 0x3ffffff

    and-int v36, v36, v37

    const/16 v37, 0x1a

    shr-long v10, v10, v37

    sub-long v2, v2, v24

    sub-long v2, v2, v42

    add-long/2addr v2, v10

    long-to-int v10, v2

    const v11, 0x1ffffff

    and-int/2addr v10, v11

    const/16 v11, 0x19

    shr-long/2addr v2, v11

    add-long v2, v2, v38

    sub-long v2, v2, v26

    const-wide/16 v38, 0x26

    mul-long v2, v2, v38

    add-long v2, v2, v16

    const/4 v11, 0x0

    long-to-int v0, v2

    move/from16 v37, v0

    const v38, 0x3ffffff

    and-int v37, v37, v38

    aput v37, p1, v11

    const/16 v11, 0x1a

    shr-long/2addr v2, v11

    sub-long/2addr v8, v12

    const-wide/16 v38, 0x26

    mul-long v8, v8, v38

    add-long v8, v8, v18

    add-long/2addr v2, v8

    const/4 v8, 0x1

    long-to-int v9, v2

    const v11, 0x3ffffff

    and-int/2addr v9, v11

    aput v9, p1, v8

    const/16 v8, 0x1a

    shr-long/2addr v2, v8

    sub-long v4, v4, v28

    const-wide/16 v8, 0x26

    mul-long/2addr v4, v8

    add-long v4, v4, v20

    add-long/2addr v2, v4

    const/4 v4, 0x2

    long-to-int v5, v2

    const v8, 0x1ffffff

    and-int/2addr v5, v8

    aput v5, p1, v4

    const/16 v4, 0x19

    shr-long/2addr v2, v4

    sub-long v4, v6, v14

    const-wide/16 v6, 0x26

    mul-long/2addr v4, v6

    add-long v4, v4, v22

    add-long/2addr v2, v4

    const/4 v4, 0x3

    long-to-int v5, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p1, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    const-wide/16 v4, 0x26

    mul-long v4, v4, v42

    add-long v4, v4, v24

    add-long/2addr v2, v4

    const/4 v4, 0x4

    long-to-int v5, v2

    const v6, 0x1ffffff

    and-int/2addr v5, v6

    aput v5, p1, v4

    const/16 v4, 0x19

    shr-long/2addr v2, v4

    sub-long v4, v30, v16

    add-long v4, v4, v26

    add-long/2addr v2, v4

    const/4 v4, 0x5

    long-to-int v5, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p1, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    sub-long v4, v32, v18

    add-long/2addr v4, v12

    add-long/2addr v2, v4

    const/4 v4, 0x6

    long-to-int v5, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p1, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    sub-long v4, v34, v20

    add-long v4, v4, v28

    add-long/2addr v2, v4

    const/4 v4, 0x7

    long-to-int v5, v2

    const v6, 0x1ffffff

    and-int/2addr v5, v6

    aput v5, p1, v4

    const/16 v4, 0x19

    shr-long/2addr v2, v4

    move/from16 v0, v36

    int-to-long v4, v0

    add-long/2addr v2, v4

    const/16 v4, 0x8

    long-to-int v5, v2

    const v6, 0x3ffffff

    and-int/2addr v5, v6

    aput v5, p1, v4

    const/16 v4, 0x1a

    shr-long/2addr v2, v4

    const/16 v4, 0x9

    long-to-int v2, v2

    add-int/2addr v2, v10

    aput v2, p1, v4

    return-void
.end method

.method public static sqrtRatioVar([I[I[I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v3

    invoke-static {p0, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {p1, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    invoke-static {v2, v3, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {v3, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    invoke-static {v3, v2, v3}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->powPm5d8([I[I[I)V

    invoke-static {v5, v2, v5}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->create()[I

    move-result-object v2

    invoke-static {v5, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sqr([I[I)V

    invoke-static {v2, p1, v2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    invoke-static {v2, p0, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->sub([I[I[I)V

    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->isZeroVar([I)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v5, v1, p2, v1}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->copy([II[II)V

    :goto_0
    return v0

    :cond_0
    invoke-static {v2, p0, v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->add([I[I[I)V

    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->normalize([I)V

    invoke-static {v4}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->isZeroVar([I)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v1, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->ROOT_NEG_ONE:[I

    invoke-static {v5, v1, p2}, Lorg/bouncycastle/math/ec/rfc7748/X25519Field;->mul([I[I[I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static sub([I[I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    aget v1, p0, v0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    aput v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static subOne([I)V
    .locals 2

    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, -0x1

    aput v1, p0, v0

    return-void
.end method

.method public static zero([I)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0xa

    if-ge v0, v2, :cond_0

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
