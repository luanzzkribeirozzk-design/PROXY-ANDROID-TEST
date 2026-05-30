.class public Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V

    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;)V
    .locals 4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v2

    if-ge v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->decompress_private_key([B)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/cmce/CMCEParameters;[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    :cond_0
    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getDefaultSessionKeySize()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->extractSecret([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public extractSecret([BI)[B
    .locals 3

    div-int/lit8 v0, p2, 0x8

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/cmce/CMCEKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v0

    invoke-virtual {v2, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->kem_dec([B[B[B)I

    return-object v1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getCipherTextSize()I

    move-result v0

    return v0
.end method
