.class final Lorg/conscrypt/SSLParametersImpl;
.super Ljava/lang/Object;
.source "SSLParametersImpl.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;,
        Lorg/conscrypt/SSLParametersImpl$AliasChooser;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static volatile defaultParameters:Lorg/conscrypt/SSLParametersImpl;

.field private static volatile defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private static volatile defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;


# instance fields
.field private algorithmConstraints:Ljava/security/AlgorithmConstraints;

.field applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

.field applicationProtocols:[B

.field channelIdEnabled:Z

.field private final clientSessionContext:Lorg/conscrypt/ClientSessionContext;

.field private client_mode:Z

.field private ctVerificationEnabled:Z

.field private enable_session_creation:Z

.field enabledCipherSuites:[Ljava/lang/String;

.field enabledProtocols:[Ljava/lang/String;

.field private endpointIdentificationAlgorithm:Ljava/lang/String;

.field isEnabledProtocolsFiltered:Z

.field private need_client_auth:Z

.field ocspResponse:[B

.field private final pskKeyManager:Lorg/conscrypt/PSKKeyManager;

.field sctExtension:[B

.field private final serverSessionContext:Lorg/conscrypt/ServerSessionContext;

.field private sniMatchers:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private useCipherSuitesOrder:Z

.field useSessionTickets:Z

.field private useSni:Ljava/lang/Boolean;

.field private want_client_auth:Z

.field private final x509KeyManager:Ljavax/net/ssl/X509KeyManager;

.field private final x509TrustManager:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 460
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lorg/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;Ljavax/net/ssl/X509KeyManager;Lorg/conscrypt/PSKKeyManager;Ljavax/net/ssl/X509TrustManager;Lorg/conscrypt/SSLParametersImpl;)V
    .locals 3
    .param p1, "clientSessionContext"    # Lorg/conscrypt/ClientSessionContext;
    .param p2, "serverSessionContext"    # Lorg/conscrypt/ServerSessionContext;
    .param p3, "x509KeyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p4, "pskKeyManager"    # Lorg/conscrypt/PSKKeyManager;
    .param p5, "x509TrustManager"    # Ljavax/net/ssl/X509TrustManager;
    .param p6, "sslParams"    # Lorg/conscrypt/SSLParametersImpl;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v2, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 84
    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 86
    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 88
    iput-boolean v2, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 103
    sget-object v0, Lorg/conscrypt/EmptyArray;->BYTE:[B

    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 166
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    .line 167
    iput-object p2, p0, Lorg/conscrypt/SSLParametersImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    .line 168
    iput-object p3, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 169
    iput-object p4, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    .line 170
    iput-object p5, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 173
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 174
    iget-boolean v0, p6, Lorg/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 176
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 177
    iget-boolean v0, p6, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 178
    iget-boolean v0, p6, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 179
    iget-boolean v0, p6, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 180
    iget-boolean v0, p6, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 181
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 182
    iget-boolean v0, p6, Lorg/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    .line 183
    iget-boolean v0, p6, Lorg/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    .line 185
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    if-nez v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    .line 187
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    .line 189
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    if-nez v0, :cond_4

    :goto_4
    iput-object v1, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 190
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 191
    iget-boolean v0, p6, Lorg/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 192
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    .line 193
    iget-boolean v0, p6, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 194
    return-void

    .line 173
    :cond_0
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0

    .line 176
    :cond_1
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_1

    .line 185
    :cond_2
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_2

    .line 187
    :cond_3
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_3

    .line 189
    :cond_4
    iget-object v0, p6, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v1, v0

    goto :goto_4
.end method

.method constructor <init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;[Ljava/lang/String;)V
    .locals 5
    .param p1, "kms"    # [Ljavax/net/ssl/KeyManager;
    .param p2, "tms"    # [Ljavax/net/ssl/TrustManager;
    .param p3, "sr"    # Ljava/security/SecureRandom;
    .param p4, "clientSessionContext"    # Lorg/conscrypt/ClientSessionContext;
    .param p5, "serverSessionContext"    # Lorg/conscrypt/ServerSessionContext;
    .param p6, "protocols"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-boolean v4, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 84
    iput-boolean v3, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 86
    iput-boolean v3, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 88
    iput-boolean v4, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 103
    sget-object v2, Lorg/conscrypt/EmptyArray;->BYTE:[B

    iput-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 126
    iput-object p5, p0, Lorg/conscrypt/SSLParametersImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    .line 127
    iput-object p4, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    .line 130
    if-nez p1, :cond_2

    .line 131
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 133
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    .line 140
    :goto_0
    if-nez p2, :cond_3

    .line 141
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 148
    :goto_1
    if-nez p6, :cond_0

    sget-object p6, Lorg/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    .line 147
    .end local p6    # "protocols":[Ljava/lang/String;
    :cond_0
    invoke-static {p6}, Lorg/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 148
    invoke-virtual {v2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_4

    :cond_1
    move v1, v4

    .line 150
    .local v1, "x509CipherSuitesNeeded":Z
    :goto_2
    iget-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    if-eqz v2, :cond_5

    move v0, v4

    .line 151
    .local v0, "pskCipherSuitesNeeded":Z
    :goto_3
    invoke-static {v1, v0}, Lorg/conscrypt/SSLParametersImpl;->getDefaultCipherSuites(ZZ)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 156
    return-void

    .line 135
    .end local v0    # "pskCipherSuitesNeeded":Z
    .end local v1    # "x509CipherSuitesNeeded":Z
    .restart local p6    # "protocols":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Lorg/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 136
    invoke-static {p1}, Lorg/conscrypt/SSLParametersImpl;->findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lorg/conscrypt/PSKKeyManager;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    goto :goto_0

    .line 143
    :cond_3
    invoke-static {p2}, Lorg/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    goto :goto_1

    .end local p6    # "protocols":[Ljava/lang/String;
    :cond_4
    move v1, v3

    .line 149
    goto :goto_2

    .restart local v1    # "x509CipherSuitesNeeded":Z
    :cond_5
    move v0, v3

    .line 150
    goto :goto_3
.end method

.method private static createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 534
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 535
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 536
    .local v2, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 537
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    .line 538
    .local v3, "kms":[Ljavax/net/ssl/KeyManager;
    invoke-static {v3}, Lorg/conscrypt/SSLParametersImpl;->findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v4

    .line 539
    .local v4, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v4, :cond_0

    .line 540
    new-instance v5, Ljava/security/KeyManagementException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No X509KeyManager among default KeyManagers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 541
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_2

    .line 544
    .end local v2    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v3    # "kms":[Ljavax/net/ssl/KeyManager;
    .end local v4    # "result":Ljavax/net/ssl/X509KeyManager;
    :catch_0
    move-exception v1

    .line 545
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 546
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 547
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 548
    .end local v1    # "e":Ljava/security/KeyStoreException;
    :catch_2
    move-exception v1

    .line 549
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 543
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    .restart local v2    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v3    # "kms":[Ljavax/net/ssl/KeyManager;
    .restart local v4    # "result":Ljavax/net/ssl/X509KeyManager;
    :cond_0
    return-object v4
.end method

.method private static createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 604
    :try_start_0
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 605
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v2

    .line 606
    .local v2, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v5, 0x0

    check-cast v5, Ljava/security/KeyStore;

    invoke-virtual {v2, v5}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 607
    invoke-virtual {v2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 608
    .local v3, "tms":[Ljavax/net/ssl/TrustManager;
    invoke-static {v3}, Lorg/conscrypt/SSLParametersImpl;->findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v4

    .line 609
    .local v4, "trustManager":Ljavax/net/ssl/X509TrustManager;
    if-nez v4, :cond_0

    .line 610
    new-instance v5, Ljava/security/KeyManagementException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No X509TrustManager in among default TrustManagers: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 612
    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    .line 615
    .end local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v3    # "tms":[Ljavax/net/ssl/TrustManager;
    .end local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :catch_0
    move-exception v1

    .line 616
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 617
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v1

    .line 618
    .local v1, "e":Ljava/security/KeyStoreException;
    new-instance v5, Ljava/security/KeyManagementException;

    invoke-direct {v5, v1}, Ljava/security/KeyManagementException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 614
    .end local v1    # "e":Ljava/security/KeyStoreException;
    .restart local v2    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v3    # "tms":[Ljavax/net/ssl/TrustManager;
    .restart local v4    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_0
    return-object v4
.end method

.method private static filterFromCipherSuites([Ljava/lang/String;Ljava/util/Set;)[Ljava/lang/String;
    .locals 5
    .param p0, "cipherSuites"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 448
    .local p1, "toRemove":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    array-length v2, p0

    if-nez v2, :cond_1

    :cond_0
    move-object v2, p0

    .line 457
    :goto_0
    return-object v2

    .line 451
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 452
    .local v1, "newCipherSuites":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget-object v0, p0, v2

    .line 453
    .local v0, "cipherSuite":Ljava/lang/String;
    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 454
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 452
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 457
    .end local v0    # "cipherSuite":Ljava/lang/String;
    :cond_3
    sget-object v2, Lorg/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p0, "protocols"    # [Ljava/lang/String;
    .param p1, "obsoleteProtocol"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 434
    array-length v3, p0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    sget-object v2, Lorg/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 444
    :goto_0
    return-object v2

    .line 438
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, "newProtocols":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v3, p0

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v1, p0, v2

    .line 440
    .local v1, "protocol":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 444
    .end local v1    # "protocol":Ljava/lang/String;
    :cond_2
    sget-object v2, Lorg/conscrypt/SSLParametersImpl;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    goto :goto_0
.end method

.method private static findFirstPSKKeyManager([Ljavax/net/ssl/KeyManager;)Lorg/conscrypt/PSKKeyManager;
    .locals 4
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .prologue
    .line 574
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v0, p0, v1

    .line 575
    .local v0, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v0, Lorg/conscrypt/PSKKeyManager;

    if-eqz v3, :cond_0

    .line 576
    check-cast v0, Lorg/conscrypt/PSKKeyManager;

    .line 585
    .end local v0    # "km":Ljavax/net/ssl/KeyManager;
    :goto_1
    return-object v0

    .line 577
    .restart local v0    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    if-eqz v0, :cond_1

    .line 579
    :try_start_0
    invoke-static {v0}, Lorg/conscrypt/DuckTypedPSKKeyManager;->getInstance(Ljava/lang/Object;)Lorg/conscrypt/DuckTypedPSKKeyManager;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_1

    .line 580
    :catch_0
    move-exception v3

    .line 574
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 585
    .end local v0    # "km":Ljavax/net/ssl/KeyManager;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findFirstX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;
    .locals 4
    .param p0, "kms"    # [Ljavax/net/ssl/KeyManager;

    .prologue
    .line 559
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 560
    .local v0, "km":Ljavax/net/ssl/KeyManager;
    instance-of v3, v0, Ljavax/net/ssl/X509KeyManager;

    if-eqz v3, :cond_0

    .line 561
    check-cast v0, Ljavax/net/ssl/X509KeyManager;

    .line 564
    .end local v0    # "km":Ljavax/net/ssl/KeyManager;
    :goto_1
    return-object v0

    .line 559
    .restart local v0    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v0    # "km":Ljavax/net/ssl/KeyManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static findFirstX509TrustManager([Ljavax/net/ssl/TrustManager;)Ljavax/net/ssl/X509TrustManager;
    .locals 4
    .param p0, "tms"    # [Ljavax/net/ssl/TrustManager;

    .prologue
    .line 629
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v0, p0, v1

    .line 630
    .local v0, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v3, v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 631
    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 634
    .end local v0    # "tm":Ljavax/net/ssl/TrustManager;
    :goto_1
    return-object v0

    .line 629
    .restart local v0    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v0    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method static getDefault()Lorg/conscrypt/SSLParametersImpl;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 197
    sget-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 198
    .local v0, "result":Lorg/conscrypt/SSLParametersImpl;
    if-nez v0, :cond_0

    .line 200
    new-instance v0, Lorg/conscrypt/SSLParametersImpl;

    .end local v0    # "result":Lorg/conscrypt/SSLParametersImpl;
    new-instance v4, Lorg/conscrypt/ClientSessionContext;

    invoke-direct {v4}, Lorg/conscrypt/ClientSessionContext;-><init>()V

    new-instance v5, Lorg/conscrypt/ServerSessionContext;

    invoke-direct {v5}, Lorg/conscrypt/ServerSessionContext;-><init>()V

    move-object v2, v1

    move-object v3, v1

    move-object v6, v1

    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/SSLParametersImpl;-><init>([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;[Ljava/lang/String;)V

    .restart local v0    # "result":Lorg/conscrypt/SSLParametersImpl;
    sput-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 207
    :cond_0
    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/SSLParametersImpl;

    return-object v1
.end method

.method private static getDefaultCipherSuites(ZZ)[Ljava/lang/String;
    .locals 6
    .param p0, "x509CipherSuitesNeeded"    # Z
    .param p1, "pskCipherSuitesNeeded"    # Z

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 675
    if-eqz p0, :cond_1

    .line 677
    if-eqz p1, :cond_0

    .line 684
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/String;

    sget-object v1, Lorg/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    sget-object v1, Lorg/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v4

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v5

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 701
    :goto_0
    return-object v0

    .line 690
    :cond_0
    new-array v0, v5, [[Ljava/lang/String;

    sget-object v1, Lorg/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 694
    :cond_1
    if-eqz p1, :cond_2

    .line 696
    new-array v0, v5, [[Ljava/lang/String;

    sget-object v1, Lorg/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v1, v0, v3

    new-array v1, v4, [Ljava/lang/String;

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v2, v1, v3

    aput-object v1, v0, v4

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 701
    :cond_2
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v1, v0, v3

    goto :goto_0
.end method

.method private static getDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 525
    sget-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 526
    .local v0, "result":Ljavax/net/ssl/X509KeyManager;
    if-nez v0, :cond_0

    .line 528
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->createDefaultX509KeyManager()Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultX509KeyManager:Ljavax/net/ssl/X509KeyManager;

    .line 530
    :cond_0
    return-object v0
.end method

.method static getDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    .line 593
    sget-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 594
    .local v0, "result":Ljavax/net/ssl/X509TrustManager;
    if-nez v0, :cond_0

    .line 596
    invoke-static {}, Lorg/conscrypt/SSLParametersImpl;->createDefaultX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/SSLParametersImpl;->defaultX509TrustManager:Ljavax/net/ssl/X509TrustManager;

    .line 598
    :cond_0
    return-object v0
.end method

.method private isSniEnabledByDefault()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 468
    :try_start_0
    const-string v3, "jsse.enableSNIExtension"

    const-string v4, "true"

    invoke-static {v3, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, "enableSNI":Ljava/lang/String;
    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 478
    .end local v1    # "enableSNI":Ljava/lang/String;
    :goto_0
    return v2

    .line 471
    .restart local v1    # "enableSNI":Ljava/lang/String;
    :cond_0
    const-string v3, "false"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 472
    const/4 v2, 0x0

    goto :goto_0

    .line 474
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Can only set \"jsse.enableSNIExtension\" to \"true\" or \"false\""

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    .end local v1    # "enableSNI":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 478
    .local v0, "e":Ljava/lang/SecurityException;
    goto :goto_0
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 513
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 514
    :catch_0
    move-exception v0

    .line 515
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method cloneWithTrustManager(Ljavax/net/ssl/X509TrustManager;)Lorg/conscrypt/SSLParametersImpl;
    .locals 7
    .param p1, "newTrustManager"    # Ljavax/net/ssl/X509TrustManager;

    .prologue
    .line 520
    new-instance v0, Lorg/conscrypt/SSLParametersImpl;

    iget-object v1, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    iget-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    iget-object v3, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    iget-object v4, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    move-object v5, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/SSLParametersImpl;-><init>(Lorg/conscrypt/ClientSessionContext;Lorg/conscrypt/ServerSessionContext;Ljavax/net/ssl/X509KeyManager;Lorg/conscrypt/PSKKeyManager;Ljavax/net/ssl/X509TrustManager;Lorg/conscrypt/SSLParametersImpl;)V

    return-object v0
.end method

.method getAlgorithmConstraints()Ljava/security/AlgorithmConstraints;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    return-object v0
.end method

.method getApplicationProtocolSelector()Lorg/conscrypt/ApplicationProtocolSelectorAdapter;
    .locals 1

    .prologue
    .line 315
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    return-object v0
.end method

.method getApplicationProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->decodeProtocols([B)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getClientSessionContext()Lorg/conscrypt/ClientSessionContext;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    return-object v0
.end method

.method getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    return v0
.end method

.method getEnabledCipherSuites()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "TLSv1.3"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method getEndpointIdentificationAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    return v0
.end method

.method getOCSPResponse()[B
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    return-object v0
.end method

.method getPSKKeyManager()Lorg/conscrypt/PSKKeyManager;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->pskKeyManager:Lorg/conscrypt/PSKKeyManager;

    return-object v0
.end method

.method getSNIMatchers()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 650
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->sniMatchers:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 651
    const/4 v0, 0x0

    .line 653
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/conscrypt/SSLParametersImpl;->sniMatchers:Ljava/util/Collection;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method getSessionContext()Lorg/conscrypt/AbstractSessionContext;
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->clientSessionContext:Lorg/conscrypt/ClientSessionContext;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->serverSessionContext:Lorg/conscrypt/ServerSessionContext;

    goto :goto_0
.end method

.method getUseCipherSuitesOrder()Z
    .locals 1

    .prologue
    .line 646
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    return v0
.end method

.method getUseClientMode()Z
    .locals 1

    .prologue
    .line 331
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    return v0
.end method

.method getUseSni()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/conscrypt/SSLParametersImpl;->isSniEnabledByDefault()Z

    move-result v0

    goto :goto_0
.end method

.method getWantClientAuth()Z
    .locals 1

    .prologue
    .line 365
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    return v0
.end method

.method getX509KeyManager()Ljavax/net/ssl/X509KeyManager;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->x509KeyManager:Ljavax/net/ssl/X509KeyManager;

    return-object v0
.end method

.method getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->x509TrustManager:Ljavax/net/ssl/X509TrustManager;

    return-object v0
.end method

.method isCTVerificationEnabled(Ljava/lang/String;)Z
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 709
    if-nez p1, :cond_0

    .line 710
    const/4 v0, 0x0

    .line 717
    :goto_0
    return v0

    .line 714
    :cond_0
    iget-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    if-eqz v0, :cond_1

    .line 715
    const/4 v0, 0x1

    goto :goto_0

    .line 717
    :cond_1
    invoke-static {p1}, Lorg/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method setAlgorithmConstraints(Ljava/security/AlgorithmConstraints;)V
    .locals 0
    .param p1, "algorithmConstraints"    # Ljava/security/AlgorithmConstraints;

    .prologue
    .line 665
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->algorithmConstraints:Ljava/security/AlgorithmConstraints;

    .line 666
    return-void
.end method

.method setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .locals 0
    .param p1, "applicationProtocolSelector"    # Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    .prologue
    .line 308
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocolSelector:Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    .line 309
    return-void
.end method

.method setApplicationProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 296
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->encodeProtocols([Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->applicationProtocols:[B

    .line 297
    return-void
.end method

.method setCTVerificationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 408
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->ctVerificationEnabled:Z

    .line 409
    return-void
.end method

.method setEnableSessionCreation(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 373
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->enable_session_creation:Z

    .line 374
    return-void
.end method

.method setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 264
    sget-object v0, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 265
    invoke-static {p1, v0}, Lorg/conscrypt/SSLParametersImpl;->filterFromCipherSuites([Ljava/lang/String;Ljava/util/Set;)[Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->enabledCipherSuites:[Ljava/lang/String;

    .line 267
    return-void
.end method

.method setEnabledProtocols([Ljava/lang/String;)V
    .locals 3
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 281
    if-nez p1, :cond_0

    .line 282
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "protocols == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 284
    :cond_0
    const-string v1, "SSLv3"

    .line 285
    invoke-static {p1, v1}, Lorg/conscrypt/SSLParametersImpl;->filterFromProtocols([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 286
    .local v0, "filteredProtocols":[Ljava/lang/String;
    array-length v1, p1

    array-length v2, v0

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lorg/conscrypt/SSLParametersImpl;->isEnabledProtocolsFiltered:Z

    .line 287
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    .line 288
    return-void

    .line 286
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setEndpointIdentificationAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "endpointIdentificationAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 642
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->endpointIdentificationAlgorithm:Ljava/lang/String;

    .line 643
    return-void
.end method

.method setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 338
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 340
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 341
    return-void
.end method

.method setOCSPResponse([B)V
    .locals 0
    .param p1, "response"    # [B

    .prologue
    .line 422
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->ocspResponse:[B

    .line 423
    return-void
.end method

.method setSCTExtension([B)V
    .locals 0
    .param p1, "extension"    # [B

    .prologue
    .line 415
    iput-object p1, p0, Lorg/conscrypt/SSLParametersImpl;->sctExtension:[B

    .line 416
    return-void
.end method

.method setSNIMatchers(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/net/ssl/SNIMatcher;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 657
    .local p1, "sniMatchers":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/net/ssl/SNIMatcher;>;"
    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->sniMatchers:Ljava/util/Collection;

    .line 658
    return-void

    .line 657
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setUseCipherSuitesOrder(Z)V
    .locals 0
    .param p1, "useCipherSuitesOrder"    # Z

    .prologue
    .line 669
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->useCipherSuitesOrder:Z

    .line 670
    return-void
.end method

.method setUseClientMode(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->client_mode:Z

    .line 324
    return-void
.end method

.method setUseSessionTickets(Z)V
    .locals 0
    .param p1, "useSessionTickets"    # Z

    .prologue
    .line 385
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->useSessionTickets:Z

    .line 386
    return-void
.end method

.method setUseSni(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 393
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/SSLParametersImpl;->useSni:Ljava/lang/Boolean;

    .line 394
    return-void
.end method

.method setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    .prologue
    .line 355
    iput-boolean p1, p0, Lorg/conscrypt/SSLParametersImpl;->want_client_auth:Z

    .line 357
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/conscrypt/SSLParametersImpl;->need_client_auth:Z

    .line 358
    return-void
.end method
