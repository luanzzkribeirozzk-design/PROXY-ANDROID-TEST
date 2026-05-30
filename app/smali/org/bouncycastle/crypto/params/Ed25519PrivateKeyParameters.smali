.class public final Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# static fields
.field public static final KEY_SIZE:I = 0x20

.field public static final SIGNATURE_SIZE:I = 0x40


# instance fields
.field private cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

.field private final data:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v1, 0x20

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of Ed25519 private key"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/security/SecureRandom;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->generatePrivateKey(Ljava/security/SecureRandom;[B)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->validate([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 3

    const/16 v2, 0x20

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    new-array v0, v2, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private static validate([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'buf\' must have length 32"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public encode([BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public generatePublicKey()Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;
    .locals 4

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->generatePublicKey([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;-><init>(Lorg/bouncycastle/math/ec/rfc8032/Ed25519$PublicPoint;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->cachedPublicKey:Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public sign(ILorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;[B[BII[BI)V
    .locals 8

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->sign(I[B[BII[BI)V

    return-void
.end method

.method public sign(I[B[BII[BI)V
    .locals 10

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->generatePublicKey()Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;

    move-result-object v0

    const/16 v1, 0x20

    new-array v2, v1, [B

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lorg/bouncycastle/crypto/params/Ed25519PublicKeyParameters;->encode([BI)V

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-eqz p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->sign([BI[BI[BII[BI)V

    :goto_0
    return-void

    :pswitch_1
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'ctx\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p2

    const/16 v1, 0xff

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->sign([BI[BI[B[BII[BI)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'ctx\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    array-length v0, p2

    const/16 v1, 0xff

    if-le v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/16 v0, 0x40

    if-eq v0, p5, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msgLen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed25519PrivateKeyParameters;->data:[B

    const/4 v1, 0x0

    const/4 v3, 0x0

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lorg/bouncycastle/math/ec/rfc8032/Ed25519;->signPrehash([BI[BI[B[BI[BI)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
