.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->sr:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 9

    const/16 v8, 0x20

    const/4 v7, 0x0

    check-cast p1, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getKyberPublicKey()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMGenerator;->generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;

    move-result-object v1

    new-instance v0, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    invoke-interface {v1}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getSecret()[B

    move-result-object v2

    array-length v3, v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    move-result v4

    add-int/2addr v3, v4

    new-array v3, v3, [B

    array-length v4, v2

    invoke-static {v2, v7, v3, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    new-instance v4, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;

    invoke-direct {v4}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;-><init>()V

    new-instance v5, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/params/X25519KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;)V

    invoke-virtual {v4, v5}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->init(Lorg/bouncycastle/crypto/KeyGenerationParameters;)V

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/generators/X25519KeyPairGenerator;->generateKeyPair()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPrivate()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v5

    array-length v2, v2

    invoke-virtual {v0, v5, v3, v2}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;->getPublic()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v4, 0x100

    invoke-direct {v2, v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    const-string v4, "\\.//^\\"

    invoke-static {v4}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v7, v5}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length v4, v3

    invoke-virtual {v2, v3, v7, v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v2, v3, v7, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    new-array v3, v8, [B

    invoke-virtual {v2, v3, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/SecretWithEncapsulation;->getEncapsulation()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v2
.end method
