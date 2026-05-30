.class public final Lorg/conscrypt/OpenSSLRSAKeyPairGenerator;
.super Ljava/security/KeyPairGeneratorSpi;
.source "OpenSSLRSAKeyPairGenerator.java"


# instance fields
.field private modulusBits:I

.field private publicExponent:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/security/KeyPairGeneratorSpi;-><init>()V

    .line 38
    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    .line 45
    const/16 v0, 0x800

    iput v0, p0, Lorg/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    return-void

    .line 38
    :array_0
    .array-data 1
        0x1t
        0x0t
        0x1t
    .end array-data
.end method


# virtual methods
.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 6

    .prologue
    .line 49
    new-instance v0, Lorg/conscrypt/OpenSSLKey;

    iget v3, p0, Lorg/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    iget-object v4, p0, Lorg/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    invoke-static {v3, v4}, Lorg/conscrypt/NativeCrypto;->RSA_generate_key_ex(I[B)J

    move-result-wide v4

    invoke-direct {v0, v4, v5}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    .line 52
    .local v0, "key":Lorg/conscrypt/OpenSSLKey;
    invoke-static {v0}, Lorg/conscrypt/OpenSSLRSAPrivateKey;->getInstance(Lorg/conscrypt/OpenSSLKey;)Lorg/conscrypt/OpenSSLRSAPrivateKey;

    move-result-object v1

    .line 53
    .local v1, "privKey":Ljava/security/PrivateKey;
    new-instance v2, Lorg/conscrypt/OpenSSLRSAPublicKey;

    invoke-direct {v2, v0}, Lorg/conscrypt/OpenSSLRSAPublicKey;-><init>(Lorg/conscrypt/OpenSSLKey;)V

    .line 55
    .local v2, "pubKey":Ljava/security/PublicKey;
    new-instance v3, Ljava/security/KeyPair;

    invoke-direct {v3, v2, v1}, Ljava/security/KeyPair;-><init>(Ljava/security/PublicKey;Ljava/security/PrivateKey;)V

    return-object v3
.end method

.method public initialize(ILjava/security/SecureRandom;)V
    .locals 0
    .param p1, "keysize"    # I
    .param p2, "random"    # Ljava/security/SecureRandom;

    .prologue
    .line 60
    iput p1, p0, Lorg/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 61
    return-void
.end method

.method public initialize(Ljava/security/spec/AlgorithmParameterSpec;Ljava/security/SecureRandom;)V
    .locals 4
    .param p1, "params"    # Ljava/security/spec/AlgorithmParameterSpec;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 66
    instance-of v2, p1, Ljava/security/spec/RSAKeyGenParameterSpec;

    if-nez v2, :cond_0

    .line 67
    new-instance v2, Ljava/security/InvalidAlgorithmParameterException;

    const-string v3, "Only RSAKeyGenParameterSpec supported"

    invoke-direct {v2, v3}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    move-object v1, p1

    .line 70
    check-cast v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 72
    .local v1, "spec":Ljava/security/spec/RSAKeyGenParameterSpec;
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 73
    .local v0, "publicExponent":Ljava/math/BigInteger;
    if-eqz v0, :cond_1

    .line 74
    invoke-virtual {v0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/OpenSSLRSAKeyPairGenerator;->publicExponent:[B

    .line 77
    :cond_1
    invoke-virtual {v1}, Ljava/security/spec/RSAKeyGenParameterSpec;->getKeysize()I

    move-result v2

    iput v2, p0, Lorg/conscrypt/OpenSSLRSAKeyPairGenerator;->modulusBits:I

    .line 78
    return-void
.end method
