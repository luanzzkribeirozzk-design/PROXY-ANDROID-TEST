.class final Lorg/conscrypt/OpenSSLX509CRLEntry;
.super Ljava/security/cert/X509CRLEntry;
.source "OpenSSLX509CRLEntry.java"


# instance fields
.field private final mContext:J

.field private final revocationDate:Ljava/util/Date;


# direct methods
.method constructor <init>(J)V
    .locals 3
    .param p1, "ctx"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/security/cert/X509CRLEntry;-><init>()V

    .line 37
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 40
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_revocationDate(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/conscrypt/OpenSSLX509CRL;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->revocationDate:Ljava/util/Date;

    .line 41
    return-void
.end method


# virtual methods
.method public getCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
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
    .line 45
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x1

    .line 46
    invoke-static {v2, v3, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x0

    .line 55
    invoke-static {v2, v3, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 57
    const/4 v1, 0x0

    .line 60
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CRLException;
        }
    .end annotation

    .prologue
    .line 105
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->i2d_X509_REVOKED(J)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, p1}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getNonCriticalExtensionOIDs()Ljava/util/Set;
    .locals 4
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
    .line 70
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x0

    .line 71
    invoke-static {v2, v3, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    const/4 v1, 0x1

    .line 80
    invoke-static {v2, v3, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 82
    const/4 v1, 0x0

    .line 85
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getRevocationDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->revocationDate:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_get_serialNumber(J)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public hasExtensions()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 120
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v2, v3, v0}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 122
    invoke-static {v2, v3, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 120
    :cond_1
    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 90
    iget-wide v6, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    .line 91
    invoke-static {v6, v7, v4}, Lorg/conscrypt/NativeCrypto;->get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "criticalOids":[Ljava/lang/String;
    array-length v7, v0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v1, v0, v6

    .line 94
    .local v1, "oid":Ljava/lang/String;
    iget-wide v8, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v8, v9, v1}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_get_ext(JLjava/lang/String;)J

    move-result-wide v2

    .line 95
    .local v2, "extensionRef":J
    invoke-static {v2, v3}, Lorg/conscrypt/NativeCrypto;->X509_supported_extension(J)I

    move-result v8

    if-eq v8, v4, :cond_0

    .line 100
    .end local v1    # "oid":Ljava/lang/String;
    .end local v2    # "extensionRef":J
    :goto_1
    return v4

    .line 93
    .restart local v1    # "oid":Ljava/lang/String;
    .restart local v2    # "extensionRef":J
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v1    # "oid":Ljava/lang/String;
    .end local v2    # "extensionRef":J
    :cond_1
    move v4, v5

    .line 100
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 128
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    .local v2, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v2}, Lorg/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 131
    .local v0, "bioCtx":J
    :try_start_0
    iget-wide v4, p0, Lorg/conscrypt/OpenSSLX509CRLEntry;->mContext:J

    invoke-static {v0, v1, v4, v5}, Lorg/conscrypt/NativeCrypto;->X509_REVOKED_print(JJ)V

    .line 132
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 134
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 132
    return-object v3

    .line 134
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v3
.end method
