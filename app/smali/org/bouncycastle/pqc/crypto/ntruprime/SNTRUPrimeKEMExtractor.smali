.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getP()I

    move-result v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getQ()I

    move-result v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getW()I

    move-result v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getRoundedPolynomialBytes()I

    move-result v5

    new-array v6, v0, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getF()[B

    move-result-object v7

    invoke-static {v6, v7, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedSmallPolynomial([B[BI)V

    new-array v7, v0, [B

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getGinv()[B

    move-result-object v8

    invoke-static {v7, v8, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedSmallPolynomial([B[BI)V

    new-array v8, v0, [S

    invoke-static {v8, p1, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedDecodedPolynomial([S[BII)V

    new-array v9, v0, [S

    invoke-static {v9, v8, v6, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v6, v0, [S

    invoke-static {v6, v9, v11, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->scalarMultiplicationInRQ([S[SII)V

    new-array v8, v0, [B

    invoke-static {v8, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->transformRQToR3([B[S)V

    new-array v6, v0, [B

    invoke-static {v6, v8, v7, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInR3([B[B[BI)V

    new-array v7, v0, [B

    invoke-static {v7, v6, v0, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkForSmallPolynomial([B[BII)V

    add-int/lit8 v4, v0, 0x3

    div-int/lit8 v4, v4, 0x4

    new-array v4, v4, [B

    invoke-static {v4, v7, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getEncodedSmallPolynomial([B[BI)V

    new-array v6, v0, [S

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getPk()[B

    move-result-object v8

    invoke-static {v6, v8, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getDecodedPolynomial([S[BII)V

    new-array v8, v0, [S

    invoke-static {v8, v6, v7, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->multiplicationInRQ([S[S[BII)V

    new-array v6, v0, [S

    invoke-static {v6, v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->roundPolynomial([S[S)V

    new-array v5, v5, [B

    invoke-static {v5, v6, v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRoundedEncodedPolynomial([B[SII)V

    new-array v0, v10, [B

    aput-byte v11, v0, v1

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v0

    array-length v3, v0

    div-int/lit8 v3, v3, 0x2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v6

    array-length v6, v6

    add-int/2addr v3, v6

    new-array v3, v3, [B

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-static {v0, v1, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v6

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getHash()[B

    move-result-object v7

    array-length v7, v7

    invoke-static {v6, v1, v3, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, v10, [B

    const/4 v6, 0x2

    aput-byte v6, v0, v1

    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v0

    array-length v3, v5

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    new-array v3, v3, [B

    array-length v6, v5

    invoke-static {v5, v1, v3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    array-length v6, v0

    div-int/lit8 v6, v6, 0x2

    invoke-static {v0, v1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p1, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getRho()[B

    move-result-object v5

    invoke-static {v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->updateDiffMask([B[BI)V

    new-array v5, v10, [B

    aput-byte v11, v5, v1

    invoke-static {v5, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v4

    array-length v5, v4

    div-int/lit8 v5, v5, 0x2

    array-length v6, v3

    add-int/2addr v5, v6

    new-array v5, v5, [B

    array-length v6, v4

    div-int/lit8 v6, v6, 0x2

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    div-int/lit8 v4, v4, 0x2

    array-length v6, v3

    invoke-static {v3, v1, v5, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v3, v10, [B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, v3, v1

    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getHashWithPrefix([B[B)[B

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getSessionKeySize()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeKEMExtractor;->privateKey:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimePrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->getRoundedPolynomialBytes()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
