.class public Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private final ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

.field private final params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    return-void
.end method

.method private cmov([B[BB)V
    .locals 5

    xor-int/lit8 v0, p3, -0x1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v1, v0

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-byte v2, p1, v0

    aget-byte v3, p2, v0

    aget-byte v4, p1, v0

    xor-int/2addr v3, v4

    and-int/2addr v3, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v4

    add-int/2addr v0, v4

    new-array v4, v0, [B

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->ntruPrivateKey:Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/ntru/NTRUPrivateKeyParameters;->privateKey:[B

    invoke-virtual {v0, p1, v5}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUOWCPA;->decrypt([B[B)Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;

    move-result-object v0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->rm:[B

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/ntru/OWCPADecryptResult;->fail:I

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v0, 0x100

    invoke-direct {v7, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    invoke-virtual {v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->getDigestSize()I

    move-result v0

    new-array v8, v0, [B

    array-length v0, v5

    invoke-virtual {v7, v5, v1, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v7, v8, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    move v0, v1

    :goto_0
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v9

    if-ge v0, v9, :cond_0

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->owcpaSecretKeyBytes()I

    move-result v9

    add-int/2addr v9, v0

    aget-byte v9, v3, v9

    aput-byte v9, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->prfKeyBytes()I

    move-result v3

    add-int/2addr v3, v0

    aget-byte v9, p1, v0

    aput-byte v9, v4, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v7}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->reset()V

    array-length v0, v4

    invoke-virtual {v7, v4, v1, v0}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v7, v5, v1}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    int-to-byte v0, v6

    invoke-direct {p0, v8, v5, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->cmov([B[BB)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sharedKeyBytes()I

    move-result v0

    invoke-static {v8, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v8}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-object v0
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUKEMExtractor;->params:Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUParameters;->parameterSet:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->ntruCiphertextBytes()I

    move-result v0

    return v0
.end method
