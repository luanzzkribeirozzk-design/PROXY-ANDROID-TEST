.class public Lorg/conscrypt/DESEDESecretKeyFactory;
.super Ljavax/crypto/SecretKeyFactorySpi;
.source "DESEDESecretKeyFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljavax/crypto/SecretKeyFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGenerateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;
    .locals 6
    .param p1, "keySpec"    # Ljava/security/spec/KeySpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "Null KeySpec"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 41
    :cond_0
    instance-of v3, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v3, :cond_1

    move-object v2, p1

    .line 42
    check-cast v2, Ljavax/crypto/spec/SecretKeySpec;

    .line 44
    .local v2, "key":Ljavax/crypto/spec/SecretKeySpec;
    :try_start_0
    invoke-virtual {v2}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    move-result v3

    if-nez v3, :cond_2

    .line 45
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    const-string v4, "SecretKeySpec is not a parity-adjusted DESEDE key"

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :catch_0
    move-exception v1

    .line 49
    .local v1, "e":Ljava/security/InvalidKeyException;
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v3, v1}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 52
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    .end local v2    # "key":Ljavax/crypto/spec/SecretKeySpec;
    :cond_1
    instance-of v3, p1, Ljavax/crypto/spec/DESedeKeySpec;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 53
    check-cast v0, Ljavax/crypto/spec/DESedeKeySpec;

    .line 54
    .local v0, "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    new-instance v2, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {v0}, Ljavax/crypto/spec/DESedeKeySpec;->getKey()[B

    move-result-object v3

    const-string v4, "DESEDE"

    invoke-direct {v2, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .end local v0    # "desKeySpec":Ljavax/crypto/spec/DESedeKeySpec;
    :cond_2
    return-object v2

    .line 56
    :cond_3
    new-instance v3, Ljava/security/spec/InvalidKeySpecException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported KeySpec class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected engineGetKeySpec(Ljavax/crypto/SecretKey;Ljava/lang/Class;)Ljava/security/spec/KeySpec;
    .locals 4
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .param p2, "aClass"    # Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "Null SecretKey"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 67
    :cond_0
    const-class v1, Ljavax/crypto/spec/SecretKeySpec;

    if-ne p2, v1, :cond_3

    .line 69
    :try_start_0
    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljavax/crypto/spec/DESedeKeySpec;->isParityAdjusted([BI)Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    const-string v2, "SecretKey is not a parity-adjusted DESEDE key"

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 75
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_1
    instance-of v1, p1, Ljavax/crypto/spec/SecretKeySpec;

    if-eqz v1, :cond_2

    .line 76
    check-cast p1, Ljava/security/spec/KeySpec;

    .line 82
    .end local p1    # "secretKey":Ljavax/crypto/SecretKey;
    :goto_0
    return-object p1

    .line 78
    .restart local p1    # "secretKey":Ljavax/crypto/SecretKey;
    :cond_2
    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    const-string v3, "DESEDE"

    invoke-direct {v1, v2, v3}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    move-object p1, v1

    goto :goto_0

    .line 80
    :cond_3
    const-class v1, Ljavax/crypto/spec/DESedeKeySpec;

    if-ne p2, v1, :cond_4

    .line 82
    :try_start_1
    new-instance v1, Ljavax/crypto/spec/DESedeKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/crypto/spec/DESedeKeySpec;-><init>([B)V
    :try_end_1
    .catch Ljava/security/InvalidKeyException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v1

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    .line 84
    .restart local v0    # "e":Ljava/security/InvalidKeyException;
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    invoke-direct {v1, v0}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0    # "e":Ljava/security/InvalidKeyException;
    :cond_4
    new-instance v1, Ljava/security/spec/InvalidKeySpecException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported KeySpec class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/spec/InvalidKeySpecException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected engineTranslateKey(Ljavax/crypto/SecretKey;)Ljavax/crypto/SecretKey;
    .locals 3
    .param p1, "secretKey"    # Ljavax/crypto/SecretKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 93
    if-nez p1, :cond_0

    .line 94
    new-instance v0, Ljava/security/InvalidKeyException;

    const-string v1, "Null SecretKey"

    invoke-direct {v0, v1}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v1

    invoke-interface {p1}, Ljavax/crypto/SecretKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v0
.end method
