.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512_rc:[[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->haraka512_rc:[[J

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 11

    const/16 v10, 0x30

    const/16 v9, 0x18

    const/16 v1, 0x8

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->haraka512Perm([B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    move v3, v1

    move-object v4, p1

    move v5, p2

    move v6, v1

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->xor([BI[BI[BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    add-int/lit8 v7, p2, 0x8

    const/16 v8, 0x10

    move-object v2, v0

    move v3, v9

    move v5, v9

    move-object v6, p1

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->xor([BI[BI[BII)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    add-int/lit8 v7, p2, 0x18

    move-object v2, v0

    move v3, v10

    move v5, v10

    move-object v6, p1

    move v8, v1

    invoke-static/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->xor([BI[BI[BII)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->reset()V

    array-length v0, v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "HarakaS-512"

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

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    const/16 v1, 0x3f

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "total input cannot be more than 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    rsub-int/lit8 v1, p3, 0x40

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "total input cannot be more than 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaS512Digest;->off:I

    return-void
.end method
