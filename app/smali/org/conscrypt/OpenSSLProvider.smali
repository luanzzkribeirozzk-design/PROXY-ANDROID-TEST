.class public final Lorg/conscrypt/OpenSSLProvider;
.super Ljava/security/Provider;
.source "OpenSSLProvider.java"


# static fields
.field private static final PREFIX:Ljava/lang/String;

.field private static final STANDARD_EC_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.ECPrivateKey"

.field private static final STANDARD_RSA_PRIVATE_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPrivateKey"

.field private static final STANDARD_RSA_PUBLIC_KEY_INTERFACE_CLASS_NAME:Ljava/lang/String; = "java.security.interfaces.RSAPublicKey"

.field private static final serialVersionUID:J = 0x29969a845b3fb130L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lorg/conscrypt/OpenSSLProvider;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lorg/conscrypt/Platform;->getDefaultProviderName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 51
    invoke-static {}, Lorg/conscrypt/Platform;->provideTrustManagerByDefault()Z

    move-result v0

    const-string v1, "TLSv1.3"

    invoke-direct {p0, p1, v0, v1}, Lorg/conscrypt/OpenSSLProvider;-><init>(Ljava/lang/String;ZLjava/lang/String;)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "includeTrustManager"    # Z
    .param p3, "defaultTlsProtocol"    # Ljava/lang/String;

    .prologue
    .line 55
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v6, "Android\'s OpenSSL-backed security provider"

    invoke-direct {p0, p1, v4, v5, v6}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 58
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->checkAvailability()V

    .line 61
    invoke-static {}, Lorg/conscrypt/Platform;->setup()V

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "OpenSSLContextImpl"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "classOpenSSLContextImpl":Ljava/lang/String;
    const-string v2, "$TLSv12"

    .line 66
    .local v2, "tls12SSLContextSuffix":Ljava/lang/String;
    const-string v3, "$TLSv13"

    .line 68
    .local v3, "tls13SSLContextSuffix":Ljava/lang/String;
    const/4 v4, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v4, :pswitch_data_1

    .line 76
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Choice of default protocol is unsupported: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 68
    :pswitch_0
    const-string v5, "TLSv1.2"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :pswitch_1
    const-string v5, "TLSv1.3"

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    .line 70
    :pswitch_2
    move-object v1, v2

    .line 80
    .local v1, "defaultSSLContextSuffix":Ljava/lang/String;
    :goto_1
    const-string v4, "SSLContext.SSL"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v4, "SSLContext.TLS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v4, "SSLContext.TLSv1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$TLSv1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v4, "SSLContext.TLSv1.1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "$TLSv11"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v4, "SSLContext.TLSv1.2"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v4, "SSLContext.TLSv1.3"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v4, "SSLContext.Default"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DefaultSSLContextImpl"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    if-eqz p2, :cond_1

    .line 89
    const-string v4, "TrustManagerFactory.PKIX"

    const-class v5, Lorg/conscrypt/TrustManagerFactoryImpl;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const-string v4, "Alg.Alias.TrustManagerFactory.X509"

    const-string v5, "PKIX"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    :cond_1
    const-string v4, "AlgorithmParameters.AES"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IvParameters$AES"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v4, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.2"

    const-string v5, "AES"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v4, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.22"

    const-string v5, "AES"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v4, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.42"

    const-string v5, "AES"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const-string v4, "AlgorithmParameters.ChaCha20"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IvParameters$ChaCha20"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const-string v4, "AlgorithmParameters.DESEDE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "IvParameters$DESEDE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v4, "Alg.Alias.AlgorithmParameters.TDEA"

    const-string v5, "DESEDE"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const-string v4, "Alg.Alias.AlgorithmParameters.1.2.840.113549.3.7"

    const-string v5, "DESEDE"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v4, "AlgorithmParameters.GCM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "GCMParameters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v4, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.6"

    const-string v5, "GCM"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v4, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.26"

    const-string v5, "GCM"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v4, "Alg.Alias.AlgorithmParameters.2.16.840.1.101.3.4.1.46"

    const-string v5, "GCM"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v4, "AlgorithmParameters.OAEP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OAEPParameters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v4, "AlgorithmParameters.PSS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "PSSParameters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v4, "AlgorithmParameters.EC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ECParameters"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const-string v4, "MessageDigest.SHA-1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLMessageDigestJDK$SHA1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string v4, "Alg.Alias.MessageDigest.SHA1"

    const-string v5, "SHA-1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string v4, "Alg.Alias.MessageDigest.SHA"

    const-string v5, "SHA-1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string v4, "Alg.Alias.MessageDigest.1.3.14.3.2.26"

    const-string v5, "SHA-1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const-string v4, "MessageDigest.SHA-224"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLMessageDigestJDK$SHA224"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const-string v4, "Alg.Alias.MessageDigest.SHA224"

    const-string v5, "SHA-224"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v4, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.4"

    const-string v5, "SHA-224"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v4, "MessageDigest.SHA-256"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLMessageDigestJDK$SHA256"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v4, "Alg.Alias.MessageDigest.SHA256"

    const-string v5, "SHA-256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v4, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.1"

    const-string v5, "SHA-256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v4, "MessageDigest.SHA-384"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLMessageDigestJDK$SHA384"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v4, "Alg.Alias.MessageDigest.SHA384"

    const-string v5, "SHA-384"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v4, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.2"

    const-string v5, "SHA-384"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v4, "MessageDigest.SHA-512"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLMessageDigestJDK$SHA512"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v4, "Alg.Alias.MessageDigest.SHA512"

    const-string v5, "SHA-512"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v4, "Alg.Alias.MessageDigest.2.16.840.1.101.3.4.2.3"

    const-string v5, "SHA-512"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v4, "MessageDigest.MD5"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLMessageDigestJDK$MD5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v4, "Alg.Alias.MessageDigest.1.2.840.113549.2.5"

    const-string v5, "MD5"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v4, "KeyGenerator.ARC4"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$ARC4"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v4, "Alg.Alias.KeyGenerator.RC4"

    const-string v5, "ARC4"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v4, "Alg.Alias.KeyGenerator.1.2.840.113549.3.4"

    const-string v5, "ARC4"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v4, "KeyGenerator.AES"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$AES"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v4, "KeyGenerator.ChaCha20"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$ChaCha20"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v4, "KeyGenerator.DESEDE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$DESEDE"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v4, "Alg.Alias.KeyGenerator.TDEA"

    const-string v5, "DESEDE"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v4, "KeyGenerator.HmacMD5"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$HmacMD5"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v4, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.1"

    const-string v5, "HmacMD5"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v4, "Alg.Alias.KeyGenerator.HMAC-MD5"

    const-string v5, "HmacMD5"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v4, "Alg.Alias.KeyGenerator.HMAC/MD5"

    const-string v5, "HmacMD5"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v4, "KeyGenerator.HmacSHA1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$HmacSHA1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v4, "Alg.Alias.KeyGenerator.1.2.840.113549.2.7"

    const-string v5, "HmacSHA1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v4, "Alg.Alias.KeyGenerator.1.3.6.1.5.5.8.1.2"

    const-string v5, "HmacSHA1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v4, "Alg.Alias.KeyGenerator.HMAC-SHA1"

    const-string v5, "HmacSHA1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v4, "Alg.Alias.KeyGenerator.HMAC/SHA1"

    const-string v5, "HmacSHA1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v4, "KeyGenerator.HmacSHA224"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$HmacSHA224"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v4, "Alg.Alias.KeyGenerator.1.2.840.113549.2.8"

    const-string v5, "HmacSHA224"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    const-string v4, "Alg.Alias.KeyGenerator.HMAC-SHA224"

    const-string v5, "HmacSHA224"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    const-string v4, "Alg.Alias.KeyGenerator.HMAC/SHA224"

    const-string v5, "HmacSHA224"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    const-string v4, "KeyGenerator.HmacSHA256"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$HmacSHA256"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    const-string v4, "Alg.Alias.KeyGenerator.1.2.840.113549.2.9"

    const-string v5, "HmacSHA256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    const-string v4, "Alg.Alias.KeyGenerator.2.16.840.1.101.3.4.2.1"

    const-string v5, "HmacSHA256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    const-string v4, "Alg.Alias.KeyGenerator.HMAC-SHA256"

    const-string v5, "HmacSHA256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    const-string v4, "Alg.Alias.KeyGenerator.HMAC/SHA256"

    const-string v5, "HmacSHA256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v4, "KeyGenerator.HmacSHA384"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$HmacSHA384"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v4, "Alg.Alias.KeyGenerator.1.2.840.113549.2.10"

    const-string v5, "HmacSHA384"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v4, "Alg.Alias.KeyGenerator.HMAC-SHA384"

    const-string v5, "HmacSHA384"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v4, "Alg.Alias.KeyGenerator.HMAC/SHA384"

    const-string v5, "HmacSHA384"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v4, "KeyGenerator.HmacSHA512"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "KeyGeneratorImpl$HmacSHA512"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v4, "Alg.Alias.KeyGenerator.1.2.840.113549.2.11"

    const-string v5, "HmacSHA512"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v4, "Alg.Alias.KeyGenerator.HMAC-SHA512"

    const-string v5, "HmacSHA512"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string v4, "Alg.Alias.KeyGenerator.HMAC/SHA512"

    const-string v5, "HmacSHA512"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    const-string v4, "KeyPairGenerator.RSA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLRSAKeyPairGenerator"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    const-string v4, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.1"

    const-string v5, "RSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v4, "Alg.Alias.KeyPairGenerator.1.2.840.113549.1.1.7"

    const-string v5, "RSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v4, "Alg.Alias.KeyPairGenerator.2.5.8.1.1"

    const-string v5, "RSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v4, "KeyPairGenerator.EC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLECKeyPairGenerator"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v4, "Alg.Alias.KeyPairGenerator.1.2.840.10045.2.1"

    const-string v5, "EC"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v4, "Alg.Alias.KeyPairGenerator.1.3.133.16.840.63.0.2"

    const-string v5, "EC"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v4, "KeyFactory.RSA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLRSAKeyFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v4, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.1"

    const-string v5, "RSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    const-string v4, "Alg.Alias.KeyFactory.1.2.840.113549.1.1.7"

    const-string v5, "RSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v4, "Alg.Alias.KeyFactory.2.5.8.1.1"

    const-string v5, "RSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v4, "KeyFactory.EC"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLECKeyFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const-string v4, "Alg.Alias.KeyFactory.1.2.840.10045.2.1"

    const-string v5, "EC"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    const-string v4, "Alg.Alias.KeyFactory.1.3.133.16.840.63.0.2"

    const-string v5, "EC"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v4, "SecretKeyFactory.DESEDE"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DESEDESecretKeyFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v4, "Alg.Alias.SecretKeyFactory.TDEA"

    const-string v5, "DESEDE"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string v4, "OpenSSLECDHKeyAgreement"

    invoke-direct {p0, v4}, Lorg/conscrypt/OpenSSLProvider;->putECDHKeyAgreementImplClass(Ljava/lang/String;)V

    .line 211
    const-string v4, "MD5withRSA"

    const-string v5, "OpenSSLSignature$MD5RSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v4, "Alg.Alias.Signature.MD5withRSAEncryption"

    const-string v5, "MD5withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    const-string v4, "Alg.Alias.Signature.MD5/RSA"

    const-string v5, "MD5withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v4, "Alg.Alias.Signature.1.2.840.113549.1.1.4"

    const-string v5, "MD5withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.4"

    const-string v5, "MD5withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    const-string v4, "Alg.Alias.Signature.1.2.840.113549.2.5with1.2.840.113549.1.1.1"

    const-string v5, "MD5withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v4, "SHA1withRSA"

    const-string v5, "OpenSSLSignature$SHA1RSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v4, "Alg.Alias.Signature.SHA1withRSAEncryption"

    const-string v5, "SHA1withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    const-string v4, "Alg.Alias.Signature.SHA1/RSA"

    const-string v5, "SHA1withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    const-string v4, "Alg.Alias.Signature.SHA-1/RSA"

    const-string v5, "SHA1withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    const-string v4, "Alg.Alias.Signature.1.2.840.113549.1.1.5"

    const-string v5, "SHA1withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.5"

    const-string v5, "SHA1withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v4, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.1"

    const-string v5, "SHA1withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    const-string v4, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.113549.1.1.5"

    const-string v5, "SHA1withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v4, "Alg.Alias.Signature.1.3.14.3.2.29"

    const-string v5, "SHA1withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v4, "Alg.Alias.Signature.OID.1.3.14.3.2.29"

    const-string v5, "SHA1withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    const-string v4, "SHA224withRSA"

    const-string v5, "OpenSSLSignature$SHA224RSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string v4, "Alg.Alias.Signature.SHA224withRSAEncryption"

    const-string v5, "SHA224withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    const-string v4, "Alg.Alias.Signature.SHA224/RSA"

    const-string v5, "SHA224withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    const-string v4, "Alg.Alias.Signature.1.2.840.113549.1.1.14"

    const-string v5, "SHA224withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.14"

    const-string v5, "SHA224withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.1"

    const-string v5, "SHA224withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.113549.1.1.14"

    const-string v5, "SHA224withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v4, "SHA256withRSA"

    const-string v5, "OpenSSLSignature$SHA256RSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v4, "Alg.Alias.Signature.SHA256withRSAEncryption"

    const-string v5, "SHA256withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v4, "Alg.Alias.Signature.SHA256/RSA"

    const-string v5, "SHA256withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v4, "Alg.Alias.Signature.1.2.840.113549.1.1.11"

    const-string v5, "SHA256withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.11"

    const-string v5, "SHA256withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.1"

    const-string v5, "SHA256withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.113549.1.1.11"

    const-string v5, "SHA256withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v4, "SHA384withRSA"

    const-string v5, "OpenSSLSignature$SHA384RSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v4, "Alg.Alias.Signature.SHA384withRSAEncryption"

    const-string v5, "SHA384withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v4, "Alg.Alias.Signature.SHA384/RSA"

    const-string v5, "SHA384withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v4, "Alg.Alias.Signature.1.2.840.113549.1.1.12"

    const-string v5, "SHA384withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.12"

    const-string v5, "SHA384withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.113549.1.1.1"

    const-string v5, "SHA384withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v4, "SHA512withRSA"

    const-string v5, "OpenSSLSignature$SHA512RSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v4, "Alg.Alias.Signature.SHA512withRSAEncryption"

    const-string v5, "SHA512withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v4, "Alg.Alias.Signature.SHA512/RSA"

    const-string v5, "SHA512withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v4, "Alg.Alias.Signature.1.2.840.113549.1.1.13"

    const-string v5, "SHA512withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.113549.1.1.13"

    const-string v5, "SHA512withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.113549.1.1.1"

    const-string v5, "SHA512withRSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    const-string v4, "OpenSSLSignatureRawRSA"

    invoke-direct {p0, v4}, Lorg/conscrypt/OpenSSLProvider;->putRAWRSASignatureImplClass(Ljava/lang/String;)V

    .line 267
    const-string v4, "NONEwithECDSA"

    const-string v5, "OpenSSLSignatureRawECDSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string v4, "SHA1withECDSA"

    const-string v5, "OpenSSLSignature$SHA1ECDSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v4, "Alg.Alias.Signature.ECDSA"

    const-string v5, "SHA1withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v4, "Alg.Alias.Signature.ECDSAwithSHA1"

    const-string v5, "SHA1withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v4, "Alg.Alias.Signature.1.2.840.10045.4.1"

    const-string v5, "SHA1withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    const-string v4, "Alg.Alias.Signature.1.3.14.3.2.26with1.2.840.10045.2.1"

    const-string v5, "SHA1withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v4, "SHA224withECDSA"

    const-string v5, "OpenSSLSignature$SHA224ECDSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v4, "Alg.Alias.Signature.SHA224/ECDSA"

    const-string v5, "SHA224withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v4, "Alg.Alias.Signature.1.2.840.10045.4.3.1"

    const-string v5, "SHA224withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.1"

    const-string v5, "SHA224withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.4with1.2.840.10045.2.1"

    const-string v5, "SHA224withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    const-string v4, "SHA256withECDSA"

    const-string v5, "OpenSSLSignature$SHA256ECDSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v4, "Alg.Alias.Signature.SHA256/ECDSA"

    const-string v5, "SHA256withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    const-string v4, "Alg.Alias.Signature.1.2.840.10045.4.3.2"

    const-string v5, "SHA256withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.2"

    const-string v5, "SHA256withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.1with1.2.840.10045.2.1"

    const-string v5, "SHA256withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    const-string v4, "SHA384withECDSA"

    const-string v5, "OpenSSLSignature$SHA384ECDSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    const-string v4, "Alg.Alias.Signature.SHA384/ECDSA"

    const-string v5, "SHA384withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v4, "Alg.Alias.Signature.1.2.840.10045.4.3.3"

    const-string v5, "SHA384withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.3"

    const-string v5, "SHA384withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.2with1.2.840.10045.2.1"

    const-string v5, "SHA384withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v4, "SHA512withECDSA"

    const-string v5, "OpenSSLSignature$SHA512ECDSA"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    const-string v4, "Alg.Alias.Signature.SHA512/ECDSA"

    const-string v5, "SHA512withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v4, "Alg.Alias.Signature.1.2.840.10045.4.3.4"

    const-string v5, "SHA512withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v4, "Alg.Alias.Signature.OID.1.2.840.10045.4.3.4"

    const-string v5, "SHA512withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v4, "Alg.Alias.Signature.2.16.840.1.101.3.4.2.3with1.2.840.10045.2.1"

    const-string v5, "SHA512withECDSA"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v4, "SHA1withRSA/PSS"

    const-string v5, "OpenSSLSignature$SHA1RSAPSS"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    const-string v4, "Alg.Alias.Signature.SHA1withRSAandMGF1"

    const-string v5, "SHA1withRSA/PSS"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v4, "SHA224withRSA/PSS"

    const-string v5, "OpenSSLSignature$SHA224RSAPSS"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    const-string v4, "Alg.Alias.Signature.SHA224withRSAandMGF1"

    const-string v5, "SHA224withRSA/PSS"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v4, "SHA256withRSA/PSS"

    const-string v5, "OpenSSLSignature$SHA256RSAPSS"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const-string v4, "Alg.Alias.Signature.SHA256withRSAandMGF1"

    const-string v5, "SHA256withRSA/PSS"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    const-string v4, "SHA384withRSA/PSS"

    const-string v5, "OpenSSLSignature$SHA384RSAPSS"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    const-string v4, "Alg.Alias.Signature.SHA384withRSAandMGF1"

    const-string v5, "SHA384withRSA/PSS"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v4, "SHA512withRSA/PSS"

    const-string v5, "OpenSSLSignature$SHA512RSAPSS"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    const-string v4, "Alg.Alias.Signature.SHA512withRSAandMGF1"

    const-string v5, "SHA512withRSA/PSS"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    const-string v4, "SecureRandom.SHA1PRNG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLRandom"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    const-string v4, "SecureRandom.SHA1PRNG ImplementedIn"

    const-string v5, "Software"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string v4, "RSA/ECB/NoPadding"

    const-string v5, "OpenSSLCipherRSA$Raw"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v4, "Alg.Alias.Cipher.RSA/None/NoPadding"

    const-string v5, "RSA/ECB/NoPadding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    const-string v4, "RSA/ECB/PKCS1Padding"

    const-string v5, "OpenSSLCipherRSA$PKCS1"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-string v4, "Alg.Alias.Cipher.RSA/None/PKCS1Padding"

    const-string v5, "RSA/ECB/PKCS1Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v4, "RSA/ECB/OAEPPadding"

    const-string v5, "OpenSSLCipherRSA$OAEP$SHA1"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v4, "Alg.Alias.Cipher.RSA/None/OAEPPadding"

    const-string v5, "RSA/ECB/OAEPPadding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    const-string v4, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    const-string v5, "OpenSSLCipherRSA$OAEP$SHA1"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    const-string v4, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-1AndMGF1Padding"

    const-string v5, "RSA/ECB/OAEPWithSHA-1AndMGF1Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    const-string v4, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    const-string v5, "OpenSSLCipherRSA$OAEP$SHA224"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    const-string v4, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-224AndMGF1Padding"

    const-string v5, "RSA/ECB/OAEPWithSHA-224AndMGF1Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v4, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    const-string v5, "OpenSSLCipherRSA$OAEP$SHA256"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v4, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-256AndMGF1Padding"

    const-string v5, "RSA/ECB/OAEPWithSHA-256AndMGF1Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v4, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    const-string v5, "OpenSSLCipherRSA$OAEP$SHA384"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    const-string v4, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-384AndMGF1Padding"

    const-string v5, "RSA/ECB/OAEPWithSHA-384AndMGF1Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v4, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    const-string v5, "OpenSSLCipherRSA$OAEP$SHA512"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v4, "Alg.Alias.Cipher.RSA/None/OAEPWithSHA-512AndMGF1Padding"

    const-string v5, "RSA/ECB/OAEPWithSHA-512AndMGF1Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v4, "AES/ECB/NoPadding"

    const-string v5, "OpenSSLEvpCipherAES$AES$ECB$NoPadding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    const-string v4, "AES/ECB/PKCS5Padding"

    const-string v5, "OpenSSLEvpCipherAES$AES$ECB$PKCS5Padding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    const-string v4, "Alg.Alias.Cipher.AES/ECB/PKCS7Padding"

    const-string v5, "AES/ECB/PKCS5Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v4, "AES/CBC/NoPadding"

    const-string v5, "OpenSSLEvpCipherAES$AES$CBC$NoPadding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v4, "AES/CBC/PKCS5Padding"

    const-string v5, "OpenSSLEvpCipherAES$AES$CBC$PKCS5Padding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v4, "Alg.Alias.Cipher.AES/CBC/PKCS7Padding"

    const-string v5, "AES/CBC/PKCS5Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v4, "AES/CTR/NoPadding"

    const-string v5, "OpenSSLEvpCipherAES$AES$CTR"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v4, "AES_128/ECB/NoPadding"

    const-string v5, "OpenSSLEvpCipherAES$AES_128$ECB$NoPadding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v4, "AES_128/ECB/PKCS5Padding"

    const-string v5, "OpenSSLEvpCipherAES$AES_128$ECB$PKCS5Padding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    const-string v4, "Alg.Alias.Cipher.AES_128/ECB/PKCS7Padding"

    const-string v5, "AES_128/ECB/PKCS5Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v4, "AES_128/CBC/NoPadding"

    const-string v5, "OpenSSLEvpCipherAES$AES_128$CBC$NoPadding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    const-string v4, "AES_128/CBC/PKCS5Padding"

    const-string v5, "OpenSSLEvpCipherAES$AES_128$CBC$PKCS5Padding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    const-string v4, "Alg.Alias.Cipher.AES_128/CBC/PKCS7Padding"

    const-string v5, "AES_128/CBC/PKCS5Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_128"

    const-string v5, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_128"

    const-string v5, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_128"

    const-string v5, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_128"

    const-string v5, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_128"

    const-string v5, "AES_128/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    const-string v4, "AES_256/ECB/NoPadding"

    const-string v5, "OpenSSLEvpCipherAES$AES_256$ECB$NoPadding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v4, "AES_256/ECB/PKCS5Padding"

    const-string v5, "OpenSSLEvpCipherAES$AES_256$ECB$PKCS5Padding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v4, "Alg.Alias.Cipher.AES_256/ECB/PKCS7Padding"

    const-string v5, "AES_256/ECB/PKCS5Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v4, "AES_256/CBC/NoPadding"

    const-string v5, "OpenSSLEvpCipherAES$AES_256$CBC$NoPadding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v4, "AES_256/CBC/PKCS5Padding"

    const-string v5, "OpenSSLEvpCipherAES$AES_256$CBC$PKCS5Padding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v4, "Alg.Alias.Cipher.AES_256/CBC/PKCS7Padding"

    const-string v5, "AES_256/CBC/PKCS5Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA1AndAES_256"

    const-string v5, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA224AndAES_256"

    const-string v5, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA256AndAES_256"

    const-string v5, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA384AndAES_256"

    const-string v5, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v4, "Alg.Alias.Cipher.PBEWithHmacSHA512AndAES_256"

    const-string v5, "AES_256/CBC/PKCS5PADDING"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v4, "DESEDE/CBC/NoPadding"

    const-string v5, "OpenSSLEvpCipherDESEDE$CBC$NoPadding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    const-string v4, "DESEDE/CBC/PKCS5Padding"

    const-string v5, "OpenSSLEvpCipherDESEDE$CBC$PKCS5Padding"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    const-string v4, "Alg.Alias.Cipher.DESEDE/CBC/PKCS7Padding"

    const-string v5, "DESEDE/CBC/PKCS5Padding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v4, "ARC4"

    const-string v5, "OpenSSLEvpCipherARC4"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const-string v4, "Alg.Alias.Cipher.ARCFOUR"

    const-string v5, "ARC4"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v4, "Alg.Alias.Cipher.RC4"

    const-string v5, "ARC4"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v4, "Alg.Alias.Cipher.1.2.840.113549.3.4"

    const-string v5, "ARC4"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v4, "Alg.Alias.Cipher.OID.1.2.840.113549.3.4"

    const-string v5, "ARC4"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v4, "AES/GCM/NoPadding"

    const-string v5, "OpenSSLAeadCipherAES$GCM"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    const-string v4, "Alg.Alias.Cipher.GCM"

    const-string v5, "AES/GCM/NoPadding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    const-string v4, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.6"

    const-string v5, "AES/GCM/NoPadding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v4, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.26"

    const-string v5, "AES/GCM/NoPadding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v4, "Alg.Alias.Cipher.2.16.840.1.101.3.4.1.46"

    const-string v5, "AES/GCM/NoPadding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    const-string v4, "AES_128/GCM/NoPadding"

    const-string v5, "OpenSSLAeadCipherAES$GCM$AES_128"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v4, "AES_256/GCM/NoPadding"

    const-string v5, "OpenSSLAeadCipherAES$GCM$AES_256"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const-string v4, "AES/GCM-SIV/NoPadding"

    const-string v5, "OpenSSLAeadCipherAES$GCM_SIV"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    const-string v4, "AES_128/GCM-SIV/NoPadding"

    const-string v5, "OpenSSLAeadCipherAES$GCM_SIV$AES_128"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v4, "AES_256/GCM-SIV/NoPadding"

    const-string v5, "OpenSSLAeadCipherAES$GCM_SIV$AES_256"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v4, "ChaCha20"

    const-string v5, "OpenSSLCipherChaCha20"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    const-string v4, "ChaCha20/Poly1305/NoPadding"

    const-string v5, "OpenSSLAeadCipherChaCha20"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    const-string v4, "Alg.Alias.Cipher.ChaCha20-Poly1305"

    const-string v5, "ChaCha20/Poly1305/NoPadding"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    const-string v4, "HmacMD5"

    const-string v5, "OpenSSLMac$HmacMD5"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v4, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.1"

    const-string v5, "HmacMD5"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    const-string v4, "Alg.Alias.Mac.HMAC-MD5"

    const-string v5, "HmacMD5"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    const-string v4, "Alg.Alias.Mac.HMAC/MD5"

    const-string v5, "HmacMD5"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    const-string v4, "HmacSHA1"

    const-string v5, "OpenSSLMac$HmacSHA1"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const-string v4, "Alg.Alias.Mac.1.2.840.113549.2.7"

    const-string v5, "HmacSHA1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    const-string v4, "Alg.Alias.Mac.1.3.6.1.5.5.8.1.2"

    const-string v5, "HmacSHA1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v4, "Alg.Alias.Mac.HMAC-SHA1"

    const-string v5, "HmacSHA1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    const-string v4, "Alg.Alias.Mac.HMAC/SHA1"

    const-string v5, "HmacSHA1"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    const-string v4, "HmacSHA224"

    const-string v5, "OpenSSLMac$HmacSHA224"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    const-string v4, "Alg.Alias.Mac.1.2.840.113549.2.8"

    const-string v5, "HmacSHA224"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v4, "Alg.Alias.Mac.HMAC-SHA224"

    const-string v5, "HmacSHA224"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    const-string v4, "Alg.Alias.Mac.HMAC/SHA224"

    const-string v5, "HmacSHA224"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    const-string v4, "Alg.Alias.Mac.PBEWITHHMACSHA224"

    const-string v5, "HmacSHA224"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v4, "HmacSHA256"

    const-string v5, "OpenSSLMac$HmacSHA256"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v4, "Alg.Alias.Mac.1.2.840.113549.2.9"

    const-string v5, "HmacSHA256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v4, "Alg.Alias.Mac.2.16.840.1.101.3.4.2.1"

    const-string v5, "HmacSHA256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    const-string v4, "Alg.Alias.Mac.HMAC-SHA256"

    const-string v5, "HmacSHA256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    const-string v4, "Alg.Alias.Mac.HMAC/SHA256"

    const-string v5, "HmacSHA256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v4, "Alg.Alias.Mac.PBEWITHHMACSHA256"

    const-string v5, "HmacSHA256"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v4, "HmacSHA384"

    const-string v5, "OpenSSLMac$HmacSHA384"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    const-string v4, "Alg.Alias.Mac.1.2.840.113549.2.10"

    const-string v5, "HmacSHA384"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string v4, "Alg.Alias.Mac.HMAC-SHA384"

    const-string v5, "HmacSHA384"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v4, "Alg.Alias.Mac.HMAC/SHA384"

    const-string v5, "HmacSHA384"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const-string v4, "Alg.Alias.Mac.PBEWITHHMACSHA384"

    const-string v5, "HmacSHA384"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    const-string v4, "HmacSHA512"

    const-string v5, "OpenSSLMac$HmacSHA512"

    invoke-direct {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v4, "Alg.Alias.Mac.1.2.840.113549.2.11"

    const-string v5, "HmacSHA512"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    const-string v4, "Alg.Alias.Mac.HMAC-SHA512"

    const-string v5, "HmacSHA512"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    const-string v4, "Alg.Alias.Mac.HMAC/SHA512"

    const-string v5, "HmacSHA512"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v4, "Alg.Alias.Mac.PBEWITHHMACSHA512"

    const-string v5, "HmacSHA512"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 499
    const-string v4, "CertificateFactory.X509"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "OpenSSLX509CertificateFactory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    const-string v4, "Alg.Alias.CertificateFactory.X.509"

    const-string v5, "X509"

    invoke-virtual {p0, v4, v5}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    return-void

    .line 73
    .end local v1    # "defaultSSLContextSuffix":Ljava/lang/String;
    :pswitch_3
    move-object v1, v3

    .line 74
    .restart local v1    # "defaultSSLContextSuffix":Ljava/lang/String;
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x1dfc3f26
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private putECDHKeyAgreementImplClass(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 585
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OpenSSLKeyHolder|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string v1, "PKCS#8"

    .line 588
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    const-string v2, "KeyAgreement.ECDH"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method private putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "typeAndAlgName"    # Ljava/lang/String;
    .param p2, "fullyQualifiedClassName"    # Ljava/lang/String;
    .param p3, "supportedKeyClasses"    # Ljava/lang/String;
    .param p4, "supportedKeyFormats"    # Ljava/lang/String;

    .prologue
    .line 599
    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    if-eqz p3, :cond_0

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyClasses"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    :cond_0
    if-eqz p4, :cond_1

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " SupportedKeyFormats"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lorg/conscrypt/OpenSSLProvider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    :cond_1
    return-void
.end method

.method private putMacImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 507
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OpenSSLKeyHolder"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string v1, "RAW"

    .line 509
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mac."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    return-void
.end method

.method private putRAWRSASignatureImplClass(Ljava/lang/String;)V
    .locals 5
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OpenSSLRSAPrivateKey|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OpenSSLRSAPublicKey|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 572
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    .line 573
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    const-string v2, "Signature.NONEwithRSA"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    return-void
.end method

.method private putRSACipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OpenSSLRSAPrivateKey|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OpenSSLRSAPublicKey|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const/4 v1, 0x0

    .line 537
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    return-void
.end method

.method private putSignatureImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "algorithm"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 552
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "OpenSSLKeyHolder|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "java.security.interfaces.RSAPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "java.security.interfaces.ECPrivateKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "java.security.interfaces.RSAPublicKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string v1, "PKCS#8|X.509"

    .line 557
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Signature."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method private putSymmetricCipherImplClass(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "transformation"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "supportedKeyClasses":Ljava/lang/String;
    const-string v1, "RAW"

    .line 521
    .local v1, "supportedKeyFormats":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cipher."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lorg/conscrypt/OpenSSLProvider;->PREFIX:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3, v0, v1}, Lorg/conscrypt/OpenSSLProvider;->putImplClassWithKeyConstraints(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    return-void
.end method
