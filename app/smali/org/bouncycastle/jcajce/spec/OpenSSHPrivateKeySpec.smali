.class public Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;
.super Ljava/security/spec/EncodedKeySpec;


# instance fields
.field private final format:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    aget-byte v0, p1, v2

    const/16 v1, 0x30

    if-ne v0, v1, :cond_0

    const-string v0, "ASN.1"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    aget-byte v0, p1, v2

    const/16 v1, 0x6f

    if-ne v0, v1, :cond_1

    const-string v0, "OpenSSH"

    iput-object v0, p0, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown byte encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    return-object v0
.end method
