.class public Lorg/conscrypt/OpenSSLSignatureRawECDSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawECDSA.java"


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private key:Lorg/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    .line 40
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 42
    return-void
.end method

.method private static verifyKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 3
    .param p0, "key"    # Lorg/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 62
    .local v0, "pkeyType":I
    const/16 v1, 0x198

    if-eq v0, v1, :cond_0

    .line 63
    new-instance v1, Ljava/security/InvalidKeyException;

    const-string v2, "Non-EC key used to initialize EC signature."

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 65
    :cond_0
    return-object p0
.end method


# virtual methods
.method protected engineGetParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 1
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-static {p1}, Lorg/conscrypt/OpenSSLKey;->fromPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->verifyKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 71
    return-void
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 75
    invoke-static {p1}, Lorg/conscrypt/OpenSSLKey;->fromPublicKey(Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->verifyKey(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 76
    return-void
.end method

.method protected engineSetParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 81
    return-void
.end method

.method protected engineSign()[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 85
    iget-object v5, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    if-nez v5, :cond_0

    .line 87
    new-instance v5, Ljava/security/SignatureException;

    const-string v6, "No key provided"

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 90
    :cond_0
    iget-object v5, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v5}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v5

    invoke-static {v5}, Lorg/conscrypt/NativeCrypto;->ECDSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v4

    .line 91
    .local v4, "output_size":I
    new-array v3, v4, [B

    .line 93
    .local v3, "outputBuffer":[B
    :try_start_0
    iget-object v5, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 94
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v6}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v6

    invoke-static {v5, v3, v6}, Lorg/conscrypt/NativeCrypto;->ECDSA_sign([B[BLorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 95
    .local v0, "bytes_written":I
    if-gez v0, :cond_1

    .line 96
    new-instance v5, Ljava/security/SignatureException;

    const-string v6, "Could not compute signature."

    invoke-direct {v5, v6}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .end local v0    # "bytes_written":I
    :catch_0
    move-exception v1

    .line 108
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Ljava/security/SignatureException;

    invoke-direct {v5, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    iget-object v6, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw v5

    .line 101
    .restart local v0    # "bytes_written":I
    :cond_1
    if-eq v0, v4, :cond_2

    .line 102
    :try_start_2
    new-array v2, v0, [B

    .line 103
    .local v2, "newBuffer":[B
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v5, v2, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    move-object v3, v2

    .line 110
    .end local v2    # "newBuffer":[B
    :cond_2
    iget-object v5, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 106
    return-object v3
.end method

.method protected engineUpdate(B)V
    .locals 1
    .param p1, "input"    # B

    .prologue
    .line 46
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 47
    return-void
.end method

.method protected engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 51
    iget-object v0, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 52
    return-void
.end method

.method protected engineVerify([B)Z
    .locals 5
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 116
    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    if-nez v3, :cond_0

    .line 118
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "No key provided"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 122
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    .line 123
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v4, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v4}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v3, p1, v4}, Lorg/conscrypt/NativeCrypto;->ECDSA_verify([B[BLorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v1

    .line 124
    .local v1, "result":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 125
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Could not verify signature."

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 129
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    throw v2

    .line 127
    .restart local v1    # "result":I
    :cond_1
    if-ne v1, v2, :cond_2

    .line 131
    :goto_0
    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignatureRawECDSA;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 127
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
