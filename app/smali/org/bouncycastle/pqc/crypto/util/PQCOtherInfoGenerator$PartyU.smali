.class public Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;
.super Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartyU"
.end annotation


# instance fields
.field private aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

.field private encSE:Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/KEMParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V
    .locals 2

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V

    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyGenerationParameters;

    check-cast p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    invoke-direct {v1, p5, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->encSE:Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    invoke-direct {v1, p5, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyGenerationParameters;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->encSE:Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown KEMParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generate([B)Lorg/bouncycastle/crypto/util/DEROtherInfo;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->encSE:Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;

    invoke-interface {v1, p1}, Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;->extractSecret([B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPrivInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->build()Lorg/bouncycastle/crypto/util/DEROtherInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSuppPrivInfoPartA()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->aKp:Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->access$000(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0
.end method

.method public withSuppPubInfo([B)Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyU;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPubInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    return-object p0
.end method
