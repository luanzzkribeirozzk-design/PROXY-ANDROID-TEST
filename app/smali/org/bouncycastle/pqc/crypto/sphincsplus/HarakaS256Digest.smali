.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka256_rc:[[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->haraka256_rc:[[I

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7

    const/16 v6, 0x20

    const/4 v1, 0x0

    new-array v0, v6, [B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->haraka256Perm([B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->buffer:[B

    move v3, v1

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->xor([BI[BI[BII)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->reset()V

    array-length v0, p1

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "HarakaS-256"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    const/16 v1, 0x1f

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "total input cannot be more than 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    rsub-int/lit8 v1, p3, 0x20

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "total input cannot be more than 32 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS256Digest;->off:I

    return-void
.end method
