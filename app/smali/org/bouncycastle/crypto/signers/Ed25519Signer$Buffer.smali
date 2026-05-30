.class final Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;
.super Ljava/io/ByteArrayOutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/signers/Ed25519Signer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Buffer"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/signers/Ed25519Signer$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized generateSignature(Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;)[B
    .locals 8

    monitor-enter p0

    const/16 v0, 0x40

    :try_start_0
    new-array v6, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->buf:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I

    const/4 v7, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->sign(I[B[BII[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->buf:[B

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([BIIB)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized verifySignature(Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;[B)Z
    .locals 8

    const/4 v0, 0x0

    monitor-enter p0

    const/16 v1, 0x40

    :try_start_0
    array-length v2, p2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->buf:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->count:I

    const/4 v7, 0x0

    move-object v0, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->verify(I[B[BII[BI)Z

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/signers/Ed25519Signer$Buffer;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
