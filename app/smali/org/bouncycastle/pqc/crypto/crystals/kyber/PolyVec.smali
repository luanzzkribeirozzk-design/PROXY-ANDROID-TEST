.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;
.super Ljava/lang/Object;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

.field private kyberK:I

.field private polyVecBytes:I

.field vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Requires Parameter"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    invoke-direct {v2, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    invoke-direct {v1, p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberK()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v2

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    return-void
.end method


# virtual methods
.method public addPoly(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compressPolyVec()[B
    .locals 10

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->conditionalSubQ()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v0

    new-array v4, v0, [B

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v2, v2, 0x140

    if-ne v1, v2, :cond_2

    const/4 v1, 0x4

    new-array v5, v1, [S

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v1, v2, :cond_6

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    const/16 v2, 0x40

    if-ge v3, v2, :cond_1

    const/4 v2, 0x0

    :goto_2
    const/4 v6, 0x4

    if-ge v2, v6, :cond_0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v6

    mul-int/lit8 v7, v3, 0x4

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0xa

    shl-long/2addr v6, v8

    const-wide/16 v8, 0x681

    add-long/2addr v6, v8

    const-wide/32 v8, 0x13afb7

    mul-long/2addr v6, v8

    const/16 v8, 0x20

    shr-long/2addr v6, v8

    const-wide/16 v8, 0x3ff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v0, 0x0

    const/4 v6, 0x0

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x0

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v6, 0x0

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x2

    const/4 v6, 0x1

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x6

    const/4 v7, 0x2

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x3

    const/4 v6, 0x2

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x4

    const/4 v7, 0x3

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x4

    const/4 v6, 0x3

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v0, v0, 0x5

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v2, v2, 0x160

    if-ne v1, v2, :cond_5

    const/16 v1, 0x8

    new-array v5, v1, [S

    const/4 v1, 0x0

    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v1, v2, :cond_6

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    const/16 v2, 0x20

    if-ge v3, v2, :cond_4

    const/4 v2, 0x0

    :goto_5
    const/16 v6, 0x8

    if-ge v2, v6, :cond_3

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v6

    mul-int/lit8 v7, v3, 0x8

    add-int/2addr v7, v2

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0xb

    shl-long/2addr v6, v8

    const-wide/16 v8, 0x680

    add-long/2addr v6, v8

    const-wide/32 v8, 0x9d7dc

    mul-long/2addr v6, v8

    const/16 v8, 0x1f

    shr-long/2addr v6, v8

    const-wide/16 v8, 0x7ff

    and-long/2addr v6, v8

    long-to-int v6, v6

    int-to-short v6, v6

    aput-short v6, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v2, v0, 0x0

    const/4 v6, 0x0

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x0

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x1

    const/4 v6, 0x0

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x8

    const/4 v7, 0x1

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x2

    const/4 v6, 0x1

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x5

    const/4 v7, 0x2

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x3

    const/4 v6, 0x2

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x4

    const/4 v6, 0x2

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0xa

    const/4 v7, 0x3

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x5

    const/4 v6, 0x3

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x7

    const/4 v7, 0x4

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x6

    const/4 v6, 0x4

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x4

    const/4 v7, 0x5

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x7

    const/4 v6, 0x5

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x8

    const/4 v6, 0x5

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x9

    const/4 v7, 0x6

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0x9

    const/4 v6, 0x6

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x6

    const/4 v7, 0x7

    aget-short v7, v5, v7

    shl-int/lit8 v7, v7, 0x5

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v0, 0xa

    const/4 v6, 0x7

    aget-short v6, v5, v6

    shr-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    aput-byte v6, v4, v2

    add-int/lit8 v0, v0, 0xb

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v4
.end method

.method public conditionalSubQ()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->conditionalSubQ()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompressPolyVec([B)V
    .locals 13

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v2, v2, 0x140

    if-ne v0, v2, :cond_2

    new-array v5, v9, [S

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v2, v3, :cond_6

    move v4, v1

    :goto_1
    const/16 v3, 0x40

    if-ge v4, v3, :cond_1

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x0

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    int-to-short v6, v6

    or-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v1

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x6

    int-to-short v6, v6

    or-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v10

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x4

    int-to-short v6, v6

    or-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v11

    add-int/lit8 v3, v0, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x2

    int-to-short v6, v6

    or-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v12

    add-int/lit8 v3, v0, 0x5

    move v0, v1

    :goto_2
    if-ge v0, v9, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v6, v6, v2

    mul-int/lit8 v7, v4, 0x4

    add-int/2addr v7, v0

    aget-short v8, v5, v0

    and-int/lit16 v8, v8, 0x3ff

    mul-int/lit16 v8, v8, 0xd01

    add-int/lit16 v8, v8, 0x200

    shr-int/lit8 v8, v8, 0xa

    int-to-short v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move v0, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyVecCompressedBytes()I

    move-result v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    mul-int/lit16 v2, v2, 0x160

    if-ne v0, v2, :cond_5

    const/16 v0, 0x8

    new-array v5, v0, [S

    move v0, v1

    move v2, v1

    :goto_3
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v2, v3, :cond_6

    move v4, v1

    :goto_4
    const/16 v3, 0x20

    if-ge v4, v3, :cond_4

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x0

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v1

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x3

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v10

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v3, v6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0xa

    int-to-short v6, v6

    or-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v11

    add-int/lit8 v3, v0, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v6, v0, 0x5

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v12

    add-int/lit8 v3, v0, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v5, v9

    const/4 v3, 0x5

    add-int/lit8 v6, v0, 0x6

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x7

    add-int/lit8 v7, v0, 0x7

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    add-int/lit8 v7, v0, 0x8

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x9

    int-to-short v7, v7

    or-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v3

    const/4 v3, 0x6

    add-int/lit8 v6, v0, 0x8

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v0, 0x9

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v3

    const/4 v3, 0x7

    add-int/lit8 v6, v0, 0x9

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v6, v6, 0x5

    add-int/lit8 v7, v0, 0xa

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    int-to-short v7, v7

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v3

    add-int/lit8 v3, v0, 0xb

    move v0, v1

    :goto_5
    const/16 v6, 0x8

    if-ge v0, v6, :cond_3

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v6, v6, v2

    mul-int/lit8 v7, v4, 0x8

    add-int/2addr v7, v0

    aget-short v8, v5, v0

    and-int/lit16 v8, v8, 0x7ff

    mul-int/lit16 v8, v8, 0xd01

    add-int/lit16 v8, v8, 0x400

    shr-int/lit8 v8, v8, 0xb

    int-to-short v8, v8

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    move v0, v3

    goto/16 :goto_4

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Kyber PolyVecCompressedBytes neither 320 * KyberK or 352 * KyberK!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-void
.end method

.method public fromBytes([B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x180

    add-int/lit8 v3, v0, 0x1

    mul-int/lit16 v3, v3, 0x180

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->fromBytes([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public polyVecInverseNttToMont()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyInverseNttToMont()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public polyVecNtt()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyNtt()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reducePoly()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toBytes()[B
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->polyVecBytes:I

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->toBytes()[B

    move-result-object v3

    mul-int/lit16 v4, v0, 0x180

    const/16 v5, 0x180

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->vec:[Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;->kyberK:I

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
