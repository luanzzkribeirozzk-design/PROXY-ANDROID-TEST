.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi$withShake128_512andPrehash;
.super Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "withShake128_512andPrehash"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "SHAKE128(512)withXMSSMT-SHAKE128"

    new-instance v1, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v3, 0x80

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/DigestUtil$DoubleDigest;-><init>(Lorg/bouncycastle/crypto/digests/SHAKEDigest;)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSMTSignatureSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/xmss/XMSSMTSigner;)V

    return-void
.end method
