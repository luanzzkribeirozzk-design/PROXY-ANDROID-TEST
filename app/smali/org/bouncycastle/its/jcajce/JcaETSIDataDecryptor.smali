.class public Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/its/operator/ETSIDataDecryptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor$Builder;
    }
.end annotation


# instance fields
.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final privateKey:Ljava/security/PrivateKey;

.field private final recipientHash:[B

.field private secretKey:Ljavax/crypto/SecretKey;


# direct methods
.method constructor <init>(Ljava/security/PrivateKey;[BLorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->privateKey:Ljava/security/PrivateKey;

    iput-object p3, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->recipientHash:[B

    return-void
.end method

.method public static builder(Ljava/security/PrivateKey;[B)Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor$Builder;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor$Builder;-><init>(Ljava/security/PrivateKey;[B)V

    return-object v0
.end method


# virtual methods
.method public decrypt([B[B[B)[B
    .locals 5

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "ETSIKEMwithSHA256"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->privateKey:Ljava/security/PrivateKey;

    new-instance v3, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;

    iget-object v4, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->recipientHash:[B

    invoke-direct {v3, v4}, Lorg/bouncycastle/jcajce/spec/IESKEMParameterSpec;-><init>([B)V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    const-string v1, "AES"

    const/4 v2, 0x3

    invoke-virtual {v0, p1, v1, v2}, Ljavax/crypto/Cipher;->unwrap([BLjava/lang/String;I)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "CCM"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createCipher(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    const/16 v3, 0x80

    invoke-static {p3, v3}, Lorg/bouncycastle/its/jcajce/ClassUtil;->getGCMSpec([BI)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, p2}, Ljavax/crypto/Cipher;->doFinal([B)[B
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
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "no secret key recovered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaETSIDataDecryptor;->secretKey:Ljavax/crypto/SecretKey;

    invoke-interface {v0}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
