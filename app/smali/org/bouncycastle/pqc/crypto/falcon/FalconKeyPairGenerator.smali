.class public Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private logn:I

.field private nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

.field private noncelen:I

.field private params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

.field private pk_size:I

.field private random:Ljava/security/SecureRandom;

.field private sk_size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    invoke-virtual {v2, v0, v7, v1, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;->crypto_sign_keypair([BI[BI)[[B

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    const/4 v3, 0x2

    aget-object v3, v6, v3

    const/4 v4, 0x3

    aget-object v4, v6, v4

    aget-object v5, v6, v7

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B[B[B[B)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;

    aget-object v3, v6, v7

    invoke-direct {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;[B)V

    new-instance v1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->params:Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->random:Ljava/security/SecureRandom;

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getLogN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    check-cast p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconParameters;->getNonceLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->noncelen:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->noncelen:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;-><init>(IILjava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->nist:Lorg/bouncycastle/pqc/crypto/falcon/FalconNIST;

    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->logn:I

    shl-int v1, v0, v1

    const/16 v0, 0x8

    const/16 v2, 0x400

    if-ne v1, v2, :cond_1

    const/4 v0, 0x5

    :cond_0
    :goto_0
    mul-int/lit8 v2, v1, 0xe

    div-int/lit8 v2, v2, 0x8

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->pk_size:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconKeyPairGenerator;->sk_size:I

    return-void

    :cond_1
    const/16 v2, 0x100

    if-eq v1, v2, :cond_2

    const/16 v2, 0x200

    if-ne v1, v2, :cond_3

    :cond_2
    const/4 v0, 0x6

    goto :goto_0

    :cond_3
    const/16 v2, 0x40

    if-eq v1, v2, :cond_4

    const/16 v2, 0x80

    if-ne v1, v2, :cond_0

    :cond_4
    const/4 v0, 0x7

    goto :goto_0
.end method
