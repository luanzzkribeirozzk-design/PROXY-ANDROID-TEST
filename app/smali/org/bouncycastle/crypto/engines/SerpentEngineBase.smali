.class public abstract Lorg/bouncycastle/crypto/engines/SerpentEngineBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field static final PHI:I = -0x61c88647

.field static final ROUNDS:I = 0x20


# instance fields
.field protected encrypting:Z

.field protected keyBits:I

.field protected wKey:[I


# direct methods
.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method private getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    :goto_0
    return-object v0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_0
.end method

.method protected static rotateLeft(II)I
    .locals 2

    shl-int v0, p0, p1

    neg-int v1, p1

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method protected static rotateRight(II)I
    .locals 2

    ushr-int v0, p0, p1

    neg-int v1, p1

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected final LT([I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    aget v0, p1, v7

    const/16 v1, 0xd

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v0

    aget v1, p1, v8

    invoke-static {v1, v6}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v1

    aget v2, p1, v5

    xor-int/2addr v2, v0

    xor-int/2addr v2, v1

    aget v3, p1, v6

    xor-int/2addr v3, v1

    shl-int/lit8 v4, v0, 0x3

    xor-int/2addr v3, v4

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v2

    aput v2, p1, v5

    const/4 v2, 0x7

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v2

    aput v2, p1, v6

    aget v2, p1, v5

    xor-int/2addr v0, v2

    aget v2, p1, v6

    xor-int/2addr v0, v2

    const/4 v2, 0x5

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v0

    aput v0, p1, v7

    aget v0, p1, v6

    xor-int/2addr v0, v1

    aget v1, p1, v5

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateLeft(II)I

    move-result v0

    aput v0, p1, v8

    return-void
.end method

.method protected abstract decryptBlock([BI[BI)V
.end method

.method protected abstract encryptBlock([BI[BI)V
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Serpent"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method protected final ib0([IIIII)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    xor-int/lit8 v0, p2, -0x1

    xor-int v1, p2, p3

    or-int v2, v0, v1

    xor-int/2addr v2, p5

    xor-int v3, p4, v2

    xor-int v4, v1, v3

    aput v4, p1, v6

    and-int/2addr v1, p5

    xor-int/2addr v0, v1

    aget v1, p1, v6

    and-int/2addr v1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v5

    and-int v1, p2, v2

    aget v2, p1, v5

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v7

    const/4 v1, 0x0

    aget v2, p1, v7

    xor-int/2addr v0, v3

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method

.method protected final ib1([IIIII)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x3

    xor-int v0, p3, p5

    and-int v1, p3, v0

    xor-int/2addr v1, p2

    xor-int v2, v0, v1

    xor-int v3, p4, v2

    aput v3, p1, v4

    and-int/2addr v0, v1

    xor-int/2addr v0, p3

    aget v3, p1, v4

    or-int/2addr v3, v0

    xor-int/2addr v1, v3

    aput v1, p1, v5

    aget v1, p1, v5

    xor-int/lit8 v1, v1, -0x1

    aget v3, p1, v4

    xor-int/2addr v0, v3

    const/4 v3, 0x0

    xor-int v4, v1, v0

    aput v4, p1, v3

    const/4 v3, 0x2

    or-int/2addr v0, v1

    xor-int/2addr v0, v2

    aput v0, p1, v3

    return-void
.end method

.method protected final ib2([IIIII)V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x0

    xor-int v0, p3, p5

    xor-int/lit8 v1, v0, -0x1

    xor-int v2, p2, p4

    xor-int v3, p4, v0

    and-int v4, p3, v3

    xor-int/2addr v4, v2

    aput v4, p1, v5

    or-int/2addr v1, p2

    xor-int/2addr v1, p5

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v6

    xor-int/lit8 v0, v3, -0x1

    aget v1, p1, v5

    aget v3, p1, v6

    or-int/2addr v1, v3

    const/4 v3, 0x1

    xor-int v4, v0, v1

    aput v4, p1, v3

    const/4 v3, 0x2

    and-int/2addr v0, p5

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v3

    return-void
.end method

.method protected final ib3([IIIII)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x0

    or-int v0, p2, p3

    xor-int v1, p3, p4

    and-int v2, p3, v1

    xor-int/2addr v2, p2

    xor-int v3, p4, v2

    or-int v4, p5, v2

    xor-int v5, v1, v4

    aput v5, p1, v6

    or-int/2addr v1, v4

    xor-int/2addr v1, p5

    const/4 v4, 0x2

    xor-int/2addr v3, v1

    aput v3, p1, v4

    xor-int/2addr v0, v1

    aget v1, p1, v6

    and-int/2addr v1, v0

    xor-int/2addr v1, v2

    aput v1, p1, v7

    const/4 v1, 0x1

    aget v2, p1, v7

    aget v3, p1, v6

    xor-int/2addr v0, v3

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method

.method protected final ib4([IIIII)V
    .locals 6

    const/4 v4, 0x3

    const/4 v5, 0x1

    or-int v0, p4, p5

    and-int/2addr v0, p2

    xor-int/2addr v0, p3

    and-int v1, p2, v0

    xor-int/2addr v1, p4

    xor-int v2, p5, v1

    aput v2, p1, v5

    xor-int/lit8 v2, p2, -0x1

    aget v3, p1, v5

    and-int/2addr v1, v3

    xor-int/2addr v1, v0

    aput v1, p1, v4

    aget v1, p1, v5

    or-int/2addr v1, v2

    xor-int/2addr v1, p5

    const/4 v3, 0x0

    aget v4, p1, v4

    xor-int/2addr v4, v1

    aput v4, p1, v3

    const/4 v3, 0x2

    and-int/2addr v0, v1

    aget v1, p1, v5

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v3

    return-void
.end method

.method protected final ib5([IIIII)V
    .locals 6

    const/4 v4, 0x3

    xor-int/lit8 v0, p4, -0x1

    and-int v1, p3, v0

    xor-int/2addr v1, p5

    and-int v2, p2, v1

    xor-int v3, p3, v0

    xor-int/2addr v3, v2

    aput v3, p1, v4

    aget v3, p1, v4

    or-int/2addr v3, p3

    and-int v4, p2, v3

    const/4 v5, 0x1

    xor-int/2addr v1, v4

    aput v1, p1, v5

    or-int v1, p2, p5

    xor-int/2addr v0, v3

    const/4 v3, 0x0

    xor-int/2addr v0, v1

    aput v0, p1, v3

    const/4 v0, 0x2

    and-int/2addr v1, p3

    xor-int v3, p2, p4

    or-int/2addr v2, v3

    xor-int/2addr v1, v2

    aput v1, p1, v0

    return-void
.end method

.method protected final ib6([IIIII)V
    .locals 7

    const/4 v6, 0x3

    xor-int/lit8 v0, p2, -0x1

    xor-int v1, p2, p3

    xor-int v2, p4, v1

    or-int v3, p4, v0

    xor-int/2addr v3, p5

    const/4 v4, 0x1

    xor-int v5, v2, v3

    aput v5, p1, v4

    and-int v4, v2, v3

    xor-int/2addr v1, v4

    or-int v4, p3, v1

    xor-int/2addr v3, v4

    aput v3, p1, v6

    aget v3, p1, v6

    or-int/2addr v3, p3

    const/4 v4, 0x0

    xor-int/2addr v1, v3

    aput v1, p1, v4

    const/4 v1, 0x2

    and-int/2addr v0, p5

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method

.method protected final ib7([IIIII)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x1

    and-int v0, p2, p3

    or-int/2addr v0, p4

    or-int v1, p2, p3

    and-int/2addr v1, p5

    xor-int v2, v0, v1

    aput v2, p1, v5

    xor-int/lit8 v2, p5, -0x1

    xor-int/2addr v1, p3

    aget v3, p1, v5

    xor-int/2addr v2, v3

    or-int/2addr v2, v1

    xor-int/2addr v2, p2

    aput v2, p1, v4

    xor-int/2addr v1, p4

    aget v2, p1, v4

    or-int/2addr v2, p5

    xor-int/2addr v1, v2

    aput v1, p1, v6

    const/4 v1, 0x2

    aget v2, p1, v4

    xor-int/2addr v0, v2

    aget v2, p1, v6

    aget v3, p1, v5

    and-int/2addr v3, p2

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->makeWorkingKey([B)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v1, v2, v0, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final inverseLT([I)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x3

    const/4 v5, 0x1

    aget v0, p1, v8

    const/16 v1, 0x16

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v0

    aget v1, p1, v6

    xor-int/2addr v0, v1

    aget v1, p1, v5

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    aget v1, p1, v7

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v1

    aget v2, p1, v5

    xor-int/2addr v1, v2

    aget v2, p1, v6

    xor-int/2addr v1, v2

    aget v2, p1, v6

    const/4 v3, 0x7

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v2

    aget v3, p1, v5

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v3

    xor-int/2addr v2, v0

    shl-int/lit8 v4, v1, 0x3

    xor-int/2addr v2, v4

    aput v2, p1, v6

    xor-int v2, v3, v1

    xor-int/2addr v2, v0

    aput v2, p1, v5

    invoke-static {v0, v6}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v0

    aput v0, p1, v8

    const/16 v0, 0xd

    invoke-static {v1, v0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->rotateRight(II)I

    move-result v0

    aput v0, p1, v7

    return-void
.end method

.method protected abstract makeWorkingKey([B)[I
.end method

.method public final processBlock([BI[BI)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->wKey:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->getAlgorithmName()Ljava/lang/String;

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
    add-int/lit8 v0, p2, 0x10

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v0, p4, 0x10

    array-length v1, p3

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encrypting:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->encryptBlock([BI[BI)V

    :goto_0
    const/16 v0, 0x10

    return v0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;->decryptBlock([BI[BI)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method protected final sb0([IIIII)V
    .locals 6

    const/4 v5, 0x3

    xor-int v0, p2, p5

    xor-int v1, p4, v0

    xor-int v2, p3, v1

    and-int v3, p2, p5

    xor-int/2addr v3, v2

    aput v3, p1, v5

    and-int/2addr v0, p3

    xor-int/2addr v0, p2

    const/4 v3, 0x2

    or-int v4, p4, v0

    xor-int/2addr v2, v4

    aput v2, p1, v3

    aget v2, p1, v5

    xor-int v3, v1, v0

    and-int/2addr v2, v3

    const/4 v3, 0x1

    xor-int/lit8 v1, v1, -0x1

    xor-int/2addr v1, v2

    aput v1, p1, v3

    const/4 v1, 0x0

    xor-int/lit8 v0, v0, -0x1

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method

.method protected final sb1([IIIII)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x2

    xor-int/lit8 v0, p2, -0x1

    xor-int/2addr v0, p3

    or-int v1, p2, v0

    xor-int/2addr v1, p4

    xor-int v2, p5, v1

    aput v2, p1, v3

    or-int v2, p5, v0

    xor-int/2addr v2, p3

    aget v3, p1, v3

    xor-int/2addr v0, v3

    and-int v3, v1, v2

    xor-int/2addr v3, v0

    aput v3, p1, v4

    xor-int/2addr v2, v1

    const/4 v3, 0x1

    aget v4, p1, v4

    xor-int/2addr v4, v2

    aput v4, p1, v3

    const/4 v3, 0x0

    and-int/2addr v0, v2

    xor-int/2addr v0, v1

    aput v0, p1, v3

    return-void
.end method

.method protected final sb2([IIIII)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    xor-int/lit8 v0, p2, -0x1

    xor-int v1, p3, p5

    and-int v2, p4, v0

    xor-int/2addr v2, v1

    aput v2, p1, v5

    xor-int v2, p4, v0

    aget v3, p1, v5

    xor-int/2addr v3, p4

    and-int/2addr v3, p3

    xor-int v4, v2, v3

    aput v4, p1, v7

    or-int/2addr v3, p5

    aget v4, p1, v5

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    xor-int/2addr v2, p2

    aput v2, p1, v6

    const/4 v2, 0x1

    aget v3, p1, v7

    xor-int/2addr v1, v3

    aget v3, p1, v6

    or-int/2addr v0, p5

    xor-int/2addr v0, v3

    xor-int/2addr v0, v1

    aput v0, p1, v2

    return-void
.end method

.method protected final sb3([IIIII)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    xor-int v0, p2, p3

    and-int v1, p2, p4

    or-int v2, p2, p5

    xor-int v3, p4, p5

    and-int v4, v0, v2

    or-int/2addr v1, v4

    xor-int v4, v3, v1

    aput v4, p1, v6

    xor-int/2addr v2, p3

    xor-int/2addr v1, v2

    and-int v2, v3, v1

    xor-int/2addr v0, v2

    aput v0, p1, v5

    aget v0, p1, v6

    aget v2, p1, v5

    and-int/2addr v0, v2

    const/4 v2, 0x1

    xor-int/2addr v1, v0

    aput v1, p1, v2

    const/4 v1, 0x3

    or-int v2, p3, p5

    xor-int/2addr v0, v3

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method

.method protected final sb4([IIIII)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x0

    xor-int v0, p2, p5

    and-int v1, p5, v0

    xor-int/2addr v1, p4

    or-int v2, p3, v1

    const/4 v3, 0x3

    xor-int v4, v0, v2

    aput v4, p1, v3

    xor-int/lit8 v3, p3, -0x1

    or-int v4, v0, v3

    xor-int/2addr v4, v1

    aput v4, p1, v5

    aget v4, p1, v5

    and-int/2addr v4, p2

    xor-int/2addr v0, v3

    and-int/2addr v2, v0

    xor-int/2addr v2, v4

    aput v2, p1, v6

    const/4 v2, 0x1

    xor-int/2addr v1, p2

    aget v3, p1, v6

    and-int/2addr v0, v3

    xor-int/2addr v0, v1

    aput v0, p1, v2

    return-void
.end method

.method protected final sb5([IIIII)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    xor-int/lit8 v0, p2, -0x1

    xor-int v1, p2, p3

    xor-int v2, p2, p5

    xor-int v3, p4, v0

    or-int v4, v1, v2

    xor-int/2addr v3, v4

    aput v3, p1, v5

    aget v3, p1, v5

    and-int/2addr v3, p5

    aget v4, p1, v5

    xor-int/2addr v4, v1

    xor-int/2addr v4, v3

    aput v4, p1, v6

    aget v4, p1, v5

    or-int/2addr v0, v4

    or-int/2addr v1, v3

    xor-int/2addr v0, v2

    const/4 v2, 0x2

    xor-int/2addr v1, v0

    aput v1, p1, v2

    const/4 v1, 0x3

    xor-int v2, p3, v3

    aget v3, p1, v6

    and-int/2addr v0, v3

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method

.method protected final sb6([IIIII)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    xor-int/lit8 v0, p2, -0x1

    xor-int v1, p2, p5

    xor-int v2, p3, v1

    or-int/2addr v0, v1

    xor-int/2addr v0, p4

    xor-int v3, p3, v0

    aput v3, p1, v4

    aget v3, p1, v4

    or-int/2addr v1, v3

    xor-int/2addr v1, p5

    and-int v3, v0, v1

    xor-int/2addr v3, v2

    aput v3, p1, v5

    xor-int/2addr v1, v0

    const/4 v3, 0x0

    aget v4, p1, v5

    xor-int/2addr v4, v1

    aput v4, p1, v3

    const/4 v3, 0x3

    xor-int/lit8 v0, v0, -0x1

    and-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p1, v3

    return-void
.end method

.method protected final sb7([IIIII)V
    .locals 7

    const/4 v6, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x3

    xor-int v0, p3, p4

    and-int v1, p4, v0

    xor-int/2addr v1, p5

    xor-int v2, p2, v1

    or-int v3, p5, v0

    and-int/2addr v3, v2

    xor-int/2addr v3, p3

    aput v3, p1, v4

    aget v3, p1, v4

    or-int/2addr v3, v1

    and-int v4, p2, v2

    xor-int/2addr v0, v4

    aput v0, p1, v5

    xor-int v0, v2, v3

    aget v2, p1, v5

    and-int/2addr v2, v0

    xor-int/2addr v1, v2

    aput v1, p1, v6

    const/4 v1, 0x0

    xor-int/lit8 v0, v0, -0x1

    aget v2, p1, v5

    aget v3, p1, v6

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    aput v0, p1, v1

    return-void
.end method
