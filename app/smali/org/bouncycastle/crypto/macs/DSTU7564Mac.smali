.class public Lorg/bouncycastle/crypto/macs/DSTU7564Mac;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;


# static fields
.field private static final BITS_IN_BYTE:I = 0x8


# instance fields
.field private engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

.field private inputLength:J

.field private invertedKey:[B

.field private macSize:I

.field private paddedKey:[B


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-direct {v0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->macSize:I

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    return-void
.end method

.method private pad()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    int-to-long v4, v1

    rem-long/2addr v2, v4

    long-to-int v1, v2

    sub-int/2addr v0, v1

    const/16 v1, 0xd

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    new-array v0, v0, [B

    const/16 v1, -0x80

    aput-byte v1, v0, v6

    iget-wide v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    const-wide/16 v4, 0x8

    mul-long/2addr v2, v4

    array-length v1, v0

    add-int/lit8 v1, v1, -0xc

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    array-length v2, v0

    invoke-virtual {v1, v0, v6, v2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    return-void
.end method

.method private padKey([B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    mul-int/2addr v0, v1

    array-length v1, p1

    sub-int v1, v0, v1

    const/16 v2, 0xd

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->getByteLength()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    array-length v1, p1

    mul-int/lit8 v1, v1, 0x8

    array-length v2, v0

    add-int/lit8 v2, v2, -0xc

    invoke-static {v1, v0, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->macSize:I

    if-ge v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->pad()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->doFinal([BI)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->reset()V

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "DSTU7564Mac"

    return-object v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->macSize:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->reset()V

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    array-length v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->padKey([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->invertedKey:[B

    aget-byte v4, v2, v0

    xor-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bad parameter passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    array-length v3, v3

    invoke-virtual {v0, v2, v1, v3}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    return-void
.end method

.method public reset()V
    .locals 4

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    array-length v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    :cond_0
    return-void
.end method

.method public update(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update(B)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    return-void
.end method

.method public update([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->paddedKey:[B

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->engine:Lorg/bouncycastle/crypto/digests/DSTU7564Digest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/DSTU7564Digest;->update([BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/macs/DSTU7564Mac;->inputLength:J

    return-void
.end method
