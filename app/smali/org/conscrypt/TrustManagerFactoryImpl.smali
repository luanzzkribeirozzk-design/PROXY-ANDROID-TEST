.class public Lorg/conscrypt/TrustManagerFactoryImpl;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "TrustManagerFactoryImpl.java"


# instance fields
.field private keyStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method


# virtual methods
.method public engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lorg/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "TrustManagerFactory is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/conscrypt/TrustManagerImpl;

    iget-object v3, p0, Lorg/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    invoke-direct {v2, v3}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method public engineInit(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    iput-object p1, p0, Lorg/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-static {}, Lorg/conscrypt/Platform;->getDefaultCertKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/TrustManagerFactoryImpl;->keyStore:Ljava/security/KeyStore;

    goto :goto_0
.end method

.method public engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .param p1, "spec"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .prologue
    .line 73
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const-string v1, "ManagerFactoryParameters not supported"

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
