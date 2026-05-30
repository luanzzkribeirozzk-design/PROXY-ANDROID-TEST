.class public Lorg/conscrypt/OpenSSLCipherRSA$OAEP;
.super Lorg/conscrypt/OpenSSLCipherRSA;
.source "OpenSSLCipherRSA.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLCipherRSA;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OAEP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA512;,
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA384;,
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA256;,
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA224;,
        Lorg/conscrypt/OpenSSLCipherRSA$OAEP$SHA1;
    }
.end annotation


# instance fields
.field private label:[B

.field private mgf1Md:J

.field private oaepMd:J

.field private oaepMdSizeBytes:I

.field private pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;


# direct methods
.method public constructor <init>(JI)V
    .locals 1
    .param p1, "defaultMd"    # J
    .param p3, "defaultMdSizeBytes"    # I

    .prologue
    .line 436
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLCipherRSA;-><init>(I)V

    .line 437
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    iput-wide p1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    .line 438
    iput p3, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    .line 439
    return-void
.end method

.method private readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V
    .locals 8
    .param p1, "spec"    # Ljavax/crypto/spec/OAEPParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 558
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFAlgorithm()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 559
    .local v2, "mgfAlgUpper":Ljava/lang/String;
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    .line 560
    .local v3, "mgfSpec":Ljava/security/spec/AlgorithmParameterSpec;
    const-string v6, "MGF1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "1.2.840.113549.1.1.8"

    .line 561
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    instance-of v6, v3, Ljava/security/spec/MGF1ParameterSpec;

    if-nez v6, :cond_2

    .line 563
    :cond_1
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "Only MGF1 supported as mask generation function"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    move-object v1, v3

    .line 567
    check-cast v1, Ljava/security/spec/MGF1ParameterSpec;

    .line 568
    .local v1, "mgf1spec":Ljava/security/spec/MGF1ParameterSpec;
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 570
    .local v4, "oaepAlgUpper":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lorg/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    .line 572
    invoke-static {v4}, Lorg/conscrypt/EvpMdRef;->getDigestSizeBytesByJcaDigestAlgorithmStandardName(Ljava/lang/String;)I

    move-result v6

    iput v6, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    .line 574
    invoke-virtual {v1}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v6

    .line 573
    invoke-static {v6}, Lorg/conscrypt/EvpMdRef;->getEVP_MDByJcaDigestAlgorithmStandardName(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    invoke-virtual {p1}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v5

    .line 580
    .local v5, "pSource":Ljavax/crypto/spec/PSource;
    const-string v6, "PSpecified"

    invoke-virtual {v5}, Ljavax/crypto/spec/PSource;->getAlgorithm()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    instance-of v6, v5, Ljavax/crypto/spec/PSource$PSpecified;

    if-nez v6, :cond_4

    .line 582
    :cond_3
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    const-string v7, "Only PSpecified accepted for PSource"

    invoke-direct {v6, v7}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 575
    .end local v5    # "pSource":Ljavax/crypto/spec/PSource;
    :catch_0
    move-exception v0

    .line 576
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v6, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v6, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 585
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v5    # "pSource":Ljavax/crypto/spec/PSource;
    :cond_4
    check-cast v5, Ljavax/crypto/spec/PSource$PSpecified;

    .end local v5    # "pSource":Ljavax/crypto/spec/PSource;
    invoke-virtual {v5}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v6

    iput-object v6, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    .line 586
    return-void
.end method


# virtual methods
.method doCryptoInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 4
    .param p1, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 530
    new-instance v2, Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->encrypting:Z

    if-eqz v0, :cond_2

    .line 531
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_encrypt_init(Lorg/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v0

    .line 532
    :goto_0
    invoke-direct {v2, v0, v1}, Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;-><init>(J)V

    iput-object v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    .line 534
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    .line 535
    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    .end local p1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->readOAEPParameters(Ljavax/crypto/spec/OAEPParameterSpec;)V

    .line 538
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;->address:J

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_padding(JI)V

    .line 540
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;->address:J

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    invoke-static {v0, v1, v2, v3}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_md(JJ)V

    .line 541
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;->address:J

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    invoke-static {v0, v1, v2, v3}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V

    .line 542
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    array-length v0, v0

    if-lez v0, :cond_1

    .line 543
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;->address:J

    iget-object v2, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    invoke-static {v0, v1, v2}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_CTX_set_rsa_oaep_label(J[B)V

    .line 545
    :cond_1
    return-void

    .line 532
    .restart local p1    # "spec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_2
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_decrypt_init(Lorg/conscrypt/NativeRef$EVP_PKEY;)J

    move-result-wide v0

    goto :goto_0
.end method

.method doCryptoOperation([B[B)I
    .locals 6
    .param p1, "tmpBuf"    # [B
    .param p2, "output"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 591
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->encrypting:Z

    if-eqz v0, :cond_0

    .line 592
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    array-length v5, p1

    move-object v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_encrypt(Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result v0

    .line 594
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->pkeyCtx:Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;

    array-length v5, p1

    move-object v1, p2

    move-object v3, p1

    move v4, v2

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_decrypt(Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I

    move-result v0

    goto :goto_0
.end method

.method protected engineGetParameters()Ljava/security/AlgorithmParameters;
    .locals 10

    .prologue
    .line 443
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->isInitialized()Z

    move-result v3

    if-nez v3, :cond_0

    .line 444
    const/4 v2, 0x0

    .line 463
    :goto_0
    return-object v2

    .line 448
    :cond_0
    :try_start_0
    const-string v3, "OAEP"

    invoke-static {v3}, Ljava/security/AlgorithmParameters;->getInstance(Ljava/lang/String;)Ljava/security/AlgorithmParameters;

    move-result-object v2

    .line 451
    .local v2, "params":Ljava/security/AlgorithmParameters;
    iget-object v3, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    if-nez v3, :cond_1

    .line 452
    sget-object v1, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    .line 457
    .local v1, "pSrc":Ljavax/crypto/spec/PSource;
    :goto_1
    new-instance v3, Ljavax/crypto/spec/OAEPParameterSpec;

    iget-wide v4, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMd:J

    .line 458
    invoke-static {v4, v5}, Lorg/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MGF1"

    new-instance v6, Ljava/security/spec/MGF1ParameterSpec;

    iget-wide v8, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->mgf1Md:J

    .line 461
    invoke-static {v8, v9}, Lorg/conscrypt/EvpMdRef;->getJcaDigestAlgorithmStandardNameFromEVP_MD(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v5, v6, v1}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    .line 457
    invoke-virtual {v2, v3}, Ljava/security/AlgorithmParameters;->init(Ljava/security/spec/AlgorithmParameterSpec;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 464
    .end local v1    # "pSrc":Ljavax/crypto/spec/PSource;
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_0
    move-exception v0

    .line 466
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "OAEP not supported"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Ljava/lang/AssertionError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 454
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v2    # "params":Ljava/security/AlgorithmParameters;
    :cond_1
    :try_start_1
    new-instance v1, Ljavax/crypto/spec/PSource$PSpecified;

    iget-object v3, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->label:[B

    invoke-direct {v1, v3}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_1 .. :try_end_1} :catch_1

    .restart local v1    # "pSrc":Ljavax/crypto/spec/PSource;
    goto :goto_1

    .line 467
    .end local v1    # "pSrc":Ljavax/crypto/spec/PSource;
    .end local v2    # "params":Ljava/security/AlgorithmParameters;
    :catch_1
    move-exception v0

    .line 468
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "No providers of AlgorithmParameters.OAEP available"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/AlgorithmParameters;Ljava/security/SecureRandom;)V
    .locals 4
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
    .line 499
    const/4 v1, 0x0

    .line 500
    .local v1, "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    if-eqz p3, :cond_0

    .line 502
    :try_start_0
    const-class v2, Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {p3, v2}, Ljava/security/AlgorithmParameters;->getParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    check-cast v1, Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_0
    .catch Ljava/security/spec/InvalidParameterSpecException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    .restart local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :cond_0
    invoke-virtual {p0, p1, p2, v1}, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 510
    return-void

    .line 503
    .end local v1    # "spec":Ljavax/crypto/spec/OAEPParameterSpec;
    :catch_0
    move-exception v0

    .line 504
    .local v0, "e":Ljava/security/spec/InvalidParameterSpecException;
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Only OAEP parameters are supported"

    invoke-direct {v2, v3, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method protected engineInit(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p4, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 487
    if-eqz p3, :cond_0

    instance-of v0, p3, Ljavax/crypto/spec/OAEPParameterSpec;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "Only OAEPParameterSpec accepted in OAEP mode"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 492
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 493
    return-void
.end method

.method engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "opmode"    # I
    .param p2, "key"    # Ljava/security/Key;
    .param p3, "spec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 515
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 516
    :cond_0
    instance-of v0, p2, Ljava/security/PublicKey;

    if-nez v0, :cond_3

    .line 517
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only public keys may be used to encrypt"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 519
    :cond_1
    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 520
    :cond_2
    instance-of v0, p2, Ljava/security/PrivateKey;

    if-nez v0, :cond_3

    .line 521
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Only private keys may be used to decrypt"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 524
    :cond_3
    invoke-super {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLCipherRSA;->engineInitInternal(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 525
    return-void
.end method

.method protected engineSetPadding(Ljava/lang/String;)V
    .locals 3
    .param p1, "padding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    .prologue
    .line 474
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 475
    .local v0, "paddingUpper":Ljava/lang/String;
    const-string v1, "OAEPPADDING"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    const/4 v1, 0x4

    iput v1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->padding:I

    .line 477
    return-void

    .line 480
    :cond_0
    new-instance v1, Ljavax/crypto/NoSuchPaddingException;

    const-string v2, "Only OAEP padding is supported"

    invoke-direct {v1, v2}, Ljavax/crypto/NoSuchPaddingException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method paddedBlockSizeBytes()I
    .locals 2

    .prologue
    .line 549
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->keySizeBytes()I

    move-result v0

    .line 553
    .local v0, "paddedBlockSizeBytes":I
    iget v1, p0, Lorg/conscrypt/OpenSSLCipherRSA$OAEP;->oaepMdSizeBytes:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    return v1
.end method
