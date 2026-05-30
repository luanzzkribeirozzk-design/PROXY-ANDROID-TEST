.class public Lorg/bouncycastle/crypto/engines/CryptoProWrapEngine;
.super Lorg/bouncycastle/crypto/engines/GOST28147WrapEngine;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/GOST28147WrapEngine;-><init>()V

    return-void
.end method

.method private static bitSet(BI)Z
    .locals 2

    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static cryptoProDiversify([B[B[B)[B
    .locals 11

    const/16 v10, 0x18

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-eq v4, v8, :cond_2

    move v2, v3

    move v0, v3

    move v1, v3

    :goto_1
    if-eq v2, v8, :cond_1

    mul-int/lit8 v5, v2, 0x4

    invoke-static {p0, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    aget-byte v6, p1, v4

    invoke-static {v6, v2}, Lorg/bouncycastle/crypto/engines/CryptoProWrapEngine;->bitSet(BI)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/2addr v1, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/2addr v0, v5

    goto :goto_2

    :cond_1
    new-array v2, v8, [B

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    const/4 v1, 0x4

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    new-instance v0, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/GOST28147Engine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/GOST28147Engine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/4 v1, 0x1

    new-instance v5, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v6, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    new-instance v7, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v7, p0}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v6, v7, p2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-direct {v5, v6, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v1, v5}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-virtual {v0, p0, v3, p0, v3}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    invoke-virtual {v0, p0, v8, p0, v8}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    invoke-virtual {v0, p0, v9, p0, v9}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    invoke-virtual {v0, p0, v10, p0, v10}, Lorg/bouncycastle/crypto/modes/GCFBBlockCipher;->processBlock([BI[BI)I

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-object p0
.end method


# virtual methods
.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :goto_0
    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithUKM;

    const/4 v2, 0x0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;->getSBox()[B

    move-result-object v2

    :goto_1
    new-instance v3, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v4

    invoke-static {v1, v4, v2}, Lorg/bouncycastle/crypto/engines/CryptoProWrapEngine;->cryptoProDiversify([B[B[B)[B

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    if-eqz v2, :cond_1

    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithUKM;

    new-instance v4, Lorg/bouncycastle/crypto/params/ParametersWithSBox;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/crypto/params/ParametersWithSBox;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v0

    invoke-direct {v1, v4, v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-super {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/GOST28147WrapEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    :goto_2
    return-void

    :cond_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_1

    :cond_1
    new-instance v1, Lorg/bouncycastle/crypto/params/ParametersWithUKM;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;->getUKM()[B

    move-result-object v0

    invoke-direct {v1, v3, v0}, Lorg/bouncycastle/crypto/params/ParametersWithUKM;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-super {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/GOST28147WrapEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    goto :goto_2

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method
