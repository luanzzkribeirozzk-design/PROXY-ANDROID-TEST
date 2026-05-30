.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private encodedkey:[B

.field private nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->CRYPTO_BYTES:I

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    array-length v5, p1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    move-object v3, p1

    move v4, v1

    move v7, v1

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign(Z[B[BII[BI)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result v0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    :goto_0
    return-void

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    check-cast p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getEncoded()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result v0

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getH()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result v2

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    aget-byte v0, p2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->LOGN:I

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    if-eq v0, v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    new-array v3, v0, [B

    array-length v0, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    invoke-static {p2, v7, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    add-int/lit8 v0, v0, 0x1

    array-length v4, p2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->NONCELEN:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    invoke-static {p2, v0, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSigner;->encodedkey:[B

    move-object v4, p1

    move v6, v1

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign_open(Z[B[B[B[BI)I

    move-result v0

    if-nez v0, :cond_0

    move v1, v7

    goto :goto_0
.end method
