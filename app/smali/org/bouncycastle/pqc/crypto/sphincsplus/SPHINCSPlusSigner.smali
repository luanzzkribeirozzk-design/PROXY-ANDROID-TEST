.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 12

    const/4 v11, 0x3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->init([B)V

    iget v2, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->random:Ljava/security/SecureRandom;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    :goto_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;

    invoke-direct {v3, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->prf:[B

    invoke-virtual {v1, v4, v2, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF_msg([B[B[B)[B

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    invoke-virtual {v1, v2, v4, v5, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->digest:[B

    iget-wide v6, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_tree:J

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_leaf:I

    new-instance v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    invoke-virtual {v8, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v8, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    invoke-virtual {v8, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->seed:[B

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-virtual {v3, v5, v9, v10, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    move-result-object v8

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    invoke-virtual {v9, v11}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v9, v6, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    invoke-virtual {v9, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-virtual {v3, v8, v5, v10, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->pkFromSig([Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->getSeed()[B

    move-result-object v9

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->getPublicSeed()[B

    move-result-object v10

    invoke-direct {v5, v1, v9, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V

    invoke-virtual {v5, v3, v6, v7, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->sign([BJI)[B

    move-result-object v1

    array-length v3, v8

    add-int/lit8 v3, v3, 0x2

    new-array v3, v3, [[B

    aput-object v2, v3, v0

    :goto_1
    array-length v2, v8

    if-eq v0, v2, :cond_1

    add-int/lit8 v2, v0, 0x1

    aget-object v4, v8, v0

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->sk:[B

    aget-object v5, v8, v0

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->authPath:[[B

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    array-length v4, v2

    invoke-static {v3, v0, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_1
    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aput-object v1, v3, v0

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->random:Ljava/security/SecureRandom;

    :goto_0
    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->privKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-result-object v8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->init([B)V

    new-instance v9, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;

    iget v1, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->N:I

    iget v2, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    iget v3, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    iget v4, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    iget v5, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    iget v6, v8, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->WOTS_LEN:I

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;-><init>(IIIIII[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->getR()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->getSIG_FORS()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->getSIG_HT()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getRoot()[B

    move-result-object v4

    invoke-virtual {v8, v1, v0, v4, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    move-result-object v0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->digest:[B

    iget-wide v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_tree:J

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;->idx_leaf:I

    const/4 v0, 0x3

    invoke-virtual {v9, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v9, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    invoke-virtual {v9, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;

    invoke-direct {v0, v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v7

    invoke-virtual {v0, v3, v1, v7, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->pkFromSig([Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    const/4 v0, 0x2

    invoke-virtual {v9, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v9, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    invoke-virtual {v9, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;

    const/4 v3, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v7

    invoke-direct {v0, v8, v3, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getSeed()[B

    move-result-object v3

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPublicKeyParameters;->getRoot()[B

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->verify([B[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[BJI[B)Z

    move-result v0

    return v0
.end method
