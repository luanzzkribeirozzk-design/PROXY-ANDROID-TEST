.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 15

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getP()I

    move-result v0

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getQ()I

    move-result v3

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getW()I

    move-result v1

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getRoundedPolynomialBytes()I

    move-result v7

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau0()I

    move-result v4

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getTau1()I

    move-result v5

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v8, 0x0

    const/4 v9, 0x4

    aput-byte v9, v2, v8

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getEncoded()[B

    move-result-object v8

    invoke-static {v2, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v8

    const/16 v2, 0x100

    new-array v2, v2, [B

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeKEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-static {v9, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomInputs(Ljava/security/SecureRandom;[B)V

    const/16 v9, 0x20

    new-array v9, v9, [B

    invoke-static {v9, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedInputs([B[B)V

    new-array v10, v0, [S

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getRoundEncA()[B

    move-result-object v11

    invoke-static {v10, v11, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    new-array v11, v0, [S

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimePublicKeyParameters;->getSeed()[B

    move-result-object v12

    invoke-static {v11, v12, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->generatePolynomialInRQFromSeed([S[BII)V

    const/4 v12, 0x1

    new-array v12, v12, [B

    const/4 v13, 0x0

    const/4 v14, 0x5

    aput-byte v14, v12, v13

    invoke-static {v12, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v12

    const/4 v13, 0x0

    array-length v14, v12

    div-int/lit8 v14, v14, 0x2

    invoke-static {v12, v13, v14}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    new-array v13, v0, [I

    invoke-static {v13, v12}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->expand([I[B)V

    new-array v12, v0, [B

    invoke-static {v12, v13, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sortGenerateShortPolynomial([B[III)V

    new-array v1, v0, [S

    invoke-static {v1, v11, v12, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v11, v0, [S

    invoke-static {v11, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    new-array v7, v7, [B

    invoke-static {v7, v11, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    new-array v1, v0, [S

    invoke-static {v1, v10, v12, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    const/16 v0, 0x100

    new-array v0, v0, [B

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->top([B[S[BIII)V

    const/16 v1, 0x80

    new-array v1, v1, [B

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getTopEncodedPolynomial([B[B)V

    array-length v0, v9

    array-length v2, v8

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    array-length v4, v9

    invoke-static {v9, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    array-length v3, v9

    array-length v4, v8

    div-int/lit8 v4, v4, 0x2

    invoke-static {v8, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x2

    aput-byte v4, v2, v3

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v0

    array-length v2, v7

    array-length v3, v1

    add-int/2addr v2, v3

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    new-array v2, v2, [B

    const/4 v3, 0x0

    const/4 v4, 0x0

    array-length v5, v7

    invoke-static {v7, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v4, v7

    array-length v5, v1

    invoke-static {v1, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v3, 0x0

    array-length v4, v7

    array-length v1, v1

    add-int/2addr v1, v4

    array-length v4, v0

    div-int/lit8 v4, v4, 0x2

    invoke-static {v0, v3, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v9

    array-length v1, v2

    add-int/2addr v0, v1

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v3, 0x0

    array-length v4, v9

    invoke-static {v9, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    array-length v3, v9

    array-length v4, v2

    invoke-static {v2, v1, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-byte v4, v1, v3

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->getSessionKeySize()I

    move-result v3

    div-int/lit8 v3, v3, 0x8

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v1
.end method
