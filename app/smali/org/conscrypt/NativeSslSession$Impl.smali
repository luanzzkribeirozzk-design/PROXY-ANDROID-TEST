.class final Lorg/conscrypt/NativeSslSession$Impl;
.super Lorg/conscrypt/NativeSslSession;
.source "NativeSslSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/NativeSslSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Impl"
.end annotation


# instance fields
.field private final cipherSuite:Ljava/lang/String;

.field private final context:Lorg/conscrypt/AbstractSessionContext;

.field private final host:Ljava/lang/String;

.field private final peerCertificates:[Ljava/security/cert/X509Certificate;

.field private final peerOcspStapledResponse:[B

.field private final peerSignedCertificateTimestamp:[B

.field private final port:I

.field private final protocol:Ljava/lang/String;

.field private final ref:Lorg/conscrypt/NativeRef$SSL_SESSION;


# direct methods
.method private constructor <init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[B)V
    .locals 2
    .param p1, "context"    # Lorg/conscrypt/AbstractSessionContext;
    .param p2, "ref"    # Lorg/conscrypt/NativeRef$SSL_SESSION;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "peerCertificates"    # [Ljava/security/cert/X509Certificate;
    .param p6, "peerOcspStapledResponse"    # [B
    .param p7, "peerSignedCertificateTimestamp"    # [B

    .prologue
    .line 232
    invoke-direct {p0}, Lorg/conscrypt/NativeSslSession;-><init>()V

    .line 233
    iput-object p1, p0, Lorg/conscrypt/NativeSslSession$Impl;->context:Lorg/conscrypt/AbstractSessionContext;

    .line 234
    iput-object p3, p0, Lorg/conscrypt/NativeSslSession$Impl;->host:Ljava/lang/String;

    .line 235
    iput p4, p0, Lorg/conscrypt/NativeSslSession$Impl;->port:I

    .line 236
    iput-object p5, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    .line 237
    iput-object p6, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    .line 238
    iput-object p7, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    .line 239
    iget-wide v0, p2, Lorg/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_get_version(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->protocol:Ljava/lang/String;

    .line 240
    iget-wide v0, p2, Lorg/conscrypt/NativeRef$SSL_SESSION;->address:J

    .line 241
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_cipher(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->cipherSuite:Ljava/lang/String;

    .line 242
    iput-object p2, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    .line 243
    return-void
.end method

.method synthetic constructor <init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLorg/conscrypt/NativeSslSession$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/conscrypt/AbstractSessionContext;
    .param p2, "x1"    # Lorg/conscrypt/NativeRef$SSL_SESSION;
    .param p3, "x2"    # Ljava/lang/String;
    .param p4, "x3"    # I
    .param p5, "x4"    # [Ljava/security/cert/X509Certificate;
    .param p6, "x5"    # [B
    .param p7, "x6"    # [B
    .param p8, "x7"    # Lorg/conscrypt/NativeSslSession$1;

    .prologue
    .line 217
    invoke-direct/range {p0 .. p7}, Lorg/conscrypt/NativeSslSession$Impl;-><init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[B)V

    return-void
.end method

.method static synthetic access$300(Lorg/conscrypt/NativeSslSession$Impl;)J
    .locals 2
    .param p0, "x0"    # Lorg/conscrypt/NativeSslSession$Impl;

    .prologue
    .line 217
    invoke-direct {p0}, Lorg/conscrypt/NativeSslSession$Impl;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method private getCreationTime()J
    .locals 2

    .prologue
    .line 251
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_get_time(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method getId()[B
    .locals 2

    .prologue
    .line 247
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_session_id(J)[B

    move-result-object v0

    return-object v0
.end method

.method getPeerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->host:Ljava/lang/String;

    return-object v0
.end method

.method getPeerOcspStapledResponse()[B
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    return-object v0
.end method

.method getPeerPort()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->port:I

    return v0
.end method

.method getPeerSignedCertificateTimestamp()[B
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    return-object v0
.end method

.method getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method isSingleUse()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_should_be_single_use(J)Z

    move-result v0

    return v0
.end method

.method isValid()Z
    .locals 10

    .prologue
    .line 256
    invoke-direct {p0}, Lorg/conscrypt/NativeSslSession$Impl;->getCreationTime()J

    move-result-wide v0

    .line 258
    .local v0, "creationTimeMillis":J
    const-wide/16 v4, 0x0

    iget-object v6, p0, Lorg/conscrypt/NativeSslSession$Impl;->context:Lorg/conscrypt/AbstractSessionContext;

    .line 259
    invoke-virtual {v6}, Lorg/conscrypt/AbstractSessionContext;->getSessionTimeout()I

    move-result v6

    int-to-long v6, v6

    iget-object v8, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v8, v8, Lorg/conscrypt/NativeRef$SSL_SESSION;->address:J

    .line 260
    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_get_timeout(J)J

    move-result-wide v8

    .line 259
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 258
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v2, v4, v6

    .line 262
    .local v2, "timeoutMillis":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    cmp-long v4, v4, v0

    if-gez v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method offerToResume(Lorg/conscrypt/NativeSsl;)V
    .locals 2
    .param p1, "ssl"    # Lorg/conscrypt/NativeSsl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v0, v0, Lorg/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-virtual {p1, v0, v1}, Lorg/conscrypt/NativeSsl;->offerToResumeSession(J)V

    .line 273
    return-void
.end method

.method toBytes()[B
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 308
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 309
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 311
    .local v2, "daos":Ljava/io/DataOutputStream;
    sget-object v7, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lorg/conscrypt/SSLUtils$SessionType;

    iget v7, v7, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 314
    iget-object v7, p0, Lorg/conscrypt/NativeSslSession$Impl;->ref:Lorg/conscrypt/NativeRef$SSL_SESSION;

    iget-wide v8, v7, Lorg/conscrypt/NativeRef$SSL_SESSION;->address:J

    invoke-static {v8, v9}, Lorg/conscrypt/NativeCrypto;->i2d_SSL_SESSION(J)[B

    move-result-object v3

    .line 315
    .local v3, "data":[B
    array-length v7, v3

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 316
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 319
    iget-object v7, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v7, v7

    invoke-virtual {v2, v7}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 321
    iget-object v7, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerCertificates:[Ljava/security/cert/X509Certificate;

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v7, v6

    .line 322
    .local v1, "cert":Ljava/security/cert/Certificate;
    invoke-virtual {v1}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v3

    .line 323
    array-length v9, v3

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 324
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 321
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 327
    .end local v1    # "cert":Ljava/security/cert/Certificate;
    :cond_0
    iget-object v6, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    if-eqz v6, :cond_1

    .line 328
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 329
    iget-object v6, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    array-length v6, v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 330
    iget-object v6, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerOcspStapledResponse:[B

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 335
    :goto_1
    iget-object v6, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    if-eqz v6, :cond_2

    .line 336
    iget-object v6, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    array-length v6, v6

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 337
    iget-object v6, p0, Lorg/conscrypt/NativeSslSession$Impl;->peerSignedCertificateTimestamp:[B

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->write([B)V

    .line 344
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 351
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "daos":Ljava/io/DataOutputStream;
    .end local v3    # "data":[B
    :goto_3
    return-object v5

    .line 332
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "daos":Ljava/io/DataOutputStream;
    .restart local v3    # "data":[B
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 345
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "daos":Ljava/io/DataOutputStream;
    .end local v3    # "data":[B
    :catch_0
    move-exception v4

    .line 347
    .local v4, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/conscrypt/NativeSslSession;->access$100()Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v8, "Failed to convert saved SSL Session: "

    invoke-virtual {v6, v7, v8, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 339
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "daos":Ljava/io/DataOutputStream;
    .restart local v3    # "data":[B
    :cond_2
    const/4 v6, 0x0

    :try_start_1
    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 349
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "daos":Ljava/io/DataOutputStream;
    .end local v3    # "data":[B
    :catch_1
    move-exception v4

    .line 350
    .local v4, "e":Ljava/security/cert/CertificateEncodingException;
    invoke-static {v4}, Lorg/conscrypt/NativeSslSession;->access$200(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method toSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 357
    new-instance v0, Lorg/conscrypt/NativeSslSession$Impl$1;

    invoke-direct {v0, p0}, Lorg/conscrypt/NativeSslSession$Impl$1;-><init>(Lorg/conscrypt/NativeSslSession$Impl;)V

    return-object v0
.end method
