.class final Lorg/conscrypt/OpenSSLX509CertPath;
.super Ljava/security/cert/CertPath;
.source "OpenSSLX509CertPath.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    }
.end annotation


# static fields
.field private static final ALL_ENCODINGS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_ENCODING:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

.field private static final PKCS7_MARKER:[B

.field private static final PUSHBACK_SIZE:I = 0x40

.field private static final serialVersionUID:J = -0x2d1724b280d2aac9L


# instance fields
.field private final mCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/X509Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    .line 73
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v2, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 75
    invoke-static {v2}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->access$000(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKCS7:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    .line 76
    invoke-static {v2}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->access$000(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 74
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    .line 79
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->PKI_PATH:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    sput-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    return-void

    nop

    :array_0
    .array-data 1
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x2dt
        0x42t
        0x45t
        0x47t
        0x49t
        0x4et
        0x20t
        0x50t
        0x4bt
        0x43t
        0x53t
        0x37t
    .end array-data
.end method

.method constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/X509Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<+Ljava/security/cert/X509Certificate;>;"
    const-string v0, "X.509"

    invoke-direct {p0, v0}, Ljava/security/cert/CertPath;-><init>(Ljava/lang/String;)V

    .line 90
    iput-object p1, p0, Lorg/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    .line 91
    return-void
.end method

.method static fromEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 256
    if-nez p0, :cond_0

    .line 257
    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "inStream == null"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_0
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-static {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v0

    return-object v0
.end method

.method static fromEncoding(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/cert/CertPath;
    .locals 4
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 243
    if-nez p0, :cond_0

    .line 244
    new-instance v1, Ljava/security/cert/CertificateException;

    const-string v2, "inStream == null"

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 247
    :cond_0
    invoke-static {p1}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    .line 248
    .local v0, "enc":Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    if-nez v0, :cond_1

    .line 249
    new-instance v1, Ljava/security/cert/CertificateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 252
    :cond_1
    invoke-static {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;->fromEncoding(Ljava/io/InputStream;Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;

    move-result-object v1

    return-object v1
.end method

.method private static fromEncoding(Ljava/io/InputStream;Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)Ljava/security/cert/CertPath;
    .locals 2
    .param p0, "inStream"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 231
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath$1;->$SwitchMap$org$conscrypt$OpenSSLX509CertPath$Encoding:[I

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 237
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string v1, "Unknown encoding"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 233
    :pswitch_0
    invoke-static {p0}, Lorg/conscrypt/OpenSSLX509CertPath;->fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    .line 235
    :goto_0
    return-object v0

    :pswitch_1
    invoke-static {p0}, Lorg/conscrypt/OpenSSLX509CertPath;->fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static fromPkcs7Encoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 7
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x40

    .line 189
    if-eqz p0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v5

    if-nez v5, :cond_1

    .line 190
    :cond_0
    new-instance v5, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    :goto_0
    return-object v5

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "e":Ljava/io/IOException;
    new-instance v5, Ljava/security/cert/CertificateException;

    const-string v6, "Problem reading input stream"

    invoke-direct {v5, v6, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 196
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v3

    .line 197
    .local v3, "markable":Z
    if-eqz v3, :cond_2

    .line 198
    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 202
    :cond_2
    new-instance v4, Ljava/io/PushbackInputStream;

    invoke-direct {v4, p0, v6}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 204
    .local v4, "pbis":Ljava/io/PushbackInputStream;
    :try_start_1
    sget-object v5, Lorg/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v5, v5

    new-array v0, v5, [B

    .line 206
    .local v0, "buffer":[B
    invoke-virtual {v4, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v2

    .line 207
    .local v2, "len":I
    if-gez v2, :cond_4

    .line 209
    new-instance v5, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v6, "inStream is empty"

    invoke-direct {v5, v6}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 218
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    :catch_1
    move-exception v1

    .line 219
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v3, :cond_3

    .line 221
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 225
    :cond_3
    :goto_1
    new-instance v5, Ljava/security/cert/CertificateException;

    invoke-direct {v5, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 211
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v2    # "len":I
    :cond_4
    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v5, v2}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 213
    sget-object v5, Lorg/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    array-length v5, v5

    if-ne v2, v5, :cond_5

    sget-object v5, Lorg/conscrypt/OpenSSLX509CertPath;->PKCS7_MARKER:[B

    invoke-static {v5, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 214
    new-instance v5, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-static {v4}, Lorg/conscrypt/OpenSSLX509Certificate;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 217
    :cond_5
    new-instance v5, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-static {v4}, Lorg/conscrypt/OpenSSLX509Certificate;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 222
    .end local v0    # "buffer":[B
    .end local v2    # "len":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    goto :goto_1
.end method

.method private static fromPkiPathEncoding(Ljava/io/InputStream;)Ljava/security/cert/CertPath;
    .locals 10
    .param p0, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lorg/conscrypt/OpenSSLBIOInputStream;

    const/4 v6, 0x1

    invoke-direct {v0, p0, v6}, Lorg/conscrypt/OpenSSLBIOInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 147
    .local v0, "bis":Lorg/conscrypt/OpenSSLBIOInputStream;
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    .line 148
    .local v5, "markable":Z
    if-eqz v5, :cond_0

    .line 149
    const/16 v6, 0x40

    invoke-virtual {p0, v6}, Ljava/io/InputStream;->mark(I)V

    .line 154
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->getBioContext()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->ASN1_seq_unpack_X509_bio(J)[J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 164
    .local v1, "certRefs":[J
    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    .line 167
    if-nez v1, :cond_2

    .line 168
    new-instance v6, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    .line 184
    :goto_0
    return-object v6

    .line 155
    .end local v1    # "certRefs":[J
    :catch_0
    move-exception v3

    .line 156
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_1

    .line 158
    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :cond_1
    :goto_1
    :try_start_2
    new-instance v6, Ljava/security/cert/CertificateException;

    invoke-direct {v6, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v6

    invoke-virtual {v0}, Lorg/conscrypt/OpenSSLBIOInputStream;->release()V

    throw v6

    .line 171
    .restart local v1    # "certRefs":[J
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    array-length v6, v1

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 173
    .local v2, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    array-length v6, v1

    add-int/lit8 v4, v6, -0x1

    .local v4, "i":I
    :goto_2
    if-ltz v4, :cond_4

    .line 174
    aget-wide v6, v1, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 173
    :goto_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 178
    :cond_3
    :try_start_3
    new-instance v6, Lorg/conscrypt/OpenSSLX509Certificate;

    aget-wide v8, v1, v4

    invoke-direct {v6, v8, v9}, Lorg/conscrypt/OpenSSLX509Certificate;-><init>(J)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    .line 179
    :catch_1
    move-exception v3

    .line 180
    .local v3, "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    new-instance v6, Ljava/security/cert/CertificateParsingException;

    invoke-direct {v6, v3}, Ljava/security/cert/CertificateParsingException;-><init>(Ljava/lang/Throwable;)V

    throw v6

    .line 184
    .end local v3    # "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    :cond_4
    new-instance v6, Lorg/conscrypt/OpenSSLX509CertPath;

    invoke-direct {v6, v2}, Lorg/conscrypt/OpenSSLX509CertPath;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 159
    .end local v1    # "certRefs":[J
    .end local v2    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/OpenSSLX509Certificate;>;"
    .end local v4    # "i":I
    .local v3, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method private getEncoded(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)[B
    .locals 8
    .param p1, "encoding"    # Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v5, p0, Lorg/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v2, v5, [Lorg/conscrypt/OpenSSLX509Certificate;

    .line 100
    .local v2, "certs":[Lorg/conscrypt/OpenSSLX509Certificate;
    array-length v5, v2

    new-array v1, v5, [J

    .line 102
    .local v1, "certRefs":[J
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v5, v2

    add-int/lit8 v4, v5, -0x1

    .local v4, "j":I
    :goto_0
    if-ltz v4, :cond_1

    .line 103
    iget-object v5, p0, Lorg/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 105
    .local v0, "cert":Ljava/security/cert/X509Certificate;
    instance-of v5, v0, Lorg/conscrypt/OpenSSLX509Certificate;

    if-eqz v5, :cond_0

    .line 106
    check-cast v0, Lorg/conscrypt/OpenSSLX509Certificate;

    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    aput-object v0, v2, v4

    .line 111
    :goto_1
    aget-object v5, v2, v4

    invoke-virtual {v5}, Lorg/conscrypt/OpenSSLX509Certificate;->getContext()J

    move-result-wide v6

    aput-wide v6, v1, v4

    .line 102
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 108
    .restart local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v5

    invoke-static {v5}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object v5

    aput-object v5, v2, v4

    goto :goto_1

    .line 114
    .end local v0    # "cert":Ljava/security/cert/X509Certificate;
    :cond_1
    sget-object v5, Lorg/conscrypt/OpenSSLX509CertPath$1;->$SwitchMap$org$conscrypt$OpenSSLX509CertPath$Encoding:[I

    invoke-virtual {p1}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 120
    new-instance v5, Ljava/security/cert/CertificateEncodingException;

    const-string v6, "Unknown encoding"

    invoke-direct {v5, v6}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 116
    :pswitch_0
    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->ASN1_seq_pack_X509([J)[B

    move-result-object v5

    .line 118
    :goto_2
    return-object v5

    :pswitch_1
    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->i2d_PKCS7([J)[B

    move-result-object v5

    goto :goto_2

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static getEncodingsIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->ALL_ENCODINGS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lorg/conscrypt/OpenSSLX509CertPath;->mCertificates:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lorg/conscrypt/OpenSSLX509CertPath;->DEFAULT_ENCODING:Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;->getEncoded(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoded(Ljava/lang/String;)[B
    .locals 4
    .param p1, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 131
    invoke-static {p1}, Lorg/conscrypt/OpenSSLX509CertPath$Encoding;->findByApiName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLX509CertPath$Encoding;

    move-result-object v0

    .line 132
    .local v0, "enc":Lorg/conscrypt/OpenSSLX509CertPath$Encoding;
    if-nez v0, :cond_0

    .line 133
    new-instance v1, Ljava/security/cert/CertificateEncodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 136
    :cond_0
    invoke-direct {p0, v0}, Lorg/conscrypt/OpenSSLX509CertPath;->getEncoded(Lorg/conscrypt/OpenSSLX509CertPath$Encoding;)[B

    move-result-object v1

    return-object v1
.end method

.method public getEncodings()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertPath;->getEncodingsIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
