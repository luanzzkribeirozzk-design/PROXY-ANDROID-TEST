.class public Lorg/bouncycastle/crypto/signers/Ed25519phSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Signer;


# instance fields
.field private final context:[B

.field private forSigning:Z

.field private final prehash:Lorg/bouncycastle/crypto/Digest;

.field private privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;


# direct methods
.method public constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->createPrehash()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->prehash:Lorg/bouncycastle/crypto/Digest;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'context\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->context:[B

    return-void
.end method


# virtual methods
.method public generateSignature()[B
    .locals 8

    const/4 v4, 0x0

    const/16 v5, 0x40

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->forSigning:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519phSigner not initialised for signature generation."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v3, v5, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->prehash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    if-eq v5, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prehash digest failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v6, v5, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->context:[B

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->sign(I[B[BII[BI)V

    return-object v6
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->forSigning:Z

    if-eqz p1, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    :goto_0
    const-string v0, "Ed25519"

    const/16 v1, 0x80

    invoke-static {v0, v1, p2, p1}, Lorg/bouncycastle/crypto/signers/Utils;->getDefaultProperties(Ljava/lang/String;ILorg/bouncycastle/crypto/CipherParameters;Z)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->reset()V

    return-void

    :cond_0
    iput-object v1, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->privateKey:Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->prehash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->prehash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->prehash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method public verifySignature([B)Z
    .locals 8

    const/16 v5, 0x40

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->forSigning:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Ed25519phSigner not initialised for verification"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    if-eq v5, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->prehash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    :goto_0
    return v4

    :cond_2
    new-array v3, v5, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->prehash:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-result v0

    if-eq v5, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Prehash digest failed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->publicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/crypto/signers/Ed25519phSigner;->context:[B

    move-object v6, p1

    move v7, v4

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->verify(I[B[BII[BI)Z

    move-result v4

    goto :goto_0
.end method
