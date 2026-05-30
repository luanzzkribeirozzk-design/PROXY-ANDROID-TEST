.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private sec_rand(I)[B
    .locals 2

    new-array v0, p1, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 13

    const/16 v12, 0x22

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    move-result-object v3

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->sec_rand(I)[B

    move-result-object v0

    iget v4, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegJ:I

    add-int/lit8 v4, v4, 0x2

    iget v5, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v6, v6, 0x1

    mul-int/2addr v5, v6

    ushr-int/lit8 v5, v5, 0x1

    add-int/2addr v4, v5

    iget v5, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_VINEGAR:I

    add-int/lit8 v5, v5, -0x1

    add-int/2addr v4, v5

    iget v5, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDegI:I

    add-int/lit8 v5, v5, 0x1

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEv:I

    mul-int/2addr v5, v6

    add-int/2addr v4, v5

    iget v5, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v4, v5

    iget v5, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    shl-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v4

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    shl-int/lit8 v6, v6, 0x1

    add-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x3

    new-instance v6, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    ushr-int/lit8 v7, v5, 0x3

    invoke-direct {v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-array v7, v5, [B

    new-instance v8, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    iget v9, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->ShakeBitStrength:I

    invoke-direct {v8, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget v9, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    invoke-virtual {v8, v0, v2, v9}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    invoke-virtual {v8, v7, v2, v5}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doFinal([BII)I

    iget v5, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->SIZE_SEED_SK:I

    new-array v5, v5, [B

    iget v8, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v9, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    mul-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    new-array v8, v8, [B

    array-length v9, v5

    invoke-static {v0, v2, v5, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v7

    invoke-virtual {v6, v2, v7, v2, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    invoke-virtual {v3, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanMonicHFEv_gf2nx(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v9, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    mul-int/2addr v0, v9

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-le v0, v12, :cond_0

    invoke-virtual {v3, v7, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->genSecretMQS_gf2_opt(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v9, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->MATRIXnv_SIZE:I

    invoke-direct {v0, v9}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v9, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    new-instance v10, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    invoke-direct {v10, v6, v4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v11, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    invoke-direct {v4, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V

    sget-object v11, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v3, v10, v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    sget-object v11, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v3, v4, v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    sget-object v11, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->NV:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v3, v0, v10, v4, v11}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->invMatrixLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v11, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEDeg:I

    if-gt v11, v12, :cond_1

    invoke-virtual {v3, v7, v6, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->interpolateHFE_FS_ref(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v3, v7, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->changeVariablesMQS64_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    :cond_2
    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_NV_SIZE:I

    shl-int/lit8 v0, v0, 0x1

    invoke-virtual {v10, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->getIndex()I

    move-result v0

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->LTRIANGULAR_N_SIZE:I

    add-int/2addr v0, v6

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->changeIndex(I)V

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v3, v10, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->cleanLowerMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->N:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v3, v9, v10, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->invMatrixLU_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-eqz v0, :cond_8

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    iget v4, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    mul-int/2addr v0, v4

    iget v4, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    and-int/lit8 v4, v4, 0x7

    rsub-int/lit8 v4, v4, 0x8

    and-int/lit8 v4, v4, 0x7

    add-int/2addr v0, v4

    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(I)V

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_3

    move v0, v1

    :goto_0
    iget v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge v0, v6, :cond_4

    sget-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v3, v4, v7, v9, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v7, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v4, v6}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->moveNextBytes(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_5

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;

    iget v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    sget-object v6, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v3, v0, v7, v9, v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    :goto_1
    iget v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    if-ge v2, v6, :cond_5

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v6

    invoke-virtual {v4, v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->set(IJ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->indexReset()V

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    iget v2, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_EQUATION:I

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-virtual {v3, v0, v4}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQS_one_to_last_mr8_equations_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->indexReset()V

    iget v2, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFENr8:I

    if-eqz v2, :cond_7

    iget v2, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEmr8:I

    if-le v2, v1, :cond_7

    invoke-virtual {v3, v8, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQS_one_eq_to_hybrid_rep8_uncomp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V

    :cond_6
    :goto_2
    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-direct {v1, v2, v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;[B)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-direct {v2, v3, v5}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;[B)V

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0

    :cond_7
    invoke-virtual {v3, v8, v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->convMQS_one_eq_to_hybrid_rep8_comp_gf2([BLorg/bouncycastle/pqc/crypto/gemss/PointerUnion;[B)V

    goto :goto_2

    :cond_8
    new-instance v4, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GF2m:I

    shl-int/lit8 v0, v0, 0x3

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;-><init>(I)V

    move v0, v2

    move v1, v2

    :goto_3
    iget v2, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_MONOMIAL_PK:I

    if-ge v1, v2, :cond_6

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;->M:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;

    invoke-virtual {v3, v4, v7, v9, v2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->vecMatProduct(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine$FunctionParams;)V

    iget v2, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_BYTES_GFqm:I

    invoke-virtual {v4, v8, v0, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->toBytesMove([BII)I

    move-result v2

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->indexReset()V

    iget v0, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_WORD_GFqn:I

    invoke-virtual {v7, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->move(I)V

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_3
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->random:Ljava/security/SecureRandom;

    check-cast p1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyPairGenerator;->parameters:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-void
.end method
