.class public Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi$withShake128;
.super Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "withShake128"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "XMSS-SHAKE128"

    new-instance v1, Lorg/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/NullDigest;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSigner;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/xmss/XMSSSigner;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/xmss/XMSSSignatureSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/pqc/crypto/xmss/XMSSSigner;)V

    return-void
.end method
