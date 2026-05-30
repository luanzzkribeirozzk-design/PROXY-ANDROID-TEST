.class public final Lorg/conscrypt/TrustedCertificateIndex;
.super Ljava/lang/Object;
.source "TrustedCertificateIndex.java"


# instance fields
.field private final subjectToTrustAnchors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavax/security/auth/x500/X500Principal;",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 45
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    .line 46
    invoke-direct {p0, p1}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 47
    return-void
.end method

.method private static findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;
    .locals 9
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)",
            "Ljava/security/cert/TrustAnchor;"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "anchors":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/TrustAnchor;>;"
    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 142
    .local v4, "certPublicKey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 145
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_0
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 146
    .local v1, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .line 151
    .local v2, "caPublicKey":Ljava/security/PublicKey;
    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 171
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v1    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "caPublicKey":Ljava/security/PublicKey;
    :goto_2
    return-object v0

    .line 149
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .restart local v1    # "caCert":Ljava/security/cert/X509Certificate;
    :cond_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    .restart local v2    # "caPublicKey":Ljava/security/PublicKey;
    goto :goto_1

    .line 156
    :cond_2
    const-string v7, "X.509"

    invoke-interface {v2}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "X.509"

    .line 157
    invoke-interface {v4}, Ljava/security/PublicKey;->getFormat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 158
    invoke-interface {v2}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    .line 159
    .local v3, "caPublicKeyEncoded":[B
    invoke-interface {v4}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v5

    .line 160
    .local v5, "certPublicKeyEncoded":[B
    if-eqz v5, :cond_0

    if-eqz v3, :cond_0

    .line 162
    invoke-static {v3, v5}, Ljava/util/Arrays;->equals([B[B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_2

    .line 171
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v1    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v2    # "caPublicKey":Ljava/security/PublicKey;
    .end local v3    # "caPublicKeyEncoded":[B
    .end local v5    # "certPublicKeyEncoded":[B
    :cond_3
    const/4 v0, 0x0

    goto :goto_2

    .line 167
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v7

    goto :goto_0
.end method

.method private index(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 50
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    .line 51
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    goto :goto_0

    .line 53
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :cond_0
    return-void
.end method


# virtual methods
.method public findAllByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/util/Set;
    .locals 9
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
    .line 175
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 176
    .local v3, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v7, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v7

    .line 177
    :try_start_0
    iget-object v6, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 178
    .local v1, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v1, :cond_0

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    monitor-exit v7

    .line 200
    :goto_0
    return-object v5

    .line 182
    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 183
    .local v5, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 187
    .local v2, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_2

    .line 188
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 192
    .local v4, "publicKey":Ljava/security/PublicKey;
    :goto_2
    if-eqz v4, :cond_1

    .line 195
    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 196
    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 197
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    :catch_0
    move-exception v8

    goto :goto_1

    .line 190
    .restart local v2    # "caCert":Ljava/security/cert/X509Certificate;
    :cond_2
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v4

    .restart local v4    # "publicKey":Ljava/security/PublicKey;
    goto :goto_2

    .line 200
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    :cond_3
    :try_start_2
    monitor-exit v7

    goto :goto_0

    .line 201
    .end local v1    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v5    # "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6
.end method

.method public findByIssuerAndSignature(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 9
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    const/4 v5, 0x0

    .line 103
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 104
    .local v3, "issuer":Ljavax/security/auth/x500/X500Principal;
    iget-object v6, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v6

    .line 105
    :try_start_0
    iget-object v7, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 106
    .local v1, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v1, :cond_0

    .line 107
    monitor-exit v6

    move-object v0, v5

    .line 125
    :goto_0
    return-object v0

    .line 110
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    :try_start_1
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 114
    .local v2, "caCert":Ljava/security/cert/X509Certificate;
    if-eqz v2, :cond_1

    .line 115
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    .line 119
    .local v4, "publicKey":Ljava/security/PublicKey;
    :goto_2
    invoke-virtual {p1, v4}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :try_start_2
    monitor-exit v6

    goto :goto_0

    .line 124
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v1    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 117
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .restart local v1    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .restart local v2    # "caCert":Ljava/security/cert/X509Certificate;
    :cond_1
    :try_start_3
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v4

    .restart local v4    # "publicKey":Ljava/security/PublicKey;
    goto :goto_2

    .line 124
    .end local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    .end local v2    # "caCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "publicKey":Ljava/security/PublicKey;
    :cond_2
    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v0, v5

    .line 125
    goto :goto_0

    .line 121
    .restart local v0    # "anchor":Ljava/security/cert/TrustAnchor;
    :catch_0
    move-exception v8

    goto :goto_1
.end method

.method public findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 129
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    .line 130
    .local v1, "subject":Ljavax/security/auth/x500/X500Principal;
    iget-object v3, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v3

    .line 131
    :try_start_0
    iget-object v2, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 132
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_0

    .line 133
    const/4 v2, 0x0

    monitor-exit v3

    .line 135
    :goto_0
    return-object v2

    :cond_0
    invoke-static {p1, v0}, Lorg/conscrypt/TrustedCertificateIndex;->findBySubjectAndPublicKey(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/security/cert/TrustAnchor;

    move-result-object v2

    monitor-exit v3

    goto :goto_0

    .line 136
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public index(Ljava/security/cert/X509Certificate;)Ljava/security/cert/TrustAnchor;
    .locals 2
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 56
    new-instance v0, Ljava/security/cert/TrustAnchor;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Ljava/security/cert/TrustAnchor;-><init>(Ljava/security/cert/X509Certificate;[B)V

    .line 57
    .local v0, "anchor":Ljava/security/cert/TrustAnchor;
    invoke-virtual {p0, v0}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/security/cert/TrustAnchor;)V

    .line 58
    return-object v0
.end method

.method public index(Ljava/security/cert/TrustAnchor;)V
    .locals 7
    .param p1, "anchor"    # Ljava/security/cert/TrustAnchor;

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    .line 64
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    if-eqz v1, :cond_1

    .line 65
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .line 70
    .local v3, "subject":Ljavax/security/auth/x500/X500Principal;
    :goto_0
    iget-object v5, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v5

    .line 71
    :try_start_0
    iget-object v4, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 72
    .local v0, "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    if-nez v0, :cond_2

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    const/4 v4, 0x1

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .restart local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    iget-object v4, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v4, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    :goto_1
    return-void

    .line 67
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v3    # "subject":Ljavax/security/auth/x500/X500Principal;
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/TrustAnchor;->getCA()Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    .restart local v3    # "subject":Ljavax/security/auth/x500/X500Principal;
    goto :goto_0

    .line 77
    .restart local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    :cond_2
    if-eqz v1, :cond_0

    .line 78
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/TrustAnchor;

    .line 79
    .local v2, "entry":Ljava/security/cert/TrustAnchor;
    invoke-virtual {v2}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    monitor-exit v5

    goto :goto_1

    .line 86
    .end local v0    # "anchors":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/TrustAnchor;>;"
    .end local v2    # "entry":Ljava/security/cert/TrustAnchor;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 90
    iget-object v1, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 92
    monitor-exit v1

    .line 93
    return-void

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public reset(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/security/cert/TrustAnchor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "anchors":Ljava/util/Set;, "Ljava/util/Set<Ljava/security/cert/TrustAnchor;>;"
    iget-object v1, p0, Lorg/conscrypt/TrustedCertificateIndex;->subjectToTrustAnchors:Ljava/util/Map;

    monitor-enter v1

    .line 97
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/TrustedCertificateIndex;->reset()V

    .line 98
    invoke-direct {p0, p1}, Lorg/conscrypt/TrustedCertificateIndex;->index(Ljava/util/Set;)V

    .line 99
    monitor-exit v1

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
