.class public Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/its/operator/ETSIDataEncryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$Builder;
    }
.end annotation


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private key:[B

.field private nonce:[B

.field private final random:Ljava/security/SecureRandom;


# direct methods
.method private constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->random:Ljava/security/SecureRandom;

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    return-void
.end method

.method synthetic constructor <init>(Ljava/security/SecureRandom;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;-><init>(Ljava/security/SecureRandom;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method


# virtual methods
.method public encrypt([B)[B
    .locals 5

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->key:[B

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->key:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/16 v0, 0xc

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->nonce:[B

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->random:Ljava/security/SecureRandom;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->nonce:[B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->key:[B

    const-string v2, "AES"

    invoke-direct {v0, v1, v2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v2, "CCM"

    invoke-interface {v1, v2}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->nonce:[B

    const/16 v4, 0x80

    invoke-static {v3, v4}, Lorg/bouncycastle/its/jcajce/ClassUtil;->getGCMSpec([BI)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v1, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->key:[B

    return-object v0
.end method

.method public getNonce()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JceETSIDataEncryptor;->nonce:[B

    return-object v0
.end method
