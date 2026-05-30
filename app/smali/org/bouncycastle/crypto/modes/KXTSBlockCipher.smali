.class public Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;
.super Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;


# static fields
.field private static final RED_POLY_128:J = 0x87L

.field private static final RED_POLY_256:J = 0x425L

.field private static final RED_POLY_512:J = 0x125L


# instance fields
.field private final blockSize:I

.field private counter:I

.field private final reductionPolynomial:J

.field private final tw_current:[J

.field private final tw_init:[J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/DefaultBufferedBlockCipher;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->getReductionPolynomial(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    ushr-int/lit8 v0, v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    return-void
.end method

.method private static GF_double(J[J)V
    .locals 10

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_0
    array-length v4, p2

    if-ge v0, v4, :cond_0

    aget-wide v6, p2, v0

    const/16 v4, 0x3f

    ushr-long v4, v6, v4

    const/4 v8, 0x1

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    aput-wide v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    move-wide v2, v4

    goto :goto_0

    :cond_0
    aget-wide v4, p2, v1

    neg-long v2, v2

    and-long/2addr v2, p0

    xor-long/2addr v2, v4

    aput-wide v2, p2, v1

    return-void
.end method

.method protected static getReductionPolynomial(I)J
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only 128, 256, and 512 -bit block sizes supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const-wide/16 v0, 0x87

    :goto_0
    return-wide v0

    :sswitch_1
    const-wide/16 v0, 0x425

    goto :goto_0

    :sswitch_2
    const-wide/16 v0, 0x125

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
        0x40 -> :sswitch_2
    .end sparse-switch
.end method

.method private processBlocks([BI[BI)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Attempt to process too many blocks"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    iget-wide v2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->reductionPolynomial:J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->GF_double(J[J)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v3, v0, [B

    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {v2, v1, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v0, v4, :cond_1

    aget-byte v4, v3, v0

    add-int v5, p2, v0

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v3, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-ge v1, v0, :cond_2

    add-int v0, p4, v1

    aget-byte v4, v3, v1

    aget-byte v5, v2, v1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->reset()V

    const/4 v0, 0x0

    return v0
.end method

.method public getOutputSize(I)I
    .locals 0

    return p1
.end method

.method public getUpdateOutputSize(I)I
    .locals 0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5

    const/4 v4, 0x0

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameters passed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    array-length v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    if-eq v2, v3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Currently only support IVs of exactly one block"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    new-array v2, v2, [B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, v2, v4, v2, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1, p1, v0}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v4, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    return-void
.end method

.method public processByte(B[BI)I
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unsupported operation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processBytes([BII[BI)I
    .locals 3

    array-length v0, p1

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p4

    sub-int/2addr v0, p2

    if-ge v0, p3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    rem-int v0, p3, v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Partial blocks not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    add-int v1, p2, v0

    add-int v2, p5, v0

    invoke-direct {p0, p1, v1, p4, v2}, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->processBlocks([BI[BI)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->blockSize:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->cipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/BlockCipher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_current:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->tw_init:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v3, p0, Lorg/bouncycastle/crypto/modes/KXTSBlockCipher;->counter:I

    return-void
.end method
