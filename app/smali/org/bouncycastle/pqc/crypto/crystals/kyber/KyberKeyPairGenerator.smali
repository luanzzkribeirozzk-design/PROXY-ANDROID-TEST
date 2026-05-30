.class public Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 9

    const/4 v8, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->generateKemKeyPair()[[B

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    aget-object v1, v6, v5

    aget-object v2, v6, v8

    invoke-direct {v7, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B[B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    const/4 v2, 0x2

    aget-object v2, v6, v2

    const/4 v3, 0x3

    aget-object v3, v6, v3

    const/4 v4, 0x4

    aget-object v4, v6, v4

    aget-object v5, v6, v5

    aget-object v6, v6, v8

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B[B[B[B[B)V

    new-instance v1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v7, v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method

.method private initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->kyberParams:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->initialize(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    return-void
.end method
