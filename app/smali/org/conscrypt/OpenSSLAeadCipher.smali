.class public abstract Lorg/conscrypt/OpenSSLAeadCipher;
.super Lorg/conscrypt/OpenSSLCipher;
.source "OpenSSLAeadCipher.java"


# static fields
.field static final DEFAULT_TAG_SIZE_BITS:I = 0x80

.field private static final ENABLE_BYTEBUFFER_OPTIMIZATIONS:Z = true

.field private static lastGlobalMessageSize:I


# instance fields
.field private aad:[B

.field buf:[B

.field bufCount:I

.field evpAead:J

.field private mustInitialize:Z

.field private previousIv:[B

.field private previousKey:[B

.field tagLengthInBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const/16 v0, 0x20

    sput v0, Lorg/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    return-void
.end method

.method public constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 1
    .param p1, "mode"    # Lorg/conscrypt/OpenSSLCipher$Mode;

    .prologue
    .line 93
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/OpenSSLCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    .line 94
    return-void
.end method

.method private arraysAreEqual([B[B)Z
    .locals 5
    .param p1, "a"    # [B
    .param p2, "b"    # [B

    .prologue
    const/4 v2, 0x0

    .line 106
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v2

    .line 110
    :cond_1
    const/4 v0, 0x0

    .line 111
    .local v0, "diff":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 112
    aget-byte v3, p1, v1

    aget-byte v4, p2, v1

    xor-int/2addr v3, v4

    or-int/2addr v0, v3

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_2
    if-nez v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0
.end method

.method private checkInitialization()V
    .locals 2

    .prologue
    .line 97
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    if-eqz v0, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot re-use same key and IV for multiple encryptions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    return-void
.end method

.method private expand(I)V
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x0

    .line 119
    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v1, p1

    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    array-length v2, v2

    if-gt v1, v2, :cond_0

    .line 126
    :goto_0
    return-void

    .line 123
    :cond_0
    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [B

    .line 124
    .local v0, "newbuf":[B
    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    iget v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iput-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    goto :goto_0
.end method

.method private reset()V
    .locals 3

    .prologue
    .line 129
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 130
    sget v0, Lorg/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    .line 131
    .local v0, "lastBufSize":I
    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    if-nez v1, :cond_1

    .line 132
    new-array v1, v0, [B

    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    .line 139
    :cond_0
    :goto_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    .line 140
    return-void

    .line 133
    :cond_1
    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-lez v1, :cond_0

    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-eq v1, v0, :cond_0

    .line 134
    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    sput v1, Lorg/conscrypt/OpenSSLAeadCipher;->lastGlobalMessageSize:I

    .line 135
    iget-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    array-length v1, v1

    iget v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-eq v1, v2, :cond_0

    .line 136
    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    goto :goto_0
.end method

.method private throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 309
    :try_start_0
    const-string v5, "javax.crypto.AEADBadTagException"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    .line 310
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 315
    .local v1, "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .line 317
    .local v2, "badTagException":Ljavax/crypto/BadPaddingException;
    const/4 v5, 0x1

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljavax/crypto/BadPaddingException;

    move-object v2, v0

    .line 318
    invoke-virtual {v2, p2}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 327
    :goto_0
    if-eqz v2, :cond_0

    .line 328
    throw v2

    .line 311
    .end local v1    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "badTagException":Ljavax/crypto/BadPaddingException;
    :catch_0
    move-exception v4

    .line 330
    :cond_0
    return-void

    .line 323
    .restart local v1    # "aeadBadTagConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v2    # "badTagException":Ljavax/crypto/BadPaddingException;
    :catch_1
    move-exception v3

    .line 324
    .local v3, "e2":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Ljavax/crypto/BadPaddingException;

    invoke-direct {v5}, Ljavax/crypto/BadPaddingException;-><init>()V

    .line 325
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v6

    .line 324
    invoke-virtual {v5, v6}, Ljavax/crypto/BadPaddingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljavax/crypto/BadPaddingException;

    throw v5

    .line 321
    .end local v3    # "e2":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v5

    goto :goto_0

    .line 319
    :catch_3
    move-exception v5

    goto :goto_0
.end method


# virtual methods
.method allowsNonceReuse()Z
    .locals 1

    .prologue
    .line 225
    const/4 v0, 0x0

    return v0
.end method

.method checkSupportedPadding(Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 2
    .param p1, "padding"    # Lorg/conscrypt/OpenSSLCipher$Padding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 380
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-eq p1, v0, :cond_0

    .line 381
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Must be NoPadding for AEAD ciphers"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 383
    :cond_0
    return-void
.end method

.method checkSupportedTagLength(I)V
    .locals 3
    .param p1, "tagLenBits"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 213
    rem-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_0

    .line 214
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag length must be a multiple of 8; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 217
    :cond_0
    return-void
.end method

.method doFinalInternal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 10
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 334
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 337
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v5, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v4, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 348
    .local v8, "bytesWritten":I
    :goto_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 349
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 351
    :cond_0
    return v8

    .line 341
    .end local v8    # "bytesWritten":I
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v5, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v4, p2

    move-object v6, p1

    invoke-static/range {v0 .. v7}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .restart local v8    # "bytesWritten":I
    goto :goto_0

    .line 344
    .end local v8    # "bytesWritten":I
    :catch_0
    move-exception v9

    .line 345
    .local v9, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v9}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/conscrypt/OpenSSLAeadCipher;->throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 346
    throw v9
.end method

.method doFinalInternal([BII)I
    .locals 13
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 357
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 360
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 361
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    const/4 v8, 0x0

    iget v9, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    iget-object v10, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v10}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_seal(J[BI[BI[B[BII[B)I
    :try_end_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 371
    .local v11, "bytesWritten":I
    :goto_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 374
    :cond_0
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->reset()V

    .line 375
    return v11

    .line 364
    .end local v11    # "bytesWritten":I
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->encodedKey:[B

    iget v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    iget-object v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    iget-object v7, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    const/4 v8, 0x0

    iget v9, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    iget-object v10, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v10}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_CTX_open(J[BI[BI[B[BII[B)I
    :try_end_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v11

    .restart local v11    # "bytesWritten":I
    goto :goto_0

    .line 367
    .end local v11    # "bytesWritten":I
    :catch_0
    move-exception v12

    .line 368
    .local v12, "e":Ljavax/crypto/BadPaddingException;
    invoke-virtual {v12}, Ljavax/crypto/BadPaddingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12}, Ljavax/crypto/BadPaddingException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/conscrypt/OpenSSLAeadCipher;->throwAEADBadTagExceptionIfAvailable(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    throw v12
.end method

.method protected engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 6
    .param p1, "input"    # Ljava/nio/ByteBuffer;
    .param p2, "output"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    .prologue
    .line 234
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 235
    :cond_0
    new-instance v4, Ljava/lang/NullPointerException;

    const-string v5, "Null ByteBuffer Error"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 237
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v4

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-le v4, v5, :cond_2

    .line 238
    new-instance v4, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v5, "Insufficient Bytes for Output Buffer"

    invoke-direct {v4, v5}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 240
    :cond_2
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 241
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Cannot write to Read Only ByteBuffer"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 243
    :cond_3
    iget v4, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    if-eqz v4, :cond_4

    .line 244
    invoke-super {p0, p1, p2}, Lorg/conscrypt/OpenSSLCipher;->engineDoFinal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 268
    :goto_0
    return v0

    .line 247
    :cond_4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_5

    .line 248
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 249
    .local v1, "incap":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 250
    .local v2, "inputClone":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 251
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 253
    move-object p1, v2

    .line 255
    .end local v1    # "incap":I
    .end local v2    # "inputClone":Ljava/nio/ByteBuffer;
    :cond_5
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-nez v4, :cond_6

    .line 257
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p0, v4}, Lorg/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v4

    .line 256
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 258
    .local v3, "outputClone":Ljava/nio/ByteBuffer;
    invoke-virtual {p0, p1, v3}, Lorg/conscrypt/OpenSSLAeadCipher;->doFinalInternal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 259
    .local v0, "bytesWritten":I
    invoke-virtual {p2, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 260
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0

    .line 263
    .end local v0    # "bytesWritten":I
    .end local v3    # "outputClone":Ljava/nio/ByteBuffer;
    :cond_6
    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/OpenSSLAeadCipher;->doFinalInternal(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 264
    .restart local v0    # "bytesWritten":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 265
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method protected engineDoFinal([BII[BI)I
    .locals 2
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
    .line 279
    if-eqz p4, :cond_0

    .line 280
    invoke-virtual {p0, p3}, Lorg/conscrypt/OpenSSLAeadCipher;->getOutputSizeForFinal(I)I

    move-result v0

    array-length v1, p4

    sub-int/2addr v1, p5

    if-le v0, v1, :cond_0

    .line 281
    new-instance v0, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v1, "Insufficient output space"

    invoke-direct {v0, v1}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 284
    :cond_0
    invoke-super/range {p0 .. p5}, Lorg/conscrypt/OpenSSLCipher;->engineDoFinal([BII[BI)I

    move-result v0

    return v0
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 9
    .param p1, "encodedKey"    # [B
    .param p2, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p3, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 148
    if-nez p2, :cond_0

    .line 149
    const/4 v3, 0x0

    .line 150
    .local v3, "iv":[B
    const/16 v5, 0x80

    .line 166
    .local v5, "tagLenBits":I
    :goto_0
    invoke-virtual {p0, v5}, Lorg/conscrypt/OpenSSLAeadCipher;->checkSupportedTagLength(I)V

    .line 168
    div-int/lit8 v6, v5, 0x8

    iput v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->tagLengthInBytes:I

    .line 170
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    .line 172
    .local v0, "encrypting":Z
    array-length v6, p1

    invoke-virtual {p0, v6}, Lorg/conscrypt/OpenSSLAeadCipher;->getEVP_AEAD(I)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    .line 174
    iget-wide v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_nonce_length(J)I

    move-result v1

    .line 175
    .local v1, "expectedIvLength":I
    if-nez v3, :cond_6

    if-eqz v1, :cond_6

    .line 176
    if-nez v0, :cond_3

    .line 177
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IV must be specified in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 152
    .end local v0    # "encrypting":Z
    .end local v1    # "expectedIvLength":I
    .end local v3    # "iv":[B
    .end local v5    # "tagLenBits":I
    :cond_0
    invoke-static {p2}, Lorg/conscrypt/Platform;->fromGCMParameterSpec(Ljava/security/spec/AlgorithmParameterSpec;)Lorg/conscrypt/GCMParameters;

    move-result-object v2

    .line 153
    .local v2, "gcmParams":Lorg/conscrypt/GCMParameters;
    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v2}, Lorg/conscrypt/GCMParameters;->getIV()[B

    move-result-object v3

    .line 155
    .restart local v3    # "iv":[B
    invoke-virtual {v2}, Lorg/conscrypt/GCMParameters;->getTLen()I

    move-result v5

    .restart local v5    # "tagLenBits":I
    goto :goto_0

    .line 156
    .end local v3    # "iv":[B
    .end local v5    # "tagLenBits":I
    :cond_1
    instance-of v6, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v6, :cond_2

    move-object v4, p2

    .line 157
    check-cast v4, Ljavax/crypto/spec/IvParameterSpec;

    .line 158
    .local v4, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v4}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v3

    .line 159
    .restart local v3    # "iv":[B
    const/16 v5, 0x80

    .line 160
    .restart local v5    # "tagLenBits":I
    goto :goto_0

    .line 161
    .end local v3    # "iv":[B
    .end local v4    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .end local v5    # "tagLenBits":I
    :cond_2
    const/4 v3, 0x0

    .line 162
    .restart local v3    # "iv":[B
    const/16 v5, 0x80

    .restart local v5    # "tagLenBits":I
    goto :goto_0

    .line 181
    .end local v2    # "gcmParams":Lorg/conscrypt/GCMParameters;
    .restart local v0    # "encrypting":Z
    .restart local v1    # "expectedIvLength":I
    :cond_3
    new-array v3, v1, [B

    .line 182
    if-eqz p3, :cond_5

    .line 183
    invoke-virtual {p3, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 194
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->allowsNonceReuse()Z

    move-result v6

    if-nez v6, :cond_9

    .line 195
    iget-object v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    .line 196
    invoke-direct {p0, v6, p1}, Lorg/conscrypt/OpenSSLAeadCipher;->arraysAreEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    .line 197
    invoke-direct {p0, v6, v3}, Lorg/conscrypt/OpenSSLAeadCipher;->arraysAreEqual([B[B)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 198
    const/4 v6, 0x1

    iput-boolean v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 199
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "When using AEAD key and IV must not be re-used"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 185
    :cond_5
    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_1

    .line 187
    :cond_6
    if-nez v1, :cond_7

    if-eqz v3, :cond_7

    .line 188
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IV not used in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mode"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 189
    :cond_7
    if-eqz v3, :cond_4

    array-length v6, v3

    if-eq v6, v1, :cond_4

    .line 190
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected IV length of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " but was "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 203
    :cond_8
    iput-object p1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousKey:[B

    .line 204
    iput-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->previousIv:[B

    .line 206
    :cond_9
    const/4 v6, 0x0

    iput-boolean v6, p0, Lorg/conscrypt/OpenSSLAeadCipher;->mustInitialize:Z

    .line 207
    iput-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->iv:[B

    .line 208
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->reset()V

    .line 209
    return-void
.end method

.method protected engineUpdateAAD(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, 0x0

    .line 417
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 418
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    if-nez v2, :cond_0

    .line 419
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 420
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 428
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v2, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int v0, v2, v3

    .line 423
    .local v0, "newSize":I
    new-array v1, v0, [B

    .line 424
    .local v1, "newaad":[B
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    iget-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 425
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v2, v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    invoke-virtual {p1, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 426
    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    goto :goto_0
.end method

.method protected engineUpdateAAD([BII)V
    .locals 5
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 402
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 403
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    if-nez v2, :cond_0

    .line 404
    add-int v2, p2, p3

    invoke-static {p1, p2, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    .line 412
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v2, v2

    add-int v0, v2, p3

    .line 407
    .local v0, "newSize":I
    new-array v1, v0, [B

    .line 408
    .local v1, "newaad":[B
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    iget-object v3, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 409
    iget-object v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    array-length v2, v2

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iput-object v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->aad:[B

    goto :goto_0
.end method

.method abstract getEVP_AEAD(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method getOutputSizeForFinal(I)I
    .locals 4
    .param p1, "inputLen"    # I

    .prologue
    .line 395
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int v1, v0, p1

    .line 396
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->isEncrypting()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLAeadCipher;->evpAead:J

    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->EVP_AEAD_max_overhead(J)I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 395
    return v0

    .line 396
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getOutputSizeForUpdate(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    .line 390
    const/4 v0, 0x0

    return v0
.end method

.method updateInternal([BII[BII)I
    .locals 2
    .param p1, "input"    # [B
    .param p2, "inputOffset"    # I
    .param p3, "inputLen"    # I
    .param p4, "output"    # [B
    .param p5, "outputOffset"    # I
    .param p6, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    .line 290
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLAeadCipher;->checkInitialization()V

    .line 291
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lorg/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 296
    if-lez p3, :cond_1

    .line 297
    invoke-direct {p0, p3}, Lorg/conscrypt/OpenSSLAeadCipher;->expand(I)V

    .line 298
    iget-object v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->buf:[B

    iget v1, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 299
    iget v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/conscrypt/OpenSSLAeadCipher;->bufCount:I

    .line 301
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
