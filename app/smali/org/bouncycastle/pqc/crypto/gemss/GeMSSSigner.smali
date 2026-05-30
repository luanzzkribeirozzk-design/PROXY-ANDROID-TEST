.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 7

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    move-result-object v0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->NB_ITE:I

    add-int/lit8 v2, v2, -0x1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEnv:I

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->HFEm:I

    sub-int/2addr v3, v5

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    ushr-int/lit8 v1, v1, 0x3

    array-length v2, p1

    add-int/2addr v2, v1

    new-array v2, v2, [B

    array-length v3, p1

    invoke-static {p1, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->random:Ljava/security/SecureRandom;

    array-length v5, p1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    iget-object v6, v3, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    move-object v3, p1

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->signHFE_FeistelPatarin(Ljava/security/SecureRandom;[B[BII[B)V

    return-object v2
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->random:Ljava/security/SecureRandom;

    :goto_0
    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->privKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->random:Ljava/security/SecureRandom;

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSSigner;->pubKey:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPublicKeyParameters;->getPK()[B

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;->crypto_sign_open([B[B[B)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
