.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;


# direct methods
.method public constructor <init>([B)V
    .locals 6

    const/16 v5, 0x8

    const/16 v4, 0xa

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSBase;-><init>()V

    const/16 v0, 0x280

    new-array v2, v0, [B

    array-length v0, p1

    invoke-virtual {p0, p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->update([BII)V

    array-length v0, v2

    invoke-virtual {p0, v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->doFinal([BII)I

    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512_rc:[[J

    filled-new-array {v4, v5}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka256_rc:[[I

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka256_rc:[[I

    aget-object v1, v1, v0

    shl-int/lit8 v3, v0, 0x5

    invoke-virtual {p0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->interleaveConstant32([I[BI)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512_rc:[[J

    aget-object v1, v1, v0

    shl-int/lit8 v3, v0, 0x6

    invoke-virtual {p0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->interleaveConstant([J[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BII)I
    .locals 5

    const/16 v4, 0x20

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x1f

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    const/16 v1, 0x1f

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    move v0, p3

    :goto_0
    if-lt v0, v4, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512Perm([B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-static {v1, v3, p1, p2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p2, p2, 0x20

    add-int/lit8 v0, v0, -0x20

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512Perm([B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->reset()V

    return p3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Haraka-S"

    return-object v0
.end method

.method public update(B)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    aget-byte v2, v0, v1

    xor-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512Perm([B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 8

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    add-int/2addr v0, p3

    shr-int/lit8 v4, v0, 0x5

    move v2, v3

    move v0, p2

    :goto_0
    if-ge v2, v4, :cond_1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    const/16 v5, 0x20

    if-ge v1, v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    add-int/lit8 v1, v6, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    aget-byte v7, v5, v6

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    xor-int/2addr v0, v7

    int-to-byte v0, v0

    aput-byte v0, v5, v6

    move v0, v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->haraka512Perm([B)V

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    :goto_2
    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->buffer:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HarakaSXof;->off:I

    aget-byte v4, v2, v3

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    xor-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    move v0, v1

    goto :goto_2

    :cond_2
    return-void
.end method
