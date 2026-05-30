.class Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;
.super Ljava/lang/Object;


# instance fields
.field CRYPTO_BYTES:I

.field private CRYPTO_PUBLICKEYBYTES:I

.field private CRYPTO_SECRETKEYBYTES:I

.field LOGN:I

.field private N:I

.field NONCELEN:I

.field private codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

.field private rand:Ljava/security/SecureRandom;


# direct methods
.method constructor <init>(IILjava/security/SecureRandom;)V
    .locals 3

    const/16 v2, 0x2b2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v0, v0, 0xe

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/16 v0, 0x901

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x532

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v0, v0, 0x6

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_4

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    goto :goto_0

    :cond_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    goto :goto_0
.end method


# virtual methods
.method crypto_sign(Z[B[BII[BI)[B
    .locals 30

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v5, v4, [B

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v0, v4, [B

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v0, v4, [B

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v0, v4, [B

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v0, v4, [S

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v0, v4, [S

    move-object/from16 v18, v0

    const/16 v4, 0x30

    new-array v0, v4, [B

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    new-array v0, v4, [B

    move-object/from16 v27, v0

    new-instance v28, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;

    invoke-direct/range {v28 .. v28}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;-><init>()V

    new-instance v29, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;

    invoke-direct/range {v29 .. v29}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;-><init>()V

    new-instance v20, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    invoke-direct/range {v20 .. v20}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;-><init>()V

    new-instance v21, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct/range {v21 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v8, v8, v9

    add-int v10, p7, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v11, v9, v12

    move-object/from16 v9, p6

    invoke-virtual/range {v4 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BIII[BII)I

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "f decode failed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_0
    add-int/2addr v4, v12

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v10, v7, v10

    add-int v12, p7, v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v13, v7, v4

    move-object/from16 v7, v23

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BIII[BII)I

    move-result v6

    if-nez v6, :cond_1

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "g decode failed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v10, v7, v10

    add-int v12, p7, v4

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v13, v7, v4

    move-object/from16 v7, v24

    move-object/from16 v11, p6

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_decode([BIII[BII)I

    move-result v6

    if-nez v6, :cond_2

    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "F decode failed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    add-int/2addr v4, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    add-int/lit8 v6, v6, -0x1

    if-eq v4, v6, :cond_3

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "full key not used"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v4, v4, 0x2

    new-array v0, v4, [S

    move-object/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v6, v20

    move-object/from16 v7, v25

    move-object v9, v5

    move-object/from16 v11, v23

    move-object/from16 v13, v24

    invoke-virtual/range {v6 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->complete_private([BI[BI[BI[BII[SI)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "complete_private failed"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual/range {v28 .. v28}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    move-object/from16 v0, v28

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    move-object/from16 v0, v28

    move-object/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    invoke-virtual/range {v28 .. v28}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v0, v21

    move-object/from16 v1, v28

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->hash_to_point_vartime(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual/range {v28 .. v28}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    array-length v6, v0

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    invoke-virtual/range {v28 .. v28}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    mul-int/lit8 v4, v4, 0xa

    new-array v0, v4, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v6, v29

    move-object/from16 v7, v26

    move-object/from16 v9, v28

    move-object v10, v5

    move-object/from16 v12, v23

    move-object/from16 v14, v24

    move-object/from16 v16, v25

    invoke-virtual/range {v6 .. v22}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->sign_dyn([SILorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    add-int/lit8 v4, v4, -0x2

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v4, v5

    new-array v5, v4, [B

    if-eqz p1, :cond_7

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v6, v6, 0x20

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    const/4 v6, 0x1

    array-length v7, v5

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v8, v26

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_encode([BII[SII)I

    move-result v4

    if-nez v4, :cond_5

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "signature failed to generate"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_5
    add-int/lit8 v4, v4, 0x1

    :cond_6
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v7, v7, 0x30

    int-to-byte v7, v7

    aput-byte v7, p2, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-static {v0, v6, v1, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p2

    invoke-static {v5, v6, v0, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v4, v6

    move-object/from16 v0, p2

    invoke-static {v0, v5, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    return-object v4

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    const/4 v6, 0x0

    array-length v7, v5

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v8, v26

    invoke-virtual/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_encode([BII[SII)I

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "signature failed to generate"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method crypto_sign_keypair([BI[BI)[[B
    .locals 21

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v3, v1, [B

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v5, v1, [B

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v7, v1, [B

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v11, v1, [S

    const/16 v1, 0x30

    new-array v4, v1, [B

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;-><init>()V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->rand:Ljava/security/SecureRandom;

    invoke-virtual {v6, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    const/4 v6, 0x0

    array-length v8, v4

    invoke-virtual {v2, v4, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-virtual/range {v1 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGen;->keygen(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII)V

    add-int/lit8 v1, p4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v2, v2, 0x50

    int-to-byte v2, v2

    aput-byte v2, p3, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int v14, p4, v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v15, v2, v1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v19, v2, v4

    move-object/from16 v13, p3

    move-object/from16 v16, v3

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BIII)I

    move-result v2

    if-nez v2, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "f encode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int v3, p4, v1

    add-int v4, v1, v2

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v20

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int v14, p4, v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v15, v2, v1

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v19, v2, v3

    move-object/from16 v13, p3

    move-object/from16 v16, v5

    invoke-virtual/range {v12 .. v19}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BIII)I

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "g encode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int v3, p4, v1

    add-int v4, v1, v2

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int v5, p4, v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    sub-int v6, v2, v1

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    aget-byte v10, v2, v4

    move-object/from16 v4, p3

    invoke-virtual/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->trim_i8_encode([BII[BIII)I

    move-result v2

    if-nez v2, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "F encode failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    add-int v3, p4, v1

    add-int v4, v1, v2

    move-object/from16 v0, p3

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_SECRETKEYBYTES:I

    if-eq v1, v2, :cond_3

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "secret key encoding failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    add-int/lit8 v1, p2, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v2, v2, 0x0

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    add-int/lit8 v9, p2, 0x1

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    add-int/lit8 v10, v1, -0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->modq_encode([BII[SII)I

    move-result v1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_4

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "public key encoding failed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const/4 v1, 0x4

    new-array v1, v1, [[B

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    array-length v5, v0

    move-object/from16 v0, p1

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    aput-object v20, v1, v2

    const/4 v2, 0x2

    aput-object v14, v1, v2

    const/4 v2, 0x3

    aput-object v3, v1, v2

    return-object v1
.end method

.method crypto_sign_open(Z[B[B[B[BI)I
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v2, v1, [S

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v13, v1, [S

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v14, v1, [S

    new-instance v10, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;

    invoke-direct {v10}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;-><init>()V

    new-instance v15, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;

    invoke-direct {v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;-><init>()V

    new-instance v11, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct {v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    add-int/lit8 v7, v5, -0x1

    move-object/from16 v5, p5

    move/from16 v6, p6

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->modq_decode([SII[BII)I

    move-result v1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_PUBLICKEYBYTES:I

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-virtual {v15, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->to_ntt_monty([SII)V

    move-object/from16 v0, p2

    array-length v1, v0

    move-object/from16 v0, p4

    array-length v12, v0

    if-eqz p1, :cond_3

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    const/4 v3, 0x0

    aget-byte v3, p2, v3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v4, v4, 0x20

    int-to-byte v4, v4

    if-eq v3, v4, :cond_2

    :cond_1
    const/4 v1, -0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/4 v8, 0x1

    add-int/lit8 v9, v1, -0x1

    move-object v4, v14

    move-object/from16 v7, p2

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_decode([SII[BII)I

    move-result v3

    add-int/lit8 v1, v1, -0x1

    if-eq v3, v1, :cond_5

    const/4 v1, -0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    if-lt v1, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->codec:Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    const/4 v8, 0x0

    move-object v4, v14

    move-object/from16 v7, p2

    move v9, v1

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->comp_decode([SII[BII)I

    move-result v3

    if-eq v3, v1, :cond_5

    :cond_4
    const/4 v1, -0x1

    goto :goto_0

    :cond_5
    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_init()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    move-object/from16 v0, p3

    invoke-virtual {v10, v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    const/4 v1, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v10, v0, v1, v12}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_inject([BII)V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->i_shake256_flip()V

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    invoke-virtual {v11, v10, v13, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->hash_to_point_vartime(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->N:I

    new-array v11, v1, [S

    const/4 v12, 0x0

    move-object v3, v15

    move-object v4, v13

    move-object v6, v14

    move-object v8, v2

    invoke-virtual/range {v3 .. v12}, Lorg/bouncycastle/pqc/crypto/falcon/FalconVrfy;->verify_raw([SI[SI[SII[SI)I

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x0

    goto/16 :goto_0
.end method
