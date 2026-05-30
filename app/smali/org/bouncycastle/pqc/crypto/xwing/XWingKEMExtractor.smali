.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final kemExtractor:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

.field private final key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getKyberPrivateKey()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPrivateKeyParameters;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->kemExtractor:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 8

    const/16 v7, 0x20

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->kemExtractor:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x20

    invoke-static {p1, v6, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->extractSecret([B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/agreement/X25519Agreement;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;-><init>()V

    array-length v2, v0

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->getAgreementSize()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [B

    array-length v3, v0

    invoke-static {v0, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getXDHPrivateKey()Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    new-instance v3, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    array-length v4, p1

    add-int/lit8 v4, v4, -0x20

    array-length v5, p1

    invoke-static {p1, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([B)V

    array-length v0, v0

    invoke-virtual {v1, v3, v2, v0}, Lorg/bouncycastle/crypto/agreement/X25519Agreement;->calculateAgreement(Lorg/bouncycastle/crypto/CipherParameters;[BI)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    const-string v1, "\\.//^\\"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v6, v4}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length v1, v2

    invoke-virtual {v0, v2, v6, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/xwing/XWingPrivateKeyParameters;->getXDHPrivateKey()Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-virtual {v0, v1, v6, v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    new-array v1, v7, [B

    invoke-virtual {v0, v1, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    return-object v1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingKEMExtractor;->kemExtractor:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberKEMExtractor;->getEncapsulationLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    return v0
.end method
