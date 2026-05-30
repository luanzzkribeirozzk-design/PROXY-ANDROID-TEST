.class public Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;
.super Ljava/lang/Object;


# instance fields
.field validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-direct {v0}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    return-void
.end method


# virtual methods
.method public addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkExcludedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->checkExcludedDN(Lorg/bouncycastle/asn1/x500/X500Name;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public checkPermittedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/X500Name;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/X500Name;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->checkPermittedDN(Lorg/bouncycastle/asn1/x500/X500Name;)V
    :try_end_0
    .catch Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/NameConstraintValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;

    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    iget-object v1, p1, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersectEmptyPermittedSubtree(I)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->intersectEmptyPermittedSubtree(I)V

    return-void
.end method

.method public intersectPermittedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->intersectPermittedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->validator:Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/ASN1PKIXNameConstraintValidator;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
