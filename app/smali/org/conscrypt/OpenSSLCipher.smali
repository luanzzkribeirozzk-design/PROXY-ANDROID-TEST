.class public abstract Lorg/conscrypt/OpenSSLCipher;
.super Ljavax/crypto/CipherSpi;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLCipher$Padding;,
        Lorg/conscrypt/OpenSSLCipher$Mode;
    }
.end annotation


# instance fields
.field private blockSize:I

.field encodedKey:[B

.field private encrypting:Z

.field iv:[B

.field mode:Lorg/conscrypt/OpenSSLCipher$Mode;

.field private padding:Lorg/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 98
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->ECB:Lorg/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 103
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->padding:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 127
    return-void
.end method

.method constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 1
    .param p1, "mode"    # Lorg/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lorg/conscrypt/OpenSSLCipher$Padding;

    .prologue
    .line 129
    invoke-direct {p0}, Ljavax/crypto/CipherSpi;-><init>()V

    .line 98
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->ECB:Lorg/conscrypt/OpenSSLCipher$Mode;

    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 103
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->padding:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 130
    iput-object p1, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 131
    iput-object p2, p0, Lorg/conscrypt/OpenSSLCipher;->padding:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 132
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->getCipherBlockSize()I

    move-result v0

    iput v0, p0, Lorg/conscrypt/OpenSSLCipher;->blockSize:I

    .line 133
    return-void
.end method

.method private checkAndSetEncodedKey(ILjava/security/Key;)[B
    .locals 4
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 462
    if-eq p1, v2, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 463
    :cond_0
    iput-boolean v2, p0, Lorg/conscrypt/OpenSSLCipher;->encrypting:Z

    .line 470
    :goto_0
    instance-of v1, p2, Ljavax/crypto/SecretKey;

    if-nez v1, :cond_4

    .line 471
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Only SecretKey is supported"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 464
    :cond_1
    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 465
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLCipher;->encrypting:Z

    goto :goto_0

    .line 467
    :cond_3
    new-instance v1, Ljava/security/InvalidParameterException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported opmode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :cond_4
    invoke-interface {p2}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 475
    .local v0, "encodedKey":[B
    if-nez v0, :cond_5

    .line 476
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key.getEncoded() == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 478
    :cond_5
    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    .line 479
    iput-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    .line 480
    return-object v0
.end method


# virtual methods
.method abstract checkSupportedKeySize(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method abstract checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation
.end method

.method abstract checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation
.end method

.method abstract doFinalInternal([BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method

.method protected engineDoFinal([BII[BI)I
    .locals 8
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 391
    if-nez p4, :cond_0

    .line 392
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "output == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 395
    :cond_0
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v6

    .line 398
    .local v6, "maximumLen":I
    if-lez p3, :cond_1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 399
    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v7

    .line 401
    .local v7, "bytesWritten":I
    add-int/2addr p5, v7

    .line 402
    sub-int/2addr v6, v7

    .line 407
    :goto_0
    invoke-virtual {p0, p4, p5, v6}, Lorg/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I

    move-result v0

    add-int/2addr v0, v7

    return v0

    .line 404
    .end local v7    # "bytesWritten":I
    :cond_1
    const/4 v7, 0x0

    .restart local v7    # "bytesWritten":I
    goto :goto_0
.end method

.method protected engineDoFinal([BII)[B
    .locals 10
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 355
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v6

    .line 357
    .local v6, "maximumLen":I
    new-array v4, v6, [B

    .line 360
    .local v4, "output":[B
    if-lez p3, :cond_0

    .line 362
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 372
    .local v7, "bytesWritten":I
    :goto_0
    sub-int v0, v6, v7

    :try_start_1
    invoke-virtual {p0, v4, v7, v0}, Lorg/conscrypt/OpenSSLCipher;->doFinalInternal([BII)I
    :try_end_1
    .catch Ljavax/crypto/ShortBufferException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    add-int/2addr v7, v0

    .line 378
    array-length v0, v4

    if-ne v7, v0, :cond_1

    .line 383
    .end local v4    # "output":[B
    :goto_1
    return-object v4

    .line 363
    .end local v7    # "bytesWritten":I
    .restart local v4    # "output":[B
    :catch_0
    move-exception v8

    .line 365
    .local v8, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "our calculated buffer was too small"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 368
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "bytesWritten":I
    goto :goto_0

    .line 373
    :catch_1
    move-exception v8

    .line 375
    .restart local v8    # "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "our calculated buffer was too small"

    invoke-direct {v0, v1, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 380
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    :cond_1
    if-nez v7, :cond_2

    .line 381
    sget-object v4, Lorg/conscrypt/EmptyArray;->BYTE:[B

    goto :goto_1

    .line 383
    :cond_2
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    goto :goto_1
.end method

.method protected engineGetBlockSize()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/conscrypt/OpenSSLCipher;->blockSize:I

    return v0
.end method

.method protected engineGetIV()[B
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    return-object v0
.end method

.method protected engineGetKeySize(Ljava/security/Key;)I
    .locals 3
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 449
    instance-of v1, p1, Ljavax/crypto/SecretKey;

    if-nez v1, :cond_0

    .line 450
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Only SecretKey is supported"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :cond_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v0

    .line 453
    .local v0, "encodedKey":[B
    if-nez v0, :cond_1

    .line 454
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "key.getEncoded() == null"

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :cond_1
    array-length v1, v0

    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLCipher;->checkSupportedKeySize(I)V

    .line 458
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x8

    return v1
.end method

.method protected engineGetOutputSize(I)I
    .locals 2
    .param p1, "inputLen"    # I

    .prologue
    .line 254
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForFinal(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 264
    iget-object v3, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    array-length v3, v3

    if-lez v3, :cond_0

    .line 266
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipher;->getBaseCipherName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v1

    .line 267
    .local v1, "params":Ljava/security/AlgorithmParameters;
    new-instance v3, Ljavax/crypto/spec/IvParameterSpec;

    iget-object v4, p0, Lorg/conscrypt/OpenSSLCipher;->iv:[B

    invoke-direct {v3, v4}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_1

    .line 275
    .end local v1    # "params":Ljava/security/AlgorithmParameters;
    :goto_0
    return-object v1

    .line 269
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    move-object v1, v2

    .line 270
    goto :goto_0

    .line 271
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    move-object v1, v2

    .line 272
    goto :goto_0

    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_0
    move-object v1, v2

    .line 275
    goto :goto_0
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/AlgorithmParameters;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 312
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipher;->getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    .line 313
    .local v0, "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-virtual {p0, p1, p2, v0, p4}, Lorg/conscrypt/OpenSSLCipher;->engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 314
    return-void
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/SecureRandom;)V
    .locals 3
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    .line 295
    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, p3}, Lorg/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 298
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 1
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLCipher;->checkAndSetEncodedKey(ILjava/security/Key;)[B

    .line 306
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->encodedKey:[B

    invoke-virtual {p0, v0, p3, p4}, Lorg/conscrypt/OpenSSLCipher;->engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V

    .line 307
    return-void
.end method

.method abstract engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method protected engineSetMode(Ljava/lang/String;)V
    .locals 5
    .param p1, "modeStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 201
    :try_start_0
    invoke-static {p1}, Lorg/conscrypt/OpenSSLCipher$Mode;->getNormalized(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Mode;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 207
    .local v1, "mode":Lorg/conscrypt/OpenSSLCipher$Mode;
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLCipher;->checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V

    .line 208
    iput-object v1, p0, Lorg/conscrypt/OpenSSLCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    .line 209
    return-void

    .line 202
    .end local v1    # "mode":Lorg/conscrypt/OpenSSLCipher$Mode;
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/security/NoSuchAlgorithmException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "newE":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2, v0}, Ljava/security/NoSuchAlgorithmException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 205
    throw v2
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 5
    .param p1, "paddingStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 215
    :try_start_0
    invoke-static {p1}, Lorg/conscrypt/OpenSSLCipher$Padding;->getNormalized(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Padding;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 222
    .local v2, "padding":Lorg/conscrypt/OpenSSLCipher$Padding;
    invoke-virtual {p0, v2}, Lorg/conscrypt/OpenSSLCipher;->checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V

    .line 223
    iput-object v2, p0, Lorg/conscrypt/OpenSSLCipher;->padding:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 224
    return-void

    .line 216
    .end local v2    # "padding":Lorg/conscrypt/OpenSSLCipher$Padding;
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No such padding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    .line 219
    .local v1, "newE":Ljavax/crypto/NoSuchPaddingException;
    invoke-virtual {v1, v0}, Ljavax/crypto/NoSuchPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 220
    throw v1
.end method

.method protected engineUnwrap([BLjava/lang/String;I)Ljava/security/Key;
    .locals 6
    .param p1, "wrappedKey"    # [B
    .param p2, "wrappedKeyAlgorithm"    # Ljava/lang/String;
    .param p3, "wrappedKeyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 426
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    invoke-virtual {p0, p1, v3, v4}, Lorg/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B

    move-result-object v1

    .line 427
    .local v1, "encoded":[B
    const/4 v3, 0x1

    if-ne p3, v3, :cond_0

    .line 428
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 429
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v3

    .line 434
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :goto_0
    return-object v3

    .line 430
    :cond_0
    const/4 v3, 0x2

    if-ne p3, v3, :cond_1

    .line 431
    invoke-static {p2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 432
    .restart local v2    # "keyFactory":Ljava/security/KeyFactory;
    new-instance v3, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v3, v1}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v3

    goto :goto_0

    .line 433
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    :cond_1
    const/4 v3, 0x3

    if-ne p3, v3, :cond_2

    .line 434
    new-instance v3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v3, v1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 438
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Ljavax/crypto/IllegalBlockSizeException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 436
    .end local v0    # "e":Ljavax/crypto/IllegalBlockSizeException;
    .restart local v1    # "encoded":[B
    :cond_2
    :try_start_1
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wrappedKeyType == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    .line 440
    .end local v1    # "encoded":[B
    :catch_1
    move-exception v0

    .line 441
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 442
    .end local v0    # "e":Ljavax/crypto/BadPaddingException;
    :catch_2
    move-exception v0

    .line 443
    .local v0, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected engineUpdate([BII[BI)I
    .locals 7
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 348
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v6

    .local v6, "maximumLen":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    .line 349
    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I

    move-result v0

    return v0
.end method

.method protected engineUpdate([BII)[B
    .locals 10
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v9, 0x0

    .line 318
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLCipher;->getOutputSizeForUpdate(I)I

    move-result v6

    .line 322
    .local v6, "maximumLen":I
    if-lez v6, :cond_0

    .line 323
    new-array v4, v6, [B

    .line 330
    .local v4, "output":[B
    :goto_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/OpenSSLCipher;->updateInternal([BII[BII)I
    :try_end_0
    .catch Ljavax/crypto/ShortBufferException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 336
    .local v7, "bytesWritten":I
    array-length v0, v4

    if-ne v0, v7, :cond_1

    .line 341
    .end local v4    # "output":[B
    :goto_1
    return-object v4

    .line 325
    .end local v7    # "bytesWritten":I
    :cond_0
    sget-object v4, Lorg/conscrypt/EmptyArray;->BYTE:[B

    .restart local v4    # "output":[B
    goto :goto_0

    .line 331
    :catch_0
    move-exception v8

    .line 333
    .local v8, "e":Ljavax/crypto/ShortBufferException;
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calculated buffer size was wrong: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 338
    .end local v8    # "e":Ljavax/crypto/ShortBufferException;
    .restart local v7    # "bytesWritten":I
    :cond_1
    if-nez v7, :cond_2

    .line 339
    sget-object v4, Lorg/conscrypt/EmptyArray;->BYTE:[B

    goto :goto_1

    .line 341
    :cond_2
    invoke-static {v4, v9, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    goto :goto_1
.end method

.method protected engineWrap(Ljava/security/Key;)[B
    .locals 5
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 413
    :try_start_0
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v1

    .line 414
    .local v1, "encoded":[B
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {p0, v1, v3, v4}, Lorg/conscrypt/OpenSSLCipher;->engineDoFinal([BII)[B
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 415
    .end local v1    # "encoded":[B
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v2, Ljavax/crypto/IllegalBlockSizeException;

    invoke-direct {v2}, Ljavax/crypto/IllegalBlockSizeException;-><init>()V

    .line 417
    .local v2, "newE":Ljavax/crypto/IllegalBlockSizeException;
    invoke-virtual {v2, v0}, Ljavax/crypto/IllegalBlockSizeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 418
    throw v2
.end method

.method abstract getBaseCipherName()Ljava/lang/String;
.end method

.method abstract getCipherBlockSize()I
.end method

.method abstract getOutputSizeForFinal(I)I
.end method

.method abstract getOutputSizeForUpdate(I)I
.end method

.method getPadding()Lorg/conscrypt/OpenSSLCipher$Padding;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipher;->padding:Lorg/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method

.method protected getParameterSpec(Ljava/security/AlgorithmParameters;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .param p1, "params"    # Ljava/security/AlgorithmParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 280
    if-eqz p1, :cond_0

    .line 282
    :try_start_0
    const-class v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-virtual {p1, v1}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 288
    :goto_0
    return-object v1

    .line 283
    :catch_0
    move-exception v0

    .line 284
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "Params must be convertible to IvParameterSpec"

    invoke-direct {v1, v2, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 288
    .end local v0    # "e":Ljava/security/spec/InvalidParameterSpecException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isEncrypting()Z
    .locals 1

    .prologue
    .line 484
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipher;->encrypting:Z

    return v0
.end method

.method supportsVariableSizeIv()Z
    .locals 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method supportsVariableSizeKey()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    return v0
.end method

.method abstract updateInternal([BII[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation
.end method
