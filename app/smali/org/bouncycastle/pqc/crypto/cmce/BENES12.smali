.class Lorg/bouncycastle/pqc/crypto/cmce/BENES12;
.super Lorg/bouncycastle/pqc/crypto/cmce/BENES;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;-><init>(III)V

    return-void
.end method

.method private apply_benes([B[BI)V
    .locals 12

    const/16 v11, 0x20

    const/4 v3, 0x5

    const/16 v10, 0x40

    const/4 v2, 0x0

    new-array v6, v10, [J

    new-array v7, v10, [J

    move v0, v2

    :goto_0
    if-ge v0, v10, :cond_0

    mul-int/lit8 v1, v0, 0x8

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v4

    aput-wide v4, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p3, :cond_1

    const/16 v0, 0x100

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->SYS_T:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x28

    :goto_1
    invoke-static {v6, v6}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    move v5, v2

    :goto_2
    if-gt v5, v3, :cond_3

    move v4, v2

    :goto_3
    if-ge v4, v10, :cond_2

    mul-int/lit8 v8, v4, 0x4

    add-int/2addr v8, v1

    invoke-static {p2, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v8

    int-to-long v8, v8

    aput-wide v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    const/16 v0, -0x100

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->SYS_T:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x28

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, -0x2

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v1, v4

    goto :goto_1

    :cond_2
    invoke-static {v7, v7}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    invoke-static {v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr v1, v0

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    :cond_3
    invoke-static {v6, v6}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    move v5, v2

    :goto_4
    if-gt v5, v3, :cond_5

    move v4, v2

    :goto_5
    if-ge v4, v11, :cond_4

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v1

    invoke-static {p2, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v8

    aput-wide v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    invoke-static {v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr v1, v0

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_4

    :cond_5
    const/4 v4, 0x4

    move v5, v4

    :goto_6
    if-ltz v5, :cond_7

    move v4, v2

    :goto_7
    if-ge v4, v11, :cond_6

    mul-int/lit8 v8, v4, 0x8

    add-int/2addr v8, v1

    invoke-static {p2, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v8

    aput-wide v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_6
    invoke-static {v6, v7, v5}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr v1, v0

    add-int/lit8 v4, v5, -0x1

    move v5, v4

    goto :goto_6

    :cond_7
    invoke-static {v6, v6}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    move v4, v1

    :goto_8
    if-ltz v3, :cond_9

    move v1, v2

    :goto_9
    if-ge v1, v10, :cond_8

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, v4

    invoke-static {p2, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v5

    int-to-long v8, v5

    aput-wide v8, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_8
    invoke-static {v7, v7}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    invoke-static {v6, v7, v3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->layerBenes([J[JI)V

    add-int/2addr v4, v0

    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_8

    :cond_9
    invoke-static {v6, v6}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->transpose_64x64([J[J)V

    move v0, v2

    :goto_a
    if-ge v0, v10, :cond_a

    mul-int/lit8 v1, v0, 0x8

    aget-wide v2, v6, v0

    invoke-static {p1, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    return-void
.end method

.method static layerBenes([J[JI)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    shl-int v4, v0, p2

    move v0, v1

    move v3, v1

    :goto_0
    const/16 v1, 0x40

    if-ge v3, v1, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v3, v4

    if-ge v2, v1, :cond_0

    add-int/lit8 v1, v2, 0x0

    aget-wide v6, p0, v1

    add-int v1, v2, v4

    aget-wide v8, p0, v1

    xor-long/2addr v6, v8

    add-int/lit8 v1, v0, 0x1

    aget-wide v8, p1, v0

    and-long/2addr v6, v8

    add-int/lit8 v0, v2, 0x0

    aget-wide v8, p0, v0

    xor-long/2addr v8, v6

    aput-wide v8, p0, v0

    add-int v0, v2, v4

    aget-wide v8, p0, v0

    xor-long/2addr v6, v8

    aput-wide v6, p0, v0

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_1

    :cond_0
    mul-int/lit8 v1, v4, 0x2

    add-int/2addr v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public support_gen([S[B)V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    shl-int v1, v10, v1

    div-int/lit8 v1, v1, 0x8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    move v1, v2

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    if-ge v1, v3, :cond_1

    move v3, v2

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    shl-int v4, v10, v4

    div-int/lit8 v4, v4, 0x8

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v1

    aput-byte v2, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    shl-int v3, v10, v3

    if-ge v1, v3, :cond_3

    int-to-short v3, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v4

    move v3, v2

    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    if-ge v3, v5, :cond_2

    aget-object v5, v0, v3

    div-int/lit8 v6, v1, 0x8

    aget-byte v7, v5, v6

    shr-int v8, v4, v3

    and-int/lit8 v8, v8, 0x1

    rem-int/lit8 v9, v1, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_4
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    if-ge v1, v3, :cond_4

    aget-object v3, v0, v1

    invoke-direct {p0, v3, p2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->apply_benes([B[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_5
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->SYS_N:I

    if-ge v1, v3, :cond_6

    aput-short v2, p1, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;->GFBITS:I

    add-int/lit8 v3, v3, -0x1

    :goto_6
    if-ltz v3, :cond_5

    aget-short v4, p1, v1

    shl-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    aput-short v4, p1, v1

    aget-short v4, p1, v1

    aget-object v5, v0, v3

    div-int/lit8 v6, v1, 0x8

    aget-byte v5, v5, v6

    rem-int/lit8 v6, v1, 0x8

    shr-int/2addr v5, v6

    and-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p1, v1

    add-int/lit8 v3, v3, -0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    return-void
.end method
