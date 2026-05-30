.class Lorg/bouncycastle/pqc/jcajce/provider/lms/DigestUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDigestResult(Lorg/bouncycastle/crypto/Digest;)[B
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    instance-of v1, p0, Lorg/bouncycastle/crypto/Xof;

    if-eqz v1, :cond_0

    check-cast p0, Lorg/bouncycastle/crypto/Xof;

    array-length v1, v0

    invoke-interface {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto :goto_0
.end method
