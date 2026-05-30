.class public Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;
.super Lorg/bouncycastle/crypto/StreamBlockCipher;


# instance fields
.field private byteCount:I

.field private engine:Lorg/bouncycastle/crypto/BlockCipher;

.field private initialised:Z

.field private iv:[B

.field private ofbOutV:[B

.field private ofbV:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/StreamBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    return-void
.end method

.method private checkCounter()V
    .locals 0

    return-void
.end method

.method private incrementCounterAt(I)V
    .locals 3

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    add-int/lit8 v0, p1, 0x1

    aget-byte v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, p1

    if-eqz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move p1, v0

    goto :goto_0
.end method


# virtual methods
.method protected calculateByte(B)B
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    if-nez v0, :cond_1

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->incrementCounterAt(I)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->checkCounter()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbOutV:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iput v3, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/KCTR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iput-boolean v5, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->initialised:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    array-length v1, v1

    array-length v2, v0

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    invoke-static {v2, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    array-length v3, v0

    invoke-static {v0, v4, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, v5, v0}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->reset()V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameter passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBlock([BI[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p3

    sub-int/2addr v0, p4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->processBytes([BII[BI)I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->initialised:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->iv:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->ofbV:[B

    invoke-interface {v0, v1, v3, v2, v3}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->engine:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    iput v3, p0, Lorg/bouncycastle/crypto/modes/KCTRBlockCipher;->byteCount:I

    return-void
.end method
