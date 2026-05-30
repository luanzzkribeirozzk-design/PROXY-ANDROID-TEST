.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretGenerator;


# instance fields
.field private final random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;->random:Ljava/security/SecureRandom;

    return-void
.end method


# virtual methods
.method public generateEncapsulated(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/SecretWithEncapsulation;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleRmBytes()I

    move-result v4

    new-array v4, v4, [B

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMGenerator;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleRm([B)Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->r()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v4

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;->m()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaMsgBytes()I

    move-result v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v5

    array-length v6, v5

    invoke-static {v5, v8, v3, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v1, v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->s3ToBytes(I)[B

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packTrinaryBytes()I

    move-result v6

    array-length v7, v5

    invoke-static {v5, v8, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    array-length v6, v3

    invoke-virtual {v5, v3, v8, v6}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->getDigestSize()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v5, v3, v8}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    check-cast p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPublicKeyParameters;->publicKey:[B

    invoke-virtual {v2, v4, v1, v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->encrypt(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;[B)[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes()I

    move-result v0

    invoke-static {v3, v8, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/util/SecretWithEncapsulationImpl;-><init>([B[B)V

    return-object v2
.end method
