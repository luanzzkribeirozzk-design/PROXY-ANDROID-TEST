.class final Lorg/conscrypt/NativeSsl;
.super Ljava/lang/Object;
.source "NativeSsl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/NativeSsl$BioWrapper;
    }
.end annotation


# instance fields
.field private final aliasChooser:Lorg/conscrypt/SSLParametersImpl$AliasChooser;

.field private final handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

.field private localCertificates:[Ljava/security/cert/X509Certificate;

.field private final lock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final parameters:Lorg/conscrypt/SSLParametersImpl;

.field private final pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

.field private volatile ssl:J


# direct methods
.method private constructor <init>(JLorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)V
    .locals 1
    .param p1, "ssl"    # J
    .param p3, "parameters"    # Lorg/conscrypt/SSLParametersImpl;
    .param p4, "handshakeCallbacks"    # Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .param p5, "aliasChooser"    # Lorg/conscrypt/SSLParametersImpl$AliasChooser;
    .param p6, "pskCallbacks"    # Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 68
    iput-wide p1, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    .line 69
    iput-object p3, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    .line 70
    iput-object p4, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    .line 71
    iput-object p5, p0, Lorg/conscrypt/NativeSsl;->aliasChooser:Lorg/conscrypt/SSLParametersImpl$AliasChooser;

    .line 72
    iput-object p6, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    .line 73
    return-void
.end method

.method static synthetic access$100(Lorg/conscrypt/NativeSsl;)J
    .locals 2
    .param p0, "x0"    # Lorg/conscrypt/NativeSsl;

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/conscrypt/NativeSsl;)Ljava/util/concurrent/locks/ReadWriteLock;
    .locals 1
    .param p0, "x0"    # Lorg/conscrypt/NativeSsl;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    return-object v0
.end method

.method static synthetic access$300(Lorg/conscrypt/NativeSsl;)Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .locals 1
    .param p0, "x0"    # Lorg/conscrypt/NativeSsl;

    .prologue
    .line 56
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    return-object v0
.end method

.method private enablePSKKeyManagerIfRequested()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 454
    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lorg/conscrypt/PSKKeyManager;

    move-result-object v3

    .line 455
    .local v3, "pskKeyManager":Lorg/conscrypt/PSKKeyManager;
    if-eqz v3, :cond_1

    .line 456
    const/4 v2, 0x0

    .line 457
    .local v2, "pskEnabled":Z
    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v5, v4, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, v5, v4

    .line 458
    .local v0, "enabledCipherSuite":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v7, "PSK"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 459
    const/4 v2, 0x1

    .line 463
    .end local v0    # "enabledCipherSuite":Ljava/lang/String;
    :cond_0
    if-eqz v2, :cond_1

    .line 464
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 465
    iget-wide v4, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v8}, Lorg/conscrypt/NativeCrypto;->set_SSL_psk_client_callback_enabled(JLorg/conscrypt/NativeSsl;Z)V

    .line 473
    .end local v2    # "pskEnabled":Z
    :cond_1
    :goto_1
    return-void

    .line 457
    .restart local v0    # "enabledCipherSuite":Ljava/lang/String;
    .restart local v2    # "pskEnabled":Z
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 467
    .end local v0    # "enabledCipherSuite":Ljava/lang/String;
    :cond_3
    iget-wide v4, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v8}, Lorg/conscrypt/NativeCrypto;->set_SSL_psk_server_callback_enabled(JLorg/conscrypt/NativeSsl;Z)V

    .line 468
    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v4, v3}, Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseServerPSKIdentityHint(Lorg/conscrypt/PSKKeyManager;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "identityHint":Ljava/lang/String;
    iget-wide v4, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_use_psk_identity_hint(JLorg/conscrypt/NativeSsl;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getCipherKeyTypes()Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 388
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 389
    .local v1, "keyTypes":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-wide v4, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v4, v5, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_ciphers(JLorg/conscrypt/NativeSsl;)[J

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_1

    aget-wide v2, v5, v4

    .line 390
    .local v2, "sslCipherNativePointer":J
    invoke-static {v2, v3}, Lorg/conscrypt/SSLUtils;->getServerX509KeyType(J)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "keyType":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 392
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 389
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 395
    .end local v0    # "keyType":Ljava/lang/String;
    .end local v2    # "sslCipherNativePointer":J
    :cond_1
    return-object v1
.end method

.method private isClient()Z
    .locals 1

    .prologue
    .line 635
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method static newInstance(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)Lorg/conscrypt/NativeSsl;
    .locals 8
    .param p0, "parameters"    # Lorg/conscrypt/SSLParametersImpl;
    .param p1, "handshakeCallbacks"    # Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
    .param p2, "chooser"    # Lorg/conscrypt/SSLParametersImpl$AliasChooser;
    .param p3, "pskCallbacks"    # Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-virtual {p0}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object v0

    .line 79
    .local v0, "ctx":Lorg/conscrypt/AbstractSessionContext;
    iget-wide v4, v0, Lorg/conscrypt/AbstractSessionContext;->sslCtxNativePointer:J

    invoke-static {v4, v5, v0}, Lorg/conscrypt/NativeCrypto;->SSL_new(JLorg/conscrypt/AbstractSessionContext;)J

    move-result-wide v2

    .line 80
    .local v2, "ssl":J
    new-instance v1, Lorg/conscrypt/NativeSsl;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lorg/conscrypt/NativeSsl;-><init>(JLorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)V

    return-object v1
.end method

.method private setCertificate(Ljava/lang/String;)V
    .locals 11
    .param p1, "alias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 233
    if-nez p1, :cond_1

    .line 267
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v8, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v8}, Lorg/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    .line 237
    .local v4, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v4, :cond_0

    .line 240
    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;

    move-result-object v6

    .line 241
    .local v6, "privateKey":Ljava/security/PrivateKey;
    if-eqz v6, :cond_0

    .line 244
    invoke-interface {v4, p1}, Ljavax/net/ssl/X509KeyManager;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;

    move-result-object v8

    iput-object v8, p0, Lorg/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    .line 245
    iget-object v8, p0, Lorg/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    if-eqz v8, :cond_0

    .line 248
    iget-object v8, p0, Lorg/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    array-length v5, v8

    .line 249
    .local v5, "numLocalCerts":I
    if-lez v5, :cond_2

    iget-object v8, p0, Lorg/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    .line 252
    .local v7, "publicKey":Ljava/security/PublicKey;
    :goto_1
    new-array v1, v5, [[B

    .line 253
    .local v1, "encodedLocalCerts":[[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v5, :cond_3

    .line 254
    iget-object v8, p0, Lorg/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v8

    aput-object v8, v1, v2

    .line 253
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 249
    .end local v1    # "encodedLocalCerts":[[B
    .end local v2    # "i":I
    .end local v7    # "publicKey":Ljava/security/PublicKey;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 260
    .restart local v1    # "encodedLocalCerts":[[B
    .restart local v2    # "i":I
    .restart local v7    # "publicKey":Ljava/security/PublicKey;
    :cond_3
    :try_start_0
    invoke-static {v6, v7}, Lorg/conscrypt/OpenSSLKey;->fromPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/PublicKey;)Lorg/conscrypt/OpenSSLKey;
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 266
    .local v3, "key":Lorg/conscrypt/OpenSSLKey;
    iget-wide v8, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-virtual {v3}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v10

    invoke-static {v8, v9, p0, v1, v10}, Lorg/conscrypt/NativeCrypto;->setLocalCertsAndPrivateKey(JLorg/conscrypt/NativeSsl;[[BLorg/conscrypt/NativeRef$EVP_PKEY;)V

    goto :goto_0

    .line 261
    .end local v3    # "key":Lorg/conscrypt/OpenSSLKey;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Ljava/security/InvalidKeyException;
    new-instance v8, Ljavax/net/ssl/SSLException;

    invoke-direct {v8, v0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v8
.end method

.method private setCertificateValidation()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v5

    if-nez v5, :cond_0

    .line 497
    iget-object v5, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 498
    iget-wide v6, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const/4 v5, 0x3

    invoke-static {v6, v7, p0, v5}, Lorg/conscrypt/NativeCrypto;->SSL_set_verify(JLorg/conscrypt/NativeSsl;I)V

    .line 500
    const/4 v0, 0x1

    .line 511
    .local v0, "certRequested":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 512
    iget-object v5, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    .line 513
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-interface {v4}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 514
    .local v2, "issuers":[Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_0

    array-length v5, v2

    if-eqz v5, :cond_0

    .line 517
    :try_start_0
    invoke-static {v2}, Lorg/conscrypt/SSLUtils;->encodeSubjectX509Principals([Ljava/security/cert/X509Certificate;)[[B
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 521
    .local v3, "issuersBytes":[[B
    iget-wide v6, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v6, v7, p0, v3}, Lorg/conscrypt/NativeCrypto;->SSL_set_client_CA_list(JLorg/conscrypt/NativeSsl;[[B)V

    .line 525
    .end local v0    # "certRequested":Z
    .end local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .end local v3    # "issuersBytes":[[B
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    return-void

    .line 502
    :cond_1
    iget-object v5, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v5}, Lorg/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 503
    iget-wide v6, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const/4 v5, 0x1

    invoke-static {v6, v7, p0, v5}, Lorg/conscrypt/NativeCrypto;->SSL_set_verify(JLorg/conscrypt/NativeSsl;I)V

    .line 504
    const/4 v0, 0x1

    .restart local v0    # "certRequested":Z
    goto :goto_0

    .line 507
    .end local v0    # "certRequested":Z
    :cond_2
    iget-wide v6, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const/4 v5, 0x0

    invoke-static {v6, v7, p0, v5}, Lorg/conscrypt/NativeCrypto;->SSL_set_verify(JLorg/conscrypt/NativeSsl;I)V

    .line 508
    const/4 v0, 0x0

    .restart local v0    # "certRequested":Z
    goto :goto_0

    .line 518
    .restart local v2    # "issuers":[Ljava/security/cert/X509Certificate;
    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 519
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v5, Ljavax/net/ssl/SSLException;

    const-string v6, "Problem encoding principals"

    invoke-direct {v5, v6, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private setTlsChannelId(Lorg/conscrypt/OpenSSLKey;)V
    .locals 3
    .param p1, "channelIdPrivateKey"    # Lorg/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 476
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-boolean v0, v0, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    if-nez v0, :cond_0

    .line 490
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 482
    if-nez p1, :cond_1

    .line 483
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    const-string v1, "Invalid TLS channel ID key specified"

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 485
    :cond_1
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v2

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->SSL_set1_tls_channel_id(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeRef$EVP_PKEY;)V

    goto :goto_0

    .line 488
    :cond_2
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_enable_tls_channel_id(JLorg/conscrypt/NativeSsl;)V

    goto :goto_0
.end method

.method private verifyWithSniMatchers(Ljava/lang/String;)V
    .locals 3
    .param p1, "serverName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLHandshakeException;
        }
    .end annotation

    .prologue
    .line 378
    invoke-static {p1}, Lorg/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 385
    :cond_0
    return-void

    .line 382
    :cond_1
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-static {v0, p1}, Lorg/conscrypt/Platform;->serverNamePermitted(Lorg/conscrypt/SSLParametersImpl;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 383
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SNI match failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method chooseClientCertificate([B[I[[B)V
    .locals 8
    .param p1, "keyTypeBytes"    # [B
    .param p2, "signatureAlgs"    # [I
    .param p3, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 213
    invoke-static {p1, p2}, Lorg/conscrypt/SSLUtils;->getSupportedClientKeyTypes([B[I)Ljava/util/Set;

    move-result-object v5

    .line 214
    .local v5, "keyTypesSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 217
    .local v4, "keyTypes":[Ljava/lang/String;
    if-nez p3, :cond_1

    .line 218
    const/4 v2, 0x0

    .line 225
    .local v2, "issuers":[Ljavax/security/auth/x500/X500Principal;
    :cond_0
    iget-object v6, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v6}, Lorg/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v3

    .line 226
    .local v3, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v3, :cond_2

    .line 227
    iget-object v6, p0, Lorg/conscrypt/NativeSsl;->aliasChooser:Lorg/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {v6, v3, v2, v4}, Lorg/conscrypt/SSLParametersImpl$AliasChooser;->chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "alias":Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lorg/conscrypt/NativeSsl;->setCertificate(Ljava/lang/String;)V

    .line 230
    return-void

    .line 220
    .end local v0    # "alias":Ljava/lang/String;
    .end local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    .end local v3    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    :cond_1
    array-length v6, p3

    new-array v2, v6, [Ljavax/security/auth/x500/X500Principal;

    .line 221
    .restart local v2    # "issuers":[Ljavax/security/auth/x500/X500Principal;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v6, p3

    if-ge v1, v6, :cond_0

    .line 222
    new-instance v6, Ljavax/security/auth/x500/X500Principal;

    aget-object v7, p3, v1

    invoke-direct {v6, v7}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    aput-object v6, v2, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 228
    .end local v1    # "i":I
    .restart local v3    # "keyManager":Ljavax/net/ssl/X509KeyManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 9
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identityBytesOut"    # [B
    .param p3, "key"    # [B

    .prologue
    const/4 v6, 0x0

    .line 149
    iget-object v7, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v7}, Lorg/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lorg/conscrypt/PSKKeyManager;

    move-result-object v3

    .line 150
    .local v3, "pskKeyManager":Lorg/conscrypt/PSKKeyManager;
    if-nez v3, :cond_1

    .line 187
    :cond_0
    :goto_0
    return v6

    .line 154
    :cond_1
    iget-object v7, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v7, v3, p1}, Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;->chooseClientPSKIdentity(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "identity":Ljava/lang/String;
    if-nez v1, :cond_3

    .line 158
    const-string v1, ""

    .line 159
    sget-object v2, Lorg/conscrypt/EmptyArray;->BYTE:[B

    .line 169
    .local v2, "identityBytes":[B
    :goto_1
    array-length v7, v2

    add-int/lit8 v7, v7, 0x1

    array-length v8, p2

    if-gt v7, v8, :cond_0

    .line 173
    array-length v7, v2

    if-lez v7, :cond_2

    .line 174
    array-length v7, v2

    invoke-static {v2, v6, p2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 176
    :cond_2
    array-length v7, v2

    aput-byte v6, p2, v7

    .line 178
    iget-object v7, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v7, v3, p1, v1}, Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v4

    .line 179
    .local v4, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v4}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v5

    .line 180
    .local v5, "secretKeyBytes":[B
    if-eqz v5, :cond_0

    .line 182
    array-length v7, v5

    array-length v8, p3

    if-gt v7, v8, :cond_0

    .line 186
    array-length v7, v5

    invoke-static {v5, v6, p3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    array-length v6, v5

    goto :goto_0

    .line 160
    .end local v2    # "identityBytes":[B
    .end local v4    # "secretKey":Ljavax/crypto/SecretKey;
    .end local v5    # "secretKeyBytes":[B
    :cond_3
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 161
    sget-object v2, Lorg/conscrypt/EmptyArray;->BYTE:[B

    .restart local v2    # "identityBytes":[B
    goto :goto_1

    .line 164
    .end local v2    # "identityBytes":[B
    :cond_4
    :try_start_0
    const-string v7, "UTF-8"

    invoke-virtual {v1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "identityBytes":[B
    goto :goto_1

    .line 165
    .end local v2    # "identityBytes":[B
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "UTF-8 encoding not supported"

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method close()V
    .locals 4

    .prologue
    .line 610
    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 612
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 613
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    .line 614
    .local v0, "toFree":J
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    .line 615
    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_free(JLorg/conscrypt/NativeSsl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    .end local v0    # "toFree":J
    :cond_0
    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 620
    return-void

    .line 618
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v3}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2
.end method

.method configureServerCertificate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 361
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->getRequestedServerName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/conscrypt/NativeSsl;->verifyWithSniMatchers(Ljava/lang/String;)V

    .line 362
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 375
    :cond_0
    return-void

    .line 365
    :cond_1
    iget-object v3, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v3}, Lorg/conscrypt/SSLParametersImpl;->getX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v1

    .line 366
    .local v1, "keyManager":Ljavax/net/ssl/X509KeyManager;
    if-eqz v1, :cond_0

    .line 367
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->getCipherKeyTypes()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 369
    .local v2, "keyType":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->aliasChooser:Lorg/conscrypt/SSLParametersImpl$AliasChooser;

    invoke-interface {v4, v1, v2}, Lorg/conscrypt/SSLParametersImpl$AliasChooser;->chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lorg/conscrypt/NativeSsl;->setCertificate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method doHandshake()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 415
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_do_handshake(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 417
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 415
    return v0

    .line 417
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method doHandshake(Ljava/io/FileDescriptor;I)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 403
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 404
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 406
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v2, p0

    move-object v3, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->SSL_do_handshake(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 410
    return-void
.end method

.method exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .locals 6
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 133
    if-nez p1, :cond_0

    .line 134
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Label is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    .line 137
    .local v3, "labelBytes":[B
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    move-object v2, p0

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->SSL_export_keying_material(JLorg/conscrypt/NativeSsl;[B[BI)[B

    move-result-object v0

    return-object v0
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 641
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 645
    return-void

    .line 643
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method forceRead()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 587
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_force_read(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 591
    return-void

    .line 589
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method getApplicationProtocol()[B
    .locals 2

    .prologue
    .line 631
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->getApplicationProtocol(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getCipherSuite()Ljava/lang/String;
    .locals 2

    .prologue
    .line 112
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_current_cipher(JLorg/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getError(I)I
    .locals 2
    .param p1, "result"    # I

    .prologue
    .line 627
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1}, Lorg/conscrypt/NativeCrypto;->SSL_get_error(JLorg/conscrypt/NativeSsl;I)I

    move-result v0

    return v0
.end method

.method getLocalCertificates()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->localCertificates:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method getMaxSealOverhead()I
    .locals 2

    .prologue
    .line 606
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_max_seal_overhead(JLorg/conscrypt/NativeSsl;)I

    move-result v0

    return v0
.end method

.method getPeerCertificateOcspData()[B
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_ocsp_response(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getPeerCertificates()[Ljava/security/cert/X509Certificate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 116
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get0_peer_certificates(JLorg/conscrypt/NativeSsl;)[[B

    move-result-object v0

    .line 117
    .local v0, "encoded":[[B
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    goto :goto_0
.end method

.method getPeerTlsSctData()[B
    .locals 2

    .prologue
    .line 141
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_signed_cert_timestamp_list(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getPendingReadableBytes()I
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 596
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 597
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_pending_readable_bytes(JLorg/conscrypt/NativeSsl;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 601
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    .line 601
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method getRequestedServerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 274
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_servername(JLorg/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSessionId()[B
    .locals 2

    .prologue
    .line 96
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_session_id(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getTime()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_time(JLorg/conscrypt/NativeSsl;)J

    move-result-wide v0

    return-wide v0
.end method

.method getTimeout()J
    .locals 2

    .prologue
    .line 104
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_timeout(JLorg/conscrypt/NativeSsl;)J

    move-result-wide v0

    return-wide v0
.end method

.method getTlsChannelId()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 278
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_tls_channel_id(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getTlsUnique()[B
    .locals 2

    .prologue
    .line 129
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_tls_unique(JLorg/conscrypt/NativeSsl;)[B

    move-result-object v0

    return-object v0
.end method

.method getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 270
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_version(JLorg/conscrypt/NativeSsl;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method initialize(Ljava/lang/String;Lorg/conscrypt/OpenSSLKey;)V
    .locals 8
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "channelIdPrivateKey"    # Lorg/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x4000

    .line 282
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    .line 283
    .local v0, "enableSessionCreation":Z
    if-nez v0, :cond_0

    .line 284
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const/4 v1, 0x0

    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_set_session_creation_enabled(JLorg/conscrypt/NativeSsl;Z)V

    .line 290
    :cond_0
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_accept_renegotiations(JLorg/conscrypt/NativeSsl;)V

    .line 292
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 293
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_set_connect_state(JLorg/conscrypt/NativeSsl;)V

    .line 296
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(JLorg/conscrypt/NativeSsl;)V

    .line 297
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1, p1}, Lorg/conscrypt/SSLParametersImpl;->isCTVerificationEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 298
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_enable_signed_cert_timestamps(JLorg/conscrypt/NativeSsl;)V

    .line 309
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-boolean v1, v1, Lorg/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    if-eqz v1, :cond_3

    .line 310
    new-instance v1, Ljavax/net/ssl/SSLHandshakeException;

    const-string v2, "No enabled protocols; SSLv3 is no longer supported and was filtered from the list"

    invoke-direct {v1, v2}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 301
    :cond_2
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_set_accept_state(JLorg/conscrypt/NativeSsl;)V

    .line 304
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->getOCSPResponse()[B

    move-result-object v1

    if-eqz v1, :cond_1

    .line 305
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->SSL_enable_ocsp_stapling(JLorg/conscrypt/NativeSsl;)V

    goto :goto_0

    .line 314
    :cond_3
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->setEnabledProtocols(JLorg/conscrypt/NativeSsl;[Ljava/lang/String;)V

    .line 315
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v4, v4, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v2, v3, p0, v1, v4}, Lorg/conscrypt/NativeCrypto;->setEnabledCipherSuites(JLorg/conscrypt/NativeSsl;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    array-length v1, v1

    if-lez v1, :cond_4

    .line 319
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v4, v4, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-static {v2, v3, p0, v1, v4}, Lorg/conscrypt/NativeCrypto;->setApplicationProtocols(JLorg/conscrypt/NativeSsl;Z[B)V

    .line 321
    :cond_4
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    if-eqz v1, :cond_5

    .line 322
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const/4 v1, 0x1

    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->setHasApplicationProtocolSelector(JLorg/conscrypt/NativeSsl;Z)V

    .line 327
    :cond_5
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->isClient()Z

    move-result v1

    if-nez v1, :cond_7

    .line 328
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const-wide/32 v4, 0x400000

    invoke-static {v2, v3, p0, v4, v5}, Lorg/conscrypt/NativeCrypto;->SSL_set_options(JLorg/conscrypt/NativeSsl;J)J

    .line 330
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-eqz v1, :cond_6

    .line 331
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_set_signed_cert_timestamp_list(JLorg/conscrypt/NativeSsl;[B)V

    .line 334
    :cond_6
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-eqz v1, :cond_7

    .line 335
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, v1, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_set_ocsp_response(JLorg/conscrypt/NativeSsl;[B)V

    .line 339
    :cond_7
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->enablePSKKeyManagerIfRequested()V

    .line 341
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    iget-boolean v1, v1, Lorg/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    if-eqz v1, :cond_9

    .line 342
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0, v6, v7}, Lorg/conscrypt/NativeCrypto;->SSL_clear_options(JLorg/conscrypt/NativeSsl;J)J

    .line 348
    :goto_1
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->getUseSni()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {p1}, Lorg/conscrypt/AddressUtils;->isValidSniHostname(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 349
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v2, v3, p0, p1}, Lorg/conscrypt/NativeCrypto;->SSL_set_tlsext_host_name(JLorg/conscrypt/NativeSsl;Ljava/lang/String;)V

    .line 354
    :cond_8
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const-wide/16 v4, 0x100

    invoke-static {v2, v3, p0, v4, v5}, Lorg/conscrypt/NativeCrypto;->SSL_set_mode(JLorg/conscrypt/NativeSsl;J)J

    .line 356
    invoke-direct {p0}, Lorg/conscrypt/NativeSsl;->setCertificateValidation()V

    .line 357
    invoke-direct {p0, p2}, Lorg/conscrypt/NativeSsl;->setTlsChannelId(Lorg/conscrypt/OpenSSLKey;)V

    .line 358
    return-void

    .line 344
    :cond_9
    iget-wide v2, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-wide v4, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    .line 345
    invoke-static {v4, v5, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_options(JLorg/conscrypt/NativeSsl;)J

    move-result-wide v4

    or-long/2addr v4, v6

    .line 344
    invoke-static {v2, v3, p0, v4, v5}, Lorg/conscrypt/NativeCrypto;->SSL_set_options(JLorg/conscrypt/NativeSsl;J)J

    goto :goto_1
.end method

.method interrupt()V
    .locals 2

    .prologue
    .line 528
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_interrupt(JLorg/conscrypt/NativeSsl;)V

    .line 529
    return-void
.end method

.method isClosed()Z
    .locals 4

    .prologue
    .line 623
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method newBio()Lorg/conscrypt/NativeSsl$BioWrapper;
    .locals 3

    .prologue
    .line 85
    :try_start_0
    new-instance v1, Lorg/conscrypt/NativeSsl$BioWrapper;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lorg/conscrypt/NativeSsl$BioWrapper;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeSsl$1;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method offerToResumeSession(J)V
    .locals 3
    .param p1, "sslSessionNativePointer"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 92
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/conscrypt/NativeCrypto;->SSL_set_session(JLorg/conscrypt/NativeSsl;J)V

    .line 93
    return-void
.end method

.method read(Ljava/io/FileDescriptor;[BIII)I
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 424
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 426
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 427
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 429
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 430
    invoke-static/range {v0 .. v8}, Lorg/conscrypt/NativeCrypto;->SSL_read(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 432
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 429
    return v0
.end method

.method readDirectByteBuffer(JI)I
    .locals 7
    .param p1, "destAddress"    # J
    .param p3, "destLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 567
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v6, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_read_direct(JLorg/conscrypt/NativeSsl;JILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 570
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 567
    return v0

    .line 570
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 6
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .prologue
    const/4 v3, 0x0

    .line 195
    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->parameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/conscrypt/SSLParametersImpl;->getPSKKeyManager()Lorg/conscrypt/PSKKeyManager;

    move-result-object v0

    .line 196
    .local v0, "pskKeyManager":Lorg/conscrypt/PSKKeyManager;
    if-nez v0, :cond_1

    .line 207
    :cond_0
    :goto_0
    return v3

    .line 199
    :cond_1
    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->pskCallbacks:Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;

    invoke-interface {v4, v0, p1, p2}, Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;->getPSKKey(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;

    move-result-object v1

    .line 200
    .local v1, "secretKey":Ljavax/crypto/SecretKey;
    invoke-interface {v1}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v2

    .line 201
    .local v2, "secretKeyBytes":[B
    if-eqz v2, :cond_0

    .line 203
    array-length v4, v2

    array-length v5, p3

    if-gt v4, v5, :cond_0

    .line 206
    array-length v4, v2

    invoke-static {v2, v3, p3, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 207
    array-length v3, v2

    goto :goto_0
.end method

.method setTimeout(J)V
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0, p1, p2}, Lorg/conscrypt/NativeCrypto;->SSL_set_timeout(JLorg/conscrypt/NativeSsl;J)J

    .line 109
    return-void
.end method

.method shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 537
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 539
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_shutdown(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 541
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 543
    return-void

    .line 541
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method shutdown(Ljava/io/FileDescriptor;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 533
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v2, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    invoke-static {v0, v1, p0, p1, v2}, Lorg/conscrypt/NativeCrypto;->SSL_shutdown(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V

    .line 534
    return-void
.end method

.method wasShutdownReceived()Z
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 548
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_shutdown(JLorg/conscrypt/NativeSsl;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 550
    :goto_0
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 548
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method wasShutdownSent()Z
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 557
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_shutdown(JLorg/conscrypt/NativeSsl;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 559
    :goto_0
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 557
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 559
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method write(Ljava/io/FileDescriptor;[BIII)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "buf"    # [B
    .param p3, "offset"    # I
    .param p4, "len"    # I
    .param p5, "timeoutMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 441
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 442
    :cond_0
    new-instance v0, Ljava/net/SocketException;

    const-string v1, "Socket is closed"

    invoke-direct {v0, v1}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 447
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0

    .line 444
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v4, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    .line 445
    invoke-static/range {v0 .. v8}, Lorg/conscrypt/NativeCrypto;->SSL_write(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 447
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 449
    return-void
.end method

.method writeDirectByteBuffer(JI)I
    .locals 7
    .param p1, "sourceAddress"    # J
    .param p3, "sourceLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 575
    iget-object v0, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 577
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/NativeSsl;->ssl:J

    iget-object v6, p0, Lorg/conscrypt/NativeSsl;->handshakeCallbacks:Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/conscrypt/NativeCrypto;->ENGINE_SSL_write_direct(JLorg/conscrypt/NativeSsl;JILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 580
    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 577
    return v0

    .line 580
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/conscrypt/NativeSsl;->lock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
