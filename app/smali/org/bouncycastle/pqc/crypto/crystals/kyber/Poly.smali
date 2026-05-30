.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;
.super Ljava/lang/Object;


# instance fields
.field private coeffs:[S

.field private engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

.field private eta1:I

.field private eta2:I

.field private polyCompressedBytes:I

.field private symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyCompressedBytes()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyCompressedBytes:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberEta1()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta1:I

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberEta2()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta2:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    return-void
.end method

.method public static baseMultMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V
    .locals 8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    const/16 v0, 0x40

    if-ge v7, v0, :cond_0

    mul-int/lit8 v1, v7, 0x4

    mul-int/lit8 v0, v7, 0x4

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v2

    mul-int/lit8 v0, v7, 0x4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v3

    mul-int/lit8 v0, v7, 0x4

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v4

    mul-int/lit8 v0, v7, 0x4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v5

    sget-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->nttZetas:[S

    add-int/lit8 v6, v7, 0x40

    aget-short v6, v0, v6

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->baseMult(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;ISSSSS)V

    mul-int/lit8 v0, v7, 0x4

    add-int/lit8 v1, v0, 0x2

    mul-int/lit8 v0, v7, 0x4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v2

    mul-int/lit8 v0, v7, 0x4

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v3

    mul-int/lit8 v0, v7, 0x4

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v4

    mul-int/lit8 v0, v7, 0x4

    add-int/lit8 v0, v0, 0x3

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v5

    sget-object v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->nttZetas:[S

    add-int/lit8 v6, v7, 0x40

    aget-short v0, v0, v6

    mul-int/lit8 v0, v0, -0x1

    int-to-short v6, v0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->baseMult(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;ISSSSS)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public addCoeffs(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public compressPoly()[B
    .locals 12

    const/4 v11, 0x6

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x8

    new-array v4, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyCompressedBytes:I

    new-array v5, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->conditionalSubQ()V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyCompressedBytes:I

    const/16 v2, 0x80

    if-ne v0, v2, :cond_1

    move v2, v1

    move v3, v1

    :goto_0
    const/16 v0, 0x20

    if-ge v3, v0, :cond_4

    move v0, v1

    :goto_1
    const/16 v6, 0x8

    if-ge v0, v6, :cond_0

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v0

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    add-int/lit16 v6, v6, 0x681

    const v7, 0x13afb

    mul-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1c

    and-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x0

    aget-byte v6, v4, v1

    aget-byte v7, v4, v8

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x1

    const/4 v6, 0x2

    aget-byte v6, v4, v6

    aget-byte v7, v4, v9

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x2

    aget-byte v6, v4, v10

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v6, v4, v11

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x4

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->polyCompressedBytes:I

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_3

    move v2, v1

    move v3, v1

    :goto_2
    const/16 v0, 0x20

    if-ge v3, v0, :cond_4

    move v0, v1

    :goto_3
    const/16 v6, 0x8

    if-ge v0, v6, :cond_2

    mul-int/lit8 v6, v3, 0x8

    add-int/2addr v6, v0

    invoke-virtual {p0, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v6

    shl-int/lit8 v6, v6, 0x5

    add-int/lit16 v6, v6, 0x680

    const v7, 0x9d7e

    mul-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x1b

    and-int/lit8 v6, v6, 0x1f

    int-to-byte v6, v6

    aput-byte v6, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v2, 0x0

    aget-byte v6, v4, v1

    shr-int/lit8 v6, v6, 0x0

    aget-byte v7, v4, v8

    shl-int/lit8 v7, v7, 0x5

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x1

    aget-byte v6, v4, v8

    shr-int/lit8 v6, v6, 0x3

    const/4 v7, 0x2

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x2

    or-int/2addr v6, v7

    aget-byte v7, v4, v9

    shl-int/lit8 v7, v7, 0x7

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x2

    aget-byte v6, v4, v9

    shr-int/lit8 v6, v6, 0x1

    aget-byte v7, v4, v10

    shl-int/lit8 v7, v7, 0x4

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x3

    aget-byte v6, v4, v10

    shr-int/lit8 v6, v6, 0x4

    const/4 v7, 0x5

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    aget-byte v7, v4, v11

    shl-int/lit8 v7, v7, 0x6

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x4

    aget-byte v6, v4, v11

    shr-int/lit8 v6, v6, 0x2

    const/4 v7, 0x7

    aget-byte v7, v4, v7

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    add-int/lit8 v0, v2, 0x5

    add-int/lit8 v3, v3, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PolyCompressedBytes is neither 128 or 160!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-object v5
.end method

.method public conditionalSubQ()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;->conditionalSubQ(S)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public convertToMont()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v1

    mul-int/lit16 v1, v1, 0x549

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;->montgomeryReduce(I)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompressPoly([B)V
    .locals 8

    const/16 v4, 0x80

    const/16 v7, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyCompressedBytes()I

    move-result v0

    if-ne v0, v4, :cond_0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x0

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    and-int/lit8 v3, v3, 0xf

    int-to-short v3, v3

    mul-int/lit16 v3, v3, 0xd01

    add-int/lit8 v3, v3, 0x8

    shr-int/lit8 v3, v3, 0x4

    int-to-short v3, v3

    invoke-virtual {p0, v1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    mul-int/lit8 v1, v2, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    int-to-short v3, v3

    mul-int/lit16 v3, v3, 0xd01

    add-int/lit8 v3, v3, 0x8

    shr-int/lit8 v3, v3, 0x4

    int-to-short v3, v3

    invoke-virtual {p0, v1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberPolyCompressedBytes()I

    move-result v0

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_2

    new-array v4, v7, [B

    move v0, v1

    move v3, v1

    :goto_1
    const/16 v2, 0x20

    if-ge v3, v2, :cond_3

    add-int/lit8 v2, v0, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    const/4 v2, 0x1

    add-int/lit8 v5, v0, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x5

    add-int/lit8 v6, v0, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    const/4 v2, 0x2

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    const/4 v2, 0x3

    add-int/lit8 v5, v0, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x7

    add-int/lit8 v6, v0, 0x2

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    const/4 v2, 0x4

    add-int/lit8 v5, v0, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x4

    add-int/lit8 v6, v0, 0x3

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    const/4 v2, 0x5

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    const/4 v2, 0x6

    add-int/lit8 v5, v0, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x6

    add-int/lit8 v6, v0, 0x4

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    const/4 v2, 0x7

    add-int/lit8 v5, v0, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v0, 0x5

    move v0, v1

    :goto_2
    if-ge v0, v7, :cond_1

    mul-int/lit8 v5, v3, 0x8

    add-int/2addr v5, v0

    aget-byte v6, v4, v0

    and-int/lit8 v6, v6, 0x1f

    mul-int/lit16 v6, v6, 0xd01

    add-int/lit8 v6, v6, 0x10

    shr-int/lit8 v6, v6, 0x5

    int-to-short v6, v6

    invoke-virtual {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    move v0, v2

    goto/16 :goto_1

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "PolyCompressedBytes is neither 128 or 160!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method public fromBytes([B)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x80

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xfff

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    int-to-long v2, v2

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    or-long/2addr v2, v4

    const-wide/16 v4, 0xfff

    and-long/2addr v2, v4

    long-to-int v2, v2

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fromMsg([B)V
    .locals 6

    const/16 v5, 0x20

    const/4 v1, 0x0

    array-length v0, p1

    if-eq v0, v5, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "KYBER_INDCPA_MSGBYTES must be equal to KYBER_N/8 bytes!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_2

    move v0, v1

    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shr-int/2addr v3, v0

    and-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    mul-int/lit8 v3, v3, -0x1

    int-to-short v3, v3

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v4, v0

    and-int/lit16 v3, v3, 0x681

    int-to-short v3, v3

    invoke-virtual {p0, v4, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public getCoeffIndex(I)S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    aget-short v0, v0, p1

    return v0
.end method

.method public getCoeffs()[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    return-object v0
.end method

.method public getEta1Noise([BB)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta1:I

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v1, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->prf([B[BB)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta1:I

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;->kyberCBD(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;[BI)V

    return-void
.end method

.method public getEta2Noise([BB)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta2:I

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v1, v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->prf([B[BB)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->eta2:I

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;->kyberCBD(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;[BI)V

    return-void
.end method

.method public polyInverseNttToMont()V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffs()[S

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->invNtt([S)[S

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffs([S)V

    return-void
.end method

.method public polyNtt()V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffs()[S

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Ntt;->ntt([S)[S

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffs([S)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->reduce()V

    return-void
.end method

.method public polySubtract(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v1

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reduce()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x100

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;->barretReduce(S)S

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCoeffIndex(IS)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    aput-short p2, v0, p1

    return-void
.end method

.method public setCoeffs([S)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    return-void
.end method

.method public toBytes()[B
    .locals 6

    const/16 v0, 0x180

    new-array v1, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->conditionalSubQ()V

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x80

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v3

    mul-int/lit8 v4, v0, 0x3

    shr-int/lit8 v5, v2, 0x0

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    shr-int/lit8 v2, v2, 0x8

    shl-int/lit8 v5, v3, 0x4

    or-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v1, v4

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toMsg()[B
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->getKyberIndCpaMsgBytes()I

    move-result v0

    new-array v3, v0, [B

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->conditionalSubQ()V

    move v2, v1

    :goto_0
    const/16 v0, 0x20

    if-ge v2, v0, :cond_1

    aput-byte v1, v3, v2

    move v0, v1

    :goto_1
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    mul-int/lit8 v4, v2, 0x8

    add-int/2addr v4, v0

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->getCoeffIndex(I)S

    move-result v4

    const v5, 0xffff

    and-int/2addr v4, v5

    shl-int/lit8 v4, v4, 0x1

    add-int/lit16 v4, v4, 0x681

    const v5, 0x13afb

    mul-int/2addr v4, v5

    shr-int/lit8 v4, v4, 0x1c

    and-int/lit8 v4, v4, 0x1

    aget-byte v5, v3, v2

    shl-int/2addr v4, v0

    int-to-byte v4, v4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->coeffs:[S

    array-length v2, v2

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
