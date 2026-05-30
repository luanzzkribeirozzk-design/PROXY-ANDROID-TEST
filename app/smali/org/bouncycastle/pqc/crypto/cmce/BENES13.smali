.class Lorg/bouncycastle/pqc/crypto/cmce/BENES13;
.super Lorg/bouncycastle/pqc/crypto/cmce/BENES;


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;-><init>(III)V

    return-void
.end method

.method static layer_ex([J[JI)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    shl-int v4, v0, p2

    move v0, v1

    move v3, v1

    :goto_0
    const/16 v1, 0x80

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

.method static layer_in([J[JI)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x1

    shl-int v3, v0, p2

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v1, 0x40

    if-ge v2, v1, :cond_1

    move v1, v2

    :goto_1
    add-int v4, v2, v3

    if-ge v1, v4, :cond_0

    add-int/lit8 v4, v1, 0x0

    aget-wide v4, p0, v4

    add-int v6, v1, v3

    aget-wide v6, p0, v6

    xor-long/2addr v4, v6

    add-int/lit8 v6, v0, 0x1

    aget-wide v8, p1, v0

    and-long/2addr v4, v8

    add-int/lit8 v0, v1, 0x0

    aget-wide v8, p0, v0

    xor-long/2addr v8, v4

    aput-wide v8, p0, v0

    add-int v0, v1, v3

    aget-wide v8, p0, v0

    xor-long/2addr v4, v8

    aput-wide v4, p0, v0

    add-int/lit8 v0, v1, 0x40

    add-int/lit8 v0, v0, 0x0

    aget-wide v4, p0, v0

    add-int/lit8 v0, v1, 0x40

    add-int/2addr v0, v3

    aget-wide v8, p0, v0

    xor-long/2addr v4, v8

    add-int/lit8 v0, v6, 0x1

    aget-wide v6, p1, v6

    and-long/2addr v4, v6

    add-int/lit8 v6, v1, 0x40

    add-int/lit8 v6, v6, 0x0

    aget-wide v8, p0, v6

    xor-long/2addr v8, v4

    aput-wide v8, p0, v6

    add-int/lit8 v6, v1, 0x40

    add-int/2addr v6, v3

    aget-wide v8, p0, v6

    xor-long/2addr v4, v8

    aput-wide v4, p0, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v1, v3, 0x2

    add-int/2addr v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method apply_benes([B[BI)V
    .locals 12

    const/4 v4, 0x0

    const/16 v0, 0x80

    new-array v5, v0, [J

    const/16 v0, 0x80

    new-array v6, v0, [J

    const/16 v0, 0x40

    new-array v7, v0, [J

    const/16 v0, 0x40

    new-array v8, v0, [J

    if-nez p3, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->SYS_T:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x28

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x0

    mul-int/lit8 v9, v2, 0x10

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, 0x0

    invoke-static {p1, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    aput-wide v10, v5, v3

    add-int/lit8 v3, v2, 0x40

    mul-int/lit8 v9, v2, 0x10

    add-int/2addr v9, v4

    add-int/lit8 v9, v9, 0x8

    invoke-static {p1, v9}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    aput-wide v10, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->SYS_T:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x28

    add-int/lit16 v0, v0, 0x3000

    const/16 v1, -0x400

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v6, v5, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    const/16 v2, 0x40

    invoke-static {v6, v5, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    const/4 v2, 0x6

    if-gt v3, v2, :cond_3

    const/4 v2, 0x0

    :goto_3
    const/16 v9, 0x40

    if-ge v2, v9, :cond_2

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    aput-wide v10, v7, v2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    add-int/2addr v0, v1

    invoke-static {v8, v7}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[J)V

    invoke-static {v6, v8, v3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->layer_ex([J[JI)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    invoke-static {v5, v6, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    const/16 v2, 0x40

    invoke-static {v5, v6, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    const/4 v2, 0x5

    if-gt v3, v2, :cond_5

    const/4 v2, 0x0

    :goto_5
    const/16 v9, 0x40

    if-ge v2, v9, :cond_4

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    aput-wide v10, v7, v2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    add-int/2addr v0, v1

    invoke-static {v5, v7, v3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->layer_in([J[JI)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_4

    :cond_5
    const/4 v2, 0x4

    move v3, v2

    :goto_6
    if-ltz v3, :cond_7

    const/4 v2, 0x0

    :goto_7
    const/16 v9, 0x40

    if-ge v2, v9, :cond_6

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    aput-wide v10, v7, v2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    add-int/2addr v0, v1

    invoke-static {v5, v7, v3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->layer_in([J[JI)V

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_6

    :cond_7
    const/4 v2, 0x0

    invoke-static {v6, v5, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    const/16 v2, 0x40

    invoke-static {v6, v5, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    const/4 v2, 0x6

    move v3, v2

    :goto_8
    if-ltz v3, :cond_9

    const/4 v2, 0x0

    :goto_9
    const/16 v9, 0x40

    if-ge v2, v9, :cond_8

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v10

    aput-wide v10, v7, v2

    add-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_8
    add-int/2addr v0, v1

    invoke-static {v8, v7}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[J)V

    invoke-static {v6, v8, v3}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->layer_ex([J[JI)V

    add-int/lit8 v2, v3, -0x1

    move v3, v2

    goto :goto_8

    :cond_9
    const/4 v0, 0x0

    invoke-static {v5, v6, v0}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    const/16 v0, 0x40

    invoke-static {v5, v6, v0}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->transpose_64x64([J[JI)V

    const/4 v0, 0x0

    :goto_a
    const/16 v1, 0x40

    if-ge v0, v1, :cond_a

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v2, v0, 0x0

    aget-wide v2, v5, v2

    invoke-static {p1, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    mul-int/lit8 v1, v0, 0x10

    add-int/2addr v1, v4

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, v0, 0x40

    aget-wide v2, v5, v2

    invoke-static {p1, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_a
    return-void
.end method

.method public support_gen([S[B)V
    .locals 11

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

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
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    if-ge v1, v3, :cond_1

    move v3, v2

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

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
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    shl-int v3, v10, v3

    if-ge v1, v3, :cond_3

    int-to-short v3, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    invoke-static {v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v4

    move v3, v2

    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

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
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

    if-ge v1, v3, :cond_4

    aget-object v3, v0, v1

    invoke-virtual {p0, v3, p2, v2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->apply_benes([B[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    move v1, v2

    :goto_5
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->SYS_N:I

    if-ge v1, v3, :cond_6

    aput-short v2, p1, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;->GFBITS:I

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
