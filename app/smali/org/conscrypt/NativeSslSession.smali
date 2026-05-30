.class abstract Lorg/conscrypt/NativeSslSession;
.super Ljava/lang/Object;
.source "NativeSslSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/NativeSslSession$Impl;
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/util/logging/Logger;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lorg/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/Throwable;

    .prologue
    .line 45
    invoke-static {p0}, Lorg/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static checkRemaining(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p0, "buf"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 476
    if-gez p1, :cond_0

    .line 477
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length is negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 480
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length of blob is longer than available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 481
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 483
    :cond_1
    return-void
.end method

.method private static getOcspResponse(Lorg/conscrypt/ConscryptSession;)[B
    .locals 3
    .param p0, "session"    # Lorg/conscrypt/ConscryptSession;

    .prologue
    .line 67
    invoke-interface {p0}, Lorg/conscrypt/ConscryptSession;->getStatusResponses()Ljava/util/List;

    move-result-object v0

    .line 68
    .local v0, "ocspResponseList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 69
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 71
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 471
    sget-object v1, Lorg/conscrypt/NativeSslSession;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "Error inflating SSL session: {0}"

    .line 472
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 471
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    return-void

    .line 472
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static newInstance(Lorg/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lorg/conscrypt/NativeSslSession;
    .locals 22
    .param p0, "context"    # Lorg/conscrypt/AbstractSessionContext;
    .param p1, "data"    # [B
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 83
    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v11

    .line 85
    .local v11, "buf":Ljava/nio/ByteBuffer;
    :try_start_0
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v21

    .line 86
    .local v21, "type":I
    invoke-static/range {v21 .. v21}, Lorg/conscrypt/SSLUtils$SessionType;->isSupportedType(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected type ID: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_2

    .line 156
    .end local v21    # "type":I
    :catch_0
    move-exception v15

    .line 157
    .local v15, "e":Ljava/io/IOException;
    invoke-static {v15}, Lorg/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 158
    const/4 v2, 0x0

    .line 161
    .end local v15    # "e":Ljava/io/IOException;
    :goto_0
    return-object v2

    .line 90
    .restart local v21    # "type":I
    :cond_0
    :try_start_1
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 91
    .local v17, "length":I
    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 93
    move/from16 v0, v17

    new-array v0, v0, [B

    move-object/from16 v19, v0

    .line 94
    .local v19, "sessionData":[B
    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v13

    .line 97
    .local v13, "count":I
    invoke-static {v11, v13}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 99
    new-array v7, v13, [Ljava/security/cert/X509Certificate;

    .line 101
    .local v7, "peerCerts":[Ljava/security/cert/X509Certificate;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_1

    .line 102
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v17

    .line 103
    move/from16 v0, v17

    invoke-static {v11, v0}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 105
    move/from16 v0, v17

    new-array v12, v0, [B

    .line 106
    .local v12, "certData":[B
    invoke-virtual {v11, v12}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_2

    .line 108
    :try_start_2
    invoke-static {v12}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object v2

    aput-object v2, v7, v16
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    .line 101
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 109
    :catch_1
    move-exception v15

    .line 110
    .local v15, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not read certificate "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "/"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_2

    .line 159
    .end local v7    # "peerCerts":[Ljava/security/cert/X509Certificate;
    .end local v12    # "certData":[B
    .end local v13    # "count":I
    .end local v15    # "e":Ljava/lang/Exception;
    .end local v16    # "i":I
    .end local v17    # "length":I
    .end local v19    # "sessionData":[B
    .end local v21    # "type":I
    :catch_2
    move-exception v15

    .line 160
    .local v15, "e":Ljava/nio/BufferUnderflowException;
    invoke-static {v15}, Lorg/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 161
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    .end local v15    # "e":Ljava/nio/BufferUnderflowException;
    .restart local v7    # "peerCerts":[Ljava/security/cert/X509Certificate;
    .restart local v13    # "count":I
    .restart local v16    # "i":I
    .restart local v17    # "length":I
    .restart local v19    # "sessionData":[B
    .restart local v21    # "type":I
    :cond_1
    const/4 v8, 0x0

    .line 115
    .local v8, "ocspData":[B
    :try_start_4
    sget-object v2, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lorg/conscrypt/SSLUtils$SessionType;

    iget v2, v2, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    move/from16 v0, v21

    if-lt v0, v2, :cond_2

    .line 118
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v14

    .line 119
    .local v14, "countOcspResponses":I
    invoke-static {v11, v14}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 121
    const/4 v2, 0x1

    if-lt v14, v2, :cond_2

    .line 122
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    .line 123
    .local v18, "ocspLength":I
    move/from16 v0, v18

    invoke-static {v11, v0}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 125
    move/from16 v0, v18

    new-array v8, v0, [B

    .line 126
    invoke-virtual {v11, v8}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 129
    const/16 v16, 0x1

    :goto_2
    move/from16 v0, v16

    if-ge v0, v14, :cond_2

    .line 130
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v18

    .line 131
    move/from16 v0, v18

    invoke-static {v11, v0}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 132
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    add-int v2, v2, v18

    invoke-virtual {v11, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 129
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    .line 137
    .end local v14    # "countOcspResponses":I
    .end local v18    # "ocspLength":I
    :cond_2
    const/4 v9, 0x0

    .line 138
    .local v9, "tlsSctData":[B
    sget-object v2, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lorg/conscrypt/SSLUtils$SessionType;

    iget v2, v2, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    move/from16 v0, v21

    if-ne v0, v2, :cond_3

    .line 139
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v20

    .line 140
    .local v20, "tlsSctDataLength":I
    move/from16 v0, v20

    invoke-static {v11, v0}, Lorg/conscrypt/NativeSslSession;->checkRemaining(Ljava/nio/ByteBuffer;I)V

    .line 142
    if-lez v20, :cond_3

    .line 143
    move/from16 v0, v20

    new-array v9, v0, [B

    .line 144
    invoke-virtual {v11, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 148
    .end local v20    # "tlsSctDataLength":I
    :cond_3
    invoke-virtual {v11}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Read entire session, but data still remains; rejecting"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/conscrypt/NativeSslSession;->log(Ljava/lang/Throwable;)V

    .line 150
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 153
    :cond_4
    new-instance v4, Lorg/conscrypt/NativeRef$SSL_SESSION;

    .line 154
    invoke-static/range {v19 .. v19}, Lorg/conscrypt/NativeCrypto;->d2i_SSL_SESSION([B)J

    move-result-wide v2

    invoke-direct {v4, v2, v3}, Lorg/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 155
    .local v4, "ref":Lorg/conscrypt/NativeRef$SSL_SESSION;
    new-instance v2, Lorg/conscrypt/NativeSslSession$Impl;

    const/4 v10, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p2

    move/from16 v6, p3

    invoke-direct/range {v2 .. v10}, Lorg/conscrypt/NativeSslSession$Impl;-><init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLorg/conscrypt/NativeSslSession$1;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method

.method static newInstance(Lorg/conscrypt/NativeRef$SSL_SESSION;Lorg/conscrypt/ConscryptSession;)Lorg/conscrypt/NativeSslSession;
    .locals 9
    .param p0, "ref"    # Lorg/conscrypt/NativeRef$SSL_SESSION;
    .param p1, "session"    # Lorg/conscrypt/ConscryptSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 55
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/AbstractSessionContext;

    .line 56
    .local v1, "context":Lorg/conscrypt/AbstractSessionContext;
    instance-of v0, v1, Lorg/conscrypt/ClientSessionContext;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lorg/conscrypt/NativeSslSession$Impl;

    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerPort()I

    move-result v4

    .line 58
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerCertificates()[Ljava/security/cert/X509Certificate;

    move-result-object v5

    invoke-static {p1}, Lorg/conscrypt/NativeSslSession;->getOcspResponse(Lorg/conscrypt/ConscryptSession;)[B

    move-result-object v6

    .line 59
    invoke-interface {p1}, Lorg/conscrypt/ConscryptSession;->getPeerSignedCertificateTimestamp()[B

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lorg/conscrypt/NativeSslSession$Impl;-><init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLorg/conscrypt/NativeSslSession$1;)V

    .line 63
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/conscrypt/NativeSslSession$Impl;

    const/4 v4, -0x1

    move-object v2, p0

    move-object v3, v8

    move-object v5, v8

    move-object v6, v8

    move-object v7, v8

    invoke-direct/range {v0 .. v8}, Lorg/conscrypt/NativeSslSession$Impl;-><init>(Lorg/conscrypt/AbstractSessionContext;Lorg/conscrypt/NativeRef$SSL_SESSION;Ljava/lang/String;I[Ljava/security/cert/X509Certificate;[B[BLorg/conscrypt/NativeSslSession$1;)V

    goto :goto_0
.end method


# virtual methods
.method abstract getCipherSuite()Ljava/lang/String;
.end method

.method abstract getId()[B
.end method

.method abstract getPeerHost()Ljava/lang/String;
.end method

.method abstract getPeerOcspStapledResponse()[B
.end method

.method abstract getPeerPort()I
.end method

.method abstract getPeerSignedCertificateTimestamp()[B
.end method

.method abstract getProtocol()Ljava/lang/String;
.end method

.method abstract isSingleUse()Z
.end method

.method abstract isValid()Z
.end method

.method abstract offerToResume(Lorg/conscrypt/NativeSsl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method abstract toBytes()[B
.end method

.method abstract toSSLSession()Ljavax/net/ssl/SSLSession;
.end method
