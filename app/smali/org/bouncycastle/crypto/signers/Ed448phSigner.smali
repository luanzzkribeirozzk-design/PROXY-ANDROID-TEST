.class public Lorg/bouncycastle/crypto/signers/Ed448phSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# instance fields
.field private final context:[B

.field private forSigning:Z

.field private final prehash:Lorg/bouncycastle/crypto/Xof;

.field private privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->createPrehash()Lorg/bouncycastle/crypto/Xof;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'context\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->context:[B

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 8

    const/4 v4, 0x0

    const/16 v5, 0x40

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->forSigning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed448phSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v5, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v0

    if-eq v5, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prehash digest failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x72

    new-array v6, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->context:[B

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;->sign(I[B[BII[BI)V

    return-object v6
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->forSigning:Z

    if-eqz p1, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    :goto_0
    const-string v0, "Ed448"

    const/16 v1, 0xe0

    invoke-static {v0, v1, p2, p1}, Lorg/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->reset()V

    return-void

    :cond_0
    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed448PrivateKeyParameters;

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Xof;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 8

    const/16 v5, 0x40

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->forSigning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed448phSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 v0, 0x72

    array-length v1, p1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Xof;->reset()V

    :goto_0
    return v4

    :cond_2
    new-array v3, v5, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->prehash:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, v3, v4, v5}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-result v0

    if-eq v5, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prehash digest failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed448phSigner;->context:[B

    move-object v6, p1

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->verify(I[B[BII[BI)Z

    move-result v4

    goto :goto_0
.end method
