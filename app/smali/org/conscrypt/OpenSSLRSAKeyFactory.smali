.class public final Lorg/conscrypt/OpenSSLRSAKeyFactory;
.super Ljava/security/KeyFactorySpi;
.source "OpenSSLRSAKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/security/KeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    instance-of v0, p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;

    check-cast p1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLRSAPrivateCrtKey;-><init>(Ljava/security/spec/RSAPrivateCrtKeySpec;)V

    .line 69
    :goto_0
    return-object v0

    .line 66
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/RSAPrivateKeySpec;

    if-eqz v0, :cond_2

    .line 67
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    check-cast p1, Ljava/security/spec/RSAPrivateKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLRSAPrivateKey;-><init>(Ljava/security/spec/RSAPrivateKeySpec;)V

    goto :goto_0

    .line 68
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    instance-of v0, p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    if-eqz v0, :cond_3

    .line 69
    check-cast p1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->getPrivateKey(Ljava/security/spec/PKCS8EncodedKeySpec;I)Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0

    .line 72
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_3
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use RSAPublicKeySpec or PKCS8EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    .locals 3
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 45
    if-nez p1, :cond_0

    .line 46
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    const-string v1, "keySpec == null"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    instance-of v0, p1, Ljava/security/spec/RSAPublicKeySpec;

    if-eqz v0, :cond_1

    .line 50
    new-instance v0, Lorg/conscrypt/OpenSSLRSAPublicKey;

    check-cast p1, Ljava/security/spec/RSAPublicKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    invoke-direct {v0, p1}, Lorg/conscrypt/OpenSSLRSAPublicKey;-><init>(Ljava/security/spec/RSAPublicKeySpec;)V

    .line 52
    :goto_0
    return-object v0

    .line 51
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_1
    instance-of v0, p1, Ljava/security/spec/X509EncodedKeySpec;

    if-eqz v0, :cond_2

    .line 52
    check-cast p1, Ljava/security/spec/X509EncodedKeySpec;

    .end local p1    # "keySpec":Ljava/security/spec/KeySpec;
    const/4 v0, 0x6

    invoke-static {p1, v0}, Lorg/conscrypt/OpenSSLKey;->getPublicKey(Ljava/security/spec/X509EncodedKeySpec;I)Ljava/security/PublicKey;

    move-result-object v0

    goto :goto_0

    .line 54
    .restart local p1    # "keySpec":Ljava/security/spec/KeySpec;
    :cond_2
    new-instance v0, Ljava/security/spec/InvalidKeySpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Must use RSAPublicKeySpec or X509EncodedKeySpec; was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetKeySpec(Ljava/security/Key;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 12
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/KeySpec;",
            ">(",
            "Ljava/security/Key;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "keySpec":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p1, :cond_0

    .line 80
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "key == null"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    if-nez p2, :cond_1

    .line 84
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "keySpec == null"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_1
    const-string v1, "RSA"

    invoke-interface {p1}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 88
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Key must be a RSA key"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_2
    instance-of v1, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v1, :cond_3

    const-class v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v11, p1

    .line 92
    check-cast v11, Ljava/security/interfaces/RSAPublicKey;

    .line 94
    .local v11, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 176
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    .local v0, "result":Ljava/security/spec/KeySpec;, "TT;"
    :goto_0
    return-object v0

    .line 96
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    :cond_3
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_6

    const-class v1, Ljava/security/spec/RSAPublicKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 97
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    .line 98
    .local v9, "encoded":[B
    const-string v1, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez v9, :cond_5

    .line 99
    :cond_4
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Not a valid X.509 encoding"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_5
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 102
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v11

    check-cast v11, Ljava/security/interfaces/RSAPublicKey;

    .line 104
    .restart local v11    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 105
    .restart local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto :goto_0

    .line 106
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v9    # "encoded":[B
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_6
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_7

    const-class v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 107
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object v11, p1

    .line 108
    check-cast v11, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 110
    .local v11, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 111
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 112
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    .line 113
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 114
    .restart local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto :goto_0

    .line 115
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_7
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_8

    const-class v1, Ljava/security/spec/RSAPrivateKeySpec;

    .line 116
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v11, p1

    .line 117
    check-cast v11, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 119
    .restart local v11    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 120
    .restart local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto/16 :goto_0

    .line 121
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_8
    instance-of v1, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v1, :cond_9

    const-class v1, Ljava/security/spec/RSAPrivateKeySpec;

    .line 122
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v11, p1

    .line 123
    check-cast v11, Ljava/security/interfaces/RSAPrivateKey;

    .line 125
    .local v11, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 126
    .restart local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto/16 :goto_0

    .line 127
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_9
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_d

    const-class v1, Ljava/security/spec/RSAPrivateCrtKeySpec;

    .line 128
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 129
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    .line 130
    .restart local v9    # "encoded":[B
    const-string v1, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-nez v9, :cond_b

    .line 131
    :cond_a
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Not a valid PKCS#8 encoding"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 133
    :cond_b
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 134
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v10

    check-cast v10, Ljava/security/interfaces/RSAPrivateKey;

    .line 135
    .local v10, "privKey":Ljava/security/interfaces/RSAPrivateKey;
    instance-of v1, v10, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v1, :cond_c

    move-object v11, v10

    .line 136
    check-cast v11, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 138
    .local v11, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 139
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    .line 140
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    .line 141
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 142
    .restart local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto/16 :goto_0

    .line 144
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_c
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Encoded key is not an RSAPrivateCrtKey"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 146
    .end local v9    # "encoded":[B
    .end local v10    # "privKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_d
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_10

    const-class v1, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 147
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    .line 148
    .restart local v9    # "encoded":[B
    const-string v1, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    if-nez v9, :cond_f

    .line 149
    :cond_e
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Not a valid PKCS#8 encoding"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 151
    :cond_f
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 152
    invoke-virtual {p0, v1}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v11

    check-cast v11, Ljava/security/interfaces/RSAPrivateKey;

    .line 154
    .local v11, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 155
    .restart local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto/16 :goto_0

    .line 156
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v9    # "encoded":[B
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_10
    instance-of v1, p1, Ljava/security/PrivateKey;

    if-eqz v1, :cond_13

    const-class v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    .line 157
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 158
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    .line 159
    .restart local v9    # "encoded":[B
    const-string v1, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 160
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding type must be PKCS#8; was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 161
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_11
    if-nez v9, :cond_12

    .line 163
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Key is not encodable"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    :cond_12
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v9}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 166
    .restart local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto/16 :goto_0

    .line 167
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v9    # "encoded":[B
    :cond_13
    instance-of v1, p1, Ljava/security/PublicKey;

    if-eqz v1, :cond_16

    const-class v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 168
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v9

    .line 169
    .restart local v9    # "encoded":[B
    const-string v1, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 170
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encoding type must be X.509; was "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 171
    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 172
    :cond_14
    if-nez v9, :cond_15

    .line 173
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Key is not encodable"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 175
    :cond_15
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v9}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 176
    .restart local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    goto/16 :goto_0

    .line 178
    .end local v0    # "result":Ljava/security/spec/KeySpec;, "TT;"
    .end local v9    # "encoded":[B
    :cond_16
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported key type and key spec combination; key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", keySpec="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineTranslateKey(Ljava/security/Key;)Ljava/security/Key;
    .locals 14
    .param p1, "key"    # Ljava/security/Key;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v12, "key == null"

    invoke-direct {v0, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPublicKey;

    if-nez v0, :cond_1

    instance-of v0, p1, Lorg/conscrypt/OpenSSLRSAPrivateKey;

    if-eqz v0, :cond_2

    .line 244
    .end local p1    # "key":Ljava/security/Key;
    :cond_1
    :goto_0
    return-object p1

    .line 191
    .restart local p1    # "key":Ljava/security/Key;
    :cond_2
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_3

    move-object v11, p1

    .line 192
    check-cast v11, Ljava/security/interfaces/RSAPublicKey;

    .line 195
    .local v11, "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :try_start_0
    new-instance v0, Ljava/security/spec/RSAPublicKeySpec;

    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v12

    .line 196
    invoke-interface {v11}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v13

    invoke-direct {v0, v12, v13}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 195
    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v9

    .line 198
    .local v9, "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 200
    .end local v9    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPublicKey;
    :cond_3
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateCrtKey;

    if-eqz v0, :cond_4

    move-object v11, p1

    .line 201
    check-cast v11, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 202
    .local v11, "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 203
    .local v1, "modulus":Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    .line 204
    .local v2, "publicExponent":Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 205
    .local v3, "privateExponent":Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object v4

    .line 206
    .local v4, "primeP":Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v5

    .line 207
    .local v5, "primeQ":Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object v6

    .line 208
    .local v6, "primeExponentP":Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v7

    .line 209
    .local v7, "primeExponentQ":Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object v8

    .line 212
    .local v8, "crtCoefficient":Ljava/math/BigInteger;
    :try_start_1
    new-instance v0, Ljava/security/spec/RSAPrivateCrtKeySpec;

    invoke-direct/range {v0 .. v8}, Ljava/security/spec/RSAPrivateCrtKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    goto :goto_0

    .line 215
    :catch_1
    move-exception v9

    .line 216
    .restart local v9    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 218
    .end local v1    # "modulus":Ljava/math/BigInteger;
    .end local v2    # "publicExponent":Ljava/math/BigInteger;
    .end local v3    # "privateExponent":Ljava/math/BigInteger;
    .end local v4    # "primeP":Ljava/math/BigInteger;
    .end local v5    # "primeQ":Ljava/math/BigInteger;
    .end local v6    # "primeExponentP":Ljava/math/BigInteger;
    .end local v7    # "primeExponentQ":Ljava/math/BigInteger;
    .end local v8    # "crtCoefficient":Ljava/math/BigInteger;
    .end local v9    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPrivateCrtKey;
    :cond_4
    instance-of v0, p1, Ljava/security/interfaces/RSAPrivateKey;

    if-eqz v0, :cond_5

    move-object v11, p1

    .line 219
    check-cast v11, Ljava/security/interfaces/RSAPrivateKey;

    .line 220
    .local v11, "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 221
    .restart local v1    # "modulus":Ljava/math/BigInteger;
    invoke-interface {v11}, Ljava/security/interfaces/RSAPrivateKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object v3

    .line 224
    .restart local v3    # "privateExponent":Ljava/math/BigInteger;
    :try_start_2
    new-instance v0, Ljava/security/spec/RSAPrivateKeySpec;

    invoke-direct {v0, v1, v3}, Ljava/security/spec/RSAPrivateKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_2
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p1

    goto :goto_0

    .line 225
    :catch_2
    move-exception v9

    .line 226
    .restart local v9    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 228
    .end local v1    # "modulus":Ljava/math/BigInteger;
    .end local v3    # "privateExponent":Ljava/math/BigInteger;
    .end local v9    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v11    # "rsaKey":Ljava/security/interfaces/RSAPrivateKey;
    :cond_5
    instance-of v0, p1, Ljava/security/PrivateKey;

    if-eqz v0, :cond_7

    const-string v0, "PKCS#8"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 229
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    .line 230
    .local v10, "encoded":[B
    if-nez v10, :cond_6

    .line 231
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v12, "Key does not support encoding"

    invoke-direct {v0, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 234
    :cond_6
    :try_start_3
    new-instance v0, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v0, v10}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;
    :try_end_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object p1

    goto/16 :goto_0

    .line 235
    :catch_3
    move-exception v9

    .line 236
    .restart local v9    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 238
    .end local v9    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v10    # "encoded":[B
    :cond_7
    instance-of v0, p1, Ljava/security/PublicKey;

    if-eqz v0, :cond_9

    const-string v0, "X.509"

    invoke-interface {p1}, Ljava/security/Key;->getFormat()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 239
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    move-result-object v10

    .line 240
    .restart local v10    # "encoded":[B
    if-nez v10, :cond_8

    .line 241
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v12, "Key does not support encoding"

    invoke-direct {v0, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_8
    :try_start_4
    new-instance v0, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v0, v10}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLRSAKeyFactory;->engineGeneratePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_4
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object p1

    goto/16 :goto_0

    .line 245
    :catch_4
    move-exception v9

    .line 246
    .restart local v9    # "e":Ljava/security/spec/InvalidKeySpecException;
    new-instance v0, Ljava/security/InvalidKeyException;

    invoke-direct {v0, v9}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 249
    .end local v9    # "e":Ljava/security/spec/InvalidKeySpecException;
    .end local v10    # "encoded":[B
    :cond_9
    new-instance v0, Ljava/security/InvalidKeyException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Key must be an RSA public or private key; was "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 250
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
