.class public final Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;
.super Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;


# static fields
.field public static final KEY_SIZE:I = 0x39


# instance fields
.field private final publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x39

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    new-array v0, v3, [B

    invoke-static {p1, v0}, Lorg/bouncycastle/util/io/Streams;->readFully(Ljava/io/InputStream;[B)I

    move-result v1

    if-eq v3, v1, :cond_0

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "EOF encountered in middle of Ed448 public key"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->parse([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'publicPoint\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->validate([B)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;-><init>(Z)V

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->parse([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    return-void
.end method

.method private static parse([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;
    .locals 2

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->validatePublicKeyPartialExport([BI)Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid public key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method private static validate([B)[B
    .locals 2

    array-length v0, p0

    const/16 v1, 0x39

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'buf\' must have length 57"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public encode([BI)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->encodePublicPoint(Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[BI)V

    return-void
.end method

.method public getEncoded()[B
    .locals 2

    const/16 v0, 0x39

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->encode([BI)V

    return-object v0
.end method

.method public verify(I[B[BII[BI)Z
    .locals 7

    const/16 v1, 0xff

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "algorithm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'ctx\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p2

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-object v0, p6

    move v1, p7

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->verify([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[B[BII)Z

    move-result v0

    :goto_0
    return v0

    :pswitch_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'ctx\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    array-length v0, p2

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ctx"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0x40

    if-eq v0, p5, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "msgLen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v2, p0, Lorg/bouncycastle/crypto/params/Ed448PublicKeyParameters;->publicPoint:Lorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;

    move-object v0, p6

    move v1, p7

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->verifyPrehash([BILorg/bouncycastle/math/ec/rfc8032/Ed448$PublicPoint;[B[BI)Z

    move-result v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
