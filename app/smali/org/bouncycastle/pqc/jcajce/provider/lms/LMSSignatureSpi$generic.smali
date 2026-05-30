.class public Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi$generic;
.super Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "generic"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "LMS"

    new-instance v1, Lorg/bouncycastle/crypto/digests/NullDigest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/NullDigest;-><init>()V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/jcajce/provider/lms/LMSSignatureSpi;-><init>(Ljava/lang/String;Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method
