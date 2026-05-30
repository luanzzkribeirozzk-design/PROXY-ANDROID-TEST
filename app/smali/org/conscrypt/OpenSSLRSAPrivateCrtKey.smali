.class final Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;
.super Lorg/conscrypt/OpenSSLRSAPrivateKey;
.source "OpenSSLRSAPrivateCrtKey.java"

# interfaces
.implements Ljava/security/interfaces/RSAPrivateCrtKey;


# static fields
.field private static final serialVersionUID:J = 0x34880ef7f10bfb7dL


# instance fields
.field private crtCoefficient:Ljava/math/BigInteger;

.field private primeExponentP:Ljava/math/BigInteger;

.field private primeExponentQ:Ljava/math/BigInteger;

.field private primeP:Ljava/math/BigInteger;

.field private primeQ:Ljava/math/BigInteger;

.field private publicExponent:Ljava/math/BigInteger;


# direct methods
.method constructor <init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V
    .locals 1
    .param p1, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 58
    invoke-static {p1}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lorg/conscrypt/OpenSSLKey;)V

    .line 59
    return-void
.end method

.method constructor <init>(Lorg/conscrypt/OpenSSLKey;)V
    .locals 0
    .param p1, "key"    # Lorg/conscrypt/OpenSSLKey;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lorg/conscrypt/OpenSSLKey;)V

    .line 51
    return-void
.end method

.method constructor <init>(Lorg/conscrypt/OpenSSLKey;[[B)V
    .locals 0
    .param p1, "key"    # Lorg/conscrypt/OpenSSLKey;
    .param p2, "params"    # [[B

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLRSAPrivateKey;-><init>(Lorg/conscrypt/OpenSSLKey;[[B)V

    .line 55
    return-void
.end method

.method static getInstance(Ljava/security/interfaces/RSAPrivateCrtKey;)Lorg/conscrypt/OpenSSLKey;
    .locals 20
    .param p0, "rsaPrivateKey"    # Ljava/security/interfaces/RSAPrivateCrtKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 104
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getFormat()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 105
    invoke-static/range {p0 .. p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->wrapPlatformKey(Ljava/security/interfaces/RSAPrivateKey;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    .line 131
    :goto_0
    return-object v2

    .line 108
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    .line 109
    .local v12, "modulus":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v17

    .line 111
    .local v17, "privateExponent":Ljava/math/BigInteger;
    if-nez v12, :cond_1

    .line 112
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "modulus == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 113
    :cond_1
    if-nez v17, :cond_2

    .line 114
    new-instance v2, Ljava/security/InvalidKeyException;

    const-string v3, "privateExponent == null"

    invoke-direct {v2, v3}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 124
    :cond_2
    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v18

    .line 125
    .local v18, "publicExponent":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v15

    .line 126
    .local v15, "primeP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v16

    .line 127
    .local v16, "primeQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v13

    .line 128
    .local v13, "primeExponentP":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v14

    .line 129
    .local v14, "primeExponentQ":Ljava/math/BigInteger;
    invoke-interface/range {p0 .. p0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    .line 131
    .local v10, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v19, Lorg/conscrypt/OpenSSLKey;

    .line 132
    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 133
    if-nez v18, :cond_3

    const/4 v3, 0x0

    .line 134
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 135
    if-nez v15, :cond_4

    const/4 v5, 0x0

    .line 136
    :goto_2
    if-nez v16, :cond_5

    const/4 v6, 0x0

    .line 137
    :goto_3
    if-nez v13, :cond_6

    const/4 v7, 0x0

    .line 138
    :goto_4
    if-nez v14, :cond_7

    const/4 v8, 0x0

    .line 139
    :goto_5
    if-nez v10, :cond_8

    const/4 v9, 0x0

    .line 131
    :goto_6
    invoke-static/range {v2 .. v9}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    move-object/from16 v2, v19

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_1

    .line 135
    :cond_4
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_2

    .line 136
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_3

    .line 137
    :cond_6
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_4

    .line 138
    :cond_7
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    goto :goto_5

    .line 139
    :cond_8
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_6

    .line 140
    .end local v10    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v13    # "primeExponentP":Ljava/math/BigInteger;
    .end local v14    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v15    # "primeP":Ljava/math/BigInteger;
    .end local v16    # "primeQ":Ljava/math/BigInteger;
    .end local v18    # "publicExponent":Ljava/math/BigInteger;
    :catch_0
    move-exception v11

    .line 141
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/InvalidKeyException;

    invoke-direct {v2, v11}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static init(Ljava/security/spec/RSAPrivateCrtKeySpec;)Lorg/conscrypt/OpenSSLKey;
    .locals 20
    .param p0, "rsaKeySpec"    # Ljava/security/spec/RSAPrivateCrtKeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    .line 63
    .local v12, "modulus":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v17

    .line 65
    .local v17, "privateExponent":Ljava/math/BigInteger;
    if-nez v12, :cond_0

    .line 66
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "modulus == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 67
    :cond_0
    if-nez v17, :cond_1

    .line 68
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    const-string v3, "privateExponent == null"

    invoke-direct {v2, v3}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 78
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v18

    .line 79
    .local v18, "publicExponent":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v15

    .line 80
    .local v15, "primeP":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v16

    .line 81
    .local v16, "primeQ":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v13

    .line 82
    .local v13, "primeExponentP":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v14

    .line 83
    .local v14, "primeExponentQ":Ljava/math/BigInteger;
    invoke-virtual/range {p0 .. p0}, Ljava/security/spec/RSAPrivateCrtKeySpec;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v10

    .line 85
    .local v10, "crtCoefficient":Ljava/math/BigInteger;
    new-instance v19, Lorg/conscrypt/OpenSSLKey;

    .line 86
    invoke-virtual {v12}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 87
    if-nez v18, :cond_2

    const/4 v3, 0x0

    .line 88
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    .line 89
    if-nez v15, :cond_3

    const/4 v5, 0x0

    .line 90
    :goto_1
    if-nez v16, :cond_4

    const/4 v6, 0x0

    .line 91
    :goto_2
    if-nez v13, :cond_5

    const/4 v7, 0x0

    .line 92
    :goto_3
    if-nez v14, :cond_6

    const/4 v8, 0x0

    .line 93
    :goto_4
    if-nez v10, :cond_7

    const/4 v9, 0x0

    .line 85
    :goto_5
    invoke-static/range {v2 .. v9}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v2

    move-object/from16 v0, v19

    invoke-direct {v0, v2, v3}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    return-object v19

    .line 87
    :cond_2
    invoke-virtual/range {v18 .. v18}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_0

    .line 89
    :cond_3
    invoke-virtual {v15}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_1

    .line 90
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_2

    .line 91
    :cond_5
    invoke-virtual {v13}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_3

    .line 92
    :cond_6
    invoke-virtual {v14}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v8

    goto :goto_4

    .line 93
    :cond_7
    invoke-virtual {v10}, Ljava/math/BigInteger;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    goto :goto_5

    .line 94
    .end local v10    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v13    # "primeExponentP":Ljava/math/BigInteger;
    .end local v14    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v15    # "primeP":Ljava/math/BigInteger;
    .end local v16    # "primeQ":Ljava/math/BigInteger;
    .end local v18    # "publicExponent":Ljava/math/BigInteger;
    :catch_0
    move-exception v11

    .line 95
    .local v11, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v2, v11}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 10
    .param p1, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 276
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 278
    new-instance v8, Lorg/conscrypt/OpenSSLKey;

    iget-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->modulus:Ljava/math/BigInteger;

    .line 279
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 280
    iget-object v1, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-nez v1, :cond_0

    move-object v1, v7

    :goto_0
    iget-object v2, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->privateExponent:Ljava/math/BigInteger;

    .line 281
    invoke-virtual {v2}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    .line 282
    iget-object v3, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    if-nez v3, :cond_1

    move-object v3, v7

    .line 283
    :goto_1
    iget-object v4, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    if-nez v4, :cond_2

    move-object v4, v7

    .line 284
    :goto_2
    iget-object v5, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    if-nez v5, :cond_3

    move-object v5, v7

    .line 285
    :goto_3
    iget-object v6, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    if-nez v6, :cond_4

    move-object v6, v7

    .line 286
    :goto_4
    iget-object v9, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    if-nez v9, :cond_5

    .line 278
    :goto_5
    invoke-static/range {v0 .. v7}, Lorg/conscrypt/NativeCrypto;->EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J

    move-result-wide v0

    invoke-direct {v8, v0, v1}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    iput-object v8, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->key:Lorg/conscrypt/OpenSSLKey;

    .line 287
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->fetchedParams:Z

    .line 288
    return-void

    .line 280
    :cond_0
    iget-object v1, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v3, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    invoke-virtual {v3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    goto :goto_1

    .line 283
    :cond_2
    iget-object v4, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    goto :goto_2

    .line 284
    :cond_3
    iget-object v5, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    invoke-virtual {v5}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v5

    goto :goto_3

    .line 285
    :cond_4
    iget-object v6, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    goto :goto_4

    .line 286
    :cond_5
    iget-object v7, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    invoke-virtual {v7}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v7

    goto :goto_5
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Ljava/io/NotSerializableException;

    const-string v1, "Hardware backed keys cannot be serialized"

    invoke-direct {v0, v1}, Ljava/io/NotSerializableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 296
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 297
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 208
    if-ne p1, p0, :cond_1

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 212
    :cond_1
    instance-of v3, p1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 213
    check-cast v0, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    .line 214
    .local v0, "other":Lorg/conscrypt/OpenSSLRSAPrivateKey;
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v1

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/conscrypt/OpenSSLKey;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 217
    .end local v0    # "other":Lorg/conscrypt/OpenSSLRSAPrivateKey;
    :cond_2
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v3, :cond_6

    .line 218
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    move-object v0, p1

    .line 219
    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 221
    .local v0, "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 222
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 223
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 225
    :cond_4
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 226
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 227
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 228
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 229
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 230
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    .line 231
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    goto/16 :goto_0

    .line 233
    .end local v0    # "other":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_6
    instance-of v3, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v3, :cond_9

    .line 234
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    move-object v0, p1

    .line 235
    check-cast v0, Ljava/security/interfaces/RSAPrivateKey;

    .line 237
    .local v0, "other":Ljava/security/interfaces/RSAPrivateKey;
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v3

    invoke-virtual {v3}, Lorg/conscrypt/OpenSSLKey;->isHardwareBacked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 238
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0

    .line 240
    :cond_7
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 241
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_8
    move v1, v2

    goto/16 :goto_0

    .end local v0    # "other":Ljava/security/interfaces/RSAPrivateKey;
    :cond_9
    move v1, v2

    .line 245
    goto/16 :goto_0
.end method

.method public getCrtCoefficient()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 203
    iget-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 190
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 191
    iget-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 196
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 197
    iget-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeP()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 179
    iget-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPrimeQ()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 184
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 185
    iget-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .locals 1

    .prologue
    .line 172
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 173
    iget-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 250
    invoke-super {p0}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->hashCode()I

    move-result v0

    .line 251
    .local v0, "hashCode":I
    iget-object v1, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 254
    :cond_0
    return v0
.end method

.method declared-synchronized readParams([[B)V
    .locals 2
    .param p1, "params"    # [[B

    .prologue
    .line 147
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->readParams([[B)V

    .line 149
    const/4 v0, 0x1

    aget-object v0, p1, v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    .line 153
    :cond_0
    const/4 v0, 0x3

    aget-object v0, p1, v0

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeP:Ljava/math/BigInteger;

    .line 156
    :cond_1
    const/4 v0, 0x4

    aget-object v0, p1, v0

    if-eqz v0, :cond_2

    .line 157
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x4

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeQ:Ljava/math/BigInteger;

    .line 159
    :cond_2
    const/4 v0, 0x5

    aget-object v0, p1, v0

    if-eqz v0, :cond_3

    .line 160
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x5

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentP:Ljava/math/BigInteger;

    .line 162
    :cond_3
    const/4 v0, 0x6

    aget-object v0, p1, v0

    if-eqz v0, :cond_4

    .line 163
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x6

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->primeExponentQ:Ljava/math/BigInteger;

    .line 165
    :cond_4
    const/4 v0, 0x7

    aget-object v0, p1, v0

    if-eqz v0, :cond_5

    .line 166
    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x7

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    iput-object v0, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->crtCoefficient:Ljava/math/BigInteger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    :cond_5
    monitor-exit p0

    return-void

    .line 147
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x10

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OpenSSLRSAPrivateCrtKey{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->ensureReadParams()V

    .line 262
    const-string v1, "modulus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    iget-object v1, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    if-eqz v1, :cond_0

    .line 266
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 267
    const-string v1, "publicExponent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-object v1, p0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
