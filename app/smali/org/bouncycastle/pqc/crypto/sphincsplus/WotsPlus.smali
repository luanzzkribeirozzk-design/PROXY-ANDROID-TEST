.class Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;
.super Ljava/lang/Object;


# instance fields
.field private final engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

.field private final w:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_W:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    return-void
.end method


# virtual methods
.method base_w([BII[III)V
    .locals 7

    const/4 v2, 0x0

    move v4, v2

    move v0, v2

    move v1, v2

    move v3, p2

    :goto_0
    if-ge v4, p6, :cond_0

    if-nez v0, :cond_1

    add-int/lit8 v2, v3, 0x1

    aget-byte v1, p1, v3

    add-int/lit8 v0, v0, 0x8

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    sub-int/2addr v0, v3

    add-int/lit8 v5, p5, 0x1

    ushr-int v3, v1, v0

    add-int/lit8 v6, p3, -0x1

    and-int/2addr v3, v6

    aput v3, p4, p5

    add-int/lit8 v4, v4, 0x1

    move p5, v5

    move v3, v2

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method chain([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 3

    if-nez p3, :cond_1

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    add-int v0, p2, p3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    move-object v0, p1

    :goto_1
    if-ge v1, p3, :cond_0

    add-int v2, p2, v1

    invoke-virtual {p5, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v2, p4, p5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public pkFromSig([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 13

    new-instance v12, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    move-object/from16 v0, p4

    invoke-direct {v12, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v5, v1, [I

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    const/4 v6, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->base_w([BII[III)V

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    if-ge v1, v3, :cond_0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v5, v1

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    mul-int/2addr v1, v3

    rem-int/lit8 v1, v1, 0x8

    rsub-int/lit8 v1, v1, 0x8

    shl-int v1, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v3, v2, 0x8

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v2

    rsub-int/lit8 v3, v3, 0x4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v7, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->base_w([BII[III)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v7, v1, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v2, v1, [[B

    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    if-ge v1, v3, :cond_1

    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    mul-int/2addr v3, v1

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    invoke-static {p1, v3, v7, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget v8, v5, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    add-int/lit8 v3, v3, -0x1

    aget v4, v5, v1

    sub-int v9, v3, v4

    move-object v6, p0

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->chain([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v12, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v1

    invoke-virtual {v12, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v1, v0, v12, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v1

    return-object v1
.end method

.method pkGen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 9

    const/4 v2, 0x0

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v7, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v8, v0, [[B

    move v6, v2

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    if-ge v6, v0, :cond_0

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v5, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    const/4 v0, 0x5

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v0, p2, p1, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->chain([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    aput-object v0, v8, v6

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v0

    invoke-virtual {v7, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-static {v8}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v1

    invoke-virtual {v0, p2, v7, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v0

    return-object v0
.end method

.method public sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 11

    new-instance v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v10, p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v4, v0, [I

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->base_w([BII[III)V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v4, v0

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    mul-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x8

    rsub-int/lit8 v0, v0, 0x8

    shl-int/2addr v1, v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LOGW:I

    mul-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v1

    rsub-int/lit8 v2, v0, 0x4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->w:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN1:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN2:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->base_w([BII[III)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    new-array v1, v0, [[B

    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    if-ge v0, v2, :cond_2

    const/4 v2, 0x5

    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v2

    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v2, p3, p2, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v6

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v2

    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {v10, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setChainAddress(I)V

    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setHashAddress(I)V

    const/4 v7, 0x0

    aget v8, v4, v0

    move-object v5, p0

    move-object v9, p3

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->chain([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method
