.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;
.super Ljava/lang/Object;


# instance fields
.field private counter:I

.field private hashAlg:Lorg/bouncycastle/crypto/Digest;

.field private seed:[B


# direct methods
.method constructor <init>([BLorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->counter:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->seed:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method


# virtual methods
.method nextBytes(I)[B
    .locals 6

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->seed:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->seed:[B

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->counter:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v2, v2, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    array-length v4, v1

    invoke-interface {v3, v1, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v2, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v3, v2

    if-ge v1, v3, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v2, v5, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->counter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSignerPrng;->counter:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method
