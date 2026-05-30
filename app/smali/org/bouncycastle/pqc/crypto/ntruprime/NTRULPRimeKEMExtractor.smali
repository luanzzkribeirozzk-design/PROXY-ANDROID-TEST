.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 22

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v14

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getP()I

    move-result v11

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getQ()I

    move-result v7

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getW()I

    move-result v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getRoundedPolynomialBytes()I

    move-result v15

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau0()I

    move-result v12

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau1()I

    move-result v13

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau2()I

    move-result v9

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau3()I

    move-result v10

    new-array v4, v11, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getEncoded()[B

    move-result-object v5

    invoke-static {v4, v5, v11}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedSmallPolynomial([B[BI)V

    new-array v0, v15, [B

    move-object/from16 v16, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v5, v1, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v11, [S

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1, v11, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    const/16 v5, 0x80

    new-array v0, v5, [B

    move-object/from16 v18, v0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    array-length v6, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-static {v0, v15, v1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x100

    new-array v6, v5, [B

    move-object/from16 v0, v18

    invoke-static {v6, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getTopDecodedPolynomial([B[B)V

    new-array v5, v11, [S

    move-object/from16 v0, v17

    invoke-static {v5, v0, v4, v11, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    const/16 v4, 0x100

    new-array v4, v4, [B

    invoke-static/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->right([B[S[BIIII)V

    const/16 v5, 0x20

    new-array v5, v5, [B

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedInputs([B[B)V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getPublicKeyBytes()I

    move-result v9

    add-int/lit8 v9, v9, -0x20

    new-array v9, v9, [B

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v10}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getPk()[B

    move-result-object v10

    const/16 v17, 0x20

    const/16 v19, 0x0

    array-length v0, v9

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v10, v0, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v10, v11, [S

    invoke-static {v10, v9, v11, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    const/16 v9, 0x20

    new-array v9, v9, [B

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getPk()[B

    move-result-object v17

    const/16 v19, 0x0

    const/16 v20, 0x0

    array-length v0, v9

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-static {v0, v1, v9, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v11, [S

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v0, v9, v11, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->generatePolynomialInRQFromSeed([S[BII)V

    const/4 v9, 0x1

    new-array v9, v9, [B

    const/16 v19, 0x0

    const/16 v20, 0x5

    aput-byte v20, v9, v19

    invoke-static {v9, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v9

    const/16 v19, 0x0

    array-length v0, v9

    move/from16 v20, v0

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v9, v0, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    new-array v0, v11, [I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-static {v0, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->expand([I[B)V

    new-array v0, v11, [B

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1, v11, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sortGenerateShortPolynomial([B[III)V

    new-array v8, v11, [S

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-static {v8, v0, v1, v11, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v9, v11, [S

    invoke-static {v9, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    new-array v8, v15, [B

    invoke-static {v8, v9, v11, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    new-array v9, v11, [S

    move-object/from16 v0, v20

    invoke-static {v9, v10, v0, v11, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    const/16 v8, 0x100

    new-array v8, v8, [B

    move-object v10, v4

    move v11, v7

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->top([B[S[BIII)V

    const/16 v4, 0x80

    new-array v4, v4, [B

    invoke-static {v4, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getTopEncodedPolynomial([B[B)V

    array-length v4, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v4, v6

    new-array v4, v4, [B

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, v5

    invoke-static {v5, v6, v4, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v6

    const/4 v7, 0x0

    array-length v8, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getHash()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v6, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x2

    aput-byte v8, v6, v7

    invoke-static {v6, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v4

    move-object/from16 v0, v16

    array-length v6, v0

    move-object/from16 v0, v18

    array-length v7, v0

    add-int/2addr v6, v7

    array-length v7, v4

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, v16

    array-length v9, v0

    move-object/from16 v0, v16

    invoke-static {v0, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, v18

    array-length v9, v0

    move-object/from16 v0, v18

    invoke-static {v0, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    move-object/from16 v0, v16

    array-length v8, v0

    move-object/from16 v0, v18

    array-length v9, v0

    add-int/2addr v8, v9

    array-length v9, v4

    div-int/lit8 v9, v9, 0x2

    invoke-static {v4, v7, v6, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getRho()[B

    move-result-object v7

    invoke-static {v5, v7, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->updateDiffMask([B[BI)V

    array-length v4, v5

    array-length v7, v6

    add-int/2addr v4, v7

    new-array v4, v4, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v5

    invoke-static {v5, v7, v4, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v7, 0x0

    array-length v5, v5

    array-length v8, v6

    invoke-static {v6, v7, v4, v5, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x1

    new-array v5, v5, [B

    const/4 v6, 0x0

    const/4 v7, 0x1

    aput-byte v7, v5, v6

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getSessionKeySize()I

    move-result v6

    div-int/lit8 v6, v6, 0x8

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    return-object v4

    :cond_0
    const/4 v4, -0x1

    goto :goto_0
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getRoundedPolynomialBytes()I

    move-result v0

    add-int/lit16 v0, v0, 0x80

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
