.class public abstract Lorg/conscrypt/OpenSSLEvpCipher;
.super Lorg/conscrypt/OpenSSLCipher;
.source "OpenSSLEvpCipher.java"


# instance fields
.field private calledUpdate:Z

.field private final cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

.field private modeBlockSize:I


# direct methods
.method public constructor <init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V
    .locals 4
    .param p1, "mode"    # Lorg/conscrypt/OpenSSLCipher$Mode;
    .param p2, "padding"    # Lorg/conscrypt/OpenSSLCipher$Padding;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLCipher;-><init>(Lorg/conscrypt/OpenSSLCipher$Mode;Lorg/conscrypt/OpenSSLCipher$Padding;)V

    .line 34
    new-instance v0, Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 35
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_new()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;-><init>(J)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 51
    return-void
.end method

.method private reset()V
    .locals 7

    .prologue
    .line 205
    iget-object v1, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lorg/conscrypt/OpenSSLEvpCipher;->encodedKey:[B

    iget-object v5, p0, Lorg/conscrypt/OpenSSLEvpCipher;->iv:[B

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v6

    invoke-static/range {v1 .. v6}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 207
    return-void
.end method


# virtual methods
.method doFinalInternal([BII)I
    .locals 7
    .param p1, "output"    # [B
    .param p2, "outputOffset"    # I
    .param p3, "maximumLen"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/ShortBufferException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 134
    move v1, p2

    .line 140
    .local v1, "initialOutputOffset":I
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v5

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    if-nez v5, :cond_0

    .line 163
    :goto_0
    return v4

    .line 145
    :cond_0
    array-length v5, p1

    sub-int v0, v5, p2

    .line 147
    .local v0, "bytesLeft":I
    if-lt v0, p3, :cond_2

    .line 148
    iget-object v4, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v4, p1, p2}, Lorg/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v3

    .line 159
    .local v3, "writtenBytes":I
    :cond_1
    :goto_1
    add-int/2addr p2, v3

    .line 161
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->reset()V

    .line 163
    sub-int v4, p2, v1

    goto :goto_0

    .line 150
    .end local v3    # "writtenBytes":I
    :cond_2
    new-array v2, p3, [B

    .line 151
    .local v2, "lastBlock":[B
    iget-object v5, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v5, v2, v4}, Lorg/conscrypt/NativeCrypto;->EVP_CipherFinal_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I

    move-result v3

    .line 152
    .restart local v3    # "writtenBytes":I
    if-le v3, v0, :cond_3

    .line 153
    new-instance v4, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "buffer is too short: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 155
    :cond_3
    if-lez v3, :cond_1

    .line 156
    invoke-static {v2, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 16
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
    .line 58
    move-object/from16 v0, p2

    instance-of v3, v0, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v3, :cond_0

    move-object/from16 v15, p2

    .line 59
    check-cast v15, Ljavax/crypto/spec/IvParameterSpec;

    .line 60
    .local v15, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v15}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v13

    .line 65
    .end local v15    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    .local v13, "iv":[B
    :goto_0
    move-object/from16 v0, p1

    array-length v3, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/conscrypt/OpenSSLEvpCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lorg/conscrypt/OpenSSLEvpCipher;->getCipherName(ILorg/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->EVP_get_cipherbyname(Ljava/lang/String;)J

    move-result-wide v4

    .line 67
    .local v4, "cipherType":J
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 68
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find name for key length = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    array-length v7, v0

    mul-int/lit8 v7, v7, 0x8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/conscrypt/OpenSSLEvpCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 62
    .end local v4    # "cipherType":J
    .end local v13    # "iv":[B
    :cond_0
    const/4 v13, 0x0

    .restart local v13    # "iv":[B
    goto :goto_0

    .line 72
    .restart local v4    # "cipherType":J
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v8

    .line 74
    .local v8, "encrypting":Z
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_iv_length(J)I

    move-result v2

    .line 75
    .local v2, "expectedIvLength":I
    if-nez v13, :cond_5

    if-eqz v2, :cond_5

    .line 76
    if-nez v8, :cond_2

    .line 77
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IV must be specified in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/conscrypt/OpenSSLEvpCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_2
    new-array v13, v2, [B

    .line 82
    if-eqz p3, :cond_4

    .line 83
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 94
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iput-object v13, v0, Lorg/conscrypt/OpenSSLEvpCipher;->iv:[B

    .line 96
    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/OpenSSLEvpCipher;->supportsVariableSizeKey()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 97
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 98
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object/from16 v0, p1

    array-length v6, v0

    invoke-static {v3, v6}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_key_length(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V

    .line 99
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    const-wide/16 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v14

    move-object/from16 v12, p1

    invoke-static/range {v9 .. v14}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    .line 105
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    .line 106
    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/OpenSSLEvpCipher;->getPadding()Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object v3

    sget-object v7, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne v3, v7, :cond_8

    const/4 v3, 0x1

    :goto_3
    invoke-static {v6, v3}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_set_padding(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->EVP_CIPHER_CTX_block_size(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    .line 108
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 109
    return-void

    .line 85
    :cond_4
    invoke-static {v13}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_1

    .line 87
    :cond_5
    if-nez v2, :cond_6

    if-eqz v13, :cond_6

    .line 88
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IV not used in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/conscrypt/OpenSSLEvpCipher;->mode:Lorg/conscrypt/OpenSSLCipher$Mode;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 89
    :cond_6
    if-eqz v13, :cond_3

    array-length v3, v13

    if-eq v3, v2, :cond_3

    .line 90
    new-instance v3, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "expected IV length of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " but was "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v13

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object/from16 v6, p1

    move-object v7, v13

    invoke-static/range {v3 .. v8}, Lorg/conscrypt/NativeCrypto;->EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V

    goto :goto_2

    .line 106
    :cond_8
    const/4 v3, 0x0

    goto :goto_3
.end method

.method abstract getCipherName(ILorg/conscrypt/OpenSSLCipher$Mode;)Ljava/lang/String;
.end method

.method getOutputSizeForFinal(I)I
    .locals 6
    .param p1, "inputLen"    # I

    .prologue
    const/4 v4, 0x0

    .line 168
    iget v3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 185
    .end local p1    # "inputLen":I
    :goto_0
    return p1

    .line 171
    .restart local p1    # "inputLen":I
    :cond_0
    iget-object v3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_buf_len(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)I

    move-result v0

    .line 173
    .local v0, "buffered":I
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->getPadding()Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object v3

    sget-object v5, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne v3, v5, :cond_1

    .line 174
    add-int/2addr p1, v0

    goto :goto_0

    .line 176
    :cond_1
    iget-object v3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->get_EVP_CIPHER_CTX_final_used(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z

    move-result v1

    .line 178
    .local v1, "finalUsed":Z
    add-int v5, p1, v0

    if-eqz v1, :cond_4

    iget v3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    :goto_1
    add-int v2, v5, v3

    .line 182
    .local v2, "totalLen":I
    iget v3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v3, v2, v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLEvpCipher;->isEncrypting()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 183
    :cond_2
    iget v4, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    :cond_3
    add-int/2addr v2, v4

    .line 185
    iget v3, p0, Lorg/conscrypt/OpenSSLEvpCipher;->modeBlockSize:I

    rem-int v3, v2, v3

    sub-int p1, v2, v3

    goto :goto_0

    .end local v2    # "totalLen":I
    :cond_4
    move v3, v4

    .line 178
    goto :goto_1
.end method

.method getOutputSizeForUpdate(I)I
    .locals 1
    .param p1, "inputLen"    # I

    .prologue
    .line 192
    invoke-virtual {p0, p1}, Lorg/conscrypt/OpenSSLEvpCipher;->getOutputSizeForFinal(I)I

    move-result v0

    return v0
.end method

.method updateInternal([BII[BII)I
    .locals 8
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
    .line 114
    move v7, p5

    .line 116
    .local v7, "intialOutputOffset":I
    array-length v0, p4

    sub-int v6, v0, p5

    .line 117
    .local v6, "bytesLeft":I
    if-ge v6, p6, :cond_0

    .line 118
    new-instance v0, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "output buffer too small during update: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->cipherCtx:Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;

    move-object v1, p4

    move v2, p5

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->EVP_CipherUpdate(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I

    move-result v0

    add-int/2addr p5, v0

    .line 125
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLEvpCipher;->calledUpdate:Z

    .line 127
    sub-int v0, p5, v7

    return v0
.end method
