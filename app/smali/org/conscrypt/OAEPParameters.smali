.class public Lorg/conscrypt/OAEPParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "OAEPParameters.java"


# static fields
.field private static final MGF1_OID:Ljava/lang/String; = "1.2.840.113549.1.1.8"

.field private static final NAME_TO_OID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OID_TO_NAME:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PSPECIFIED_OID:Ljava/lang/String; = "1.2.840.113549.1.1.9"


# instance fields
.field private spec:Ljavax/crypto/spec/OAEPParameterSpec;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 36
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    .line 37
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 39
    sget-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v2, "1.3.14.3.2.26"

    const-string v3, "SHA-1"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v2, "2.16.840.1.101.3.4.2.4"

    const-string v3, "SHA-224"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v2, "2.16.840.1.101.3.4.2.1"

    const-string v3, "SHA-256"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v2, "2.16.840.1.101.3.4.2.2"

    const-string v3, "SHA-384"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    const-string v2, "2.16.840.1.101.3.4.2.3"

    const-string v3, "SHA-512"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v0, Ljava/util/Map$Entry;

    .line 45
    .restart local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v2, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 47
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 51
    sget-object v0, Ljavax/crypto/spec/OAEPParameterSpec;->DEFAULT:Ljavax/crypto/spec/OAEPParameterSpec;

    iput-object v0, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 53
    return-void
.end method

.method private static getHashName(J)Ljava/lang/String;
    .locals 6
    .param p0, "hashRef"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 157
    const-wide/16 v2, 0x0

    .line 159
    .local v2, "hashSeqRef":J
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v2

    .line 160
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, "hashOid":Ljava/lang/String;
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_null(J)V

    .line 164
    :cond_0
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    .line 165
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 166
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v4, "Error reading ASN.1 encoding"

    invoke-direct {v1, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    .end local v0    # "hashOid":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v1

    .line 168
    .restart local v0    # "hashOid":Ljava/lang/String;
    :cond_2
    :try_start_1
    sget-object v1, Lorg/conscrypt/OAEPParameters;->OID_TO_NAME:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 170
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 168
    return-object v1
.end method

.method static readHash(J)Ljava/lang/String;
    .locals 4
    .param p0, "seqRef"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
    const-wide/16 v0, 0x0

    .line 122
    .local v0, "hashRef":J
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v0

    .line 123
    invoke-static {v0, v1}, Lorg/conscrypt/OAEPParameters;->getHashName(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 125
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 128
    .end local v0    # "hashRef":J
    :goto_0
    return-object v2

    .line 125
    .restart local v0    # "hashRef":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v2

    .line 128
    .end local v0    # "hashRef":J
    :cond_0
    const-string v2, "SHA-1"

    goto :goto_0
.end method

.method static readMgfHash(J)Ljava/lang/String;
    .locals 8
    .param p0, "seqRef"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    const/4 v6, 0x1

    invoke-static {p0, p1, v6}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 134
    const-wide/16 v2, 0x0

    .line 135
    .local v2, "mgfRef":J
    const-wide/16 v4, 0x0

    .line 137
    .local v4, "mgfSeqRef":J
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v2

    .line 138
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v4

    .line 139
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "mgfOid":Ljava/lang/String;
    const-string v6, "1.2.840.113549.1.1.8"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 141
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Error reading ASN.1 encoding"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    .end local v1    # "mgfOid":Ljava/lang/String;
    :catchall_0
    move-exception v6

    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 150
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v6

    .line 143
    .restart local v1    # "mgfOid":Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-static {v4, v5}, Lorg/conscrypt/OAEPParameters;->getHashName(J)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "mgfHash":Ljava/lang/String;
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v6

    if-nez v6, :cond_1

    .line 145
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Error reading ASN.1 encoding"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    :cond_1
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 150
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 153
    .end local v0    # "mgfHash":Ljava/lang/String;
    .end local v1    # "mgfOid":Ljava/lang/String;
    .end local v2    # "mgfRef":J
    .end local v4    # "mgfSeqRef":J
    :goto_0
    return-object v0

    :cond_2
    const-string v0, "SHA-1"

    goto :goto_0
.end method

.method private static writeAlgorithmIdentifier(JLjava/lang/String;)J
    .locals 4
    .param p0, "container"    # J
    .param p2, "oid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    const-wide/16 v2, 0x0

    .line 276
    .local v2, "seqRef":J
    :try_start_0
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v2

    .line 277
    invoke-static {v2, v3, p2}, Lorg/conscrypt/NativeCrypto;->asn1_write_oid(JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    return-wide v2

    .line 278
    :catch_0
    move-exception v0

    .line 279
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 280
    throw v0
.end method

.method static writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V
    .locals 10
    .param p0, "seqRef"    # J
    .param p2, "hash"    # Ljava/lang/String;
    .param p3, "mgfSpec"    # Ljava/security/spec/MGF1ParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 230
    const-string v8, "SHA-1"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 231
    const-wide/16 v2, 0x0

    .line 232
    .local v2, "hashRef":J
    const-wide/16 v0, 0x0

    .line 234
    .local v0, "hashParamsRef":J
    const/4 v8, 0x0

    :try_start_0
    invoke-static {p0, p1, v8}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v2

    .line 235
    sget-object v8, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 236
    invoke-interface {v8, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 235
    invoke-static {v2, v3, v8}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v0

    .line 237
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_null(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 240
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 241
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 244
    .end local v0    # "hashParamsRef":J
    .end local v2    # "hashRef":J
    :cond_0
    invoke-virtual {p3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    const-string v9, "SHA-1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 245
    const-wide/16 v6, 0x0

    .line 246
    .local v6, "mgfRef":J
    const-wide/16 v4, 0x0

    .line 247
    .local v4, "mgfParamsRef":J
    const-wide/16 v0, 0x0

    .line 249
    .restart local v0    # "hashParamsRef":J
    const/4 v8, 0x1

    :try_start_1
    invoke-static {p0, p1, v8}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v6

    .line 250
    const-string v8, "1.2.840.113549.1.1.8"

    invoke-static {v6, v7, v8}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v4

    .line 251
    sget-object v8, Lorg/conscrypt/OAEPParameters;->NAME_TO_OID:Ljava/util/Map;

    .line 252
    invoke-virtual {p3}, Ljava/security/spec/MGF1ParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 251
    invoke-static {v4, v5, v8}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v0

    .line 253
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_null(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 255
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 256
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 257
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 258
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 261
    .end local v0    # "hashParamsRef":J
    .end local v4    # "mgfParamsRef":J
    .end local v6    # "mgfRef":J
    :cond_1
    return-void

    .line 239
    .restart local v0    # "hashParamsRef":J
    .restart local v2    # "hashRef":J
    :catchall_0
    move-exception v8

    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 240
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 241
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v8

    .line 255
    .end local v2    # "hashRef":J
    .restart local v4    # "mgfParamsRef":J
    .restart local v6    # "mgfRef":J
    :catchall_1
    move-exception v8

    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 256
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 257
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 258
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v8
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 187
    const-wide/16 v0, 0x0

    .line 188
    .local v0, "cbbRef":J
    const-wide/16 v8, 0x0

    .line 190
    .local v8, "seqRef":J
    :try_start_0
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v0

    .line 191
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v8

    .line 192
    iget-object v10, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v10}, Ljavax/crypto/spec/OAEPParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v11

    iget-object v10, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 193
    invoke-virtual {v10}, Ljavax/crypto/spec/OAEPParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v10

    check-cast v10, Ljava/security/spec/MGF1ParameterSpec;

    .line 192
    invoke-static {v8, v9, v11, v10}, Lorg/conscrypt/OAEPParameters;->writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V

    .line 194
    iget-object v10, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    invoke-virtual {v10}, Ljavax/crypto/spec/OAEPParameterSpec;->getPSource()Ljavax/crypto/spec/PSource;

    move-result-object v3

    check-cast v3, Ljavax/crypto/spec/PSource$PSpecified;

    .line 196
    .local v3, "pSource":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-virtual {v3}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v10

    array-length v10, v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v10, :cond_0

    .line 197
    const-wide/16 v6, 0x0

    .line 198
    .local v6, "pSourceRef":J
    const-wide/16 v4, 0x0

    .line 200
    .local v4, "pSourceParamsRef":J
    const/4 v10, 0x2

    :try_start_1
    invoke-static {v8, v9, v10}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v6

    .line 201
    const-string v10, "1.2.840.113549.1.1.9"

    invoke-static {v6, v7, v10}, Lorg/conscrypt/OAEPParameters;->writeAlgorithmIdentifier(JLjava/lang/String;)J

    move-result-wide v4

    .line 202
    invoke-virtual {v3}, Ljavax/crypto/spec/PSource$PSpecified;->getValue()[B

    move-result-object v10

    invoke-static {v4, v5, v10}, Lorg/conscrypt/NativeCrypto;->asn1_write_octetstring(J[B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    :try_start_2
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 205
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 206
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 209
    .end local v4    # "pSourceParamsRef":J
    .end local v6    # "pSourceRef":J
    :cond_0
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_finish(J)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v10

    .line 214
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 215
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 209
    return-object v10

    .line 204
    .restart local v4    # "pSourceParamsRef":J
    .restart local v6    # "pSourceRef":J
    :catchall_0
    move-exception v10

    :try_start_3
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 205
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 206
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v10
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 210
    .end local v3    # "pSource":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v4    # "pSourceParamsRef":J
    .end local v6    # "pSourceRef":J
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 212
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 214
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v10

    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 215
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v10
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    if-eqz p1, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 222
    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/OAEPParameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 224
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    const-class v0, Ljavax/crypto/spec/OAEPParameterSpec;

    if-ne p1, v0, :cond_0

    .line 179
    iget-object v0, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    return-object v0

    .line 181
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 58
    instance-of v0, p1, Ljavax/crypto/spec/OAEPParameterSpec;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Ljavax/crypto/spec/OAEPParameterSpec;

    .end local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;

    .line 63
    return-void

    .line 61
    .restart local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Only OAEPParameterSpec is supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([B)V
    .locals 18
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const-wide/16 v12, 0x0

    .line 68
    .local v12, "readRef":J
    const-wide/16 v14, 0x0

    .line 70
    .local v14, "seqRef":J
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v12

    .line 71
    invoke-static {v12, v13}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v14

    .line 72
    sget-object v5, Ljavax/crypto/spec/PSource$PSpecified;->DEFAULT:Ljavax/crypto/spec/PSource$PSpecified;

    .line 73
    .local v5, "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    invoke-static {v14, v15}, Lorg/conscrypt/OAEPParameters;->readHash(J)Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "hash":Ljava/lang/String;
    invoke-static {v14, v15}, Lorg/conscrypt/OAEPParameters;->readMgfHash(J)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "mgfHash":Ljava/lang/String;
    const/4 v11, 0x2

    invoke-static {v14, v15, v11}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v11

    if-eqz v11, :cond_2

    .line 76
    const-wide/16 v6, 0x0

    .line 77
    .local v6, "pSourceRef":J
    const-wide/16 v8, 0x0

    .line 79
    .local v8, "pSourceSeqRef":J
    :try_start_1
    invoke-static {v14, v15}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v6

    .line 80
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v8

    .line 81
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_oid(J)Ljava/lang/String;

    move-result-object v4

    .line 82
    .local v4, "pSourceOid":Ljava/lang/String;
    const-string v11, "1.2.840.113549.1.1.9"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 83
    new-instance v11, Ljava/io/IOException;

    const-string v16, "Error reading ASN.1 encoding"

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    .end local v4    # "pSourceOid":Ljava/lang/String;
    :catchall_0
    move-exception v11

    :goto_0
    :try_start_2
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 92
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 103
    .end local v2    # "hash":Ljava/lang/String;
    .end local v3    # "mgfHash":Ljava/lang/String;
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .end local v6    # "pSourceRef":J
    .end local v8    # "pSourceSeqRef":J
    :catchall_1
    move-exception v11

    invoke-static {v14, v15}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 104
    invoke-static {v12, v13}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v11

    .line 85
    .restart local v2    # "hash":Ljava/lang/String;
    .restart local v3    # "mgfHash":Ljava/lang/String;
    .restart local v4    # "pSourceOid":Ljava/lang/String;
    .restart local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v6    # "pSourceRef":J
    .restart local v8    # "pSourceSeqRef":J
    :cond_0
    :try_start_3
    new-instance v10, Ljavax/crypto/spec/PSource$PSpecified;

    .line 86
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_octetstring(J)[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljavax/crypto/spec/PSource$PSpecified;-><init>([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 87
    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .local v10, "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    :try_start_4
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v11

    if-nez v11, :cond_1

    .line 88
    new-instance v11, Ljava/io/IOException;

    const-string v16, "Error reading ASN.1 encoding"

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 91
    :catchall_2
    move-exception v11

    move-object v5, v10

    .end local v10    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    goto :goto_0

    .end local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v10    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    :cond_1
    :try_start_5
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 92
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    move-object v5, v10

    .line 96
    .end local v4    # "pSourceOid":Ljava/lang/String;
    .end local v6    # "pSourceRef":J
    .end local v8    # "pSourceSeqRef":J
    .end local v10    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    .restart local v5    # "pSpecified":Ljavax/crypto/spec/PSource$PSpecified;
    :cond_2
    invoke-static {v14, v15}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 97
    invoke-static {v12, v13}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v11

    if-nez v11, :cond_4

    .line 98
    :cond_3
    new-instance v11, Ljava/io/IOException;

    const-string v16, "Error reading ASN.1 encoding"

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 100
    :cond_4
    new-instance v11, Ljavax/crypto/spec/OAEPParameterSpec;

    const-string v16, "MGF1"

    new-instance v17, Ljava/security/spec/MGF1ParameterSpec;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v11, v2, v0, v1, v5}, Ljavax/crypto/spec/OAEPParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;Ljavax/crypto/spec/PSource;)V

    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/conscrypt/OAEPParameters;->spec:Ljavax/crypto/spec/OAEPParameterSpec;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 103
    invoke-static {v14, v15}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 104
    invoke-static {v12, v13}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 106
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 110
    if-eqz p2, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/OAEPParameters;->engineInit([B)V

    .line 115
    return-void

    .line 113
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    const-string v0, "Conscrypt OAEP AlgorithmParameters"

    return-object v0
.end method
