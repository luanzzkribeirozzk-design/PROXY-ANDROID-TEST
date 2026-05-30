.class Lorg/conscrypt/KeyManagerImpl;
.super Ljavax/net/ssl/X509ExtendedKeyManager;
.source "KeyManagerImpl.java"


# instance fields
.field private final hash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/security/KeyStore$PrivateKeyEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/security/KeyStore;[C)V
    .locals 7
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "pwd"    # [C

    .prologue
    .line 58
    invoke-direct {p0}, Ljavax/net/ssl/X509ExtendedKeyManager;-><init>()V

    .line 59
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    .line 62
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 66
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 67
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 69
    .local v0, "alias":Ljava/lang/String;
    :try_start_1
    const-class v6, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {p1, v0, v6}, Ljava/security/KeyStore;->entryInstanceOf(Ljava/lang/String;Ljava/lang/Class;)Z
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v6

    if-eqz v6, :cond_0

    .line 72
    :try_start_2
    new-instance v6, Ljava/security/KeyStore$PasswordProtection;

    invoke-direct {v6, p2}, Ljava/security/KeyStore$PasswordProtection;-><init>([C)V

    .line 73
    invoke-virtual {p1, v0, v6}, Ljava/security/KeyStore;->getEntry(Ljava/lang/String;Ljava/security/KeyStore$ProtectionParameter;)Ljava/security/KeyStore$Entry;

    move-result-object v4

    check-cast v4, Ljava/security/KeyStore$PrivateKeyEntry;
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/KeyStoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3

    .line 81
    .local v4, "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :goto_1
    :try_start_3
    iget-object v6, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 83
    .end local v4    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 63
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_1
    move-exception v3

    .line 91
    :cond_1
    return-void

    .line 74
    .restart local v0    # "alias":Ljava/lang/String;
    .restart local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_2
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/UnsupportedOperationException;
    invoke-virtual {p1, v0, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v5

    check-cast v5, Ljava/security/PrivateKey;

    .line 78
    .local v5, "key":Ljava/security/PrivateKey;
    invoke-virtual {p1, v0}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 79
    .local v2, "certs":[Ljava/security/cert/Certificate;
    new-instance v4, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-direct {v4, v5, v2}, Ljava/security/KeyStore$PrivateKeyEntry;-><init>(Ljava/security/PrivateKey;[Ljava/security/cert/Certificate;)V
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/security/UnrecoverableEntryException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_3

    .restart local v4    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    goto :goto_1

    .line 87
    .end local v2    # "certs":[Ljava/security/cert/Certificate;
    .end local v3    # "e":Ljava/lang/UnsupportedOperationException;
    .end local v4    # "entry":Ljava/security/KeyStore$PrivateKeyEntry;
    .end local v5    # "key":Ljava/security/PrivateKey;
    :catch_3
    move-exception v6

    goto :goto_0

    .line 85
    :catch_4
    move-exception v6

    goto :goto_0
.end method

.method private chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 22
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 158
    if-eqz p1, :cond_0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_1

    .line 159
    :cond_0
    const/16 v16, 0x0

    .line 229
    :goto_0
    return-object v16

    .line 161
    :cond_1
    if-nez p2, :cond_4

    const/4 v12, 0x0

    .line 162
    .local v12, "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    :goto_1
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 163
    .local v9, "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :cond_2
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_d

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 164
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, "alias":Ljava/lang/String;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual/range {v16 .. v16}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v7

    .line 166
    .local v7, "chain":[Ljava/security/cert/Certificate;
    const/16 v16, 0x0

    aget-object v3, v7, v16

    .line 167
    .local v3, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "certKeyAlg":Ljava/lang/String;
    instance-of v0, v3, Ljava/security/cert/X509Certificate;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 169
    check-cast v3, Ljava/security/cert/X509Certificate;

    .end local v3    # "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v16

    sget-object v17, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    .line 171
    .local v6, "certSigAlg":Ljava/lang/String;
    :goto_2
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v19, v0

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_3
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v13, p1, v17

    .line 172
    .local v13, "keyAlgorithm":Ljava/lang/String;
    if-nez v13, :cond_6

    .line 171
    :cond_3
    :goto_4
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    goto :goto_3

    .line 161
    .end local v2    # "alias":Ljava/lang/String;
    .end local v5    # "certKeyAlg":Ljava/lang/String;
    .end local v6    # "certSigAlg":Ljava/lang/String;
    .end local v7    # "chain":[Ljava/security/cert/Certificate;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;>;"
    .end local v9    # "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .end local v13    # "keyAlgorithm":Ljava/lang/String;
    :cond_4
    invoke-static/range {p2 .. p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    goto :goto_1

    .line 170
    .restart local v2    # "alias":Ljava/lang/String;
    .restart local v3    # "cert":Ljava/security/cert/Certificate;
    .restart local v5    # "certKeyAlg":Ljava/lang/String;
    .restart local v7    # "chain":[Ljava/security/cert/Certificate;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;>;"
    .restart local v9    # "found":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "issuersList":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 177
    .end local v3    # "cert":Ljava/security/cert/Certificate;
    .restart local v6    # "certSigAlg":Ljava/lang/String;
    .restart local v13    # "keyAlgorithm":Ljava/lang/String;
    :cond_6
    const/16 v16, 0x5f

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    .line 178
    .local v10, "index":I
    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v10, v0, :cond_9

    .line 179
    const/4 v14, 0x0

    .line 185
    .local v14, "sigAlgorithm":Ljava/lang/String;
    :goto_5
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 195
    if-eqz v14, :cond_7

    if-eqz v6, :cond_7

    .line 196
    invoke-virtual {v6, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 200
    :cond_7
    if-eqz p2, :cond_8

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 v16, v0

    if-nez v16, :cond_a

    .line 201
    :cond_8
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 181
    .end local v14    # "sigAlgorithm":Ljava/lang/String;
    :cond_9
    add-int/lit8 v16, v10, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    .line 182
    .restart local v14    # "sigAlgorithm":Ljava/lang/String;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v13, v0, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    .line 205
    :cond_a
    array-length v0, v7

    move/from16 v20, v0

    const/16 v16, 0x0

    :goto_6
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_3

    aget-object v4, v7, v16

    .line 206
    .local v4, "certFromChain":Ljava/security/cert/Certificate;
    instance-of v0, v4, Ljava/security/cert/X509Certificate;

    move/from16 v21, v0

    if-nez v21, :cond_c

    .line 205
    :cond_b
    :goto_7
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    :cond_c
    move-object v15, v4

    .line 210
    check-cast v15, Ljava/security/cert/X509Certificate;

    .line 219
    .local v15, "xcertFromChain":Ljava/security/cert/X509Certificate;
    invoke-virtual {v15}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v11

    .line 220
    .local v11, "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    invoke-interface {v12, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_b

    .line 221
    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 226
    .end local v2    # "alias":Ljava/lang/String;
    .end local v4    # "certFromChain":Ljava/security/cert/Certificate;
    .end local v5    # "certKeyAlg":Ljava/lang/String;
    .end local v6    # "certSigAlg":Ljava/lang/String;
    .end local v7    # "chain":[Ljava/security/cert/Certificate;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/security/KeyStore$PrivateKeyEntry;>;"
    .end local v10    # "index":I
    .end local v11    # "issuerFromChain":Ljavax/security/auth/x500/X500Principal;
    .end local v13    # "keyAlgorithm":Ljava/lang/String;
    .end local v14    # "sigAlgorithm":Ljava/lang/String;
    .end local v15    # "xcertFromChain":Ljava/security/cert/X509Certificate;
    :cond_d
    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_e

    .line 227
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Ljava/lang/String;

    goto/16 :goto_0

    .line 229
    :cond_e
    const/16 v16, 0x0

    goto/16 :goto_0
.end method


# virtual methods
.method public chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 2
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    .line 95
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 96
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 2
    .param p1, "keyTypes"    # [Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 147
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    goto :goto_0
.end method

.method public chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    const/4 v2, 0x0

    .line 153
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, v2

    goto :goto_0
.end method

.method public chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;
    .locals 3
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;
    .param p3, "socket"    # Ljava/net/Socket;

    .prologue
    const/4 v2, 0x0

    .line 101
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    aput-object p1, v1, v2

    invoke-direct {p0, v1, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "al":[Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, v2

    goto :goto_0
.end method

.method public getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 107
    if-nez p1, :cond_1

    .line 120
    :cond_0
    return-object v2

    .line 110
    :cond_1
    iget-object v3, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 111
    iget-object v3, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v3}, Ljava/security/KeyStore$PrivateKeyEntry;->getCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v0

    .line 112
    .local v0, "certs":[Ljava/security/cert/Certificate;
    const/4 v3, 0x0

    aget-object v3, v0, v3

    instance-of v3, v3, Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_0

    .line 113
    array-length v3, v0

    new-array v2, v3, [Ljava/security/cert/X509Certificate;

    .line 114
    .local v2, "xcerts":[Ljava/security/cert/X509Certificate;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 115
    aget-object v3, v0, v1

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v2, v1

    .line 114
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getClientAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrivateKey(Ljava/lang/String;)Ljava/security/PrivateKey;
    .locals 2
    .param p1, "alias"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 136
    if-nez p1, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 139
    :cond_1
    iget-object v1, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget-object v0, p0, Lorg/conscrypt/KeyManagerImpl;->hash:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyStore$PrivateKeyEntry;

    invoke-virtual {v0}, Ljava/security/KeyStore$PrivateKeyEntry;->getPrivateKey()Ljava/security/PrivateKey;

    move-result-object v0

    goto :goto_0
.end method

.method public getServerAliases(Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;
    .locals 2
    .param p1, "keyType"    # Ljava/lang/String;
    .param p2, "issuers"    # [Ljava/security/Principal;

    .prologue
    .line 131
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-direct {p0, v0, p2}, Lorg/conscrypt/KeyManagerImpl;->chooseAlias([Ljava/lang/String;[Ljava/security/Principal;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
