.class public Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRepMessageBuilder;
.super Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;


# direct methods
.method public varargs constructor <init>([Ljava/security/cert/X509Certificate;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/jcajce/JcaCertificateRepMessageBuilder;->convert([Ljava/security/cert/X509Certificate;)[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/crmf/CertificateRepMessageBuilder;-><init>([Lorg/bouncycastle/cert/X509CertificateHolder;)V

    return-void
.end method

.method private static varargs convert([Ljava/security/cert/X509Certificate;)[Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    array-length v0, p0

    new-array v1, v0, [Lorg/bouncycastle/cert/X509CertificateHolder;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;

    aget-object v3, p0, v0

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/jcajce/JcaX509CertificateHolder;-><init>(Ljava/security/cert/X509Certificate;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
