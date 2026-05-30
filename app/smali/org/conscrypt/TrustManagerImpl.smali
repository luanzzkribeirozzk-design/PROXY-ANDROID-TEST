.class public final Lorg/conscrypt/TrustManagerImpl;
.super Ljavax/net/ssl/X509ExtendedTrustManager;
.source "TrustManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;,
        Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;
    }
.end annotation


# static fields
.field private static final TRUST_ANCHOR_COMPARATOR:Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

.field private static defaultHostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field private final acceptedIssuers:[Ljava/security/cert/X509Certificate;

.field private final blocklist:Lorg/conscrypt/CertBlocklist;

.field private ctEnabledOverride:Z

.field private ctPolicy:Lorg/conscrypt/ct/CTPolicy;

.field private ctVerifier:Lorg/conscrypt/ct/CTVerifier;

.field private final err:Ljava/lang/Exception;

.field private final factory:Ljava/security/cert/CertificateFactory;

.field private hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

.field private final intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

.field private pinManager:Lorg/conscrypt/CertPinManager;

.field private final rootKeyStore:Ljava/security/KeyStore;

.field private final trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

.field private final trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

.field private final validator:Ljava/security/cert/CertPathValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    const-class v0, Lorg/conscrypt/TrustManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    .line 93
    new-instance v0, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;-><init>(Lorg/conscrypt/TrustManagerImpl$1;)V

    sput-object v0, Lorg/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .prologue
    .line 153
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;)V

    .line 154
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lorg/conscrypt/CertPinManager;

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;)V

    .line 158
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;)V
    .locals 1
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lorg/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lorg/conscrypt/ConscryptCertStore;

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlocklist;)V

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlocklist;)V
    .locals 8
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lorg/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lorg/conscrypt/ConscryptCertStore;
    .param p4, "blocklist"    # Lorg/conscrypt/CertBlocklist;

    .prologue
    const/4 v5, 0x0

    .line 168
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, v5

    invoke-direct/range {v0 .. v7}, Lorg/conscrypt/TrustManagerImpl;-><init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlocklist;Lorg/conscrypt/ct/CTLogStore;Lorg/conscrypt/ct/CTVerifier;Lorg/conscrypt/ct/CTPolicy;)V

    .line 169
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Lorg/conscrypt/CertPinManager;Lorg/conscrypt/ConscryptCertStore;Lorg/conscrypt/CertBlocklist;Lorg/conscrypt/ct/CTLogStore;Lorg/conscrypt/ct/CTVerifier;Lorg/conscrypt/ct/CTPolicy;)V
    .locals 12
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "manager"    # Lorg/conscrypt/CertPinManager;
    .param p3, "certStore"    # Lorg/conscrypt/ConscryptCertStore;
    .param p4, "blocklist"    # Lorg/conscrypt/CertBlocklist;
    .param p5, "ctLogStore"    # Lorg/conscrypt/ct/CTLogStore;
    .param p6, "ctVerifier"    # Lorg/conscrypt/ct/CTVerifier;
    .param p7, "ctPolicy"    # Lorg/conscrypt/ct/CTPolicy;

    .prologue
    .line 176
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedTrustManager;-><init>()V

    .line 177
    const/4 v9, 0x0

    .line 178
    .local v9, "validatorLocal":Ljava/security/cert/CertPathValidator;
    const/4 v4, 0x0

    .line 179
    .local v4, "factoryLocal":Ljava/security/cert/CertificateFactory;
    const/4 v5, 0x0

    .line 180
    .local v5, "rootKeyStoreLocal":Ljava/security/KeyStore;
    const/4 v8, 0x0

    .line 181
    .local v8, "trustedCertificateStoreLocal":Lorg/conscrypt/ConscryptCertStore;
    const/4 v6, 0x0

    .line 182
    .local v6, "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    const/4 v1, 0x0

    .line 183
    .local v1, "acceptedIssuersLocal":[Ljava/security/cert/X509Certificate;
    const/4 v3, 0x0

    .line 185
    .local v3, "errLocal":Ljava/lang/Exception;
    :try_start_0
    const-string v10, "PKIX"

    invoke-static {v10}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v9

    .line 186
    const-string v10, "X509"

    invoke-static {v10}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    .line 189
    const-string v10, "AndroidCAStore"

    invoke-virtual {p1}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 190
    invoke-static {}, Lorg/conscrypt/Platform;->supportsConscryptCertStore()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 191
    move-object v5, p1

    .line 193
    if-eqz p3, :cond_3

    move-object v8, p3

    .line 194
    :goto_0
    const/4 v1, 0x0

    .line 195
    new-instance v7, Lorg/conscrypt/TrustedCertificateIndex;

    invoke-direct {v7}, Lorg/conscrypt/TrustedCertificateIndex;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    .local v7, "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    move-object v6, v7

    .line 208
    .end local v7    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    .restart local v6    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    :goto_1
    if-nez p4, :cond_0

    .line 209
    invoke-static {}, Lorg/conscrypt/Platform;->newDefaultBlocklist()Lorg/conscrypt/CertBlocklist;

    move-result-object p4

    .line 211
    :cond_0
    if-nez p5, :cond_1

    .line 212
    invoke-static {}, Lorg/conscrypt/Platform;->newDefaultLogStore()Lorg/conscrypt/ct/CTLogStore;

    move-result-object p5

    .line 215
    :cond_1
    if-nez p7, :cond_2

    .line 216
    invoke-static/range {p5 .. p5}, Lorg/conscrypt/Platform;->newDefaultPolicy(Lorg/conscrypt/ct/CTLogStore;)Lorg/conscrypt/ct/CTPolicy;

    move-result-object p7

    .line 219
    :cond_2
    iput-object p2, p0, Lorg/conscrypt/TrustManagerImpl;->pinManager:Lorg/conscrypt/CertPinManager;

    .line 220
    iput-object v5, p0, Lorg/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    .line 221
    iput-object v8, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    .line 222
    iput-object v9, p0, Lorg/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    .line 223
    iput-object v4, p0, Lorg/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    .line 224
    iput-object v6, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 225
    new-instance v10, Lorg/conscrypt/TrustedCertificateIndex;

    invoke-direct {v10}, Lorg/conscrypt/TrustedCertificateIndex;-><init>()V

    iput-object v10, p0, Lorg/conscrypt/TrustManagerImpl;->intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 226
    iput-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    .line 227
    iput-object v3, p0, Lorg/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    .line 228
    move-object/from16 v0, p4

    iput-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->blocklist:Lorg/conscrypt/CertBlocklist;

    .line 229
    new-instance v10, Lorg/conscrypt/ct/CTVerifier;

    move-object/from16 v0, p5

    invoke-direct {v10, v0}, Lorg/conscrypt/ct/CTVerifier;-><init>(Lorg/conscrypt/ct/CTLogStore;)V

    iput-object v10, p0, Lorg/conscrypt/TrustManagerImpl;->ctVerifier:Lorg/conscrypt/ct/CTVerifier;

    .line 230
    move-object/from16 v0, p7

    iput-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->ctPolicy:Lorg/conscrypt/ct/CTPolicy;

    .line 231
    return-void

    .line 193
    :cond_3
    :try_start_1
    invoke-static {}, Lorg/conscrypt/Platform;->newDefaultCertStore()Lorg/conscrypt/ConscryptCertStore;

    move-result-object v8

    goto :goto_0

    .line 197
    :cond_4
    const/4 v5, 0x0

    .line 198
    move-object v8, p3

    .line 199
    invoke-static {p1}, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 200
    new-instance v7, Lorg/conscrypt/TrustedCertificateIndex;

    .line 201
    invoke-static {v1}, Lorg/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v10

    invoke-direct {v7, v10}, Lorg/conscrypt/TrustedCertificateIndex;-><init>(Ljava/util/Set;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v6    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    .restart local v7    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    move-object v6, v7

    .end local v7    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    .restart local v6    # "trustedCertificateIndexLocal":Lorg/conscrypt/TrustedCertificateIndex;
    goto :goto_1

    .line 204
    :catch_0
    move-exception v2

    .line 205
    .local v2, "e":Ljava/lang/Exception;
    move-object v3, v2

    goto :goto_1
.end method

.method private static acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;
    .locals 6
    .param p0, "ks"    # Ljava/security/KeyStore;

    .prologue
    .line 244
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v4, "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    invoke-virtual {p0}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v3

    .local v3, "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 246
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 248
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_0

    .line 249
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v4    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :catch_0
    move-exception v2

    .line 254
    .local v2, "e":Ljava/security/KeyStoreException;
    const/4 v5, 0x0

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    .end local v2    # "e":Ljava/security/KeyStoreException;
    :goto_1
    return-object v5

    .line 252
    .restart local v3    # "en":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v4    # "trusted":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    :cond_1
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Ljava/security/cert/X509Certificate;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private checkBlocklist(Ljava/security/cert/X509Certificate;)V
    .locals 3
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 722
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->blocklist:Lorg/conscrypt/CertBlocklist;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->blocklist:Lorg/conscrypt/CertBlocklist;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/conscrypt/CertBlocklist;->isPublicKeyBlockListed(Ljava/security/PublicKey;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    new-instance v0, Ljava/security/cert/CertificateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate blocklisted by public key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 725
    :cond_0
    return-void
.end method

.method private checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p3, "ocspData"    # [B
    .param p4, "tlsData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;[B[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 729
    .local p2, "chain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->ctVerifier:Lorg/conscrypt/ct/CTVerifier;

    .line 730
    invoke-virtual {v1, p2, p4, p3}, Lorg/conscrypt/ct/CTVerifier;->verifySignedCertificateTimestamps(Ljava/util/List;[B[B)Lorg/conscrypt/ct/CTVerificationResult;

    move-result-object v0

    .line 732
    .local v0, "result":Lorg/conscrypt/ct/CTVerificationResult;
    iget-object v2, p0, Lorg/conscrypt/TrustManagerImpl;->ctPolicy:Lorg/conscrypt/ct/CTPolicy;

    .line 733
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/security/cert/X509Certificate;

    invoke-interface {p2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/security/cert/X509Certificate;

    .line 732
    invoke-interface {v2, v0, p1, v1}, Lorg/conscrypt/ct/CTPolicy;->doesResultConformToPolicy(Lorg/conscrypt/ct/CTVerificationResult;Ljava/lang/String;[Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 734
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Certificate chain does not conform to required transparency policy."

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 737
    :cond_0
    return-void
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;
    .locals 9
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;
    .param p4, "parameters"    # Ljavax/net/ssl/SSLParameters;
    .param p5, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            "Ljavax/net/ssl/SSLParameters;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 394
    const/4 v2, 0x0

    .line 395
    .local v2, "ocspData":[B
    const/4 v3, 0x0

    .line 396
    .local v3, "tlsSctData":[B
    const/4 v5, 0x0

    .line 397
    .local v5, "hostname":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 398
    invoke-interface {p3}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    .line 399
    invoke-static {p3}, Lorg/conscrypt/TrustManagerImpl;->getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v2

    .line 400
    invoke-direct {p0, p3}, Lorg/conscrypt/TrustManagerImpl;->getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B

    move-result-object v3

    .line 403
    :cond_0
    if-eqz p3, :cond_1

    if-eqz p4, :cond_1

    .line 404
    invoke-virtual {p4}, Ljavax/net/ssl/SSLParameters;->getEndpointIdentificationAlgorithm()Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, "identificationAlgorithm":Ljava/lang/String;
    const-string v0, "HTTPS"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 406
    invoke-direct {p0}, Lorg/conscrypt/TrustManagerImpl;->getHttpsVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object v8

    .line 407
    .local v8, "verifier":Lorg/conscrypt/ConscryptHostnameVerifier;
    invoke-interface {v8, p1, v5, p3}, Lorg/conscrypt/ConscryptHostnameVerifier;->verify([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 408
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "No subjectAltNames on the certificate match"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v7    # "identificationAlgorithm":Ljava/lang/String;
    .end local v8    # "verifier":Lorg/conscrypt/ConscryptHostnameVerifier;
    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v6, p5

    .line 412
    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;
    .locals 11
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "authType"    # Ljava/lang/String;
    .param p5, "host"    # Ljava/lang/String;
    .param p6, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 471
    if-eqz p1, :cond_0

    array-length v0, p1

    if-eqz v0, :cond_0

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 472
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null or zero-length parameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 474
    :cond_1
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    if-eqz v0, :cond_2

    .line 475
    new-instance v0, Ljava/security/cert/CertificateException;

    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->err:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 477
    :cond_2
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 478
    .local v8, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 479
    .local v6, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 483
    .local v7, "trustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    const/4 v0, 0x0

    aget-object v9, p1, v0

    .line 484
    .local v9, "leaf":Ljava/security/cert/X509Certificate;
    invoke-direct {p0, v9}, Lorg/conscrypt/TrustManagerImpl;->findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v10

    .line 485
    .local v10, "leafAsAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v10, :cond_3

    .line 486
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 491
    :goto_0
    invoke-interface {v8, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    .line 492
    invoke-direct/range {v0 .. v8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 489
    :cond_3
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    .locals 22
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "ocspData"    # [B
    .param p3, "tlsSctData"    # [B
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "clientAuth"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "[B[B",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 523
    .local p6, "untrustedChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .local p7, "trustAnchorChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/TrustAnchor;>;"
    .local p8, "used":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    const/16 v20, 0x0

    .line 525
    .local v20, "lastException":Ljava/security/cert/CertificateException;
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 526
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/security/cert/X509Certificate;

    .line 532
    .local v14, "current":Ljava/security/cert/X509Certificate;
    :goto_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/conscrypt/TrustManagerImpl;->checkBlocklist(Ljava/security/cert/X509Certificate;)V

    .line 535
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 536
    invoke-direct/range {v2 .. v8}, Lorg/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v2

    .line 625
    :goto_1
    return-object v2

    .line 528
    .end local v14    # "current":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v14

    .restart local v14    # "current":Ljava/security/cert/X509Certificate;
    goto :goto_0

    .line 545
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lorg/conscrypt/TrustManagerImpl;->findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v11

    .line 546
    .local v11, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/16 v21, 0x0

    .line 547
    .local v21, "seenIssuer":Z
    invoke-static {v11}, Lorg/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/TrustAnchor;

    .line 548
    .local v9, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v9}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v10

    .line 550
    .local v10, "anchorCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p8

    invoke-interface {v0, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 553
    const/16 v21, 0x1

    .line 554
    move-object/from16 v0, p8

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 555
    move-object/from16 v0, p7

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 557
    :try_start_0
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 559
    :catch_0
    move-exception v15

    .line 560
    .local v15, "ex":Ljava/security/cert/CertificateException;
    move-object/from16 v20, v15

    .line 563
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p7

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 564
    move-object/from16 v0, p8

    invoke-interface {v0, v10}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    .line 570
    .end local v9    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v10    # "anchorCert":Ljava/security/cert/X509Certificate;
    .end local v15    # "ex":Ljava/security/cert/CertificateException;
    :cond_3
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 571
    if-nez v21, :cond_4

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    .line 572
    invoke-direct/range {v2 .. v8}, Lorg/conscrypt/TrustManagerImpl;->verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;

    move-result-object v2

    goto :goto_1

    .line 577
    :cond_4
    throw v20

    .line 582
    :cond_5
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_3
    move-object/from16 v0, p1

    array-length v2, v0

    move/from16 v0, v16

    if-ge v0, v2, :cond_8

    .line 583
    aget-object v12, p1, v16

    .line 585
    .local v12, "candidateIssuer":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p8

    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 582
    :cond_6
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 588
    :cond_7
    invoke-virtual {v14}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 592
    :try_start_1
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 593
    invoke-static {v12}, Lorg/conscrypt/ChainStrengthAnalyzer;->checkCert(Ljava/security/cert/X509Certificate;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 599
    move-object/from16 v0, p8

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 600
    move-object/from16 v0, p6

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    :try_start_2
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    goto/16 :goto_1

    .line 594
    :catch_1
    move-exception v15

    .line 595
    .restart local v15    # "ex":Ljava/security/cert/CertificateException;
    new-instance v20, Ljava/security/cert/CertificateException;

    .end local v20    # "lastException":Ljava/security/cert/CertificateException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unacceptable certificate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 596
    invoke-virtual {v12}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v15}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 597
    .restart local v20    # "lastException":Ljava/security/cert/CertificateException;
    goto :goto_4

    .line 604
    .end local v15    # "ex":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v15

    .line 605
    .restart local v15    # "ex":Ljava/security/cert/CertificateException;
    move-object/from16 v20, v15

    .line 608
    move-object/from16 v0, p8

    invoke-interface {v0, v12}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 609
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 614
    .end local v12    # "candidateIssuer":Ljava/security/cert/X509Certificate;
    .end local v15    # "ex":Ljava/security/cert/CertificateException;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/conscrypt/TrustManagerImpl;->intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 615
    invoke-virtual {v2, v14}, Lorg/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v18

    .line 616
    .local v18, "intermediateAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-static/range {v18 .. v18}, Lorg/conscrypt/TrustManagerImpl;->sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_9
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/security/cert/TrustAnchor;

    .line 617
    .local v17, "intermediate":Ljava/security/cert/TrustAnchor;
    invoke-virtual/range {v17 .. v17}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v19

    .line 619
    .local v19, "intermediateCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 622
    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 623
    move-object/from16 v0, p6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 625
    :try_start_3
    invoke-direct/range {p0 .. p8}, Lorg/conscrypt/TrustManagerImpl;->checkTrustedRecursive([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Set;)Ljava/util/List;
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    goto/16 :goto_1

    .line 627
    :catch_3
    move-exception v15

    .line 628
    .restart local v15    # "ex":Ljava/security/cert/CertificateException;
    move-object/from16 v20, v15

    .line 631
    invoke-virtual/range {p6 .. p6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, p6

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 632
    move-object/from16 v0, p8

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_5

    .line 636
    .end local v15    # "ex":Ljava/security/cert/CertificateException;
    .end local v17    # "intermediate":Ljava/security/cert/TrustAnchor;
    .end local v19    # "intermediateCert":Ljava/security/cert/X509Certificate;
    :cond_a
    if-eqz v20, :cond_b

    .line 637
    throw v20

    .line 642
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v13

    .line 643
    .local v13, "certPath":Ljava/security/cert/CertPath;
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/security/cert/CertPathValidatorException;

    const-string v4, "Trust anchor for certification path not found."

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-direct {v3, v4, v5, v13, v6}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v2, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method private findAllTrustAnchorsByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 6
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 916
    iget-object v4, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    .line 917
    invoke-virtual {v4, p1}, Lorg/conscrypt/TrustedCertificateIndex;->findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v0

    .line 918
    .local v0, "indexedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    if-nez v4, :cond_1

    .line 929
    .end local v0    # "indexedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_0
    :goto_0
    return-object v0

    .line 921
    .restart local v0    # "indexedAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_1
    iget-object v4, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    invoke-interface {v4, p1}, Lorg/conscrypt/ConscryptCertStore;->findAllIssuers(Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v2

    .line 922
    .local v2, "storeAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 925
    new-instance v1, Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/HashSet;-><init>(I)V

    .line 926
    .local v1, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 927
    .local v3, "storeCert":Ljava/security/cert/X509Certificate;
    iget-object v5, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v5, v3}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v3    # "storeCert":Ljava/security/cert/X509Certificate;
    :cond_2
    move-object v0, v1

    .line 929
    goto :goto_0
.end method

.method private findTrustAnchorBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v2, 0x0

    .line 938
    iget-object v3, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v3, p1}, Lorg/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    move-result-object v1

    .line 939
    .local v1, "trustAnchor":Ljava/security/cert/TrustAnchor;
    if-eqz v1, :cond_0

    .line 959
    .end local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :goto_0
    return-object v1

    .line 942
    .restart local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_0
    iget-object v3, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    if-nez v3, :cond_1

    move-object v1, v2

    .line 944
    goto :goto_0

    .line 949
    :cond_1
    iget-object v3, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateStore:Lorg/conscrypt/ConscryptCertStore;

    invoke-interface {v3, p1}, Lorg/conscrypt/ConscryptCertStore;->getTrustAnchor(Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 950
    .local v0, "systemCert":Ljava/security/cert/X509Certificate;
    if-eqz v0, :cond_2

    .line 957
    new-instance v1, Ljava/security/cert/TrustAnchor;

    .end local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    invoke-direct {v1, v0, v2}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    goto :goto_0

    .restart local v1    # "trustAnchor":Ljava/security/cert/TrustAnchor;
    :cond_2
    move-object v1, v2

    .line 959
    goto :goto_0
.end method

.method static declared-synchronized getDefaultHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 2

    .prologue
    .line 982
    const-class v0, Lorg/conscrypt/TrustManagerImpl;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;
    .locals 3
    .param p0, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 283
    invoke-virtual {p0}, Ljavax/net/ssl/SSLSocket;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 284
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    if-nez v0, :cond_0

    .line 285
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "Not in handshake; no session available"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 287
    :cond_0
    return-object v0
.end method

.method private getHttpsVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 1

    .prologue
    .line 1004
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    .line 1007
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lorg/conscrypt/Platform;->getDefaultHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;

    move-result-object v0

    goto :goto_0
.end method

.method private static getOcspDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .locals 10
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v9, 0x0

    .line 417
    const/4 v3, 0x0

    .line 418
    .local v3, "ocspResponses":Ljava/util/List;, "Ljava/util/List<[B>;"
    instance-of v6, p0, Lorg/conscrypt/ConscryptSession;

    if-eqz v6, :cond_2

    move-object v4, p0

    .line 419
    check-cast v4, Lorg/conscrypt/ConscryptSession;

    .line 420
    .local v4, "opensslSession":Lorg/conscrypt/ConscryptSession;
    invoke-interface {v4}, Lorg/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v3

    .line 438
    .end local v4    # "opensslSession":Lorg/conscrypt/ConscryptSession;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 439
    :cond_1
    const/4 v6, 0x0

    .line 442
    :goto_1
    return-object v6

    .line 424
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getStatusResponses"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 425
    .local v2, "m_getResponses":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 426
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 427
    .local v5, "rawResponses":Ljava/lang/Object;
    instance-of v6, v5, Ljava/util/List;

    if-eqz v6, :cond_0

    .line 428
    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 433
    .end local v2    # "m_getResponses":Ljava/lang/reflect/Method;
    .end local v5    # "rawResponses":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 434
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 442
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :cond_3
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    goto :goto_1

    .line 430
    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method private getTlsSctDataFromSession(Ljavax/net/ssl/SSLSession;)[B
    .locals 9
    .param p1, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 446
    instance-of v6, p1, Lorg/conscrypt/ConscryptSession;

    if-eqz v6, :cond_1

    move-object v4, p1

    .line 447
    check-cast v4, Lorg/conscrypt/ConscryptSession;

    .line 448
    .local v4, "opensslSession":Lorg/conscrypt/ConscryptSession;
    invoke-interface {v4}, Lorg/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v1

    .line 465
    .end local v4    # "opensslSession":Lorg/conscrypt/ConscryptSession;
    :cond_0
    :goto_0
    return-object v1

    .line 451
    :cond_1
    const/4 v1, 0x0

    .line 453
    .local v1, "data":[B
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "getPeerSignedCertificateTimestamp"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 454
    .local v3, "m_getTlsSctData":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 455
    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v3, p1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 456
    .local v5, "rawData":Ljava/lang/Object;
    instance-of v6, v5, [B

    if-eqz v6, :cond_0

    .line 457
    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 462
    .end local v3    # "m_getTlsSctData":Ljava/lang/reflect/Method;
    .end local v5    # "rawData":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 463
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 459
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v6

    goto :goto_0

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    goto :goto_0

    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method static declared-synchronized setDefaultHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .locals 2
    .param p0, "verifier"    # Lorg/conscrypt/ConscryptHostnameVerifier;

    .prologue
    .line 973
    const-class v0, Lorg/conscrypt/TrustManagerImpl;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/conscrypt/TrustManagerImpl;->defaultHostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    monitor-exit v0

    return-void

    .line 973
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V
    .locals 6
    .param p1, "params"    # Ljava/security/cert/PKIXParameters;
    .param p2, "cert"    # Ljava/security/cert/X509Certificate;
    .param p3, "ocspData"    # [B

    .prologue
    .line 743
    if-nez p3, :cond_0

    .line 778
    :goto_0
    return-void

    .line 747
    :cond_0
    const/4 v3, 0x0

    .line 748
    .local v3, "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    new-instance v1, Ljava/util/ArrayList;

    .line 749
    invoke-virtual {p1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 750
    .local v1, "checkers":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/PKIXCertPathChecker;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXCertPathChecker;

    .line 751
    .local v0, "checker":Ljava/security/cert/PKIXCertPathChecker;
    instance-of v5, v0, Ljava/security/cert/PKIXRevocationChecker;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 752
    check-cast v3, Ljava/security/cert/PKIXRevocationChecker;

    .line 757
    .end local v0    # "checker":Ljava/security/cert/PKIXCertPathChecker;
    :cond_2
    if-nez v3, :cond_3

    .line 761
    :try_start_0
    iget-object v4, p0, Lorg/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v4}, Ljava/security/cert/CertPathValidator;->getRevocationChecker()Ljava/security/cert/CertPathChecker;

    move-result-object v3

    .end local v3    # "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    check-cast v3, Ljava/security/cert/PKIXRevocationChecker;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    .restart local v3    # "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v4, Ljava/security/cert/PKIXRevocationChecker$Option;->ONLY_END_ENTITY:Ljava/security/cert/PKIXRevocationChecker$Option;

    invoke-static {v4}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/PKIXRevocationChecker;->setOptions(Ljava/util/Set;)V

    .line 776
    :cond_3
    invoke-static {p2, p3}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/PKIXRevocationChecker;->setOcspResponses(Ljava/util/Map;)V

    .line 777
    invoke-virtual {p1, v1}, Ljava/security/cert/PKIXParameters;->setCertPathCheckers(Ljava/util/List;)V

    goto :goto_0

    .line 762
    .end local v3    # "revChecker":Ljava/security/cert/PKIXRevocationChecker;
    :catch_0
    move-exception v2

    .line 763
    .local v2, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method private static sortPotentialAnchors(Ljava/util/Set;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    .line 791
    .end local p0    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :goto_0
    return-object p0

    .line 789
    .restart local p0    # "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 790
    .local v0, "sortedAnchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    sget-object v1, Lorg/conscrypt/TrustManagerImpl;->TRUST_ANCHOR_COMPARATOR:Lorg/conscrypt/TrustManagerImpl$TrustAnchorComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object p0, v0

    .line 791
    goto :goto_0
.end method

.method private static trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 6
    .param p0, "certs"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    new-instance v1, Ljava/util/HashSet;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 260
    .local v1, "trustAnchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 261
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    new-instance v4, Ljava/security/cert/TrustAnchor;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    return-object v1
.end method

.method private verifyChain(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Z[B[B)Ljava/util/List;
    .locals 18
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "clientAuth"    # Z
    .param p5, "ocspData"    # [B
    .param p6, "tlsSctData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;",
            "Ljava/lang/String;",
            "Z[B[B)",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 655
    .local p1, "untrustedChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    .local p2, "trustAnchorChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/conscrypt/TrustManagerImpl;->factory:Ljava/security/cert/CertificateFactory;

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v7

    .line 658
    .local v7, "certPath":Ljava/security/cert/CertPath;
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 659
    new-instance v13, Ljava/security/cert/CertificateException;

    new-instance v14, Ljava/security/cert/CertPathValidatorException;

    const-string v15, "Trust anchor for certification path not found."

    const/16 v16, 0x0

    const/16 v17, -0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v14, v15, v0, v7, v1}, Ljava/security/cert/CertPathValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    invoke-direct {v13, v14}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v13
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    .end local v7    # "certPath":Ljava/security/cert/CertPath;
    :catch_0
    move-exception v8

    .line 716
    .local v8, "e":Ljava/security/cert/CertificateException;
    sget-object v13, Lorg/conscrypt/TrustManagerImpl;->logger:Ljava/util/logging/Logger;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Rejected candidate cert chain due to error: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v8}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    .line 717
    throw v8

    .line 663
    .end local v8    # "e":Ljava/security/cert/CertificateException;
    .restart local v7    # "certPath":Ljava/security/cert/CertPath;
    :cond_0
    :try_start_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 664
    .local v12, "wholeChain":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509Certificate;>;"
    move-object/from16 v0, p1

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 665
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/TrustAnchor;

    .line 666
    .local v4, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v4}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    .end local v4    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/conscrypt/TrustManagerImpl;->pinManager:Lorg/conscrypt/CertPinManager;

    if-eqz v13, :cond_2

    .line 670
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/conscrypt/TrustManagerImpl;->pinManager:Lorg/conscrypt/CertPinManager;

    move-object/from16 v0, p3

    invoke-interface {v13, v0, v12}, Lorg/conscrypt/CertPinManager;->checkChainPinning(Ljava/lang/String;Ljava/util/List;)V

    .line 673
    :cond_2
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 674
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/conscrypt/TrustManagerImpl;->checkBlocklist(Ljava/security/cert/X509Certificate;)V

    goto :goto_1

    .line 678
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    :cond_3
    if-nez p4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    if-nez v13, :cond_4

    if-eqz p3, :cond_5

    .line 680
    invoke-static/range {p3 .. p3}, Lorg/conscrypt/Platform;->isCTVerificationRequired(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 681
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p5

    move-object/from16 v3, p6

    invoke-direct {v0, v1, v12, v2, v3}, Lorg/conscrypt/TrustManagerImpl;->checkCT(Ljava/lang/String;Ljava/util/List;[B[B)V

    .line 684
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 714
    :cond_6
    return-object v12

    .line 689
    :cond_7
    invoke-static/range {p1 .. p1}, Lorg/conscrypt/ChainStrengthAnalyzer;->check(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 693
    :try_start_2
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 695
    .local v5, "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    const/4 v13, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v5, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 696
    new-instance v11, Ljava/security/cert/PKIXParameters;

    invoke-direct {v11, v5}, Ljava/security/cert/PKIXParameters;-><init>(Ljava/util/Set;)V

    .line 697
    .local v11, "params":Ljava/security/cert/PKIXParameters;
    const/4 v13, 0x0

    invoke-virtual {v11, v13}, Ljava/security/cert/PKIXParameters;->setRevocationEnabled(Z)V

    .line 698
    const/4 v13, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    .line 699
    .local v9, "endPointCert":Ljava/security/cert/X509Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v11, v9, v1}, Lorg/conscrypt/TrustManagerImpl;->setOcspResponses(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;[B)V

    .line 700
    new-instance v13, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;

    const/4 v14, 0x0

    move/from16 v0, p4

    invoke-direct {v13, v0, v9, v14}, Lorg/conscrypt/TrustManagerImpl$ExtendedKeyUsagePKIXCertPathChecker;-><init>(ZLjava/security/cert/X509Certificate;Lorg/conscrypt/TrustManagerImpl$1;)V

    invoke-virtual {v11, v13}, Ljava/security/cert/PKIXParameters;->addCertPathChecker(Ljava/security/cert/PKIXCertPathChecker;)V

    .line 702
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/conscrypt/TrustManagerImpl;->validator:Ljava/security/cert/CertPathValidator;

    invoke-virtual {v13, v7, v11}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_2
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0

    .line 711
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_2
    :try_start_3
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v10, v13, :cond_6

    .line 712
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/conscrypt/TrustManagerImpl;->intermediateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/security/cert/X509Certificate;

    invoke-virtual {v14, v13}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;

    .line 711
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 703
    .end local v5    # "anchorSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    .end local v9    # "endPointCert":Ljava/security/cert/X509Certificate;
    .end local v10    # "i":I
    .end local v11    # "params":Ljava/security/cert/PKIXParameters;
    :catch_1
    move-exception v8

    .line 704
    .local v8, "e":Ljava/security/InvalidAlgorithmParameterException;
    new-instance v13, Ljava/security/cert/CertificateException;

    const-string v14, "Chain validation failed"

    invoke-direct {v13, v14, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 705
    .end local v8    # "e":Ljava/security/InvalidAlgorithmParameterException;
    :catch_2
    move-exception v8

    .line 706
    .local v8, "e":Ljava/security/cert/CertPathValidatorException;
    new-instance v13, Ljava/security/cert/CertificateException;

    const-string v14, "Chain validation failed"

    invoke-direct {v13, v14, v8}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13
    :try_end_3
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_0
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 277
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 269
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 270
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 293
    const/4 v3, 0x0

    .line 294
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    const/4 v4, 0x0

    .line 295
    .local v4, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    move-object v6, p3

    .line 296
    check-cast v6, Ljavax/net/ssl/SSLSocket;

    .line 297
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v6}, Lorg/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 298
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    .line 300
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_0
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 301
    return-void
.end method

.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 306
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 307
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-nez v3, :cond_0

    .line 308
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 310
    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 311
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 324
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, v2

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;[B[BLjava/lang/String;Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Ljava/util/List;
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLSession;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 380
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 316
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    .line 317
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 363
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;

    .line 364
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 369
    invoke-virtual {p0, p1, p2, p3}, Lorg/conscrypt/TrustManagerImpl;->getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;

    .line 370
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, [Ljava/security/cert/X509Certificate;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/security/cert/X509Certificate;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->rootKeyStore:Ljava/security/KeyStore;

    invoke-static {v0}, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers(Ljava/security/KeyStore;)[Ljava/security/cert/X509Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method getHostnameVerifier()Lorg/conscrypt/ConscryptHostnameVerifier;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    return-object v0
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljava/net/Socket;)Ljava/util/List;
    .locals 7
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "socket"    # Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljava/net/Socket;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v3, 0x0

    .line 336
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    const/4 v4, 0x0

    .line 337
    .local v4, "parameters":Ljavax/net/ssl/SSLParameters;
    instance-of v0, p3, Ljavax/net/ssl/SSLSocket;

    if-eqz v0, :cond_0

    move-object v6, p3

    .line 338
    check-cast v6, Ljavax/net/ssl/SSLSocket;

    .line 339
    .local v6, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-static {v6}, Lorg/conscrypt/TrustManagerImpl;->getHandshakeSessionOrThrow(Ljavax/net/ssl/SSLSocket;)Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 340
    invoke-virtual {v6}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    .line 342
    .end local v6    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTrustedChainForServer([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/util/List;
    .locals 6
    .param p1, "certs"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/lang/String;",
            "Ljavax/net/ssl/SSLEngine;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 352
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getHandshakeSession()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    .line 353
    .local v3, "session":Ljavax/net/ssl/SSLSession;
    if-nez v3, :cond_0

    .line 354
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "Not in handshake; no session available"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 356
    :cond_0
    invoke-virtual {p3}, Ljavax/net/ssl/SSLEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/conscrypt/TrustManagerImpl;->checkTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;Ljavax/net/ssl/SSLSession;Ljavax/net/ssl/SSLParameters;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handleTrustStorageUpdate()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    if-nez v0, :cond_0

    .line 385
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    invoke-virtual {v0}, Lorg/conscrypt/TrustedCertificateIndex;->reset()V

    .line 389
    :goto_0
    return-void

    .line 387
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/TrustManagerImpl;->trustedCertificateIndex:Lorg/conscrypt/TrustedCertificateIndex;

    iget-object v1, p0, Lorg/conscrypt/TrustManagerImpl;->acceptedIssuers:[Ljava/security/cert/X509Certificate;

    invoke-static {v1}, Lorg/conscrypt/TrustManagerImpl;->trustAnchors([Ljava/security/cert/X509Certificate;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/conscrypt/TrustedCertificateIndex;->reset(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public setCTEnabledOverride(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1011
    iput-boolean p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctEnabledOverride:Z

    .line 1012
    return-void
.end method

.method public setCTPolicy(Lorg/conscrypt/ct/CTPolicy;)V
    .locals 0
    .param p1, "policy"    # Lorg/conscrypt/ct/CTPolicy;

    .prologue
    .line 1021
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctPolicy:Lorg/conscrypt/ct/CTPolicy;

    .line 1022
    return-void
.end method

.method public setCTVerifier(Lorg/conscrypt/ct/CTVerifier;)V
    .locals 0
    .param p1, "verifier"    # Lorg/conscrypt/ct/CTVerifier;

    .prologue
    .line 1016
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->ctVerifier:Lorg/conscrypt/ct/CTVerifier;

    .line 1017
    return-void
.end method

.method setHostnameVerifier(Lorg/conscrypt/ConscryptHostnameVerifier;)V
    .locals 0
    .param p1, "verifier"    # Lorg/conscrypt/ConscryptHostnameVerifier;

    .prologue
    .line 991
    iput-object p1, p0, Lorg/conscrypt/TrustManagerImpl;->hostnameVerifier:Lorg/conscrypt/ConscryptHostnameVerifier;

    .line 992
    return-void
.end method
