.class public Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private N_BYTE:I

.field private delta:I

.field private hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

.field private k:I

.field private n:I

.field private random:Ljava/security/SecureRandom;

.field private w:I

.field private we:I

.field private wr:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->N_BYTE:I

    add-int/lit8 v1, v1, 0x28

    new-array v1, v1, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->N_BYTE:I

    add-int/lit8 v2, v2, 0x50

    new-array v2, v2, [B

    invoke-virtual {v0, v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->genKeyPair([B[B[B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v3

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v3

    invoke-direct {v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/hqc/HQCPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;[B)V

    new-instance v2, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v2
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 2

    const/16 v0, 0x30

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->genKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public generateKeyPairWithSeed([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->genKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->random:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getN()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->n:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getK()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->k:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getDelta()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->delta:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getW()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->w:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getWr()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->wr:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->hqcKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCParameters;->getWe()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->we:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->n:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCKeyPairGenerator;->N_BYTE:I

    return-void
.end method
