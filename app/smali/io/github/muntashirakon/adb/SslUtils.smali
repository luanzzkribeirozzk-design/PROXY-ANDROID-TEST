.class final Lio/github/muntashirakon/adb/SslUtils;
.super Ljava/lang/Object;
.source "SslUtils.java"


# static fields
.field private static customConscrypt:Z

.field private static sslContext:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    sput-boolean v0, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAllAcceptingTrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrustAllX509TrustManager"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lio/github/muntashirakon/adb/SslUtils$2;

    invoke-direct {v0}, Lio/github/muntashirakon/adb/SslUtils$2;-><init>()V

    return-object v0
.end method

.method private static getKeyManager(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/KeyManager;
    .locals 1
    .param p0, "keyPair"    # Lio/github/muntashirakon/adb/KeyPair;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 62
    new-instance v0, Lio/github/muntashirakon/adb/SslUtils$1;

    invoke-direct {v0, p0}, Lio/github/muntashirakon/adb/SslUtils$1;-><init>(Lio/github/muntashirakon/adb/KeyPair;)V

    return-object v0
.end method

.method public static getSslContext(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/SSLContext;
    .locals 8
    .param p0, "keyPair"    # Lio/github/muntashirakon/adb/KeyPair;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "TrulyRandom"
        }
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 35
    sget-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    if-eqz v3, :cond_0

    .line 36
    sget-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 57
    :goto_0
    return-object v3

    .line 39
    :cond_0
    :try_start_0
    const-string v3, "org.conscrypt.OpenSSLProvider"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 40
    .local v2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/Provider;

    .line 41
    .local v1, "openSslProvder":Ljava/security/Provider;
    const-string v3, "TLSv1.3"

    invoke-static {v3, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    sput-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 42
    const/4 v3, 0x1

    sput-boolean v3, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v1    # "openSslProvder":Ljava/security/Provider;
    .end local v2    # "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Using "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v3, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    if-eqz v3, :cond_2

    const-string v3, "custom"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " TLSv1.3 provider..."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 54
    sget-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    new-array v4, v6, [Ljavax/net/ssl/KeyManager;

    invoke-static {p0}, Lio/github/muntashirakon/adb/SslUtils;->getKeyManager(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/KeyManager;

    move-result-object v5

    aput-object v5, v4, v7

    new-array v5, v6, [Ljavax/net/ssl/X509TrustManager;

    .line 55
    invoke-static {}, Lio/github/muntashirakon/adb/SslUtils;->getAllAcceptingTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v6

    aput-object v6, v5, v7

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    .line 54
    invoke-virtual {v3, v4, v5, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 57
    sget-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    throw v0

    .line 45
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v0

    .line 46
    .local v0, "e":Ljava/lang/Throwable;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-ge v3, v4, :cond_1

    .line 48
    new-instance v3, Ljava/security/NoSuchAlgorithmException;

    const-string v4, "TLSv1.3 isn\'t supported on your platform. Use custom Conscrypt library instead."

    invoke-direct {v3, v4}, Ljava/security/NoSuchAlgorithmException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 50
    :cond_1
    const-string v3, "TLSv1.3"

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    sput-object v3, Lio/github/muntashirakon/adb/SslUtils;->sslContext:Ljavax/net/ssl/SSLContext;

    .line 51
    sput-boolean v7, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    goto :goto_1

    .line 53
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    const-string v3, "default"

    goto :goto_2
.end method

.method public static isCustomConscrypt()Z
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lio/github/muntashirakon/adb/SslUtils;->customConscrypt:Z

    return v0
.end method
