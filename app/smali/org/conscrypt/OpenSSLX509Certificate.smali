.class public final Lorg/conscrypt/OpenSSLX509Certificate;
.super Ljava/security/cert/X509Certificate;
.source "OpenSSLX509Certificate.java"


# static fields
.field private static final serialVersionUID:J = 0x1ba5daf1d5fc5de0L


# instance fields
.field private final transient mContext:J

.field private transient mHashCode:Ljava/lang/Integer;

.field private final notAfter:Ljava/util/Date;

.field private final notBefore:Ljava/util/Date;


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
    .line 67
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 68
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 71
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_notBefore(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/conscrypt/OpenSSLX509Certificate;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    .line 72
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_notAfter(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/conscrypt/OpenSSLX509Certificate;->toDate(J)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    .line 73
    return-void
.end method

.method private constructor <init>(JLjava/util/Date;Ljava/util/Date;)V
    .locals 1
    .param p1, "ctx"    # J
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/security/cert/X509Certificate;-><init>()V

    .line 77
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    .line 78
    iput-object p3, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    .line 79
    iput-object p4, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    .line 80
    return-void
.end method

.method private static alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;
    .locals 3
    .param p0, "altNameArray"    # [[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 515
    if-nez p0, :cond_0

    .line 516
    const/4 v2, 0x0

    .line 524
    :goto_0
    return-object v2

    .line 519
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    .local v0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 521
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 524
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    goto :goto_0
.end method

.method public static fromCertificate(Ljava/security/cert/Certificate;)Lorg/conscrypt/OpenSSLX509Certificate;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 193
    instance-of v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_0

    .line 194
    check-cast p0, Lorg/conscrypt/OpenSSLX509Certificate;

    .line 196
    .end local p0    # "cert":Ljava/security/cert/Certificate;
    :goto_0
    return-object p0

    .line 195
    .restart local p0    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    instance-of v0, p0, Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_1

    .line 196
    invoke-virtual {p0}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object p0

    goto :goto_0

    .line 198
    :cond_1
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Only X.509 certificates are supported"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 119
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0, v5}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 123
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-static {v6, v7, v5}, Lorg/conscrypt/NativeCrypto;->d2i_PKCS7_bio(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 127
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 130
    if-nez v1, :cond_1

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 144
    :cond_0
    return-object v2

    .line 124
    .end local v1    # "certRefs":[J
    :catch_0
    move-exception v3

    .line 125
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v5

    .line 136
    .restart local v1    # "certRefs":[J
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 138
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    .line 139
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_2

    .line 138
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 142
    :cond_2
    new-instance v5, Lorg/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .locals 10
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/conscrypt/OpenSSLX509Certificate;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 168
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    invoke-direct {v0, p0, v5}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 172
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    const/4 v5, 0x1

    invoke-static {v6, v7, v5}, Lorg/conscrypt/NativeCrypto;->PEM_read_bio_PKCS7(JI)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 177
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 180
    new-instance v2, Ljava/util/ArrayList;

    array-length v5, v1

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 182
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_1

    .line 183
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    .line 182
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    .end local v4    # "i":I
    :catch_0
    move-exception v3

    .line 175
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v5, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v5, v3}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v5

    .line 186
    .restart local v1    # "certRefs":[J
    .restart local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    .restart local v4    # "i":I
    :cond_0
    new-instance v5, Lorg/conscrypt/OpenSSLX509Certificate;

    aget-wide v6, v1, v4

    invoke-direct {v5, v6, v7}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :cond_1
    return-object v2
.end method

.method public static fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;
    .locals 4
    .param p0, "encoded"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    new-instance v1, Lorg/conscrypt/OpenSSLX509Certificate;

    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->d2i_X509([B)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_0
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static fromX509DerInputStream(Ljava/io/InputStream;)Lorg/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 92
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 95
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->d2i_X509_bio(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 96
    .local v2, "certCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 97
    const/4 v4, 0x0

    .line 103
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 99
    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    new-instance v4, Lorg/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v4, v2, v3}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 100
    .end local v2    # "certCtx":J
    :catch_0
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 103
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method public static fromX509PemInputStream(Ljava/io/InputStream;)Lorg/conscrypt/OpenSSLX509Certificate;
    .locals 6
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v4, 0x1

    invoke-direct {v0, p0, v4}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 153
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->PEM_read_bio_X509(J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    .line 154
    .local v2, "certCtx":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 155
    const/4 v4, 0x0

    .line 161
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 157
    :goto_0
    return-object v4

    :cond_0
    :try_start_1
    new-instance v4, Lorg/conscrypt/OpenSSLX509Certificate;

    invoke-direct {v4, v2, v3}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 161
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    goto :goto_0

    .line 158
    .end local v2    # "certCtx":J
    :catch_0
    move-exception v1

    .line 159
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    new-instance v4, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v4, v1}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v4
.end method

.method private static toDate(J)Ljava/util/Date;
    .locals 4
    .param p0, "asn1time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .line 83
    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 84
    .local v0, "calendar":Ljava/util/Calendar;
    const/16 v1, 0xe

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 85
    invoke-static {p0, p1, v0}, Lorg/conscrypt/NativeCrypto;->ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V

    .line 86
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method private verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 395
    if-nez p2, :cond_0

    .line 396
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .line 401
    .local v0, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v0, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 402
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->update([B)V

    .line 403
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 404
    new-instance v1, Ljava/security/SignatureException;

    const-string v2, "signature did not verify"

    invoke-direct {v1, v2}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 398
    .end local v0    # "sig":Ljava/security/Signature;
    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v0

    .restart local v0    # "sig":Ljava/security/Signature;
    goto :goto_0

    .line 406
    :cond_1
    return-void
.end method

.method private verifyOpenSSL(Lorg/conscrypt/OpenSSLKey;)V
    .locals 4
    .param p1, "pkey"    # Lorg/conscrypt/OpenSSLKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 383
    :try_start_0
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLKey;->getNativeRef()Lorg/conscrypt/NativeRef$EVP_PKEY;

    move-result-object v1

    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->X509_verify(JLorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/NativeRef$EVP_PKEY;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_1

    .line 389
    return-void

    .line 384
    :catch_0
    move-exception v0

    .line 385
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/security/cert/CertificateException;

    invoke-direct {v1, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 386
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 387
    .local v0, "e":Ljavax/crypto/BadPaddingException;
    new-instance v1, Ljava/security/SignatureException;

    invoke-direct {v1}, Ljava/security/SignatureException;-><init>()V

    throw v1
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/conscrypt/OpenSSLX509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 254
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 3
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateExpiredException;,
            Ljava/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_0

    .line 260
    new-instance v0, Ljava/security/cert/CertificateNotYetValidException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate not valid until "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 261
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateNotYetValidException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 264
    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_1

    .line 265
    new-instance v0, Ljava/security/cert/CertificateExpiredException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Certificate expired at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 266
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (compared to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateExpiredException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 541
    instance-of v0, p1, Lorg/conscrypt/OpenSSLX509Certificate;

    if-eqz v0, :cond_1

    move-object v5, p1

    .line 542
    check-cast v5, Lorg/conscrypt/OpenSSLX509Certificate;

    .line 544
    .local v5, "o":Lorg/conscrypt/OpenSSLX509Certificate;
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    iget-wide v3, v5, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/conscrypt/NativeCrypto;->X509_cmp(JLorg/conscrypt/OpenSSLX509Certificate;JLorg/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 547
    .end local v5    # "o":Lorg/conscrypt/OpenSSLX509Certificate;
    :goto_0
    return v0

    .line 544
    .restart local v5    # "o":Lorg/conscrypt/OpenSSLX509Certificate;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 547
    .end local v5    # "o":Lorg/conscrypt/OpenSSLX509Certificate;
    :cond_1
    invoke-super {p0, p1}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 585
    :try_start_0
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 586
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_free(JLorg/conscrypt/OpenSSLX509Certificate;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 591
    return-void

    .line 589
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getBasicConstraints()I
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 362
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_flags(JLorg/conscrypt/OpenSSLX509Certificate;)I

    move-result v2

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    move v0, v1

    .line 371
    :cond_0
    :goto_0
    return v0

    .line 366
    :cond_1
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_pathlen(JLorg/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    .line 367
    .local v0, "pathLen":I
    if-ne v0, v1, :cond_0

    .line 368
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public getContext()J
    .locals 2

    .prologue
    .line 566
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    return-wide v0
.end method

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
    .line 204
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x1

    .line 205
    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "critOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x0

    .line 213
    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 215
    const/4 v1, 0x0

    .line 218
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
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 376
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->i2d_X509(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public getExtendedKeyUsage()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 506
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_xkusage(JLorg/conscrypt/OpenSSLX509Certificate;)[Ljava/lang/String;

    move-result-object v0

    .line 507
    .local v0, "extUsage":[Ljava/lang/String;
    if-nez v0, :cond_0

    .line 508
    const/4 v1, 0x0

    .line 511
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0
.end method

.method public getExtensionValue(Ljava/lang/String;)[B
    .locals 2
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0, p1}, Lorg/conscrypt/NativeCrypto;->X509_get_ext_oid(JLorg/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getIssuerAlternativeNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 535
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x2

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JLorg/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 282
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getIssuerUniqueID()[Z
    .locals 2

    .prologue
    .line 336
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_issuerUID(JLorg/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .prologue
    .line 494
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_issuer_name(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 495
    .local v0, "issuer":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getKeyUsage()[Z
    .locals 6

    .prologue
    const/16 v5, 0x9

    const/4 v4, 0x0

    .line 346
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_kusage(JLorg/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    .line 347
    .local v0, "kusage":[Z
    if-nez v0, :cond_1

    .line 348
    const/4 v0, 0x0

    .line 357
    .end local v0    # "kusage":[Z
    :cond_0
    :goto_0
    return-object v0

    .line 351
    .restart local v0    # "kusage":[Z
    :cond_1
    array-length v2, v0

    if-ge v2, v5, :cond_0

    .line 355
    new-array v1, v5, [Z

    .line 356
    .local v1, "resized":[Z
    array-length v2, v0

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    .line 357
    goto :goto_0
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
    .line 228
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x0

    .line 229
    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "nonCritOids":[Ljava/lang/String;
    array-length v1, v0

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v1, 0x1

    .line 237
    invoke-static {v2, v3, p0, v1}, Lorg/conscrypt/NativeCrypto;->get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    if-nez v1, :cond_0

    .line 239
    const/4 v1, 0x0

    .line 242
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 6

    .prologue
    .line 469
    :try_start_0
    new-instance v3, Lorg/conscrypt/OpenSSLKey;

    iget-wide v4, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v4, v5, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_pubkey(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Lorg/conscrypt/OpenSSLKey;-><init>(J)V

    .line 470
    .local v3, "pkey":Lorg/conscrypt/OpenSSLKey;
    invoke-virtual {v3}, Lorg/conscrypt/OpenSSLKey;->getPublicKey()Ljava/security/PublicKey;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 489
    .end local v3    # "pkey":Lorg/conscrypt/OpenSSLKey;
    :goto_0
    return-object v4

    .line 471
    :catch_0
    move-exception v4

    .line 476
    :goto_1
    iget-wide v4, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v4, v5, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_pubkey_oid(JLorg/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;

    move-result-object v2

    .line 477
    .local v2, "oid":Ljava/lang/String;
    iget-wide v4, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v4, v5, p0}, Lorg/conscrypt/NativeCrypto;->i2d_X509_PUBKEY(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 479
    .local v0, "encoded":[B
    :try_start_1
    invoke-static {v2}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 480
    .local v1, "kf":Ljava/security/KeyFactory;
    new-instance v4, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v4, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v4}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto :goto_0

    .line 481
    .end local v1    # "kf":Ljava/security/KeyFactory;
    :catch_1
    move-exception v4

    .line 489
    :goto_2
    new-instance v4, Lorg/conscrypt/X509PublicKey;

    invoke-direct {v4, v2, v0}, Lorg/conscrypt/X509PublicKey;-><init>(Ljava/lang/String;[B)V

    goto :goto_0

    .line 481
    :catch_2
    move-exception v4

    goto :goto_2

    .line 471
    .end local v0    # "encoded":[B
    .end local v2    # "oid":Ljava/lang/String;
    :catch_3
    move-exception v4

    goto :goto_1
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 4

    .prologue
    .line 277
    new-instance v0, Ljava/math/BigInteger;

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_serialNumber(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 312
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v2

    .line 313
    .local v2, "oid":Ljava/lang/String;
    invoke-static {v2}, Lorg/conscrypt/OidData;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 314
    .local v0, "algName":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "algName":Ljava/lang/String;
    .local v1, "algName":Ljava/lang/String;
    move-object v2, v0

    .line 321
    .end local v2    # "oid":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 317
    .end local v1    # "algName":Ljava/lang/String;
    .restart local v0    # "algName":Ljava/lang/String;
    .restart local v2    # "oid":Ljava/lang/String;
    :cond_0
    invoke-static {v2}, Lorg/conscrypt/Platform;->oidToAlgorithmName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    if-eqz v0, :cond_1

    move-object v1, v0

    .end local v0    # "algName":Ljava/lang/String;
    .restart local v1    # "algName":Ljava/lang/String;
    move-object v2, v0

    .line 319
    goto :goto_0

    .end local v1    # "algName":Ljava/lang/String;
    .restart local v0    # "algName":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 321
    .end local v0    # "algName":Ljava/lang/String;
    .restart local v1    # "algName":Ljava/lang/String;
    goto :goto_0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 326
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_sig_alg_oid(JLorg/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 2

    .prologue
    .line 331
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_sig_alg_parameter(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()[B
    .locals 2

    .prologue
    .line 307
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_signature(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectAlternativeNames()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .prologue
    .line 529
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lorg/conscrypt/NativeCrypto;->get_X509_GENERAL_NAME_stack(JLorg/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->alternativeNameArrayToList([[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    return-object v0
.end method

.method public getSubjectUniqueID()[Z
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_subjectUID(JLorg/conscrypt/OpenSSLX509Certificate;)[Z

    move-result-object v0

    return-object v0
.end method

.method public getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;
    .locals 4

    .prologue
    .line 500
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_subject_name(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    .line 501
    .local v0, "subject":[B
    new-instance v1, Ljavax/security/auth/x500/X500Principal;

    invoke-direct {v1, v0}, Ljavax/security/auth/x500/X500Principal;-><init>([B)V

    return-object v1
.end method

.method public getTBSCertificate()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 302
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_cert_info_enc(JLorg/conscrypt/OpenSSLX509Certificate;)[B

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 2

    .prologue
    .line 272
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->X509_get_version(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasUnsupportedCriticalExtension()Z
    .locals 2

    .prologue
    .line 247
    iget-wide v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v0, v1, p0}, Lorg/conscrypt/NativeCrypto;->get_X509_ex_flags(JLorg/conscrypt/OpenSSLX509Certificate;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 553
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 556
    :goto_0
    return v0

    .line 555
    :cond_0
    invoke-super {p0}, Ljava/security/cert/X509Certificate;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    .line 556
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mHashCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 455
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 456
    .local v9, "os":Ljava/io/ByteArrayOutputStream;
    invoke-static {v9}, Lorg/conscrypt/NativeCrypto;->create_BIO_OutputStream(Ljava/io/OutputStream;)J

    move-result-wide v0

    .line 458
    .local v0, "bioCtx":J
    :try_start_0
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v4, p0

    invoke-static/range {v0 .. v8}, Lorg/conscrypt/NativeCrypto;->X509_print_ex(JJLorg/conscrypt/OpenSSLX509Certificate;JJ)V

    .line 459
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 461
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    .line 459
    return-object v2

    .line 461
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->BIO_free_all(J)V

    throw v2
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 2
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 411
    instance-of v1, p1, Lorg/conscrypt/OpenSSLKeyHolder;

    if-eqz v1, :cond_0

    .line 412
    check-cast p1, Lorg/conscrypt/OpenSSLKeyHolder;

    .end local p1    # "key":Ljava/security/PublicKey;
    invoke-interface {p1}, Lorg/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 413
    .local v0, "pkey":Lorg/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lorg/conscrypt/OpenSSLKey;)V

    .line 418
    .end local v0    # "pkey":Lorg/conscrypt/OpenSSLKey;
    :goto_0
    return-void

    .line 417
    .restart local p1    # "key":Ljava/security/PublicKey;
    :cond_0
    const/4 v1, 0x0

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lorg/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 424
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/OpenSSLX509Certificate;->verifyInternal(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 425
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/security/Provider;)V
    .locals 4
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/security/Provider;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .prologue
    .line 433
    instance-of v2, p1, Lorg/conscrypt/OpenSSLKeyHolder;

    if-eqz v2, :cond_1

    instance-of v2, p2, Lorg/conscrypt/OpenSSLProvider;

    if-eqz v2, :cond_1

    .line 434
    check-cast p1, Lorg/conscrypt/OpenSSLKeyHolder;

    .end local p1    # "key":Ljava/security/PublicKey;
    invoke-interface {p1}, Lorg/conscrypt/OpenSSLKeyHolder;->getOpenSSLKey()Lorg/conscrypt/OpenSSLKey;

    move-result-object v0

    .line 435
    .local v0, "pkey":Lorg/conscrypt/OpenSSLKey;
    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509Certificate;->verifyOpenSSL(Lorg/conscrypt/OpenSSLKey;)V

    .line 451
    .end local v0    # "pkey":Lorg/conscrypt/OpenSSLKey;
    :cond_0
    return-void

    .line 440
    .restart local p1    # "key":Ljava/security/PublicKey;
    :cond_1
    if-nez p2, :cond_2

    .line 441
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v1

    .line 446
    .local v1, "sig":Ljava/security/Signature;
    :goto_0
    invoke-virtual {v1, p1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 447
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getTBSCertificate()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->update([B)V

    .line 448
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSignature()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/Signature;->verify([B)Z

    move-result v2

    if-nez v2, :cond_0

    .line 449
    new-instance v2, Ljava/security/SignatureException;

    const-string v3, "signature did not verify"

    invoke-direct {v2, v3}, Ljava/security/SignatureException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    .end local v1    # "sig":Ljava/security/Signature;
    :cond_2
    invoke-virtual {p0}, Lorg/conscrypt/OpenSSLX509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p2}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v1

    .restart local v1    # "sig":Ljava/security/Signature;
    goto :goto_0
.end method

.method public withDeletedExtension(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509Certificate;
    .locals 5
    .param p1, "oid"    # Ljava/lang/String;

    .prologue
    .line 577
    new-instance v0, Lorg/conscrypt/OpenSSLX509Certificate;

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLX509Certificate;->mContext:J

    invoke-static {v2, v3, p0}, Lorg/conscrypt/NativeCrypto;->X509_dup(JLorg/conscrypt/OpenSSLX509Certificate;)J

    move-result-wide v2

    iget-object v1, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notBefore:Ljava/util/Date;

    iget-object v4, p0, Lorg/conscrypt/OpenSSLX509Certificate;->notAfter:Ljava/util/Date;

    invoke-direct {v0, v2, v3, v1, v4}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(JLjava/util/Date;Ljava/util/Date;)V

    .line 578
    .local v0, "copy":Lorg/conscrypt/OpenSSLX509Certificate;
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v2

    invoke-static {v2, v3, v0, p1}, Lorg/conscrypt/NativeCrypto;->X509_delete_ext(JLorg/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)V

    .line 579
    return-object v0
.end method
