.class public Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;
.super Ljava/lang/Object;


# instance fields
.field private acceptedCerts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/asn1/cmp/CMPCertificate;",
            ">;"
        }
    .end annotation
.end field

.field private acceptedReqIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/asn1/ASN1Integer;",
            ">;"
        }
    .end annotation
.end field

.field private acceptedSignatureAlgorithms:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;-><init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedSignatureAlgorithms:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedReqIds:Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    return-void
.end method


# virtual methods
.method public addAcceptedCertificate(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedReqIds:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addAcceptedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(Ljava/math/BigInteger;)V

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->addAcceptedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public addAcceptedCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    invoke-virtual {p1}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSignatureAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->addAcceptedCertificate(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    new-instance v3, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v2, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedCerts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedSignatureAlgorithms:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iget-object v4, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-static {v0, v1, p1, v4}, Lorg/bouncycastle/cert/cmp/CMPUtil;->calculateCertHash(Lorg/bouncycastle/asn1/ASN1Object;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/operator/DigestCalculatorProvider;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->acceptedReqIds:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    new-instance v4, Lorg/bouncycastle/asn1/cmp/CertStatus;

    invoke-direct {v4, v1, v0}, Lorg/bouncycastle/asn1/cmp/CertStatus;-><init>([BLorg/bouncycastle/asn1/ASN1Integer;)V

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, v3}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CertConfirmContent;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContentBuilder;->digestAlgFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;-><init>(Lorg/bouncycastle/asn1/cmp/CertConfirmContent;Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;)V

    return-object v1
.end method
