.class public Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final sr:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;->sr:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 6

    check-cast p1, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getLByte()I

    move-result v1

    new-array v3, v1, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getRByte()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getLByte()I

    move-result v2

    new-array v2, v2, [B

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->publicKey:[B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEKEMGenerator;->sr:Ljava/security/SecureRandom;

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->encaps([B[B[B[BLjava/security/SecureRandom;)V

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKEParameters;->getSessionKeySize()I

    move-result v4

    div-int/lit8 v4, v4, 0x8

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v1
.end method
