.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;
.super Ljava/security/SecureRandom;


# instance fields
.field private hashAlgo:Lorg/bouncycastle/crypto/Digest;

.field private key:[B

.field private seed:[B

.field private v:[B


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/security/SecureRandom;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->init(I)V

    return-void
.end method

.method private AES256_CTR_DRBG_Update([B[B[B)V
    .locals 7

    const/16 v6, 0x30

    const/4 v1, 0x0

    new-array v3, v6, [B

    move v2, v1

    :goto_0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_2

    const/16 v0, 0xf

    :goto_1
    if-ltz v0, :cond_1

    aget-byte v4, p3, v0

    and-int/lit16 v4, v4, 0xff

    const/16 v5, 0xff

    if-ne v4, v5, :cond_0

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    aget-byte v4, p3, v0

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    :cond_1
    mul-int/lit8 v0, v2, 0x10

    invoke-direct {p0, p2, p3, v3, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_3

    aget-byte v2, v3, v0

    aget-byte v4, p1, v0

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    array-length v0, p2

    invoke-static {v3, v1, p2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x20

    array-length v2, p3

    invoke-static {v3, v0, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private AES256_ECB([B[B[BI)V
    .locals 4

    :try_start_0
    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    const/4 v0, 0x1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/crypto/engines/AESEngine;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-eq v0, v2, :cond_0

    add-int v2, p4, v0

    invoke-virtual {v1, p2, v0, p3, v2}, Lorg/bouncycastle/crypto/engines/AESEngine;->processBlock([BI[BI)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x10

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drbg failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    return-void
.end method

.method private init(I)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    array-length v0, v0

    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->randombytes_init([BI)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    array-length v2, v2

    rsub-int/lit8 v2, v2, 0x30

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[BI)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->seed:[B

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->randombytes_init([BI)V

    goto :goto_0
.end method

.method private randombytes_init([BI)V
    .locals 3

    const/4 v2, 0x0

    const/16 v0, 0x30

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x20

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    const/16 v1, 0x10

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    return-void
.end method


# virtual methods
.method public nextBytes([B)V
    .locals 8

    const/16 v1, 0xf

    const/4 v3, 0x0

    const/16 v0, 0x10

    new-array v5, v0, [B

    array-length v0, p1

    move v2, v0

    move v4, v3

    :goto_0
    if-lez v2, :cond_3

    move v0, v1

    :goto_1
    if-ltz v0, :cond_1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    aget-byte v6, v6, v0

    and-int/lit16 v6, v6, 0xff

    const/16 v7, 0xff

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    aput-byte v3, v6, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    aget-byte v7, v6, v0

    add-int/lit8 v7, v7, 0x1

    int-to-byte v7, v7

    aput-byte v7, v6, v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-direct {p0, v0, v6, v5, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_ECB([B[B[BI)V

    if-le v2, v1, :cond_2

    array-length v0, v5

    invoke-static {v5, v3, p1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v4, 0x10

    add-int/lit8 v0, v2, -0x10

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-static {v5, v3, p1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->key:[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->v:[B

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;->AES256_CTR_DRBG_Update([B[B[B)V

    return-void
.end method
