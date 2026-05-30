.class public Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;
.super Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PartyV"
.end annotation


# instance fields
.field private encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/KEMParameters;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V
    .locals 2

    invoke-direct {p0, p2, p3, p4, p5}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B[BLjava/security/SecureRandom;)V

    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown KEMParameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public generate()Lorg/bouncycastle/crypto/util/DEROtherInfo;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->used:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "builder already used"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->used:Z

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->build()Lorg/bouncycastle/crypto/util/DEROtherInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSuppPrivInfoPartB([B)[B
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->used:Z

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->encSG:Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;->access$100([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPrivInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot decode public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withSuppPubInfo([B)Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/util/PQCOtherInfoGenerator$PartyV;->otherInfoBuilder:Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;->withSuppPubInfo([B)Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;

    return-object p0
.end method
