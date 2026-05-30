.class Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static Bit0Mask(I)I
    .locals 1

    and-int/lit8 v0, p0, 0x1

    neg-int v0, v0

    and-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public static decode([B[JII)V
    .locals 9

    const/16 v8, 0x80

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    array-length v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v4, v0, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [I

    invoke-static {v5, p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByte32Array([I[J)V

    move v0, v1

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v2, v4, v0

    move v2, v1

    :goto_1
    const/4 v6, 0x4

    if-ge v2, v6, :cond_0

    aget-object v6, v4, v0

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    mul-int/lit8 v7, v0, 0x4

    add-int/2addr v7, v2

    aget v7, v5, v7

    aput v7, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v2, v8, [I

    move v0, v1

    :goto_2
    if-ge v0, p2, :cond_2

    mul-int v5, v0, p3

    invoke-static {v2, v4, v5, p3}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V

    new-array v5, v8, [I

    invoke-static {v2, v5}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->hadamardTransform([I[I)V

    aget v6, v5, v1

    mul-int/lit8 v7, p3, 0x40

    sub-int/2addr v6, v7

    aput v6, v5, v1

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->findPeaks([I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x4

    new-array v5, v0, [I

    move v0, v1

    move v2, v1

    :goto_3
    array-length v6, v4

    if-ge v0, v6, :cond_3

    aget-object v6, v4, v0

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget-object v7, v4, v0

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    array-length v7, v7

    invoke-static {v6, v1, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByte32ArrayToLongArray([J[I)V

    array-length v0, p0

    invoke-static {v3, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static encode([J[BII)V
    .locals 8

    const/4 v1, 0x0

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    mul-int v0, p2, p3

    new-array v4, v0, [Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    move v0, v1

    :goto_0
    array-length v2, v4

    if-ge v0, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;-><init>()V

    aput-object v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_2

    mul-int v5, v2, p3

    aget-object v0, v4, v5

    aget-byte v6, v3, v2

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V

    const/4 v0, 0x1

    :goto_2
    if-ge v0, p3, :cond_1

    add-int v6, v5, v0

    aget-object v7, v4, v5

    aput-object v7, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    array-length v0, v4

    mul-int/lit8 v0, v0, 0x4

    new-array v3, v0, [I

    move v0, v1

    move v2, v1

    :goto_3
    array-length v5, v4

    if-ge v0, v5, :cond_3

    aget-object v5, v4, v0

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget-object v6, v4, v0

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    array-length v6, v6

    invoke-static {v5, v1, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    invoke-static {p0, v3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByte32ArrayToLongArray([J[I)V

    return-void
.end method

.method static encodeSub(Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x7

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v0

    shr-int/lit8 v1, p1, 0x0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x55555556

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0x33333334

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xf0f0f10

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const v2, -0xff0100

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    shr-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    const/high16 v2, -0x10000

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    shr-int/lit8 v1, p1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x1

    aput v0, v1, v2

    shr-int/lit8 v1, p1, 0x6

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x3

    aput v0, v1, v2

    shr-int/lit8 v1, p1, 0x5

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->Bit0Mask(I)I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    const/4 v2, 0x2

    aput v0, v1, v2

    return-void
.end method

.method private static expandThenSum([I[Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;II)V
    .locals 9

    const/16 v8, 0x20

    const/4 v7, 0x4

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v7, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_0

    add-int/lit8 v3, p2, 0x0

    aget-object v3, p1, v3

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v3, v3, v2

    shr-int/2addr v3, v0

    and-int/lit8 v3, v3, 0x1

    int-to-long v4, v3

    mul-int/lit8 v3, v2, 0x20

    add-int/2addr v3, v0

    add-int/lit8 v4, p2, 0x0

    aget-object v4, p1, v4

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v4, v4, v2

    shr-int/2addr v4, v0

    and-int/lit8 v4, v4, 0x1

    aput v4, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    move v3, v0

    :goto_2
    if-ge v3, p3, :cond_4

    move v2, v1

    :goto_3
    if-ge v2, v7, :cond_3

    move v0, v1

    :goto_4
    if-ge v0, v8, :cond_2

    mul-int/lit8 v4, v2, 0x20

    add-int/2addr v4, v0

    aget v5, p0, v4

    add-int v6, v3, p2

    aget-object v6, p1, v6

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller$Codeword;->type32:[I

    aget v6, v6, v2

    shr-int/2addr v6, v0

    and-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    aput v5, p0, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_4
    return-void
.end method

.method private static findPeaks([I)I
    .locals 9

    const/4 v2, 0x0

    move v4, v2

    move v3, v2

    move v6, v2

    move v1, v2

    :goto_0
    const/16 v0, 0x80

    if-ge v4, v0, :cond_4

    aget v5, p0, v4

    if-lez v5, :cond_1

    const/4 v0, -0x1

    :goto_1
    and-int v7, v0, v5

    xor-int/lit8 v0, v0, -0x1

    neg-int v8, v5

    and-int/2addr v0, v8

    or-int/2addr v0, v7

    if-le v0, v1, :cond_2

    :goto_2
    if-le v0, v1, :cond_0

    move v3, v4

    :cond_0
    if-le v0, v1, :cond_3

    :goto_3
    add-int/lit8 v4, v4, 0x1

    move v6, v5

    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    if-lez v6, :cond_5

    const/4 v0, 0x1

    :goto_4
    mul-int/lit16 v0, v0, 0x80

    or-int/2addr v0, v3

    return v0

    :cond_5
    move v0, v2

    goto :goto_4
.end method

.method private static hadamardTransform([I[I)V
    .locals 9

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v4

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([I)[I

    move-result-object v0

    move v2, v1

    move-object v3, v0

    :goto_0
    const/4 v0, 0x7

    if-ge v2, v0, :cond_1

    move v0, v1

    :goto_1
    const/16 v5, 0x40

    if-ge v0, v5, :cond_0

    mul-int/lit8 v5, v0, 0x2

    aget v5, v4, v5

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget v6, v4, v6

    add-int/2addr v5, v6

    aput v5, v3, v0

    add-int/lit8 v5, v0, 0x40

    mul-int/lit8 v6, v0, 0x2

    aget v6, v4, v6

    mul-int/lit8 v7, v0, 0x2

    add-int/lit8 v7, v7, 0x1

    aget v7, v4, v7

    sub-int/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v8, v4

    move-object v4, v3

    move-object v3, v8

    goto :goto_0

    :cond_1
    array-length v0, p0

    invoke-static {v3, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    invoke-static {v4, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
