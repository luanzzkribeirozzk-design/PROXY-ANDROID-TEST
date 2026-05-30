.class public Lorg/bouncycastle/cert/ocsp/jcajce/JcaBasicOCSPRespBuilder;
.super Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;-><init>(Lorg/bouncycastle/asn1/x509/SubjectPublicKeyInfo;Lorg/bouncycastle/operator/DigestCalculator;)V

    return-void
.end method

.method public constructor <init>(Ljavax/security/auth/x500/X500Principal;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/cert/ocsp/jcajce/JcaRespID;

    invoke-direct {v0, p1}, Lorg/bouncycastle/cert/ocsp/jcajce/JcaRespID;-><init>(Ljavax/security/auth/x500/X500Principal;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPRespBuilder;-><init>(Lorg/bouncycastle/cert/ocsp/RespID;)V

    return-void
.end method
