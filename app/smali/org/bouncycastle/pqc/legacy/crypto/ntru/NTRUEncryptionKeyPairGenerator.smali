.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 15

    const/4 v14, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v7, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v9, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dg:I

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v10, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget-boolean v11, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    const/4 v6, 0x0

    :cond_0
    :goto_0
    if-eqz v10, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v4

    invoke-static {v0, v8, v8, v11, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    const/4 v12, 0x3

    invoke-virtual {v5, v12}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    iget-object v12, v5, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    aget v13, v12, v14

    add-int/lit8 v13, v13, 0x1

    aput v13, v12, v14

    :cond_1
    invoke-virtual {v5, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v10, :cond_2

    new-instance v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v6, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    iget-object v1, v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    const/4 v2, 0x1

    aput v2, v1, v14

    :cond_2
    add-int/lit8 v1, v9, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v2

    invoke-static {v0, v9, v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v1

    invoke-virtual {v1, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->invertFq(I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v5, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult3(I)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->clear()V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clear()V

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v2

    invoke-direct {v1, v0, v4, v6, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getEncryptionParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    new-instance v0, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v0

    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    move v4, v3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v4

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v4, :cond_5

    add-int/lit8 v4, v8, -0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static {v0, v8, v4, v11, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->toIntegerPolynomial()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->invertF3()Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v4, v3, -0x1

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;->generateRandom(IIIIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    move-result-object v4

    goto :goto_2
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyPairGenerator;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    return-void
.end method
