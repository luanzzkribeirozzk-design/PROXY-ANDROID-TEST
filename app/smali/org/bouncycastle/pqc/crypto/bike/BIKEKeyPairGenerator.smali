.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricCipherKeyPairGenerator;


# instance fields
.field private L_BYTE:I

.field private R_BYTE:I

.field private bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

.field private l:I

.field private r:I

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->R_BYTE:I

    new-array v1, v1, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->R_BYTE:I

    new-array v2, v2, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->R_BYTE:I

    new-array v4, v3, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->L_BYTE:I

    new-array v3, v3, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->genKeyPair([B[B[B[BLjava/security/SecureRandom;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v5

    invoke-direct {v0, v5, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;[B)V

    new-instance v4, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v5

    invoke-direct {v4, v5, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;[B[B[B)V

    new-instance v1, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-direct {v1, v0, v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;-><init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V

    return-object v1
.end method


# virtual methods
.method public generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->genKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->random:Ljava/security/SecureRandom;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getR()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->r:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->bikeKeyGenerationParameters:Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyGenerationParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getL()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->l:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->l:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->L_BYTE:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->r:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKeyPairGenerator;->R_BYTE:I

    return-void
.end method
