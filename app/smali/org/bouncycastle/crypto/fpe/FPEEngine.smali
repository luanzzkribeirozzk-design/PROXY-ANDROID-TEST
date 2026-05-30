.class public abstract Lorg/bouncycastle/crypto/fpe/FPEEngine;
.super Ljava/lang/Object;


# instance fields
.field protected final baseCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field protected forEncryption:Z

.field protected fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/fpe/FPEEngine;->baseCipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-void
.end method

.method protected static toByteArray([S)[B
    .locals 4

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-eq v0, v2, :cond_0

    aget-short v2, p0, v0

    mul-int/lit8 v3, v0, 0x2

    invoke-static {v2, v1, v3}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected static toShortArray([B)[S
    .locals 3

    array-length v0, p0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "data must be an even number of bytes for a wide radix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    invoke-static {p0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToShort([BI)S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method protected abstract decryptBlock([BII[BI)I
.end method

.method protected abstract encryptBlock([BII[BI)I
.end method

.method public abstract getAlgorithmName()Ljava/lang/String;
.end method

.method public abstract init(ZLorg/bouncycastle/crypto/CipherParameters;)V
.end method

.method public processBlock([BII[BI)I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/fpe/FPEEngine;->fpeParameters:Lorg/bouncycastle/crypto/params/FPEParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "FPE engine not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input length cannot be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    if-nez p4, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "buffer value is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    array-length v0, p4

    add-int v1, p5, p3

    if-ge v0, v1, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/fpe/FPEEngine;->forEncryption:Z

    if-eqz v0, :cond_6

    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/FPEEngine;->encryptBlock([BII[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_6
    invoke-virtual/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/FPEEngine;->decryptBlock([BII[BI)I

    move-result v0

    goto :goto_0
.end method
