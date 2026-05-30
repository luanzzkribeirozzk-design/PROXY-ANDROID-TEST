.class public final Lorg/conscrypt/OpenSSLSignatureRawRSA;
.super Ljava/security/SignatureSpi;
.source "OpenSSLSignatureRawRSA.java"


# instance fields
.field private inputBuffer:[B

.field private inputIsTooLong:Z

.field private inputOffset:I

.field private key:Lorg/conscrypt/OpenSSLKey;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/security/SignatureSpi;-><init>()V

    return-void
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
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method protected engineInitSign(Ljava/security/PrivateKey;)V
    .locals 4
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 90
    instance-of v2, p1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 91
    check-cast v1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    .line 92
    .local v1, "rsaPrivateKey":Lorg/conscrypt/OpenSSLRSAPrivateKey;
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 104
    .end local v1    # "rsaPrivateKey":Lorg/conscrypt/OpenSSLRSAPrivateKey;
    :goto_0
    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/NativeCrypto;->RSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 105
    .local v0, "maxSize":I
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 106
    const/4 v2, 0x0

    iput v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 107
    return-void

    .line 93
    .end local v0    # "maxSize":I
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 94
    check-cast v1, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 95
    .local v1, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-static {v1}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    goto :goto_0

    .line 96
    .end local v1    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_1
    instance-of v2, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v2, :cond_2

    move-object v1, p1

    .line 97
    check-cast v1, Ljava/security/interfaces/RSAPrivateKey;

    .line 98
    .local v1, "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-static {v1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Ljava/security/interfaces/RSAPrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    goto :goto_0

    .line 100
    .end local v1    # "rsaPrivateKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_2
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Need RSA private key"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected engineInitVerify(Ljava/security/PublicKey;)V
    .locals 4
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 111
    instance-of v2, p1, Lorg/conscrypt/OpenSSLRSAPublicKey;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 112
    check-cast v1, Lorg/conscrypt/OpenSSLRSAPublicKey;

    .line 113
    .local v1, "rsaPublicKey":Lorg/conscrypt/OpenSSLRSAPublicKey;
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLRSAPublicKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 122
    .end local v1    # "rsaPublicKey":Lorg/conscrypt/OpenSSLRSAPublicKey;
    :goto_0
    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v2}, Lorg/conscrypt/NativeCrypto;->RSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    .line 123
    .local v0, "maxSize":I
    new-array v2, v0, [B

    iput-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    .line 124
    const/4 v2, 0x0

    iput v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 125
    return-void

    .line 114
    .end local v0    # "maxSize":I
    :cond_0
    instance-of v2, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 115
    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 116
    .local v1, "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    invoke-static {v1}, Lorg/conscrypt/OpenSSLRSAPublicKey;->getInstance(Ljava/security/interfaces/RSAPublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    goto :goto_0

    .line 118
    .end local v1    # "rsaPublicKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_1
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Need RSA public key"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2
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
    .line 130
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
    const/4 v6, 0x0

    .line 134
    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    if-nez v2, :cond_0

    .line 136
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "Need RSA private key"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 139
    :cond_0
    iget-boolean v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v2, :cond_1

    .line 140
    new-instance v2, Ljava/security/SignatureException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "input length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " != "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (modulus size)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 144
    :cond_1
    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    new-array v1, v2, [B

    .line 146
    .local v1, "outputBuffer":[B
    :try_start_0
    iget v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v3, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    iget-object v4, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 147
    invoke-virtual {v4}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    const/4 v5, 0x1

    .line 146
    invoke-static {v2, v3, v1, v4, v5}, Lorg/conscrypt/NativeCrypto;->RSA_private_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 152
    iput v6, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 148
    return-object v1

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Ljava/security/SignatureException;

    invoke-direct {v2, v0}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 152
    .end local v0    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iput v6, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v2
.end method

.method protected engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    .prologue
    .line 59
    iget v0, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 61
    .local v0, "oldOffset":I
    iget v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 62
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aput-byte p1, v1, v0

    goto :goto_0
.end method

.method protected engineUpdate([BII)V
    .locals 3
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 71
    iget v0, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 72
    .local v0, "oldOffset":I
    iget v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    .line 74
    iget v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    iget-object v2, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v2, v2

    if-le v1, v2, :cond_0

    .line 75
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    .line 80
    :goto_0
    return-void

    .line 79
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected engineVerify([B)Z
    .locals 10
    .param p1, "sigBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 158
    iget-object v7, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    if-nez v7, :cond_0

    .line 160
    new-instance v6, Ljava/security/SignatureException;

    const-string v7, "Need RSA public key"

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 163
    :cond_0
    iget-boolean v7, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputIsTooLong:Z

    if-eqz v7, :cond_1

    .line 192
    :goto_0
    return v6

    .line 169
    :cond_1
    array-length v7, p1

    iget-object v8, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v8, v8

    if-le v7, v8, :cond_2

    .line 170
    new-instance v6, Ljava/security/SignatureException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Input signature length is too large: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " > "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 174
    :cond_2
    iget-object v7, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    array-length v7, v7

    new-array v4, v7, [B

    .line 178
    .local v4, "outputBuffer":[B
    :try_start_0
    array-length v7, p1

    iget-object v8, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->key:Lorg/conscrypt/OpenSSLKey;

    .line 179
    invoke-virtual {v8}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v8

    const/4 v9, 0x1

    .line 178
    invoke-static {v7, p1, v4, v8, v9}, Lorg/conscrypt/NativeCrypto;->RSA_public_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I
    :try_end_0
    .catch Ljava/security/SignatureException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 186
    .local v5, "resultSize":I
    :try_start_1
    iget v7, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    if-ne v5, v7, :cond_4

    .line 187
    .local v3, "matches":Z
    :goto_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_5

    .line 188
    iget-object v7, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputBuffer:[B

    aget-byte v7, v7, v2

    aget-byte v8, v4, v2

    if-eq v7, v8, :cond_3

    .line 189
    const/4 v3, 0x0

    .line 187
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 180
    .end local v2    # "i":I
    .end local v3    # "matches":Z
    .end local v5    # "resultSize":I
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/security/SignatureException;
    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    .end local v0    # "e":Ljava/security/SignatureException;
    :catch_1
    move-exception v1

    .line 194
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_2
    new-instance v7, Ljava/security/SignatureException;

    invoke-direct {v7, v1}, Ljava/security/SignatureException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 196
    .end local v1    # "ex":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    iput v6, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    throw v7

    .line 182
    :catch_2
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/Exception;
    iput v6, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    goto :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v5    # "resultSize":I
    :cond_4
    move v3, v6

    .line 186
    goto :goto_1

    .line 196
    .restart local v2    # "i":I
    .restart local v3    # "matches":Z
    :cond_5
    iput v6, p0, Lorg/conscrypt/OpenSSLSignatureRawRSA;->inputOffset:I

    move v6, v3

    .line 192
    goto :goto_0
.end method
