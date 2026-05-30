.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Packing;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getCryptoPublicKeyBytes()I

    move-result v0

    add-int/lit8 v0, v0, -0x20

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt1Pack()[B

    move-result-object v3

    mul-int/lit16 v4, v0, 0x140

    const/16 v5, 0x140

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static packSecretKey([B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[[B
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v0, 0x6

    new-array v2, v0, [[B

    aput-object p0, v2, v1

    const/4 v0, 0x1

    aput-object p2, v2, v0

    const/4 v0, 0x2

    aput-object p1, v2, v0

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v0

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v0, v0, [B

    aput-object v0, v2, v6

    move v0, v1

    :goto_0
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p4, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v5

    mul-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaPack([BI)[B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v0

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v3

    mul-int/2addr v0, v3

    new-array v0, v0, [B

    aput-object v0, v2, v7

    move v0, v1

    :goto_1
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {p5, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    aget-object v4, v2, v7

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v5

    mul-int/2addr v5, v0

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaPack([BI)[B

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v0

    mul-int/lit16 v0, v0, 0x1a0

    new-array v0, v0, [B

    aput-object v0, v2, v8

    :goto_2
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v0

    aget-object v3, v2, v8

    mul-int/lit16 v4, v1, 0x1a0

    invoke-virtual {v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt0Pack([BI)[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-object v2
.end method

.method static packSignature([BLorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)[B
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getCryptoBytes()I

    move-result v0

    new-array v5, v0, [B

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumCTilde()I

    move-result v0

    invoke-static {p0, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumCTilde()I

    move-result v0

    add-int v2, v1, v0

    move v0, v1

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->zPack()[B

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v4

    mul-int/2addr v4, v0

    add-int/2addr v4, v2

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v6

    invoke-static {v3, v1, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v3

    mul-int/2addr v0, v3

    add-int v6, v2, v0

    move v0, v1

    :goto_1
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v2

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    add-int v2, v6, v0

    aput-byte v1, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    move v2, v1

    :goto_2
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    if-ge v2, v3, :cond_4

    move v4, v1

    :goto_3
    const/16 v3, 0x100

    if-ge v4, v3, :cond_3

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, v6

    int-to-byte v7, v4

    aput-byte v7, v5, v0

    move v0, v3

    :cond_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v3

    add-int/2addr v3, v6

    add-int/2addr v3, v2

    int-to-byte v4, v0

    aput-byte v4, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    return-object v5
.end method

.method static unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v1

    mul-int/lit16 v2, v0, 0x140

    add-int/lit8 v3, v0, 0x1

    mul-int/lit16 v3, v3, 0x140

    add-int/lit8 v3, v3, 0x20

    invoke-static {p1, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt1Unpack([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static unpackSecretKey(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[B[B[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v2

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v2, p4, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaUnpack([BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v2

    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyEtaPackedBytes()I

    move-result v3

    mul-int/2addr v3, v0

    invoke-virtual {v2, p5, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyEtaUnpack([BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-virtual {p6}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v0

    mul-int/lit16 v2, v1, 0x1a0

    invoke-virtual {v0, p3, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyt0Unpack([BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static unpackSignature(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;[BLorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumCTilde()I

    move-result v2

    move v0, v1

    :goto_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v5

    mul-int/2addr v5, v0

    add-int/2addr v5, v2

    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v7

    mul-int/2addr v6, v7

    add-int/2addr v6, v2

    invoke-static {p2, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->zUnpack([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v0

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v3

    mul-int/2addr v0, v3

    add-int v5, v2, v0

    move v0, v1

    move v2, v1

    :goto_1
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumK()I

    move-result v3

    if-ge v2, v3, :cond_7

    move v3, v1

    :goto_2
    const/16 v6, 0x100

    if-ge v3, v6, :cond_1

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    if-lt v3, v0, :cond_2

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v3

    add-int/2addr v3, v5

    add-int/2addr v3, v2

    aget-byte v3, p2, v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v6

    if-le v3, v6, :cond_3

    :cond_2
    :goto_3
    return v1

    :cond_3
    move v3, v0

    :goto_4
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v6

    add-int/2addr v6, v5

    add-int/2addr v6, v2

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    if-ge v3, v6, :cond_5

    if-le v3, v0, :cond_4

    add-int v6, v5, v3

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int v7, v5, v3

    add-int/lit8 v7, v7, -0x1

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    if-le v6, v7, :cond_2

    :cond_4
    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecK;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v6

    add-int v7, v5, v3

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    invoke-virtual {v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v0

    add-int/2addr v0, v5

    add-int/2addr v0, v2

    aget-byte v0, p2, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    :cond_7
    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumOmega()I

    move-result v2

    if-ge v0, v2, :cond_8

    add-int v2, v5, v0

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_8
    move v1, v4

    goto :goto_3
.end method
