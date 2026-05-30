.class public Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cert/path/CertPathValidation;


# instance fields
.field private isMandatory:Z

.field private maxPathLength:Ljava/lang/Integer;

.field private previousCertWasCA:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    iput-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean p1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 2

    new-instance v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;

    invoke-direct {v0}, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;-><init>()V

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iget-boolean v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iput-boolean v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    iput-object v1, v0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    return-object v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1

    check-cast p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;

    iget-boolean v0, p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    iget-boolean v0, p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iget-object v0, p1, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    return-void
.end method

.method public validate(Lorg/bouncycastle/cert/path/CertPathValidationContext;Lorg/bouncycastle/cert/X509CertificateHolder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/path/CertPathValidationException;
        }
    .end annotation

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->basicConstraints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/cert/path/CertPathValidationContext;->addHandledExtension(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iget-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "Basic constraints violated: issuer is not a CA"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getExtensions()Lorg/bouncycastle/asn1/x509/Extensions;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->fromExtensions(Lorg/bouncycastle/asn1/x509/Extensions;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    if-nez v1, :cond_3

    iget-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->isMandatory:Z

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->previousCertWasCA:Z

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getSubject()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/cert/X509CertificateHolder;->getIssuer()Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/x500/X500Name;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_4

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationException;

    const-string v1, "Basic constraints violated: path length exceeded"

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    :cond_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_7

    :cond_6
    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/path/validations/BasicConstraintsValidation;->maxPathLength:Ljava/lang/Integer;

    :cond_7
    return-void
.end method
