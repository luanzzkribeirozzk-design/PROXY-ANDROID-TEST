.class public final Lorg/conscrypt/NativeCrypto;
.super Ljava/lang/Object;
.source "NativeCrypto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;,
        Lorg/conscrypt/NativeCrypto$Range;
    }
.end annotation


# static fields
.field static final DEFAULT_PROTOCOLS:[Ljava/lang/String;

.field static final DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

.field static final DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

.field static final EXTENSION_TYPE_CRITICAL:I = 0x1

.field static final EXTENSION_TYPE_NON_CRITICAL:I = 0x0

.field static final GN_STACK_ISSUER_ALT_NAME:I = 0x2

.field static final GN_STACK_SUBJECT_ALT_NAME:I = 0x1

.field private static final HAS_AES_HARDWARE:Z

.field static final OBSOLETE_PROTOCOL_SSLV3:Ljava/lang/String; = "SSLv3"

.field static final PKCS7_CERTS:I = 0x1

.field static final PKCS7_CRLS:I = 0x2

.field private static final SUPPORTED_LEGACY_CIPHER_SUITES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_PROTOCOLS:[Ljava/lang/String;

.field private static final SUPPORTED_PROTOCOL_TLSV1:Ljava/lang/String; = "TLSv1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_1:Ljava/lang/String; = "TLSv1.1"

.field private static final SUPPORTED_PROTOCOL_TLSV1_2:Ljava/lang/String; = "TLSv1.2"

.field static final SUPPORTED_PROTOCOL_TLSV1_3:Ljava/lang/String; = "TLSv1.3"

.field private static final SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

.field static final SUPPORTED_TLS_1_2_CIPHER_SUITES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

.field static final SUPPORTED_TLS_1_3_CIPHER_SUITES_SET:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final TLSV11_PROTOCOLS:[Ljava/lang/String;

.field static final TLSV12_PROTOCOLS:[Ljava/lang/String;

.field static final TLSV13_PROTOCOLS:[Ljava/lang/String;

.field static final TLSV1_PROTOCOLS:[Ljava/lang/String;

.field static final TLS_EMPTY_RENEGOTIATION_INFO_SCSV:Ljava/lang/String; = "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

.field private static final TLS_FALLBACK_SCSV:Ljava/lang/String; = "TLS_FALLBACK_SCSV"

.field private static final loadError:Ljava/lang/UnsatisfiedLinkError;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 62
    const/4 v2, 0x0

    .line 64
    .local v2, "error":Ljava/lang/UnsatisfiedLinkError;
    :try_start_0
    invoke-static {}, Lorg/conscrypt/NativeCryptoJni;->init()V

    .line 65
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->clinit()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    sput-object v2, Lorg/conscrypt/NativeCrypto;->loadError:Ljava/lang/UnsatisfiedLinkError;

    .line 727
    new-array v6, v12, [Ljava/lang/String;

    const-string v9, "TLS_AES_128_GCM_SHA256"

    aput-object v9, v6, v8

    const-string v9, "TLS_AES_256_GCM_SHA384"

    aput-object v9, v6, v7

    const-string v9, "TLS_CHACHA20_POLY1305_SHA256"

    aput-object v9, v6, v11

    sput-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    .line 735
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 739
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    sput-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_LEGACY_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 741
    new-instance v6, Ljava/util/HashSet;

    sget-object v9, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    .line 742
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-direct {v6, v9}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES_SET:Ljava/util/Set;

    .line 791
    sget-object v6, Lorg/conscrypt/NativeCrypto;->loadError:Ljava/lang/UnsatisfiedLinkError;

    if-nez v6, :cond_3

    .line 794
    const-string v6, "ALL:!DHE"

    invoke-static {v6}, Lorg/conscrypt/NativeCrypto;->get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 798
    .local v0, "allCipherSuites":[Ljava/lang/String;
    array-length v4, v0

    .line 799
    .local v4, "size":I
    rem-int/lit8 v6, v4, 0x2

    if-eqz v6, :cond_0

    .line 800
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Invalid cipher list returned by get_cipher_names"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 66
    .end local v0    # "allCipherSuites":[Ljava/lang/String;
    .end local v4    # "size":I
    :catch_0
    move-exception v5

    .line 69
    .local v5, "t":Ljava/lang/UnsatisfiedLinkError;
    move-object v2, v5

    goto :goto_0

    .line 803
    .end local v5    # "t":Ljava/lang/UnsatisfiedLinkError;
    .restart local v0    # "allCipherSuites":[Ljava/lang/String;
    .restart local v4    # "size":I
    :cond_0
    div-int/lit8 v6, v4, 0x2

    add-int/lit8 v6, v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    sput-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    .line 804
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 805
    aget-object v6, v0, v3

    invoke-static {v6}, Lorg/conscrypt/NativeCrypto;->cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 806
    .local v1, "cipherSuite":Ljava/lang/String;
    sget-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    div-int/lit8 v9, v3, 0x2

    aput-object v1, v6, v9

    .line 807
    sget-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES_SET:Ljava/util/Set;

    invoke-interface {v6, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 809
    sget-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_LEGACY_CIPHER_SUITES_SET:Ljava/util/Set;

    add-int/lit8 v9, v3, 0x1

    aget-object v9, v0, v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 804
    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 811
    .end local v1    # "cipherSuite":Ljava/lang/String;
    :cond_1
    sget-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    div-int/lit8 v9, v4, 0x2

    const-string v10, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    aput-object v10, v6, v9

    .line 812
    sget-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    div-int/lit8 v9, v4, 0x2

    add-int/lit8 v9, v9, 0x1

    const-string v10, "TLS_FALLBACK_SCSV"

    aput-object v10, v6, v9

    .line 814
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_has_aes_hardware()I

    move-result v6

    if-ne v6, v7, :cond_2

    move v6, v7

    :goto_2
    sput-boolean v6, Lorg/conscrypt/NativeCrypto;->HAS_AES_HARDWARE:Z

    .line 848
    .end local v0    # "allCipherSuites":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :goto_3
    sget-boolean v6, Lorg/conscrypt/NativeCrypto;->HAS_AES_HARDWARE:Z

    if-eqz v6, :cond_4

    .line 849
    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/String;

    const-string v9, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v9, v6, v8

    const-string v9, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v9, v6, v7

    const-string v9, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v9, v6, v11

    const-string v9, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v9, v6, v12

    const-string v9, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v9, v6, v13

    const/4 v9, 0x5

    const-string v10, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v10, v6, v9

    const/4 v9, 0x6

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v10, v6, v9

    const/4 v9, 0x7

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v10, v6, v9

    const/16 v9, 0x8

    const-string v10, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v10, v6, v9

    const/16 v9, 0x9

    const-string v10, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v10, v6, v9

    const/16 v9, 0xa

    const-string v10, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v10, v6, v9

    const/16 v9, 0xb

    const-string v10, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v10, v6, v9

    const/16 v9, 0xc

    const-string v10, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v10, v6, v9

    const/16 v9, 0xd

    const-string v10, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v10, v6, v9

    .line 865
    :goto_4
    sput-object v6, Lorg/conscrypt/NativeCrypto;->DEFAULT_X509_CIPHER_SUITES:[Ljava/lang/String;

    .line 883
    const/4 v6, 0x5

    new-array v6, v6, [Ljava/lang/String;

    const-string v9, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v9, v6, v8

    const-string v9, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA"

    aput-object v9, v6, v7

    const-string v9, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA"

    aput-object v9, v6, v11

    const-string v9, "TLS_PSK_WITH_AES_128_CBC_SHA"

    aput-object v9, v6, v12

    const-string v9, "TLS_PSK_WITH_AES_256_CBC_SHA"

    aput-object v9, v6, v13

    sput-object v6, Lorg/conscrypt/NativeCrypto;->DEFAULT_PSK_CIPHER_SUITES:[Ljava/lang/String;

    .line 954
    new-array v6, v13, [Ljava/lang/String;

    const-string v9, "TLSv1"

    aput-object v9, v6, v8

    const-string v9, "TLSv1.1"

    aput-object v9, v6, v7

    const-string v9, "TLSv1.2"

    aput-object v9, v6, v11

    const-string v9, "TLSv1.3"

    aput-object v9, v6, v12

    sput-object v6, Lorg/conscrypt/NativeCrypto;->TLSV13_PROTOCOLS:[Ljava/lang/String;

    .line 962
    new-array v6, v12, [Ljava/lang/String;

    const-string v9, "TLSv1"

    aput-object v9, v6, v8

    const-string v9, "TLSv1.1"

    aput-object v9, v6, v7

    const-string v9, "TLSv1.2"

    aput-object v9, v6, v11

    sput-object v6, Lorg/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    .line 969
    sget-object v6, Lorg/conscrypt/NativeCrypto;->TLSV12_PROTOCOLS:[Ljava/lang/String;

    sput-object v6, Lorg/conscrypt/NativeCrypto;->TLSV11_PROTOCOLS:[Ljava/lang/String;

    .line 972
    sget-object v6, Lorg/conscrypt/NativeCrypto;->TLSV11_PROTOCOLS:[Ljava/lang/String;

    sput-object v6, Lorg/conscrypt/NativeCrypto;->TLSV1_PROTOCOLS:[Ljava/lang/String;

    .line 974
    sget-object v6, Lorg/conscrypt/NativeCrypto;->TLSV13_PROTOCOLS:[Ljava/lang/String;

    sput-object v6, Lorg/conscrypt/NativeCrypto;->DEFAULT_PROTOCOLS:[Ljava/lang/String;

    .line 975
    new-array v6, v13, [Ljava/lang/String;

    const-string v9, "TLSv1"

    aput-object v9, v6, v8

    const-string v8, "TLSv1.1"

    aput-object v8, v6, v7

    const-string v7, "TLSv1.2"

    aput-object v7, v6, v11

    const-string v7, "TLSv1.3"

    aput-object v7, v6, v12

    sput-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    return-void

    .restart local v0    # "allCipherSuites":[Ljava/lang/String;
    .restart local v3    # "i":I
    .restart local v4    # "size":I
    :cond_2
    move v6, v8

    .line 814
    goto/16 :goto_2

    .line 816
    .end local v0    # "allCipherSuites":[Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_3
    sput-boolean v8, Lorg/conscrypt/NativeCrypto;->HAS_AES_HARDWARE:Z

    .line 817
    new-array v6, v8, [Ljava/lang/String;

    sput-object v6, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    goto/16 :goto_3

    .line 865
    :cond_4
    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/String;

    const-string v9, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v9, v6, v8

    const-string v9, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256"

    aput-object v9, v6, v7

    const-string v9, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384"

    aput-object v9, v6, v11

    const-string v9, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256"

    aput-object v9, v6, v12

    const-string v9, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v9, v6, v13

    const/4 v9, 0x5

    const-string v10, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v10, v6, v9

    const/4 v9, 0x6

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA"

    aput-object v10, v6, v9

    const/4 v9, 0x7

    const-string v10, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA"

    aput-object v10, v6, v9

    const/16 v9, 0x8

    const-string v10, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA"

    aput-object v10, v6, v9

    const/16 v9, 0x9

    const-string v10, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA"

    aput-object v10, v6, v9

    const/16 v9, 0xa

    const-string v10, "TLS_RSA_WITH_AES_128_GCM_SHA256"

    aput-object v10, v6, v9

    const/16 v9, 0xb

    const-string v10, "TLS_RSA_WITH_AES_256_GCM_SHA384"

    aput-object v10, v6, v9

    const/16 v9, 0xc

    const-string v10, "TLS_RSA_WITH_AES_128_CBC_SHA"

    aput-object v10, v6, v9

    const/16 v9, 0xd

    const-string v10, "TLS_RSA_WITH_AES_256_CBC_SHA"

    aput-object v10, v6, v9

    goto/16 :goto_4
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native ASN1_TIME_to_Calendar(JLjava/util/Calendar;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native ASN1_seq_pack_X509([J)[B
.end method

.method static native ASN1_seq_unpack_X509_bio(J)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native BIO_free_all(J)V
.end method

.method static native BIO_read(J[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native BIO_write(J[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native ECDH_compute_key([BILorg/conscrypt/NativeRef$EVP_PKEY;Lorg/conscrypt/NativeRef$EVP_PKEY;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native ECDSA_sign([B[BLorg/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native ECDSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native ECDSA_verify([B[BLorg/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native EC_GROUP_clear_free(J)V
.end method

.method static native EC_GROUP_get_cofactor(Lorg/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method static native EC_GROUP_get_curve(Lorg/conscrypt/NativeRef$EC_GROUP;)[[B
.end method

.method static native EC_GROUP_get_curve_name(Lorg/conscrypt/NativeRef$EC_GROUP;)Ljava/lang/String;
.end method

.method static native EC_GROUP_get_degree(Lorg/conscrypt/NativeRef$EC_GROUP;)I
.end method

.method static native EC_GROUP_get_generator(Lorg/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method static native EC_GROUP_get_order(Lorg/conscrypt/NativeRef$EC_GROUP;)[B
.end method

.method static native EC_GROUP_new_arbitrary([B[B[B[B[B[BI)J
.end method

.method static native EC_GROUP_new_by_curve_name(Ljava/lang/String;)J
.end method

.method static native EC_KEY_generate_key(Lorg/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method static native EC_KEY_get1_group(Lorg/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native EC_KEY_get_private_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method static native EC_KEY_get_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native EC_KEY_marshal_curve_name(Lorg/conscrypt/NativeRef$EC_GROUP;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native EC_KEY_parse_curve_name([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native EC_POINT_clear_free(J)V
.end method

.method static native EC_POINT_get_affine_coordinates(Lorg/conscrypt/NativeRef$EC_GROUP;Lorg/conscrypt/NativeRef$EC_POINT;)[[B
.end method

.method static native EC_POINT_new(Lorg/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method static native EC_POINT_set_affine_coordinates(Lorg/conscrypt/NativeRef$EC_GROUP;Lorg/conscrypt/NativeRef$EC_POINT;[B[B)V
.end method

.method static native ENGINE_SSL_do_handshake(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native ENGINE_SSL_force_read(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native ENGINE_SSL_read_BIO_direct(JLorg/conscrypt/NativeSsl;JJILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native ENGINE_SSL_read_BIO_heap(JLorg/conscrypt/NativeSsl;J[BIILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native ENGINE_SSL_read_direct(JLorg/conscrypt/NativeSsl;JILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method static native ENGINE_SSL_shutdown(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native ENGINE_SSL_write_BIO_direct(JLorg/conscrypt/NativeSsl;JJILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native ENGINE_SSL_write_BIO_heap(JLorg/conscrypt/NativeSsl;J[BIILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native ENGINE_SSL_write_direct(JLorg/conscrypt/NativeSsl;JILorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native EVP_AEAD_CTX_open(J[BI[BI[B[BII[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native EVP_AEAD_CTX_open_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native EVP_AEAD_CTX_seal(J[BI[BI[B[BII[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native EVP_AEAD_CTX_seal_buf(J[BILjava/nio/ByteBuffer;[BLjava/nio/ByteBuffer;[B)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native EVP_AEAD_max_overhead(J)I
.end method

.method static native EVP_AEAD_nonce_length(J)I
.end method

.method static native EVP_CIPHER_CTX_block_size(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)I
.end method

.method static native EVP_CIPHER_CTX_free(J)V
.end method

.method static native EVP_CIPHER_CTX_new()J
.end method

.method static native EVP_CIPHER_CTX_set_key_length(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;I)V
.end method

.method static native EVP_CIPHER_CTX_set_padding(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;Z)V
.end method

.method static native EVP_CIPHER_iv_length(J)I
.end method

.method static native EVP_CipherFinal_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method static native EVP_CipherInit_ex(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;J[B[BZ)V
.end method

.method static native EVP_CipherUpdate(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;[BI[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native EVP_DigestFinal_ex(Lorg/conscrypt/NativeRef$EVP_MD_CTX;[BI)I
.end method

.method static native EVP_DigestInit_ex(Lorg/conscrypt/NativeRef$EVP_MD_CTX;J)I
.end method

.method static native EVP_DigestSignFinal(Lorg/conscrypt/NativeRef$EVP_MD_CTX;)[B
.end method

.method static native EVP_DigestSignInit(Lorg/conscrypt/NativeRef$EVP_MD_CTX;JLorg/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native EVP_DigestSignUpdate(Lorg/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method static native EVP_DigestSignUpdateDirect(Lorg/conscrypt/NativeRef$EVP_MD_CTX;JI)V
.end method

.method static native EVP_DigestUpdate(Lorg/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method static native EVP_DigestUpdateDirect(Lorg/conscrypt/NativeRef$EVP_MD_CTX;JI)V
.end method

.method static native EVP_DigestVerifyFinal(Lorg/conscrypt/NativeRef$EVP_MD_CTX;[BII)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method static native EVP_DigestVerifyInit(Lorg/conscrypt/NativeRef$EVP_MD_CTX;JLorg/conscrypt/NativeRef$EVP_PKEY;)J
.end method

.method static native EVP_DigestVerifyUpdate(Lorg/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
.end method

.method static native EVP_DigestVerifyUpdateDirect(Lorg/conscrypt/NativeRef$EVP_MD_CTX;JI)V
.end method

.method static native EVP_MD_CTX_cleanup(Lorg/conscrypt/NativeRef$EVP_MD_CTX;)V
.end method

.method static native EVP_MD_CTX_copy_ex(Lorg/conscrypt/NativeRef$EVP_MD_CTX;Lorg/conscrypt/NativeRef$EVP_MD_CTX;)I
.end method

.method static native EVP_MD_CTX_create()J
.end method

.method static native EVP_MD_CTX_destroy(J)V
.end method

.method static native EVP_MD_size(J)I
.end method

.method static native EVP_PKEY_CTX_free(J)V
.end method

.method static native EVP_PKEY_CTX_set_rsa_mgf1_md(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native EVP_PKEY_CTX_set_rsa_oaep_label(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native EVP_PKEY_CTX_set_rsa_oaep_md(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native EVP_PKEY_CTX_set_rsa_padding(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native EVP_PKEY_CTX_set_rsa_pss_saltlen(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation
.end method

.method static native EVP_PKEY_cmp(Lorg/conscrypt/NativeRef$EVP_PKEY;Lorg/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native EVP_PKEY_decrypt(Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native EVP_PKEY_decrypt_init(Lorg/conscrypt/NativeRef$EVP_PKEY;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method static native EVP_PKEY_encrypt(Lorg/conscrypt/NativeRef$EVP_PKEY_CTX;[BI[BII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native EVP_PKEY_encrypt_init(Lorg/conscrypt/NativeRef$EVP_PKEY;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method static native EVP_PKEY_free(J)V
.end method

.method static native EVP_PKEY_new_EC_KEY(Lorg/conscrypt/NativeRef$EC_GROUP;Lorg/conscrypt/NativeRef$EC_POINT;[B)J
.end method

.method static native EVP_PKEY_new_RSA([B[B[B[B[B[B[B[B)J
.end method

.method static native EVP_PKEY_print_params(Lorg/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;
.end method

.method static native EVP_PKEY_print_public(Lorg/conscrypt/NativeRef$EVP_PKEY;)Ljava/lang/String;
.end method

.method static native EVP_PKEY_type(Lorg/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native EVP_aead_aes_128_gcm()J
.end method

.method static native EVP_aead_aes_128_gcm_siv()J
.end method

.method static native EVP_aead_aes_256_gcm()J
.end method

.method static native EVP_aead_aes_256_gcm_siv()J
.end method

.method static native EVP_aead_chacha20_poly1305()J
.end method

.method static native EVP_get_cipherbyname(Ljava/lang/String;)J
.end method

.method static native EVP_get_digestbyname(Ljava/lang/String;)J
.end method

.method static native EVP_has_aes_hardware()I
.end method

.method static native EVP_marshal_private_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method static native EVP_marshal_public_key(Lorg/conscrypt/NativeRef$EVP_PKEY;)[B
.end method

.method static native EVP_parse_private_key([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native EVP_parse_public_key([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native HMAC_CTX_free(J)V
.end method

.method static native HMAC_CTX_new()J
.end method

.method static native HMAC_Final(Lorg/conscrypt/NativeRef$HMAC_CTX;)[B
.end method

.method static native HMAC_Init_ex(Lorg/conscrypt/NativeRef$HMAC_CTX;[BJ)V
.end method

.method static native HMAC_Update(Lorg/conscrypt/NativeRef$HMAC_CTX;[BII)V
.end method

.method static native HMAC_UpdateDirect(Lorg/conscrypt/NativeRef$HMAC_CTX;JI)V
.end method

.method static native PEM_read_bio_PKCS7(JI)[J
.end method

.method static native PEM_read_bio_PUBKEY(J)J
.end method

.method static native PEM_read_bio_PrivateKey(J)J
.end method

.method static native PEM_read_bio_X509(J)J
.end method

.method static native PEM_read_bio_X509_CRL(J)J
.end method

.method static native RAND_bytes([B)V
.end method

.method static native RSA_generate_key_ex(I[B)J
.end method

.method static native RSA_private_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method static native RSA_private_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I
.end method

.method static native RSA_public_decrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;
        }
    .end annotation
.end method

.method static native RSA_public_encrypt(I[B[BLorg/conscrypt/NativeRef$EVP_PKEY;I)I
.end method

.method static native RSA_size(Lorg/conscrypt/NativeRef$EVP_PKEY;)I
.end method

.method static native SSL_BIO_new(JLorg/conscrypt/NativeSsl;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_CIPHER_get_kx_name(J)Ljava/lang/String;
.end method

.method static native SSL_CTX_free(JLorg/conscrypt/AbstractSessionContext;)V
.end method

.method static native SSL_CTX_new()J
.end method

.method static native SSL_CTX_set_session_id_context(JLorg/conscrypt/AbstractSessionContext;[B)V
.end method

.method static native SSL_CTX_set_timeout(JLorg/conscrypt/AbstractSessionContext;J)J
.end method

.method static native SSL_SESSION_cipher(J)Ljava/lang/String;
.end method

.method static native SSL_SESSION_free(J)V
.end method

.method static native SSL_SESSION_get_time(J)J
.end method

.method static native SSL_SESSION_get_timeout(J)J
.end method

.method static native SSL_SESSION_get_version(J)Ljava/lang/String;
.end method

.method static native SSL_SESSION_session_id(J)[B
.end method

.method static native SSL_SESSION_should_be_single_use(J)Z
.end method

.method static native SSL_SESSION_up_ref(J)V
.end method

.method static native SSL_accept_renegotiations(JLorg/conscrypt/NativeSsl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_clear_error()V
.end method

.method static native SSL_clear_mode(JLorg/conscrypt/NativeSsl;J)J
.end method

.method static native SSL_clear_options(JLorg/conscrypt/NativeSsl;J)J
.end method

.method static native SSL_do_handshake(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;,
            Ljava/net/SocketTimeoutException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation
.end method

.method static native SSL_enable_ocsp_stapling(JLorg/conscrypt/NativeSsl;)V
.end method

.method static native SSL_enable_signed_cert_timestamps(JLorg/conscrypt/NativeSsl;)V
.end method

.method static native SSL_enable_tls_channel_id(JLorg/conscrypt/NativeSsl;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_export_keying_material(JLorg/conscrypt/NativeSsl;[B[BI)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_free(JLorg/conscrypt/NativeSsl;)V
.end method

.method static native SSL_get0_peer_certificates(JLorg/conscrypt/NativeSsl;)[[B
.end method

.method static native SSL_get1_session(JLorg/conscrypt/NativeSsl;)J
.end method

.method static native SSL_get_ciphers(JLorg/conscrypt/NativeSsl;)[J
.end method

.method public static native SSL_get_current_cipher(JLorg/conscrypt/NativeSsl;)Ljava/lang/String;
.end method

.method static native SSL_get_error(JLorg/conscrypt/NativeSsl;I)I
.end method

.method static native SSL_get_mode(JLorg/conscrypt/NativeSsl;)J
.end method

.method static native SSL_get_ocsp_response(JLorg/conscrypt/NativeSsl;)[B
.end method

.method static native SSL_get_options(JLorg/conscrypt/NativeSsl;)J
.end method

.method static native SSL_get_servername(JLorg/conscrypt/NativeSsl;)Ljava/lang/String;
.end method

.method static native SSL_get_shutdown(JLorg/conscrypt/NativeSsl;)I
.end method

.method static native SSL_get_signature_algorithm_key_type(I)I
.end method

.method static native SSL_get_signed_cert_timestamp_list(JLorg/conscrypt/NativeSsl;)[B
.end method

.method static native SSL_get_time(JLorg/conscrypt/NativeSsl;)J
.end method

.method static native SSL_get_timeout(JLorg/conscrypt/NativeSsl;)J
.end method

.method static native SSL_get_tls_channel_id(JLorg/conscrypt/NativeSsl;)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_get_tls_unique(JLorg/conscrypt/NativeSsl;)[B
.end method

.method public static native SSL_get_version(JLorg/conscrypt/NativeSsl;)Ljava/lang/String;
.end method

.method static native SSL_interrupt(JLorg/conscrypt/NativeSsl;)V
.end method

.method static native SSL_max_seal_overhead(JLorg/conscrypt/NativeSsl;)I
.end method

.method static native SSL_new(JLorg/conscrypt/AbstractSessionContext;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_pending_readable_bytes(JLorg/conscrypt/NativeSsl;)I
.end method

.method static native SSL_pending_written_bytes_in_BIO(J)I
.end method

.method static native SSL_read(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native SSL_session_id(JLorg/conscrypt/NativeSsl;)[B
.end method

.method static native SSL_session_reused(JLorg/conscrypt/NativeSsl;)Z
.end method

.method static native SSL_set1_tls_channel_id(JLorg/conscrypt/NativeSsl;Lorg/conscrypt/NativeRef$EVP_PKEY;)V
.end method

.method static native SSL_set_accept_state(JLorg/conscrypt/NativeSsl;)V
.end method

.method static native SSL_set_cipher_lists(JLorg/conscrypt/NativeSsl;[Ljava/lang/String;)V
.end method

.method static native SSL_set_client_CA_list(JLorg/conscrypt/NativeSsl;[[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_set_connect_state(JLorg/conscrypt/NativeSsl;)V
.end method

.method static native SSL_set_mode(JLorg/conscrypt/NativeSsl;J)J
.end method

.method static native SSL_set_ocsp_response(JLorg/conscrypt/NativeSsl;[B)V
.end method

.method static native SSL_set_options(JLorg/conscrypt/NativeSsl;J)J
.end method

.method static native SSL_set_protocol_versions(JLorg/conscrypt/NativeSsl;II)I
.end method

.method static native SSL_set_session(JLorg/conscrypt/NativeSsl;J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_set_session_creation_enabled(JLorg/conscrypt/NativeSsl;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_set_signed_cert_timestamp_list(JLorg/conscrypt/NativeSsl;[B)V
.end method

.method static native SSL_set_timeout(JLorg/conscrypt/NativeSsl;J)J
.end method

.method static native SSL_set_tlsext_host_name(JLorg/conscrypt/NativeSsl;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_set_verify(JLorg/conscrypt/NativeSsl;I)V
.end method

.method static native SSL_shutdown(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native SSL_use_psk_identity_hint(JLorg/conscrypt/NativeSsl;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native SSL_write(JLorg/conscrypt/NativeSsl;Ljava/io/FileDescriptor;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;[BIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native X509_CRL_free(JLorg/conscrypt/OpenSSLX509CRL;)V
.end method

.method static native X509_CRL_get0_by_cert(JLorg/conscrypt/OpenSSLX509CRL;JLorg/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native X509_CRL_get0_by_serial(JLorg/conscrypt/OpenSSLX509CRL;[B)J
.end method

.method static native X509_CRL_get_REVOKED(JLorg/conscrypt/OpenSSLX509CRL;)[J
.end method

.method static native X509_CRL_get_ext(JLorg/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)J
.end method

.method static native X509_CRL_get_ext_oid(JLorg/conscrypt/OpenSSLX509CRL;Ljava/lang/String;)[B
.end method

.method static native X509_CRL_get_issuer_name(JLorg/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native X509_CRL_get_lastUpdate(JLorg/conscrypt/OpenSSLX509CRL;)J
.end method

.method static native X509_CRL_get_nextUpdate(JLorg/conscrypt/OpenSSLX509CRL;)J
.end method

.method static native X509_CRL_get_version(JLorg/conscrypt/OpenSSLX509CRL;)J
.end method

.method static native X509_CRL_print(JJLorg/conscrypt/OpenSSLX509CRL;)V
.end method

.method static native X509_CRL_verify(JLorg/conscrypt/OpenSSLX509CRL;Lorg/conscrypt/NativeRef$EVP_PKEY;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/SignatureException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation
.end method

.method static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 370
    const-string v0, "SHA1"

    invoke-static {p0, v0}, Lorg/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I
    .locals 6
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;
    .param p1, "algorithm"    # Ljava/lang/String;

    .prologue
    .line 378
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    invoke-virtual {p0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 379
    .local v0, "digest":[B
    const/4 v2, 0x0

    .line 380
    .local v2, "offset":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .local v3, "offset":I
    aget-byte v4, v0, v2

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x0

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "offset":I
    .restart local v2    # "offset":I
    aget-byte v5, v0, v3

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "offset":I
    .restart local v3    # "offset":I
    aget-byte v5, v0, v2

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    aget-byte v5, v0, v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    return v4

    .line 382
    .end local v0    # "digest":[B
    .end local v3    # "offset":I
    :catch_0
    move-exception v1

    .line 383
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4
.end method

.method public static X509_NAME_hash_old(Ljavax/security/auth/x500/X500Principal;)I
    .locals 1
    .param p0, "principal"    # Ljavax/security/auth/x500/X500Principal;

    .prologue
    .line 374
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lorg/conscrypt/NativeCrypto;->X509_NAME_hash(Ljavax/security/auth/x500/X500Principal;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static native X509_REVOKED_dup(J)J
.end method

.method static native X509_REVOKED_get_ext(JLjava/lang/String;)J
.end method

.method static native X509_REVOKED_get_ext_oid(JLjava/lang/String;)[B
.end method

.method static native X509_REVOKED_get_serialNumber(J)[B
.end method

.method static native X509_REVOKED_print(JJ)V
.end method

.method static native X509_check_issued(JLorg/conscrypt/OpenSSLX509Certificate;JLorg/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native X509_cmp(JLorg/conscrypt/OpenSSLX509Certificate;JLorg/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native X509_delete_ext(JLorg/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)V
.end method

.method static native X509_dup(JLorg/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native X509_free(JLorg/conscrypt/OpenSSLX509Certificate;)V
.end method

.method static native X509_get_ext_oid(JLorg/conscrypt/OpenSSLX509Certificate;Ljava/lang/String;)[B
.end method

.method static native X509_get_issuer_name(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native X509_get_notAfter(JLorg/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native X509_get_notBefore(JLorg/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native X509_get_pubkey(JLorg/conscrypt/OpenSSLX509Certificate;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method static native X509_get_serialNumber(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native X509_get_subject_name(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native X509_get_version(JLorg/conscrypt/OpenSSLX509Certificate;)J
.end method

.method static native X509_print_ex(JJLorg/conscrypt/OpenSSLX509Certificate;JJ)V
.end method

.method static native X509_supported_extension(J)I
.end method

.method static native X509_verify(JLorg/conscrypt/OpenSSLX509Certificate;Lorg/conscrypt/NativeRef$EVP_PKEY;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation
.end method

.method static native asn1_read_free(J)V
.end method

.method static native asn1_read_init([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_read_is_empty(J)Z
.end method

.method static native asn1_read_next_tag_is(JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_read_null(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_read_octetstring(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_read_oid(J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_read_sequence(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_read_tagged(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_read_uint64(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_write_cleanup(J)V
.end method

.method static native asn1_write_finish(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_write_flush(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_write_free(J)V
.end method

.method static native asn1_write_init()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_write_null(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_write_octetstring(J[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_write_oid(JLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_write_sequence(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_write_tag(JI)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native asn1_write_uint64(JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native chacha20_encrypt_decrypt([BI[BII[B[BI)V
.end method

.method static checkAvailability()V
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lorg/conscrypt/NativeCrypto;->loadError:Ljava/lang/UnsatisfiedLinkError;

    if-eqz v0, :cond_0

    .line 82
    sget-object v0, Lorg/conscrypt/NativeCrypto;->loadError:Ljava/lang/UnsatisfiedLinkError;

    throw v0

    .line 84
    :cond_0
    return-void
.end method

.method static checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "cipherSuites"    # [Ljava/lang/String;

    .prologue
    .line 1095
    if-nez p0, :cond_0

    .line 1096
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "cipherSuites == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1099
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_4

    .line 1100
    aget-object v1, p0, v0

    if-nez v1, :cond_1

    .line 1101
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cipherSuites["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] == null"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1103
    :cond_1
    aget-object v1, p0, v0

    const-string v2, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    aget-object v1, p0, v0

    const-string v2, "TLS_FALLBACK_SCSV"

    .line 1104
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1099
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1107
    :cond_3
    sget-object v1, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES_SET:Ljava/util/Set;

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1113
    sget-object v1, Lorg/conscrypt/NativeCrypto;->SUPPORTED_LEGACY_CIPHER_SUITES_SET:Ljava/util/Set;

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1117
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cipherSuite "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1120
    :cond_4
    return-object p0
.end method

.method static checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 1043
    if-nez p0, :cond_0

    .line 1044
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "protocols == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1046
    :cond_0
    array-length v2, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v0, p0, v1

    .line 1047
    .local v0, "protocol":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 1048
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "protocols contains null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1050
    :cond_1
    const-string v3, "TLSv1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "TLSv1.1"

    .line 1051
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "TLSv1.2"

    .line 1052
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "TLSv1.3"

    .line 1053
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "SSLv3"

    .line 1054
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1055
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "protocol "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not supported"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1046
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1058
    .end local v0    # "protocol":Ljava/lang/String;
    :cond_3
    return-object p0
.end method

.method static cipherSuiteFromJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "javaCipherSuite"    # Ljava/lang/String;

    .prologue
    .line 774
    const-string v0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    const-string p0, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 777
    .end local p0    # "javaCipherSuite":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method static cipherSuiteToJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "cipherSuite"    # Ljava/lang/String;

    .prologue
    .line 767
    const-string v0, "TLS_RSA_WITH_3DES_EDE_CBC_SHA"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 768
    const-string p0, "SSL_RSA_WITH_3DES_EDE_CBC_SHA"

    .line 770
    .end local p0    # "cipherSuite":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private static native clinit()V
.end method

.method static native create_BIO_InputStream(Lorg/conscrypt/OpenSSLBIOInputStream;Z)J
.end method

.method static native create_BIO_OutputStream(Ljava/io/OutputStream;)J
.end method

.method static native d2i_PKCS7_bio(JI)[J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native d2i_SSL_SESSION([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native d2i_X509([B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method static native d2i_X509_CRL_bio(J)J
.end method

.method static native d2i_X509_bio(J)J
.end method

.method static native getApplicationProtocol(JLorg/conscrypt/NativeSsl;)[B
.end method

.method static native getDirectBufferAddress(Ljava/nio/Buffer;)J
.end method

.method static native getECPrivateKeyWrapper(Ljava/security/PrivateKey;Lorg/conscrypt/NativeRef$EC_GROUP;)J
.end method

.method private static getProtocolConstant(Ljava/lang/String;)I
    .locals 3
    .param p0, "protocol"    # Ljava/lang/String;

    .prologue
    .line 1029
    const-string v0, "TLSv1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    const/16 v0, 0x301

    .line 1036
    :goto_0
    return v0

    .line 1031
    :cond_0
    const-string v0, "TLSv1.1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1032
    const/16 v0, 0x302

    goto :goto_0

    .line 1033
    :cond_1
    const-string v0, "TLSv1.2"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1034
    const/16 v0, 0x303

    goto :goto_0

    .line 1035
    :cond_2
    const-string v0, "TLSv1.3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1036
    const/16 v0, 0x304

    goto :goto_0

    .line 1038
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown protocol encountered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static getProtocolRange([Ljava/lang/String;)Lorg/conscrypt/NativeCrypto$Range;
    .locals 7
    .param p0, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 1001
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1002
    .local v4, "protocolsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 1003
    .local v2, "min":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1004
    .local v1, "max":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v5, Lorg/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_3

    .line 1005
    sget-object v5, Lorg/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    aget-object v3, v5, v0

    .line 1006
    .local v3, "protocol":Ljava/lang/String;
    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1007
    if-nez v2, :cond_0

    .line 1008
    move-object v2, v3

    .line 1010
    :cond_0
    move-object v1, v3

    .line 1004
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1011
    :cond_2
    if-eqz v2, :cond_1

    .line 1015
    .end local v3    # "protocol":Ljava/lang/String;
    :cond_3
    if-eqz v2, :cond_4

    if-nez v1, :cond_5

    .line 1016
    :cond_4
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "No protocols enabled."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1018
    :cond_5
    new-instance v5, Lorg/conscrypt/NativeCrypto$Range;

    invoke-direct {v5, v2, v1}, Lorg/conscrypt/NativeCrypto$Range;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5
.end method

.method static native getRSAPrivateKeyWrapper(Ljava/security/PrivateKey;[B)J
.end method

.method static getSupportedCipherSuites()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 892
    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v0, 0x0

    sget-object v2, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_3_CIPHER_SUITES:[Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    sget-object v0, Lorg/conscrypt/NativeCrypto;->SUPPORTED_TLS_1_2_CIPHER_SUITES:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/conscrypt/SSLUtils;->concat([[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 983
    sget-object v0, Lorg/conscrypt/NativeCrypto;->SUPPORTED_PROTOCOLS:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method static native get_EVP_CIPHER_CTX_buf_len(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)I
.end method

.method static native get_EVP_CIPHER_CTX_final_used(Lorg/conscrypt/NativeRef$EVP_CIPHER_CTX;)Z
.end method

.method static native get_RSA_private_params(Lorg/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method static native get_RSA_public_params(Lorg/conscrypt/NativeRef$EVP_PKEY;)[[B
.end method

.method static native get_X509_CRL_crl_enc(JLorg/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native get_X509_CRL_ext_oids(JLorg/conscrypt/OpenSSLX509CRL;I)[Ljava/lang/String;
.end method

.method static native get_X509_CRL_sig_alg_oid(JLorg/conscrypt/OpenSSLX509CRL;)Ljava/lang/String;
.end method

.method static native get_X509_CRL_sig_alg_parameter(JLorg/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native get_X509_CRL_signature(JLorg/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native get_X509_GENERAL_NAME_stack(JLorg/conscrypt/OpenSSLX509Certificate;I)[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation
.end method

.method static native get_X509_REVOKED_ext_oids(JI)[Ljava/lang/String;
.end method

.method static native get_X509_REVOKED_revocationDate(J)J
.end method

.method static native get_X509_cert_info_enc(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native get_X509_ex_flags(JLorg/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native get_X509_ex_kusage(JLorg/conscrypt/OpenSSLX509Certificate;)[Z
.end method

.method static native get_X509_ex_pathlen(JLorg/conscrypt/OpenSSLX509Certificate;)I
.end method

.method static native get_X509_ex_xkusage(JLorg/conscrypt/OpenSSLX509Certificate;)[Ljava/lang/String;
.end method

.method static native get_X509_ext_oids(JLorg/conscrypt/OpenSSLX509Certificate;I)[Ljava/lang/String;
.end method

.method static native get_X509_issuerUID(JLorg/conscrypt/OpenSSLX509Certificate;)[Z
.end method

.method static native get_X509_pubkey_oid(JLorg/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;
.end method

.method static native get_X509_sig_alg_oid(JLorg/conscrypt/OpenSSLX509Certificate;)Ljava/lang/String;
.end method

.method static native get_X509_sig_alg_parameter(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native get_X509_signature(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native get_X509_subjectUID(JLorg/conscrypt/OpenSSLX509Certificate;)[Z
.end method

.method static native get_cipher_names(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static native get_ocsp_single_extension([BLjava/lang/String;JLorg/conscrypt/OpenSSLX509Certificate;JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native i2d_PKCS7([J)[B
.end method

.method static native i2d_SSL_SESSION(J)[B
.end method

.method static native i2d_X509(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native i2d_X509_CRL(JLorg/conscrypt/OpenSSLX509CRL;)[B
.end method

.method static native i2d_X509_PUBKEY(JLorg/conscrypt/OpenSSLX509Certificate;)[B
.end method

.method static native i2d_X509_REVOKED(J)[B
.end method

.method static native setApplicationProtocols(JLorg/conscrypt/NativeSsl;Z[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static setEnabledCipherSuites(JLorg/conscrypt/NativeSsl;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p0, "ssl"    # J
    .param p2, "ssl_holder"    # Lorg/conscrypt/NativeSsl;
    .param p3, "cipherSuites"    # [Ljava/lang/String;
    .param p4, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 1072
    invoke-static {p3}, Lorg/conscrypt/NativeCrypto;->checkEnabledCipherSuites([Ljava/lang/String;)[Ljava/lang/String;

    .line 1073
    invoke-static {p4}, Lorg/conscrypt/NativeCrypto;->getProtocolRange([Ljava/lang/String;)Lorg/conscrypt/NativeCrypto$Range;

    move-result-object v4

    iget-object v2, v4, Lorg/conscrypt/NativeCrypto$Range;->max:Ljava/lang/String;

    .line 1074
    .local v2, "maxProtocol":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1075
    .local v3, "opensslSuites":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p3

    if-ge v1, v4, :cond_3

    .line 1076
    aget-object v0, p3, v1

    .line 1077
    .local v0, "cipherSuite":Ljava/lang/String;
    const-string v4, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1075
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1083
    :cond_0
    const-string v4, "TLS_FALLBACK_SCSV"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "TLSv1"

    .line 1084
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "TLSv1.1"

    .line 1085
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1086
    :cond_1
    const-wide/16 v4, 0x400

    invoke-static {p0, p1, p2, v4, v5}, Lorg/conscrypt/NativeCrypto;->SSL_set_mode(JLorg/conscrypt/NativeSsl;J)J

    goto :goto_1

    .line 1089
    :cond_2
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->cipherSuiteFromJava(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1091
    .end local v0    # "cipherSuite":Ljava/lang/String;
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {p0, p1, p2, v4}, Lorg/conscrypt/NativeCrypto;->SSL_set_cipher_lists(JLorg/conscrypt/NativeSsl;[Ljava/lang/String;)V

    .line 1092
    return-void
.end method

.method static setEnabledProtocols(JLorg/conscrypt/NativeSsl;[Ljava/lang/String;)V
    .locals 4
    .param p0, "ssl"    # J
    .param p2, "ssl_holder"    # Lorg/conscrypt/NativeSsl;
    .param p3, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 1022
    invoke-static {p3}, Lorg/conscrypt/NativeCrypto;->checkEnabledProtocols([Ljava/lang/String;)[Ljava/lang/String;

    .line 1023
    invoke-static {p3}, Lorg/conscrypt/NativeCrypto;->getProtocolRange([Ljava/lang/String;)Lorg/conscrypt/NativeCrypto$Range;

    move-result-object v0

    .line 1024
    .local v0, "range":Lorg/conscrypt/NativeCrypto$Range;
    iget-object v1, v0, Lorg/conscrypt/NativeCrypto$Range;->min:Ljava/lang/String;

    .line 1025
    invoke-static {v1}, Lorg/conscrypt/NativeCrypto;->getProtocolConstant(Ljava/lang/String;)I

    move-result v1

    iget-object v2, v0, Lorg/conscrypt/NativeCrypto$Range;->max:Ljava/lang/String;

    invoke-static {v2}, Lorg/conscrypt/NativeCrypto;->getProtocolConstant(Ljava/lang/String;)I

    move-result v2

    .line 1024
    invoke-static {p0, p1, p2, v1, v2}, Lorg/conscrypt/NativeCrypto;->SSL_set_protocol_versions(JLorg/conscrypt/NativeSsl;II)I

    .line 1026
    return-void
.end method

.method static native setHasApplicationProtocolSelector(JLorg/conscrypt/NativeSsl;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method static native setLocalCertsAndPrivateKey(JLorg/conscrypt/NativeSsl;[[BLorg/conscrypt/NativeRef$EVP_PKEY;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation
.end method

.method static native set_SSL_psk_client_callback_enabled(JLorg/conscrypt/NativeSsl;Z)V
.end method

.method static native set_SSL_psk_server_callback_enabled(JLorg/conscrypt/NativeSsl;Z)V
.end method
