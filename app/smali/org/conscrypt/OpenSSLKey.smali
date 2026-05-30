.class final Lorg/conscrypt/OpenSSLKey;
.super Ljava/lang/Object;
.source "OpenSSLKey.java"


# instance fields
.field private final ctx:Lorg/conscrypt/NativeRef$EVP_PKEY;

.field private final hardwareBacked:Z

.field private final wrapped:Z


# direct methods
.method constructor <init>(J)V
    .locals 1
    .param p1, "ctx"    # J

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/conscrypt/OpenSSLKey;-><init>(JZ)V

    .line 49
    return-void
.end method

.method constructor <init>(JZ)V
    .locals 1
    .param p1, "ctx"    # J
    .param p3, "wrapped"    # Z

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/conscrypt/OpenSSLKey;-><init>(JZZ)V

    .line 53
    return-void
.end method

.method constructor <init>(JZZ)V
    .locals 1
    .param p1, "ctx"    # J
    .param p3, "wrapped"    # Z
    .param p4, "hardwareBacked"    # Z

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-direct {v0, p1, p2}, Lorg/conscrypt/NativeRef$EVP_PKEY;-><init>(J)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLKey;->ctx:Lorg/conscrypt/NativeRef$EVP_PKEY;

    .line 59
    iput-boolean p3, p0, Lorg/conscrypt/OpenSSLKey;->wrapped:Z

    .line 60
    iput-boolean p4, p0, Lorg/conscrypt/OpenSSLKey;->hardwareBacked:Z

    .line 61
    return-void
.end method

.method static fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lorg/conscrypt/OpenSSLKey;
    .locals 3
    .param p0, "key"    # Ljava/security/PrivateKey;
    .param p1, "ecParams"    # Ljava/security/spec/ECParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 158
    invoke-static {p0}, Lorg/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 159
    .local v0, "result":Lorg/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    .local v1, "result":Lorg/conscrypt/OpenSSLKey;
    move-object v2, v0

    .line 168
    :goto_0
    return-object v2

    .line 163
    .end local v1    # "result":Lorg/conscrypt/OpenSSLKey;
    .restart local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    :cond_0
    invoke-static {p0}, Lorg/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    .restart local v1    # "result":Lorg/conscrypt/OpenSSLKey;
    move-object v2, v0

    .line 165
    goto :goto_0

    .line 168
    .end local v1    # "result":Lorg/conscrypt/OpenSSLKey;
    .restart local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    :cond_1
    invoke-static {p0, p1}, Lorg/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    move-object v1, v0

    .end local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    .restart local v1    # "result":Lorg/conscrypt/OpenSSLKey;
    goto :goto_0
.end method

.method private static fromKeyMaterial(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 196
    const-string v3, "PKCS#8"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 204
    :cond_0
    :goto_0
    return-object v2

    .line 199
    :cond_1
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 200
    .local v1, "encoded":[B
    if-eqz v1, :cond_0

    .line 204
    :try_start_0
    new-instance v2, Lorg/conscrypt/OpenSSLKey;

    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static fromPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 79
    instance-of v3, p0, Lorg/conscrypt/OpenSSLKeyHolder;

    if-eqz v3, :cond_0

    .line 80
    check-cast p0, Lorg/conscrypt/OpenSSLKeyHolder;

    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-interface {p0}, Lorg/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v3

    .line 96
    .local v2, "keyFormat":Ljava/lang/String;
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :goto_0
    return-object v3

    .line 83
    .end local v2    # "keyFormat":Ljava/lang/String;
    :cond_0
    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    .line 84
    .restart local v2    # "keyFormat":Ljava/lang/String;
    if-nez v2, :cond_1

    .line 85
    invoke-static {p0}, Lorg/conscrypt/OpenSSLKey;->wrapPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v3

    goto :goto_0

    .line 86
    :cond_1
    const-string v3, "PKCS#8"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 87
    new-instance v3, Ljava/security/InvalidKeyException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown key format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 90
    :cond_2
    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v1

    .line 91
    .local v1, "encoded":[B
    if-nez v1, :cond_3

    .line 92
    new-instance v3, Ljava/security/InvalidKeyException;

    const-string v4, "Key encoding is null"

    invoke-direct {v3, v4}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 96
    :cond_3
    :try_start_0
    new-instance v3, Lorg/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PrivateKey;->getEncoded()[B

    move-result-object v4

    invoke-static {v4}, Lorg/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v3, Ljava/security/InvalidKeyException;

    invoke-direct {v3, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 3
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0}, Lorg/conscrypt/OpenSSLKey;->getOpenSSLKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 135
    .local v0, "result":Lorg/conscrypt/OpenSSLKey;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    .local v1, "result":Lorg/conscrypt/OpenSSLKey;
    move-object v2, v0

    .line 144
    :goto_0
    return-object v2

    .line 139
    .end local v1    # "result":Lorg/conscrypt/OpenSSLKey;
    .restart local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    :cond_0
    invoke-static {p0}, Lorg/conscrypt/OpenSSLKey;->fromKeyMaterial(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    .restart local v1    # "result":Lorg/conscrypt/OpenSSLKey;
    move-object v2, v0

    .line 141
    goto :goto_0

    .line 144
    .end local v1    # "result":Lorg/conscrypt/OpenSSLKey;
    .restart local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    :cond_1
    invoke-static {p0, p1}, Lorg/conscrypt/OpenSSLKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    move-object v1, v0

    .end local v0    # "result":Lorg/conscrypt/OpenSSLKey;
    .restart local v1    # "result":Lorg/conscrypt/OpenSSLKey;
    goto :goto_0
.end method

.method static fromPrivateKeyPemInputStream(Ljava/io/InputStream;)Lorg/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 111
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->PEM_read_bio_PrivateKey(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 112
    .local v2, "keyCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 113
    const/4 v4, 0x0

    .line 120
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 116
    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    new-instance v4, Lorg/conscrypt/OpenSSLKey;

    invoke-direct {v4, v2, v3}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 117
    .end local v2    # "keyCtx":J
    :catch_0
    move-exception v1

    .line 118
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method static fromPublicKey(Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 238
    instance-of v2, p0, Lorg/conscrypt/OpenSSLKeyHolder;

    if-eqz v2, :cond_0

    .line 239
    check-cast p0, Lorg/conscrypt/OpenSSLKeyHolder;

    .end local p0    # "key":Ljava/security/PublicKey;
    invoke-interface {p0}, Lorg/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    .line 252
    .local v1, "encoded":[B
    .restart local p0    # "key":Ljava/security/PublicKey;
    :goto_0
    return-object v2

    .line 242
    .end local v1    # "encoded":[B
    :cond_0
    const-string v2, "X.509"

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    new-instance v2, Ljava/security/InvalidKeyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown key format "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 246
    :cond_1
    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    .line 247
    .restart local v1    # "encoded":[B
    if-nez v1, :cond_2

    .line 248
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "Key encoding is null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 252
    :cond_2
    :try_start_0
    new-instance v2, Lorg/conscrypt/OpenSSLKey;

    invoke-interface {p0}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 254
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method static fromPublicKeyPemInputStream(Ljava/io/InputStream;)Lorg/conscrypt/OpenSSLKey;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 265
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 267
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->PEM_read_bio_PUBKEY(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 268
    .local v2, "keyCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 269
    const/4 v4, 0x0

    .line 276
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 272
    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    new-instance v4, Lorg/conscrypt/OpenSSLKey;

    invoke-direct {v4, v2, v3}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 276
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 273
    .end local v2    # "keyCtx":J
    :catch_0
    move-exception v1

    .line 274
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Ljava/security/InvalidKeyException;

    invoke-direct {v4, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 276
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method private static getOpenSSLKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 2
    .param p0, "key"    # Ljava/security/PrivateKey;

    .prologue
    .line 178
    instance-of v0, p0, Lorg/conscrypt/OpenSSLKeyHolder;

    if-eqz v0, :cond_0

    .line 179
    check-cast p0, Lorg/conscrypt/OpenSSLKeyHolder;

    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-interface {p0}, Lorg/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 186
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :goto_0
    return-object v0

    .line 182
    :cond_0
    const-string v0, "RSA"

    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    invoke-static {p0}, Lorg/conscrypt/Platform;->wrapRsaKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;
    .locals 6
    .param p0, "keySpec"    # Ljava/security/spec/PKCS8EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 326
    move-object v2, p0

    .line 330
    .local v2, "pkcs8KeySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    :try_start_0
    new-instance v1, Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Ljava/security/spec/PKCS8EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->EVP_parse_private_key([B)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .local v1, "key":Lorg/conscrypt/OpenSSLKey;
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 336
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Unexpected key type"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 331
    .end local v1    # "key":Lorg/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v0

    .line 332
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "key":Lorg/conscrypt/OpenSSLKey;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getPrivateKey()Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 341
    :catch_1
    move-exception v0

    .line 342
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method static getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;
    .locals 6
    .param p0, "keySpec"    # Ljava/security/spec/X509EncodedKeySpec;
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 293
    move-object v2, p0

    .line 297
    .local v2, "x509KeySpec":Ljava/security/spec/X509EncodedKeySpec;
    :try_start_0
    new-instance v1, Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v2}, Ljava/security/spec/X509EncodedKeySpec;->getEncoded()[B

    move-result-object v3

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->EVP_parse_public_key([B)J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 302
    .local v1, "key":Lorg/conscrypt/OpenSSLKey;
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v3

    invoke-static {v3}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v3

    if-eq v3, p1, :cond_0

    .line 303
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Unexpected key type"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 298
    .end local v1    # "key":Lorg/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "key":Lorg/conscrypt/OpenSSLKey;
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lorg/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    return-object v3

    .line 308
    :catch_1
    move-exception v0

    .line 309
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private static wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 4
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 217
    invoke-interface {p0}, Ljava/security/PrivateKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "keyAlgorithm":Ljava/lang/String;
    const-string v1, "RSA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 219
    invoke-static {p0, p1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v1

    .line 221
    :goto_0
    return-object v1

    .line 220
    :cond_0
    const-string v1, "EC"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    invoke-static {p0, p1}, Lorg/conscrypt/OpenSSLECPrivateKey;->wrapJCAPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v1

    goto :goto_0

    .line 223
    :cond_1
    new-instance v1, Ljava/security/InvalidKeyException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key algorithm: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static wrapPrivateKey(Ljava/security/PrivateKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 3
    .param p0, "key"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 228
    instance-of v0, p0, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_0

    .line 229
    check-cast p0, Ljava/security/interfaces/RSAPrivateKey;

    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-static {p0}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 231
    :goto_0
    return-object v0

    .line 230
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_0
    instance-of v0, p0, Ljava/security/interfaces/ECPrivateKey;

    if-eqz v0, :cond_1

    .line 231
    check-cast p0, Ljava/security/interfaces/ECPrivateKey;

    .end local p0    # "key":Ljava/security/PrivateKey;
    invoke-static {p0}, Lorg/conscrypt/OpenSSLECPrivateKey;->wrapPlatformKey(Ljava/security/interfaces/ECPrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    goto :goto_0

    .line 233
    .restart local p0    # "key":Ljava/security/PrivateKey;
    :cond_1
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 348
    if-ne p1, p0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return v1

    .line 352
    :cond_1
    instance-of v3, p1, Lorg/conscrypt/OpenSSLKey;

    if-nez v3, :cond_2

    move v1, v2

    .line 353
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 356
    check-cast v0, Lorg/conscrypt/OpenSSLKey;

    .line 357
    .local v0, "other":Lorg/conscrypt/OpenSSLKey;
    iget-object v3, p0, Lorg/conscrypt/OpenSSLKey;->ctx:Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/conscrypt/NativeRef$EVP_PKEY;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 361
    iget-object v3, p0, Lorg/conscrypt/OpenSSLKey;->ctx:Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_cmp(Lorg/conscrypt/NativeRef$EVP_PKEY;Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v3

    if-eq v3, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/conscrypt/OpenSSLKey;->ctx:Lorg/conscrypt/NativeRef$EVP_PKEY;

    return-object v0
.end method

.method getPrivateKey()Ljava/security/PrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 314
    iget-object v0, p0, Lorg/conscrypt/OpenSSLKey;->ctx:Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 320
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :sswitch_0
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lorg/conscrypt/OpenSSLKey;)V

    .line 318
    :goto_0
    return-object v0

    :sswitch_1
    new-instance v0, Lorg/conscrypt/OpenSSLECPrivateKey;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLECPrivateKey;-><init>(Lorg/conscrypt/OpenSSLKey;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x198 -> :sswitch_1
    .end sparse-switch
.end method

.method getPublicKey()Ljava/security/PublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/conscrypt/OpenSSLKey;->ctx:Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 287
    new-instance v0, Ljava/security/NoSuchAlgorithmException;

    const-string v1, "unknown PKEY type"

    invoke-direct {v0, v1}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 283
    :sswitch_0
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLRSAPublicKey;-><init>(Lorg/conscrypt/OpenSSLKey;)V

    .line 285
    :goto_0
    return-object v0

    :sswitch_1
    new-instance v0, Lorg/conscrypt/OpenSSLECPublicKey;

    invoke-direct {v0, p0}, Lorg/conscrypt/OpenSSLECPublicKey;-><init>(Lorg/conscrypt/OpenSSLKey;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x198 -> :sswitch_1
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lorg/conscrypt/OpenSSLKey;->ctx:Lorg/conscrypt/NativeRef$EVP_PKEY;

    invoke-virtual {v0}, Lorg/conscrypt/NativeRef$EVP_PKEY;->hashCode()I

    move-result v0

    return v0
.end method

.method isHardwareBacked()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLKey;->hardwareBacked:Z

    return v0
.end method

.method isWrapped()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLKey;->wrapped:Z

    return v0
.end method
