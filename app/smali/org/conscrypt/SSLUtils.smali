.class final Lorg/conscrypt/SSLUtils;
.super Ljava/lang/Object;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/SSLUtils$EngineStates;,
        Lorg/conscrypt/SSLUtils$SessionType;
    }
.end annotation


# static fields
.field private static final KEY_TYPE_EC:Ljava/lang/String; = "EC"

.field private static final KEY_TYPE_RSA:Ljava/lang/String; = "RSA"

.field private static final MAX_ENCRYPTION_OVERHEAD_DIFF:I = 0x7fffffa9

.field private static final MAX_ENCRYPTION_OVERHEAD_LENGTH:I = 0x56

.field private static final MAX_PROTOCOL_LENGTH:I = 0xff

.field static final USE_ENGINE_SOCKET_BY_DEFAULT:Z

.field private static final US_ASCII:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 64
    const-string v0, "org.conscrypt.useEngineSocketByDefault"

    const-string v1, "true"

    .line 65
    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lorg/conscrypt/SSLUtils;->USE_ENGINE_SOCKET_BY_DEFAULT:Z

    .line 68
    const-string v0, "US-ASCII"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 580
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static calculateOutNetBufSize(I)I
    .locals 2
    .param p0, "pendingBytes"    # I

    .prologue
    .line 349
    const/16 v0, 0x4145

    const v1, 0x7fffffa9

    .line 350
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x56

    .line 349
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method static varargs concat([[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8
    .param p0, "arrays"    # [[Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, "resultLength":I
    array-length v6, p0

    move v4, v5

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v0, p0, v4

    .line 569
    .local v0, "array":[Ljava/lang/String;
    array-length v7, v0

    add-int/2addr v2, v7

    .line 568
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 571
    .end local v0    # "array":[Ljava/lang/String;
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    .line 572
    .local v1, "result":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 573
    .local v3, "resultOffset":I
    array-length v6, p0

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_1

    aget-object v0, p0, v4

    .line 574
    .restart local v0    # "array":[Ljava/lang/String;
    array-length v7, v0

    invoke-static {v0, v5, v1, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 575
    array-length v7, v0

    add-int/2addr v3, v7

    .line 573
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 577
    .end local v0    # "array":[Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method static decodeProtocols([B)[Ljava/lang/String;
    .locals 10
    .param p0, "protocols"    # [B

    .prologue
    .line 396
    array-length v6, p0

    if-nez v6, :cond_1

    .line 397
    sget-object v2, Lorg/conscrypt/EmptyArray;->STRING:[Ljava/lang/String;

    .line 423
    :cond_0
    return-object v2

    .line 400
    :cond_1
    const/4 v4, 0x0

    .line 401
    .local v4, "numProtocols":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_5

    .line 402
    aget-byte v5, p0, v3

    .line 403
    .local v5, "protocolLength":I
    if-ltz v5, :cond_2

    array-length v6, p0

    sub-int/2addr v6, v3

    if-le v5, v6, :cond_4

    .line 404
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Protocol has invalid length ("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " at position "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "): "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 406
    array-length v6, p0

    const/16 v9, 0x32

    if-ge v6, v9, :cond_3

    .line 407
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v6

    :goto_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    array-length v9, p0

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " byte array"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 410
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 411
    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v6

    .line 412
    goto :goto_0

    .line 414
    .end local v5    # "protocolLength":I
    :cond_5
    new-array v2, v4, [Ljava/lang/String;

    .line 415
    .local v2, "decoded":[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v0, 0x0

    .local v0, "d":I
    :goto_2
    array-length v6, p0

    if-ge v3, v6, :cond_0

    .line 416
    aget-byte v5, p0, v3

    .line 417
    .restart local v5    # "protocolLength":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "d":I
    .local v1, "d":I
    if-lez v5, :cond_6

    .line 418
    new-instance v6, Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    sget-object v8, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v6, p0, v7, v5, v8}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 419
    :goto_3
    aput-object v6, v2, v0

    .line 420
    add-int/lit8 v6, v5, 0x1

    add-int/2addr v3, v6

    move v0, v1

    .line 421
    .end local v1    # "d":I
    .restart local v0    # "d":I
    goto :goto_2

    .line 419
    .end local v0    # "d":I
    .restart local v1    # "d":I
    :cond_6
    const-string v6, ""

    goto :goto_3
.end method

.method private static decodeX509Certificate(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/X509Certificate;
    .locals 1
    .param p0, "certificateFactory"    # Ljava/security/cert/CertificateFactory;
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 202
    if-eqz p0, :cond_0

    .line 203
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 206
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/conscrypt/OpenSSLX509Certificate;->fromX509Der([B)Lorg/conscrypt/OpenSSLX509Certificate;

    move-result-object v0

    goto :goto_0
.end method

.method static decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;
    .locals 5
    .param p0, "certChain"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {}, Lorg/conscrypt/SSLUtils;->getCertificateFactory()Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 184
    .local v0, "certificateFactory":Ljava/security/cert/CertificateFactory;
    array-length v3, p0

    .line 185
    .local v3, "numCerts":I
    new-array v1, v3, [Ljava/security/cert/X509Certificate;

    .line 186
    .local v1, "decodedCerts":[Ljava/security/cert/X509Certificate;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 187
    aget-object v4, p0, v2

    invoke-static {v0, v4}, Lorg/conscrypt/SSLUtils;->decodeX509Certificate(Ljava/security/cert/CertificateFactory;[B)Ljava/security/cert/X509Certificate;

    move-result-object v4

    aput-object v4, v1, v2

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-object v1
.end method

.method static encodeProtocols([Ljava/lang/String;)[B
    .locals 12
    .param p0, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 436
    if-nez p0, :cond_0

    .line 437
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string v10, "protocols array must be non-null"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 440
    :cond_0
    array-length v9, p0

    if-nez v9, :cond_2

    .line 441
    sget-object v2, Lorg/conscrypt/EmptyArray;->BYTE:[B

    .line 481
    :cond_1
    return-object v2

    .line 445
    :cond_2
    const/4 v6, 0x0

    .line 446
    .local v6, "length":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v9, p0

    if-ge v5, v9, :cond_6

    .line 447
    aget-object v7, p0, v5

    .line 448
    .local v7, "protocol":Ljava/lang/String;
    if-nez v7, :cond_3

    .line 449
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "protocol["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] is null"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 451
    :cond_3
    aget-object v9, p0, v5

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 455
    .local v8, "protocolLength":I
    if-eqz v8, :cond_4

    const/16 v9, 0xff

    if-le v8, v9, :cond_5

    .line 456
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "protocol["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "] has invalid length: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 461
    :cond_5
    add-int/lit8 v9, v8, 0x1

    add-int/2addr v6, v9

    .line 446
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 464
    .end local v7    # "protocol":Ljava/lang/String;
    .end local v8    # "protocolLength":I
    :cond_6
    new-array v2, v6, [B

    .line 465
    .local v2, "data":[B
    const/4 v3, 0x0

    .local v3, "dataIndex":I
    const/4 v5, 0x0

    :goto_1
    array-length v9, p0

    if-ge v5, v9, :cond_1

    .line 466
    aget-object v7, p0, v5

    .line 467
    .restart local v7    # "protocol":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    .line 470
    .restart local v8    # "protocolLength":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "dataIndex":I
    .local v4, "dataIndex":I
    int-to-byte v9, v8

    aput-byte v9, v2, v3

    .line 471
    const/4 v1, 0x0

    .local v1, "ci":I
    :goto_2
    if-ge v1, v8, :cond_8

    .line 472
    invoke-virtual {v7, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 473
    .local v0, "c":C
    const/16 v9, 0x7f

    if-le v0, v9, :cond_7

    .line 475
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Protocol contains invalid character: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "(protocol="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 478
    :cond_7
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "dataIndex":I
    .restart local v3    # "dataIndex":I
    int-to-byte v9, v0

    aput-byte v9, v2, v4

    .line 471
    add-int/lit8 v1, v1, 0x1

    move v4, v3

    .end local v3    # "dataIndex":I
    .restart local v4    # "dataIndex":I
    goto :goto_2

    .line 465
    .end local v0    # "c":C
    :cond_8
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    .end local v4    # "dataIndex":I
    .restart local v3    # "dataIndex":I
    goto :goto_1
.end method

.method static encodeSubjectX509Principals([Ljava/security/cert/X509Certificate;)[[B
    .locals 3
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .prologue
    .line 312
    array-length v2, p0

    new-array v1, v2, [[B

    .line 313
    .local v1, "principalBytes":[[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 314
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    aput-object v2, v1, v0

    .line 313
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-object v1
.end method

.method private static getCertificateFactory()Ljava/security/cert/CertificateFactory;
    .locals 2

    .prologue
    .line 194
    :try_start_0
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 196
    .local v0, "e":Ljava/security/cert/CertificateException;
    :goto_0
    return-object v1

    .line 195
    .end local v0    # "e":Ljava/security/cert/CertificateException;
    :catch_0
    move-exception v0

    .line 196
    .restart local v0    # "e":Ljava/security/cert/CertificateException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getClientKeyType(B)Ljava/lang/String;
    .locals 1
    .param p0, "clientCertificateType"    # B

    .prologue
    .line 236
    sparse-switch p0, :sswitch_data_0

    .line 242
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 238
    :sswitch_0
    const-string v0, "RSA"

    goto :goto_0

    .line 240
    :sswitch_1
    const-string v0, "EC"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x40 -> :sswitch_1
    .end sparse-switch
.end method

.method static getClientKeyTypeFromSignatureAlg(I)Ljava/lang/String;
    .locals 1
    .param p0, "signatureAlg"    # I

    .prologue
    .line 249
    invoke-static {p0}, Lorg/conscrypt/NativeCrypto;->SSL_get_signature_algorithm_key_type(I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 255
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 251
    :sswitch_0
    const-string v0, "RSA"

    goto :goto_0

    .line 253
    :sswitch_1
    const-string v0, "EC"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x198 -> :sswitch_1
    .end sparse-switch
.end method

.method private static getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I
    .locals 5
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, -0x1

    .line 529
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 531
    .local v2, "pos":I
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v4

    packed-switch v4, :pswitch_data_0

    move v1, v3

    .line 555
    :cond_0
    :goto_0
    return v1

    .line 543
    :pswitch_0
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v4

    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->unsignedByte(B)S

    move-result v0

    .line 544
    .local v0, "majorVersion":I
    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    move v1, v3

    .line 546
    goto :goto_0

    .line 550
    :cond_1
    add-int/lit8 v4, v2, 0x3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v4

    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->unsignedShort(S)I

    move-result v4

    add-int/lit8 v1, v4, 0x5

    .line 551
    .local v1, "packetLength":I
    const/4 v4, 0x5

    if-gt v1, v4, :cond_0

    move v1, v3

    .line 553
    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I
    .locals 7
    .param p0, "buffers"    # [Ljava/nio/ByteBuffer;
    .param p1, "offset"    # I

    .prologue
    const/4 v6, 0x5

    .line 497
    aget-object v0, p0, p1

    .line 500
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, v6, :cond_0

    .line 501
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v5

    .line 525
    :goto_0
    return v5

    .line 506
    :cond_0
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 508
    .local v4, "tmp":Ljava/nio/ByteBuffer;
    :goto_1
    add-int/lit8 v2, p1, 0x1

    .end local p1    # "offset":I
    .local v2, "offset":I
    aget-object v0, p0, p1

    .line 509
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 510
    .local v3, "pos":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 511
    .local v1, "limit":I
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 512
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    add-int/2addr v5, v3

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 515
    :cond_1
    :try_start_0
    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 519
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 521
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v5

    if-nez v5, :cond_2

    .line 524
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 525
    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->getEncryptedPacketLength(Ljava/nio/ByteBuffer;)I

    move-result v5

    move p1, v2

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_0

    .line 518
    .end local p1    # "offset":I
    .restart local v2    # "offset":I
    :catchall_0
    move-exception v5

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 519
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    throw v5

    :cond_2
    move p1, v2

    .end local v2    # "offset":I
    .restart local p1    # "offset":I
    goto :goto_1
.end method

.method static getServerX509KeyType(J)Ljava/lang/String;
    .locals 2
    .param p0, "sslCipherNative"    # J

    .prologue
    .line 215
    invoke-static {p0, p1}, Lorg/conscrypt/NativeCrypto;->SSL_CIPHER_get_kx_name(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "kx_name":Ljava/lang/String;
    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "DHE_RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ECDHE_RSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    :cond_0
    const-string v1, "RSA"

    .line 221
    :goto_0
    return-object v1

    .line 218
    :cond_1
    const-string v1, "ECDHE_ECDSA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 219
    const-string v1, "EC"

    goto :goto_0

    .line 221
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getSupportedClientKeyTypes([B[I)Ljava/util/Set;
    .locals 8
    .param p0, "clientCertificateTypes"    # [B
    .param p1, "signatureAlgs"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 278
    new-instance v0, Ljava/util/HashSet;

    array-length v6, p0

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 279
    .local v0, "fromClientCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v7, p0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_1

    aget-byte v3, p0, v6

    .line 280
    .local v3, "keyTypeCode":B
    invoke-static {v3}, Lorg/conscrypt/SSLUtils;->getClientKeyType(B)Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, "keyType":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 279
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 285
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 288
    .end local v2    # "keyType":Ljava/lang/String;
    .end local v3    # "keyTypeCode":B
    :cond_1
    new-instance v1, Ljava/util/LinkedHashSet;

    array-length v6, p1

    invoke-direct {v1, v6}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 289
    .local v1, "fromSigAlgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v6, p1

    :goto_2
    if-ge v5, v6, :cond_3

    aget v4, p1, v5

    .line 290
    .local v4, "signatureAlg":I
    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->getClientKeyTypeFromSignatureAlg(I)Ljava/lang/String;

    move-result-object v2

    .line 291
    .restart local v2    # "keyType":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 289
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 295
    :cond_2
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 300
    .end local v2    # "keyType":Ljava/lang/String;
    .end local v4    # "signatureAlg":I
    :cond_3
    array-length v5, p0

    if-lez v5, :cond_5

    array-length v5, p1

    if-lez v5, :cond_5

    .line 301
    invoke-interface {v1, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 306
    .end local v1    # "fromSigAlgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_4
    :goto_4
    return-object v1

    .line 303
    .restart local v1    # "fromSigAlgs":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_5
    array-length v5, p1

    if-gtz v5, :cond_4

    move-object v1, v0

    .line 306
    goto :goto_4
.end method

.method static toCertificateChain([Ljava/security/cert/X509Certificate;)[Ljavax/security/cert/X509Certificate;
    .locals 6
    .param p0, "certificates"    # [Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 325
    :try_start_0
    array-length v5, p0

    new-array v0, v5, [Ljavax/security/cert/X509Certificate;

    .line 328
    .local v0, "chain":[Ljavax/security/cert/X509Certificate;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p0

    if-ge v4, v5, :cond_0

    .line 329
    aget-object v5, p0, v4

    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 330
    .local v2, "encoded":[B
    invoke-static {v2}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 328
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 333
    .end local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    .end local v2    # "encoded":[B
    .end local v4    # "i":I
    :catch_0
    move-exception v1

    .line 334
    .local v1, "e":Ljava/security/cert/CertificateEncodingException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljava/security/cert/CertificateEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 335
    .local v3, "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 336
    throw v3

    .line 337
    .end local v1    # "e":Ljava/security/cert/CertificateEncodingException;
    .end local v3    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_1
    move-exception v1

    .line 338
    .local v1, "e":Ljavax/security/cert/CertificateException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v1}, Ljavax/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .line 339
    .restart local v3    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    invoke-virtual {v3, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 340
    throw v3

    .line 332
    .end local v1    # "e":Ljavax/security/cert/CertificateException;
    .end local v3    # "exception":Ljavax/net/ssl/SSLPeerUnverifiedException;
    .restart local v0    # "chain":[Ljavax/security/cert/X509Certificate;
    .restart local v4    # "i":I
    :cond_0
    return-object v0
.end method

.method static toProtocolBytes(Ljava/lang/String;)[B
    .locals 1
    .param p0, "protocol"    # Ljava/lang/String;

    .prologue
    .line 382
    if-nez p0, :cond_0

    .line 383
    const/4 v0, 0x0

    .line 385
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0
.end method

.method static toProtocolString([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 375
    if-nez p0, :cond_0

    .line 376
    const/4 v0, 0x0

    .line 378
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lorg/conscrypt/SSLUtils;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method static toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 368
    instance-of v0, p0, Ljavax/net/ssl/SSLException;

    if-eqz v0, :cond_0

    .line 369
    check-cast p0, Ljavax/net/ssl/SSLException;

    .line 371
    .end local p0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p0}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    move-object p0, v0

    goto :goto_0
.end method

.method static toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;
    .locals 2
    .param p0, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 357
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_0

    .line 358
    check-cast p0, Ljavax/net/ssl/SSLHandshakeException;

    .line 361
    .end local p0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-object p0

    .restart local p0    # "e":Ljava/lang/Throwable;
    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljavax/net/ssl/SSLHandshakeException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLHandshakeException;

    move-object p0, v0

    goto :goto_0
.end method

.method private static unsignedByte(B)S
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 559
    and-int/lit16 v0, p0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static unsignedShort(S)I
    .locals 1
    .param p0, "s"    # S

    .prologue
    .line 563
    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method
