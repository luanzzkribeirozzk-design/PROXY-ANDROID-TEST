.class public Lorg/conscrypt/OpenSSLCipherChaCha20;
.super Lorg/conscrypt/OpenSSLCipher;
.source "OpenSSLCipherChaCha20.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final BLOCK_SIZE_BYTES:I = 0x40

.field private static final NONCE_SIZE_BYTES:I = 0xc


# instance fields
.field private blockCounter:I

.field private currentBlockConsumedBytes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    const-class v0, Lorg/conscrypt/OpenSSLCipherChaCha20;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/conscrypt/OpenSSLCipherChaCha20;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLCipher;-><init>()V

    .line 42
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 43
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 45
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 114
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 115
    iput v0, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 116
    return-void
.end method


# virtual methods
.method checkSupportedKeySize(I)V
    .locals 3
    .param p1, "keySize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 125
    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    .line 126
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported key size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes (must be 32)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    return-void
.end method

.method checkSupportedMode(Lorg/conscrypt/OpenSSLCipher$Mode;)V
    .locals 2
    .param p1, "mode"    # Lorg/conscrypt/OpenSSLCipher$Mode;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 133
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Mode;->NONE:Lorg/conscrypt/OpenSSLCipher$Mode;

    if-eq p1, v0, :cond_0

    .line 134
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "Mode must be NONE"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    return-void
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
    .line 140
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-eq p1, v0, :cond_0

    .line 141
    new-instance v0, Ljavax/crypto/NoSuchPaddingException;

    const-string v1, "Must be NoPadding"

    invoke-direct {v0, v1}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    return-void
.end method

.method doFinalInternal([BII)I
    .locals 1
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
    .line 109
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLCipherChaCha20;->reset()V

    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method engineInitInternal([BLjava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 3
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
    const/16 v2, 0xc

    .line 50
    instance-of v1, p2, Ljavax/crypto/spec/IvParameterSpec;

    if-eqz v1, :cond_1

    move-object v0, p2

    .line 51
    check-cast v0, Ljavax/crypto/spec/IvParameterSpec;

    .line 52
    .local v0, "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    array-length v1, v1

    if-eq v1, v2, :cond_0

    .line 53
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "IV must be 12 bytes long"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 55
    :cond_0
    invoke-virtual {v0}, Ljavax/crypto/spec/IvParameterSpec;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    .line 68
    .end local v0    # "ivParams":Ljavax/crypto/spec/IvParameterSpec;
    :goto_0
    return-void

    .line 57
    :cond_1
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherChaCha20;->isEncrypting()Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v2, "IV must be specified when decrypting"

    invoke-direct {v1, v2}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 61
    :cond_2
    new-array v1, v2, [B

    iput-object v1, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    .line 62
    if-eqz p3, :cond_3

    .line 63
    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    invoke-virtual {p3, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_0

    .line 65
    :cond_3
    iget-object v1, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->RAND_bytes([B)V

    goto :goto_0
.end method

.method getBaseCipherName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    const-string v0, "ChaCha20"

    return-object v0
.end method

.method getCipherBlockSize()I
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method getOutputSizeForFinal(I)I
    .locals 0
    .param p1, "inputLen"    # I

    .prologue
    .line 152
    return p1
.end method

.method getOutputSizeForUpdate(I)I
    .locals 0
    .param p1, "inputLen"    # I

    .prologue
    .line 157
    return p1
.end method

.method updateInternal([BII[BII)I
    .locals 15
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
    .line 73
    move-object/from16 v0, p4

    array-length v3, v0

    sub-int v3, v3, p5

    move/from16 v0, p3

    if-le v0, v3, :cond_0

    .line 74
    new-instance v3, Lorg/conscrypt/ShortBufferWithoutStackTraceException;

    const-string v5, "Insufficient output space"

    invoke-direct {v3, v5}, Lorg/conscrypt/ShortBufferWithoutStackTraceException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 76
    :cond_0
    move/from16 v13, p3

    .line 77
    .local v13, "inputLenRemaining":I
    iget v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    if-lez v3, :cond_3

    .line 80
    iget v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    rsub-int/lit8 v3, v3, 0x40

    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 81
    .local v14, "len":I
    const/16 v3, 0x40

    new-array v2, v3, [B

    .line 82
    .local v2, "singleBlock":[B
    const/16 v3, 0x40

    new-array v4, v3, [B

    .line 83
    .local v4, "singleBlockOut":[B
    iget v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v2, v3, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x40

    iget-object v7, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->encodedKey:[B

    iget-object v8, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    iget v9, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    invoke-static/range {v2 .. v9}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 86
    iget v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v4, v3, v0, v1, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 87
    iget v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    add-int/2addr v3, v14

    iput v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 88
    iget v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    const/16 v5, 0x40

    if-ge v3, v5, :cond_1

    move v9, v13

    .line 103
    .end local v2    # "singleBlock":[B
    .end local v4    # "singleBlockOut":[B
    .end local v13    # "inputLenRemaining":I
    .end local v14    # "len":I
    .local v9, "inputLenRemaining":I
    :goto_0
    return v14

    .line 92
    .end local v9    # "inputLenRemaining":I
    .restart local v2    # "singleBlock":[B
    .restart local v4    # "singleBlockOut":[B
    .restart local v13    # "inputLenRemaining":I
    .restart local v14    # "len":I
    :cond_1
    sget-boolean v3, Lorg/conscrypt/OpenSSLCipherChaCha20;->$assertionsDisabled:Z

    if-nez v3, :cond_2

    iget v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    const/16 v5, 0x40

    if-eq v3, v5, :cond_2

    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 93
    :cond_2
    const/4 v3, 0x0

    iput v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 94
    add-int p2, p2, v14

    .line 95
    add-int p5, p5, v14

    .line 96
    sub-int v9, v13, v14

    .line 97
    .end local v13    # "inputLenRemaining":I
    .restart local v9    # "inputLenRemaining":I
    iget v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    .line 99
    .end local v2    # "singleBlock":[B
    .end local v4    # "singleBlockOut":[B
    .end local v14    # "len":I
    :goto_1
    iget-object v10, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->encodedKey:[B

    iget-object v11, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->iv:[B

    iget v12, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move-object/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p4

    move/from16 v8, p5

    invoke-static/range {v5 .. v12}, Lorg/conscrypt/NativeCrypto;->chacha20_encrypt_decrypt([BI[BII[B[BI)V

    .line 101
    rem-int/lit8 v3, v9, 0x40

    iput v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->currentBlockConsumedBytes:I

    .line 102
    iget v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    div-int/lit8 v5, v9, 0x40

    add-int/2addr v3, v5

    iput v3, p0, Lorg/conscrypt/OpenSSLCipherChaCha20;->blockCounter:I

    move/from16 v14, p3

    .line 103
    goto :goto_0

    .end local v9    # "inputLenRemaining":I
    .restart local v13    # "inputLenRemaining":I
    :cond_3
    move v9, v13

    .end local v13    # "inputLenRemaining":I
    .restart local v9    # "inputLenRemaining":I
    goto :goto_1
.end method
