.class public Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;
.super Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;


# static fields
.field private static final AUTH_INFO_ACCESS:Ljava/lang/String;

.field private static final CRL_DIST_POINTS:Ljava/lang/String;

.field private static final QC_STATEMENT:Ljava/lang/String;

.field private static final RESOURCE_NAME:Ljava/lang/String; = "org.bouncycastle.pkix.CertPathReviewerMessages"


# instance fields
.field protected certPath:Ljava/security/cert/CertPath;

.field protected certs:Ljava/util/List;

.field protected currentDate:Ljava/util/Date;

.field protected errors:[Ljava/util/List;

.field private initialized:Z

.field protected n:I

.field protected notifications:[Ljava/util/List;

.field protected pkixParams:Ljava/security/cert/PKIXParameters;

.field protected policyTree:Ljava/security/cert/PolicyNode;

.field protected subjectPublicKey:Ljava/security/PublicKey;

.field protected trustAnchor:Ljava/security/cert/TrustAnchor;

.field protected validDate:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->qCStatements:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->cRLDistributionPoints:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityInfoAccess:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;-><init>()V

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V

    return-void
.end method

.method private IPtoString([B)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v2, p1

    if-eq v0, v2, :cond_0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private checkCriticalExtensions()V
    .locals 9

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getCertPathCheckers()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/security/cert/PKIXCertPathChecker;->init(Z)V
    :try_end_0
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "CertPathReviewer.certPathCheckerError"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2, v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v3
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getIndex()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_0
    return-void

    :cond_1
    :try_start_2
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_1
    if-ltz v3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto :goto_1

    :cond_3
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->KEY_USAGE:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    if-nez v3, :cond_4

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->extendedKeyUsage:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_4
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->processQcStatements(Ljava/security/cert/X509Certificate;I)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v1

    if-eqz v1, :cond_6

    :try_start_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/PKIXCertPathChecker;

    invoke-virtual {v1, v2, v5}, Ljava/security/cert/PKIXCertPathChecker;->check(Ljava/security/cert/Certificate;Ljava/util/Collection;)V
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_4
    const-string v2, "CertPathReviewer.criticalExtensionError"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v1}, Ljava/security/cert/CertPathValidatorException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-virtual {v1}, Ljava/security/cert/CertPathValidatorException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v1, v5, v3}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_6
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v5, "CertPathReviewer.unknownCriticalExt"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v8, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    invoke-virtual {p0, v1, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3
.end method

.method private checkNameConstraints()V
    .locals 9

    const/4 v4, 0x0

    new-instance v6, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;

    invoke-direct {v6}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;-><init>()V

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v3, v1

    :goto_0
    if-lez v3, :cond_0

    iget v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int/2addr v1, v3

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v2, v0

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v5

    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v7}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v6, v1}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkPermittedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_2
    .catch Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {v6, v1}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkExcludedDN(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_3
    .catch Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->SUBJECT_ALTERNATIVE_NAME:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v1, :cond_1

    move v5, v4

    :goto_1
    :try_start_5
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v7

    if-ge v5, v7, :cond_1

    invoke-virtual {v1, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v7

    invoke-static {v7}, Lorg/bouncycastle/asn1/x509/GeneralName;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralName;
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_1

    move-result-object v7

    :try_start_6
    invoke-virtual {v6, v7}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkPermitted(Lorg/bouncycastle/asn1/x509/GeneralName;)V

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->checkExcluded(Lorg/bouncycastle/asn1/x509/GeneralName;)V
    :try_end_6
    .catch Lorg/bouncycastle/pkix/PKIXNameConstraintValidatorException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_7
    const-string v2, "CertPathReviewer.ncSubjectNameError"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v7, v5}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v7, v4, v6

    invoke-static {v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v1, v5, v3}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getIndex()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_0
    return-void

    :catch_2
    move-exception v1

    :try_start_8
    const-string v2, "CertPathReviewer.notPermittedDN"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v7, v4, v6

    invoke-static {v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v1, v5, v3}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :catch_3
    move-exception v1

    const-string v2, "CertPathReviewer.excludedDN"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v5}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v7, v4, v6

    invoke-static {v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v1, v5, v3}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :catch_4
    move-exception v1

    const-string v2, "CertPathReviewer.subjAltNameExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v1, v5, v3}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :catch_5
    move-exception v1

    const-string v2, "CertPathReviewer.notPermittedEmail"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v6, v7}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v1, v5, v3}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_1

    :cond_1
    :try_start_9
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->NAME_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_1

    if-eqz v1, :cond_3

    :try_start_a
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/NameConstraints;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getPermittedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->intersectPermittedSubtree([Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    :cond_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/NameConstraints;->getExcludedSubtrees()[Lorg/bouncycastle/asn1/x509/GeneralSubtree;

    move-result-object v2

    if-eqz v2, :cond_3

    move v1, v4

    :goto_2
    array-length v5, v2

    if-eq v1, v5, :cond_3

    aget-object v5, v2, v1

    invoke-virtual {v6, v5}, Lorg/bouncycastle/pkix/PKIXNameConstraintValidator;->addExcludedSubtree(Lorg/bouncycastle/asn1/x509/GeneralSubtree;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :catch_6
    move-exception v1

    const-string v2, "CertPathReviewer.ncExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-direct {v4, v2, v1, v5, v3}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4
    :try_end_a
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_1

    :cond_3
    add-int/lit8 v1, v3, -0x1

    move v3, v1

    goto/16 :goto_0
.end method

.method private checkPathLength()V
    .locals 6

    const/4 v4, 0x0

    iget v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v2, v0

    move v3, v4

    move v5, v1

    :goto_0
    if-lez v2, :cond_1

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int/2addr v0, v2

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v1

    if-nez v1, :cond_3

    if-gtz v5, :cond_0

    const-string v1, "CertPathReviewer.pathLengthExtended"

    invoke-static {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    :cond_0
    add-int/lit8 v1, v5, -0x1

    add-int/lit8 v3, v3, 0x1

    :goto_1
    :try_start_0
    sget-object v5, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v0, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getPathLenConstraintInteger()Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->intPositiveValueExact()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    move v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CertPathReviewer.processLengthConstError"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const-string v0, "CertPathReviewer.totalPathLength"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    return-void

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move v1, v5

    goto :goto_1
.end method

.method private checkPolicy()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->getInitialPolicies()Ljava/util/Set;

    move-result-object v19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, v20

    array-length v3, v0

    if-ge v2, v3, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v20, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v2, "2.5.29.32.0"

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    const-string v8, "2.5.29.32.0"

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    const/4 v3, 0x0

    aget-object v3, v20, v3

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v3}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->isAnyPolicyInhibited()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->isPolicyMappingInhibited()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    :goto_3
    const/4 v7, 0x0

    const/4 v10, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    move/from16 v16, v6

    move v12, v5

    move v13, v4

    move v14, v3

    move-object v15, v2

    :goto_4
    if-ltz v16, :cond_21

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int v4, v2, v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v10, v0
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v11, v0
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v11, :cond_15

    if-eqz v15, :cond_15

    :try_start_2
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    :cond_1
    :goto_5
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v8, "2.5.29.32.0"

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v8

    if-nez v8, :cond_1

    :try_start_3
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_3
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v5

    :try_start_4
    move-object/from16 v0, v20

    invoke-static {v4, v0, v6, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->processCertD1i(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)Z

    move-result v8

    if-nez v8, :cond_1

    move-object/from16 v0, v20

    invoke-static {v4, v0, v6, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->processCertD1ii(I[Ljava/util/List;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/util/Set;)V
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getIndex()I

    move-result v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_2
    return-void

    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3

    :catch_1
    move-exception v2

    :try_start_5
    const-string v3, "CertPathReviewer.policyExtError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :catch_2
    move-exception v2

    const-string v3, "CertPathReviewer.policyQualifierError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_6
    if-eqz v7, :cond_7

    const-string v3, "2.5.29.32.0"

    invoke-interface {v7, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_7
    move-object/from16 v17, v2

    :cond_8
    if-gtz v13, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-ge v4, v2, :cond_11

    invoke-static {v10}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v2

    if-eqz v2, :cond_11

    :cond_9
    invoke-virtual {v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/PolicyInformation;

    move-result-object v3

    const-string v5, "2.5.29.32.0"

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyIdentifier()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_0

    move-result v5

    if-eqz v5, :cond_a

    :try_start_6
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/PolicyInformation;->getPolicyQualifiers()Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getQualifierSet(Lorg/bouncycastle/asn1/ASN1Sequence;)Ljava/util/Set;
    :try_end_6
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v7

    add-int/lit8 v2, v4, -0x1

    :try_start_7
    aget-object v21, v20, v2

    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_11

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v6}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getExpectedPolicies()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_b
    :goto_7
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_e

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    :goto_8
    const/4 v3, 0x0

    invoke-virtual {v6}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_45

    const/4 v2, 0x1

    :goto_a
    move v3, v2

    goto :goto_9

    :cond_c
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    :cond_d
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move-object/from16 v0, v17

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_b

    :catch_3
    move-exception v2

    const-string v3, "CertPathReviewer.policyQualifierError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_e
    instance-of v3, v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    if-eqz v3, :cond_b

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v8

    goto :goto_8

    :cond_f
    if-nez v3, :cond_b

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v5, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;-><init>(Ljava/util/List;ILjava/util/Set;Ljava/security/cert/PolicyNode;Ljava/util/Set;Ljava/lang/String;Z)V

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->addChild(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)V

    aget-object v3, v20, v4

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_10
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_6

    :cond_11
    add-int/lit8 v2, v4, -0x1

    move v6, v2

    :goto_c
    if-ltz v6, :cond_14

    aget-object v7, v20, v6

    const/4 v2, 0x0

    move v5, v2

    move-object v3, v15

    :goto_d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_44

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_12

    move-object/from16 v0, v20

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v2

    if-nez v2, :cond_13

    :goto_e
    add-int/lit8 v3, v6, -0x1

    move v6, v3

    move-object v15, v2

    goto :goto_c

    :cond_12
    move-object v2, v3

    :cond_13
    add-int/lit8 v5, v5, 0x1

    move-object v3, v2

    goto :goto_d

    :cond_14
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getCriticalExtensionOIDs()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_43

    sget-object v3, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CERTIFICATE_POLICIES:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    aget-object v6, v20, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_43

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->setCritical(Z)V

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_f

    :cond_15
    move-object v8, v7

    move-object v2, v15

    :goto_10
    if-nez v11, :cond_42

    const/4 v7, 0x0

    :goto_11
    if-gtz v14, :cond_16

    if-nez v7, :cond_16

    const-string v2, "CertPathReviewer.noValidPolicyTree"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :cond_16
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_0

    if-eq v4, v2, :cond_41

    :try_start_8
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_MAPPINGS:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_0

    move-result-object v3

    if-eqz v3, :cond_19

    :try_start_9
    move-object v0, v3

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move-object v2, v0

    const/4 v5, 0x0

    move v9, v5

    :goto_12
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v5

    if-ge v9, v5, :cond_19

    invoke-virtual {v2, v9}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v6

    check-cast v6, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v11, "2.5.29.32.0"

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v2, "CertPathReviewer.invalidPolicyMapping"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :catch_4
    move-exception v2

    const-string v3, "CertPathReviewer.policyMapExtError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_17
    const-string v6, "2.5.29.32.0"

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    const-string v2, "CertPathReviewer.invalidPolicyMapping"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_18
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_12

    :cond_19
    if-eqz v3, :cond_1e

    check-cast v3, Lorg/bouncycastle/asn1/ASN1Sequence;

    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v6, v2

    :goto_13
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v2

    if-ge v6, v2, :cond_1b

    invoke-virtual {v3, v6}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v15

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1a

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v9, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_14
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_13

    :cond_1a
    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-interface {v2, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_1b
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v7

    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_0

    if-lez v12, :cond_1c

    :try_start_a
    move-object/from16 v0, v20

    invoke-static {v4, v0, v2, v9, v10}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->prepareNextCertB1(I[Ljava/util/List;Ljava/lang/String;Ljava/util/Map;Ljava/security/cert/X509Certificate;)V
    :try_end_a
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_0

    move-object v2, v3

    :goto_16
    move-object v3, v2

    goto :goto_15

    :catch_5
    move-exception v2

    :try_start_b
    const-string v3, "CertPathReviewer.policyExtError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :catch_6
    move-exception v2

    const-string v3, "CertPathReviewer.policyQualifierError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v4, v3, v2, v5, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;Ljava/security/cert/CertPath;I)V

    throw v4

    :cond_1c
    if-gtz v12, :cond_40

    move-object/from16 v0, v20

    invoke-static {v4, v0, v2, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->prepareNextCertB2(I[Ljava/util/List;Ljava/lang/String;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v2

    goto :goto_16

    :cond_1d
    move-object v7, v3

    :cond_1e
    invoke-static {v10}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    :try_end_b
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_0

    move-result v2

    if-nez v2, :cond_3f

    if-eqz v14, :cond_3e

    add-int/lit8 v5, v14, -0x1

    :goto_17
    if-eqz v12, :cond_3d

    add-int/lit8 v3, v12, -0x1

    :goto_18
    if-eqz v13, :cond_3c

    add-int/lit8 v13, v13, -0x1

    move v6, v13

    :goto_19
    :try_start_c
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_20

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v9

    :goto_1a
    invoke-interface {v9}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v9}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1f
    move v2, v3

    move v4, v5

    :goto_1b
    move v3, v2

    move v5, v4

    goto :goto_1a

    :pswitch_0
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I

    move-result v4

    if-ge v4, v5, :cond_1f

    move v2, v3

    goto :goto_1b

    :pswitch_1
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I
    :try_end_c
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_c .. :try_end_c} :catch_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_c .. :try_end_c} :catch_0

    move-result v2

    if-ge v2, v3, :cond_1f

    move v4, v5

    goto :goto_1b

    :catch_7
    move-exception v2

    :try_start_d
    const-string v2, "CertPathReviewer.policyConstExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3
    :try_end_d
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_d .. :try_end_d} :catch_0

    :cond_20
    :try_start_e
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->INHIBIT_ANY_POLICY:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    if-eqz v2, :cond_3b

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I
    :try_end_e
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_e .. :try_end_e} :catch_8
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_0

    move-result v2

    if-ge v2, v6, :cond_3b

    :goto_1c
    move-object v4, v7

    :goto_1d
    add-int/lit8 v6, v16, -0x1

    move/from16 v16, v6

    move-object v7, v8

    move v12, v3

    move v13, v2

    move v14, v5

    move-object v15, v4

    goto/16 :goto_4

    :catch_8
    move-exception v2

    :try_start_f
    const-string v2, "CertPathReviewer.policyInhibitExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_21
    invoke-static {v10}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z
    :try_end_f
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_f .. :try_end_f} :catch_0

    move-result v2

    if-nez v2, :cond_3a

    if-lez v14, :cond_3a

    add-int/lit8 v14, v14, -0x1

    move v3, v14

    :goto_1e
    :try_start_10
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->POLICY_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v10, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1f
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_22
    move v2, v3

    :goto_20
    move v3, v2

    goto :goto_1f

    :pswitch_2
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->intValueExact()I
    :try_end_10
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_10 .. :try_end_10} :catch_9
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_10 .. :try_end_10} :catch_0

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x0

    goto :goto_20

    :catch_9
    move-exception v2

    :try_start_11
    const-string v2, "CertPathReviewer.policyConstExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_23
    if-nez v15, :cond_26

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    if-eqz v2, :cond_24

    const-string v2, "CertPathReviewer.explicitPolicy"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_24
    const/4 v2, 0x0

    :cond_25
    :goto_21
    if-gtz v3, :cond_2

    if-nez v2, :cond_2

    const-string v2, "CertPathReviewer.invalidPolicy"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :cond_26
    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isAnyPolicy(Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v2}, Ljava/security/cert/PKIXParameters;->isExplicitPolicyRequired()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_27

    const-string v2, "CertPathReviewer.explicitPolicy"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    move/from16 v0, v16

    invoke-direct {v3, v2, v4, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/security/cert/CertPath;I)V

    throw v3

    :cond_27
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v5, v2

    :goto_22
    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v5, v2, :cond_2a

    aget-object v8, v20, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_23
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_29

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    const-string v9, "2.5.29.32.0"

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v6, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_28
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_23

    :cond_29
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_22

    :cond_2a
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2b
    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    goto :goto_25

    :cond_2c
    if-eqz v15, :cond_39

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v4, v2, -0x1

    move v6, v4

    move-object v2, v15

    :goto_26
    if-ltz v6, :cond_25

    aget-object v7, v20, v6

    const/4 v5, 0x0

    move-object v4, v2

    :goto_27
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_2d

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_38

    move-object/from16 v0, v20

    invoke-static {v4, v0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v2

    :goto_28
    add-int/lit8 v5, v5, 0x1

    move-object v4, v2

    goto :goto_27

    :cond_2d
    add-int/lit8 v5, v6, -0x1

    move v6, v5

    move-object v2, v4

    goto :goto_26

    :cond_2e
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v5, v2

    :goto_29
    move-object/from16 v0, v20

    array-length v2, v0

    if-ge v5, v2, :cond_32

    aget-object v7, v20, v5

    const/4 v2, 0x0

    move v4, v2

    :goto_2a
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v4, v2, :cond_31

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    const-string v8, "2.5.29.32.0"

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getChildren()Ljava/util/Iterator;

    move-result-object v8

    :cond_2f
    :goto_2b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    const-string v9, "2.5.29.32.0"

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2f

    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_2b

    :cond_30
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_2a

    :cond_31
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_29

    :cond_32
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v4, v15

    :goto_2c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->getValidPolicy()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-interface {v0, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_37

    move-object/from16 v0, v20

    invoke-static {v4, v0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    move-result-object v2

    :goto_2d
    move-object v4, v2

    goto :goto_2c

    :cond_33
    if-eqz v4, :cond_35

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v2, v2, -0x1

    move v6, v2

    :goto_2e
    if-ltz v6, :cond_35

    aget-object v7, v20, v6

    const/4 v2, 0x0

    move v5, v2

    :goto_2f
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v5, v2, :cond_34

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;->hasChildren()Z

    move-result v8

    if-nez v8, :cond_36

    move-object/from16 v0, v20

    invoke-static {v4, v0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->removePolicyNode(Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;[Ljava/util/List;Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;)Lorg/bouncycastle/pkix/jcajce/PKIXPolicyNode;
    :try_end_11
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_11 .. :try_end_11} :catch_0

    move-result-object v2

    :goto_30
    add-int/lit8 v5, v5, 0x1

    move-object v4, v2

    goto :goto_2f

    :cond_34
    add-int/lit8 v2, v6, -0x1

    move v6, v2

    goto :goto_2e

    :cond_35
    move-object v2, v4

    goto/16 :goto_21

    :cond_36
    move-object v2, v4

    goto :goto_30

    :cond_37
    move-object v2, v4

    goto :goto_2d

    :cond_38
    move-object v2, v4

    goto/16 :goto_28

    :cond_39
    move-object v2, v15

    goto/16 :goto_21

    :cond_3a
    move v3, v14

    goto/16 :goto_1e

    :cond_3b
    move v2, v6

    goto/16 :goto_1c

    :cond_3c
    move v6, v13

    goto/16 :goto_19

    :cond_3d
    move v3, v12

    goto/16 :goto_18

    :cond_3e
    move v5, v14

    goto/16 :goto_17

    :cond_3f
    move v3, v12

    move v6, v13

    move v5, v14

    goto/16 :goto_19

    :cond_40
    move-object v2, v3

    goto/16 :goto_16

    :cond_41
    move v3, v12

    move v2, v13

    move v5, v14

    move-object v4, v7

    goto/16 :goto_1d

    :cond_42
    move-object v7, v2

    goto/16 :goto_11

    :cond_43
    move-object/from16 v8, v17

    move-object v2, v15

    goto/16 :goto_10

    :cond_44
    move-object v2, v3

    goto/16 :goto_e

    :cond_45
    move v2, v3

    goto/16 :goto_a

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private checkSignatures()V
    .locals 15

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v0, "CertPathReviewer.certPathValidDate"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    iget-object v6, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v1, v4

    const/4 v4, 0x1

    new-instance v5, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    iget-object v6, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    invoke-direct {v5, v6}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    const-string v4, "CertPathReviewer.conflictingTrustAnchors"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    new-instance v6, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    move-object v1, v2

    :goto_0
    move-object v10, v1

    :goto_1
    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v1

    if-eqz v1, :cond_8

    :try_start_1
    invoke-static {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getSubjectPrincipal(Ljava/security/cert/X509Certificate;)Ljavax/security/auth/x500/X500Principal;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :goto_2
    move-object v2, v0

    :goto_3
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v3, 0x5

    if-le v1, v3, :cond_0

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "CertPathReviewer.trustKeyUsage"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    :cond_1
    :goto_4
    const/4 v1, 0x0

    const/4 v0, 0x0

    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    :goto_5
    :try_start_2
    invoke-static {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_2
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    :goto_6
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v8, v3, -0x1

    move-object v4, v0

    move-object v9, v2

    move-object v5, v1

    :goto_7
    if-ltz v8, :cond_16

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    sub-int v11, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    if-eqz v5, :cond_a

    :try_start_3
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v5, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/security/GeneralSecurityException; {:try_start_3 .. :try_end_3} :catch_5

    :goto_8
    :try_start_4
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    invoke-virtual {v2, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_4
    .catch Ljava/security/cert/CertificateNotYetValidException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/security/cert/CertificateExpiredException; {:try_start_4 .. :try_end_4} :catch_8

    :goto_9
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v0}, Ljava/security/cert/PKIXParameters;->isRevocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    :try_start_5
    sget-object v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CRL_DIST_POINTS:Ljava/lang/String;

    invoke-static {v2, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/CRLDistPoint;
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_5 .. :try_end_5} :catch_9

    move-result-object v0

    :cond_3
    :goto_a
    const/4 v1, 0x0

    :try_start_6
    sget-object v3, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->AUTH_INFO_ACCESS:Ljava/lang/String;

    invoke-static {v2, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;
    :try_end_6
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_6 .. :try_end_6} :catch_a

    move-result-object v1

    :cond_4
    :goto_b
    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;

    move-result-object v6

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "CertPathReviewer.crlDistPoint"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v3, v12

    invoke-static {v1, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    invoke-virtual {p0, v1, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_c

    :cond_5
    :try_start_7
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v1, "CertPathReviewer.noTrustAnchorFound"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v5}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v5

    invoke-static {v5}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v1, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    move-object v1, v2

    goto/16 :goto_0

    :cond_6
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/TrustAnchor;
    :try_end_7
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :try_start_8
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v2

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_f

    move-result-object v2

    :goto_d
    :try_start_9
    iget-object v4, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v4}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/security/SignatureException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_11
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_f

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :try_start_a
    const-string v0, "CertPathReviewer.trustButInvalidCert"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    :try_end_a
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_f

    goto/16 :goto_0

    :catch_1
    move-exception v0

    move-object v2, v1

    :goto_e
    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    move-object v10, v2

    goto/16 :goto_1

    :cond_7
    :try_start_b
    invoke-virtual {v1}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;
    :try_end_b
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_f

    move-result-object v2

    goto :goto_d

    :catch_2
    move-exception v0

    :goto_f
    const-string v1, "CertPathReviewer.unknown"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v6, v0}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    move-object v10, v2

    goto/16 :goto_1

    :cond_8
    :try_start_c
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_2

    :catch_3
    move-exception v0

    const-string v0, "CertPathReviewer.trustDNInvalid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v5, v2, v4

    invoke-static {v0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    move-object v2, v3

    goto/16 :goto_3

    :cond_9
    invoke-virtual {v10}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    goto/16 :goto_5

    :catch_4
    move-exception v3

    const-string v3, "CertPathReviewer.trustPubKeyError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    goto/16 :goto_6

    :catch_5
    move-exception v0

    const-string v1, "CertPathReviewer.signatureNotVerified"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v0, v3, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_8

    :cond_a
    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->isSelfIssued(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_b

    :try_start_d
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    invoke-virtual {v1}, Ljava/security/cert/PKIXParameters;->getSigProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/pkix/jcajce/CertPathValidatorUtilities;->verifyX509Certificate(Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/lang/String;)V

    const-string v0, "CertPathReviewer.rootKeyIsValidButNotATrustAnchor"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_d
    .catch Ljava/security/GeneralSecurityException; {:try_start_d .. :try_end_d} :catch_6

    goto/16 :goto_8

    :catch_6
    move-exception v0

    const-string v1, "CertPathReviewer.signatureNotVerified"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v6

    const/4 v6, 0x1

    aput-object v0, v3, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v1, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_8

    :cond_b
    const-string v0, "CertPathReviewer.NoIssuerPublicKey"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-static {v1}, Lorg/bouncycastle/asn1/DEROctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertIssuer()Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v3

    const/4 v6, 0x0

    aget-object v3, v3, v6

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 v6, 0x7

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v12, Lorg/bouncycastle/pkix/util/LocaleString;

    const-string v13, "org.bouncycastle.pkix.CertPathReviewerMessages"

    const-string v14, "missingIssuer"

    invoke-direct {v12, v13, v14}, Lorg/bouncycastle/pkix/util/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v12, v6, v7

    const/4 v7, 0x1

    const-string v12, " \""

    aput-object v12, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    const/4 v3, 0x3

    const-string v7, "\" "

    aput-object v7, v6, v3

    const/4 v3, 0x4

    new-instance v7, Lorg/bouncycastle/pkix/util/LocaleString;

    const-string v12, "org.bouncycastle.pkix.CertPathReviewerMessages"

    const-string v13, "missingSerial"

    invoke-direct {v7, v12, v13}, Lorg/bouncycastle/pkix/util/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v7, v6, v3

    const/4 v3, 0x5

    const-string v7, " "

    aput-object v7, v6, v3

    const/4 v3, 0x6

    aput-object v1, v6, v3

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pkix/util/ErrorBundle;->setExtraArguments([Ljava/lang/Object;)V

    :cond_c
    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_8

    :catch_7
    move-exception v0

    const-string v0, "CertPathReviewer.certificateNotYetValid"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v6, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_9

    :catch_8
    move-exception v0

    const-string v0, "CertPathReviewer.certificateExpired"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v6, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v6, v1, v3

    invoke-static {v0, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_9

    :catch_9
    move-exception v1

    const-string v1, "CertPathReviewer.crlDistPtExtError"

    invoke-static {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    invoke-virtual {p0, v1, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_a

    :catch_a
    move-exception v3

    const-string v3, "CertPathReviewer.crlAuthInfoAccError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_b

    :cond_d
    invoke-virtual {v7}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "CertPathReviewer.ocspLocation"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    invoke-direct {v13, v14}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v13, v3, v12

    invoke-static {v1, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    invoke-virtual {p0, v1, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_10

    :cond_e
    :try_start_e
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    :try_end_e
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_e .. :try_end_e} :catch_b

    :cond_f
    :goto_11
    if-eqz v9, :cond_10

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "CertPathReviewer.certWrongIssuer"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_10
    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-eq v11, v0, :cond_14

    if-eqz v2, :cond_11

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    const-string v0, "CertPathReviewer.noCACert"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_11
    :try_start_f
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "CertPathReviewer.noCACert"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_f
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_f .. :try_end_f} :catch_c

    :cond_12
    :goto_12
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v0

    if-eqz v0, :cond_14

    array-length v1, v0

    const/4 v3, 0x5

    if-le v1, v3, :cond_13

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-nez v0, :cond_14

    :cond_13
    const-string v0, "CertPathReviewer.noCertSign"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_14
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    :try_start_10
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-static {v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getNextWorkingKey(Ljava/util/List;I)Ljava/security/PublicKey;
    :try_end_10
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_10 .. :try_end_10} :catch_d

    move-result-object v0

    :try_start_11
    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getAlgorithmIdentifier(Ljava/security/PublicKey;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getParameters()Lorg/bouncycastle/asn1/ASN1Encodable;
    :try_end_11
    .catch Ljava/security/cert/CertPathValidatorException; {:try_start_11 .. :try_end_11} :catch_e

    :goto_13
    add-int/lit8 v8, v8, -0x1

    move-object v4, v2

    move-object v9, v1

    move-object v5, v0

    goto/16 :goto_7

    :catch_b
    move-exception v0

    invoke-virtual {v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_11

    :cond_15
    :try_start_12
    const-string v0, "CertPathReviewer.noBasicConstraints"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_12
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_12 .. :try_end_12} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    const-string v0, "CertPathReviewer.errorProcesingBC"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_12

    :catch_d
    move-exception v0

    move-object v0, v5

    :goto_14
    const-string v3, "CertPathReviewer.pubKeyError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    invoke-virtual {p0, v3, v8}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto :goto_13

    :cond_16
    iput-object v10, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-void

    :catch_e
    move-exception v3

    goto :goto_14

    :catch_f
    move-exception v0

    move-object v2, v1

    goto/16 :goto_f

    :catch_10
    move-exception v0

    goto/16 :goto_e

    :catch_11
    move-exception v0

    goto/16 :goto_0

    :cond_17
    move-object v2, v3

    goto/16 :goto_4
.end method

.method private static createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pkix/util/ErrorBundle;

    const-string v1, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/pkix/util/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/util/ErrorBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method private static createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pkix/util/ErrorBundle;

    const-string v1, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v0, v1, p0, p1}, Lorg/bouncycastle/pkix/util/ErrorBundle;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-class v1, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/util/ErrorBundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    return-object v0
.end method

.method private getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "http"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v2

    const-string v3, "https"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_2

    const-string v1, "X.509"

    const-string v2, "BC"

    invoke-static {v1, v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/security/cert/CertificateFactory;->generateCRL(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509CRL;

    :cond_1
    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    const-string v1, "CertPathReviewer.loadCrlDistPointError"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v3, p1}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v3, v2, v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v1
.end method

.method private processQcStatements(Ljava/security/cert/X509Certificate;I)Z
    .locals 13

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    sget-object v0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->QC_STATEMENT:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    move v5, v3

    move v1, v3

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v4

    if-ge v5, v4, :cond_6

    invoke-virtual {v0, v5}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/QCStatement;

    move-result-object v4

    sget-object v6, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcCompliance:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "CertPathReviewer.QcEuCompliance"

    invoke-static {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_0
    :goto_1
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_0

    :cond_1
    sget-object v6, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_qcs_pkixQCSyntax_v1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-nez v6, :cond_0

    sget-object v6, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_QcSSCD:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v4, "CertPathReviewer.QcSSCD"

    invoke-static {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    invoke-virtual {p0, v4, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_0
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v0, "CertPathReviewer.QcStatementExtError"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    move v2, v3

    :cond_2
    :goto_2
    return v2

    :cond_3
    :try_start_1
    sget-object v6, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->id_etsi_qcs_LimiteValue:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementInfo()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getAmount()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getExponent()Ljava/math/BigInteger;

    move-result-object v10

    invoke-virtual {v10}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v8

    invoke-virtual {v8}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->isAlphabetic()Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "CertPathReviewer.QcLimitValueAlpha"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getAlphabetic()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    new-instance v12, Ljava/lang/Double;

    invoke-direct {v12, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v11, v12}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v10

    const/4 v6, 0x2

    aput-object v4, v9, v6

    invoke-static {v8, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    :goto_3
    invoke-virtual {p0, v4, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_1

    :cond_4
    const-string v8, "CertPathReviewer.QcLimitValueNum"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/MonetaryValue;->getCurrency()Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;

    move-result-object v11

    invoke-virtual {v11}, Lorg/bouncycastle/asn1/x509/qualified/Iso4217CurrencyCode;->getNumeric()I

    move-result v11

    invoke-static {v11}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    new-instance v11, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    new-instance v12, Ljava/lang/Double;

    invoke-direct {v12, v6, v7}, Ljava/lang/Double;-><init>(D)V

    invoke-direct {v11, v12}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v10

    const/4 v6, 0x2

    aput-object v4, v9, v6

    invoke-static {v8, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    goto :goto_3

    :cond_5
    const-string v1, "CertPathReviewer.QcUnknownStatement"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/x509/qualified/QCStatement;->getStatementId()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    new-instance v8, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v8, v4}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    move v1, v2

    goto/16 :goto_1

    :cond_6
    if-eqz v1, :cond_2

    move v2, v3

    goto/16 :goto_2
.end method


# virtual methods
.method protected addError(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    .locals 2

    const/4 v0, -0x1

    if-lt p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    if-lt p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p2, 0x1

    aget-object v0, v0, v1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v4}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    :try_start_0
    invoke-static {p2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    invoke-virtual {v4, p2}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setCertificateChecking(Ljava/security/cert/X509Certificate;)V

    :try_start_1
    invoke-static {v4, p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v2}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    invoke-static {v2, p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "CertPathReviewer.crlExtractionError"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-virtual {v2}, Lorg/bouncycastle/pkix/jcajce/AnnotatedException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addError(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v3, v2

    :cond_0
    :goto_1
    const/4 v4, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v2}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v9, v5}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v5, 0x1

    new-instance v8, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v8, v6}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v7, v5

    if-eqz v6, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_1
    const/4 v3, 0x1

    const-string v4, "CertPathReviewer.localValidCRL"

    invoke-static {v4, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v4

    move/from16 v0, p7

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    move-object v5, v2

    :goto_3
    if-nez v3, :cond_18

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v6

    invoke-virtual/range {p6 .. p6}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    :try_start_2
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getCRL(Ljava/lang/String;)Ljava/security/cert/X509CRL;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v4, "CertPathReviewer.onlineCRLWrongCA"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    new-instance v11, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v8}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v11, v8}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v9, v10

    const/4 v8, 0x1

    new-instance v10, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v6}, Ljavax/security/auth/x500/X500Principal;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v10, v9, v8

    const/4 v8, 0x2

    new-instance v10, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-direct {v10, v2}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v10, v9, v8

    invoke-static {v4, v9}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_2
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v4

    move v2, v3

    :goto_5
    invoke-virtual {v4}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;->getErrorMessage()Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    move v3, v2

    goto :goto_4

    :catch_2
    move-exception v2

    const-string v3, "CertPathReviewer.crlIssuerException"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_3
    :try_start_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    const-string v5, "CertPathReviewer.noCrlInCertstore"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-virtual {v4}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->getIssuerNames()Ljava/util/Collection;

    move-result-object v4

    invoke-direct {v9, v4}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v4, 0x1

    new-instance v8, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;

    invoke-direct {v8, v6}, Lorg/bouncycastle/pkix/util/filter/UntrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v7, v4

    const/4 v4, 0x2

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v7, v4

    invoke-static {v5, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_3
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    :cond_4
    const-string v5, "CertPathReviewer.localInvalidCRL"

    invoke-static {v5, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v5

    move/from16 v0, p7

    invoke-virtual {p0, v5, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_2

    :cond_5
    :try_start_4
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getThisUpdate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v9

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    new-instance v12, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v12, v8}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v12, v10, v11

    const/4 v8, 0x1

    new-instance v11, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v11, v9}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v10, v8

    const/4 v8, 0x2

    new-instance v11, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;

    invoke-direct {v11, v2}, Lorg/bouncycastle/pkix/util/filter/UntrustedUrlInput;-><init>(Ljava/lang/Object;)V

    aput-object v11, v10, v8

    if-eqz v9, :cond_6

    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Ljava/util/Date;->before(Ljava/util/Date;)Z
    :try_end_4
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_4 .. :try_end_4} :catch_1

    move-result v2

    if-eqz v2, :cond_8

    :cond_6
    const/4 v2, 0x1

    :try_start_5
    const-string v3, "CertPathReviewer.onlineValidCRL"

    invoke-static {v3, v10}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    move/from16 v0, p7

    invoke-virtual {p0, v3, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_5
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_5 .. :try_end_5} :catch_c

    move v6, v2

    :goto_6
    if-eqz v4, :cond_15

    if-eqz p4, :cond_9

    invoke-virtual/range {p4 .. p4}, Ljava/security/cert/X509Certificate;->getKeyUsage()[Z

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v3, v2

    const/4 v5, 0x6

    if-le v3, v5, :cond_7

    const/4 v3, 0x6

    aget-boolean v2, v2, v3

    if-nez v2, :cond_9

    :cond_7
    const-string v2, "CertPathReviewer.noCrlSigningPermited"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :cond_8
    :try_start_6
    const-string v2, "CertPathReviewer.onlineInvalidCRL"

    invoke-static {v2, v10}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V
    :try_end_6
    .catch Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_4

    :cond_9
    if-eqz p5, :cond_c

    :try_start_7
    const-string v2, "BC"

    move-object/from16 v0, p5

    invoke-virtual {v4, v0, v2}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/security/cert/X509CRL;->getRevokedCertificate(Ljava/math/BigInteger;)Ljava/security/cert/X509CRLEntry;

    move-result-object v3

    if-eqz v3, :cond_10

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/security/cert/X509CRLEntry;->hasExtensions()Z

    move-result v5

    if-eqz v5, :cond_a

    :try_start_8
    sget-object v5, Lorg/bouncycastle/asn1/x509/Extension;->reasonCode:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Enumerated;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Enumerated;
    :try_end_8
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_8 .. :try_end_8} :catch_4

    move-result-object v5

    if-eqz v5, :cond_a

    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Enumerated;->intValueExact()I

    move-result v5

    aget-object v2, v2, v5

    :cond_a
    if-nez v2, :cond_b

    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->crlReasons:[Ljava/lang/String;

    const/4 v5, 0x7

    aget-object v2, v2, v5

    :cond_b
    new-instance v5, Lorg/bouncycastle/pkix/util/LocaleString;

    const-string v7, "org.bouncycastle.pkix.CertPathReviewerMessages"

    invoke-direct {v5, v7, v2}, Lorg/bouncycastle/pkix/util/LocaleString;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "CertPathReviewer.certRevoked"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-virtual {v3}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v7, v3}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v7, v4, v6

    const/4 v3, 0x1

    aput-object v5, v4, v3

    invoke-static {v2, v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :catch_3
    move-exception v2

    const-string v3, "CertPathReviewer.crlVerifyFailed"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_c
    const-string v2, "CertPathReviewer.crlNoIssuerPublicKey"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :catch_4
    move-exception v2

    const-string v3, "CertPathReviewer.crlReasonExtError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_d
    const-string v2, "CertPathReviewer.revokedAfterValidation"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-virtual {v3}, Ljava/security/cert/X509CRLEntry;->getRevocationDate()Ljava/util/Date;

    move-result-object v3

    invoke-direct {v9, v3}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v9, v7, v8

    const/4 v3, 0x1

    aput-object v5, v7, v3

    invoke-static {v2, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :goto_7
    invoke-virtual {v4}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_e

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "CertPathReviewer.crlUpdateAvailable"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Lorg/bouncycastle/pkix/util/filter/TrustedInput;

    invoke-direct {v8, v2}, Lorg/bouncycastle/pkix/util/filter/TrustedInput;-><init>(Ljava/lang/Object;)V

    aput-object v8, v5, v7

    invoke-static {v3, v5}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;[Ljava/lang/Object;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    :cond_e
    :try_start_9
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_9
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_9 .. :try_end_9} :catch_5

    move-result-object v5

    :try_start_a
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->DELTA_CRL_INDICATOR:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_a
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_a .. :try_end_a} :catch_6

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v7, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;

    invoke-direct {v7}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;-><init>()V

    :try_start_b
    invoke-static {v4}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getIssuerPrincipal(Ljava/security/cert/X509CRL;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v3

    invoke-virtual {v7, v3}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->addIssuerName([B)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setMinCRLNumber(Ljava/math/BigInteger;)V

    :try_start_c
    sget-object v2, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->CRL_NUMBER:Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Integer;->getPositiveValue()Ljava/math/BigInteger;

    move-result-object v2

    const-wide/16 v8, 0x1

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;->setMaxCRLNumber(Ljava/math/BigInteger;)V
    :try_end_c
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_c .. :try_end_c} :catch_8

    const/4 v3, 0x0

    :try_start_d
    invoke-static {v7, p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCRLUtil;->findCRLs(Lorg/bouncycastle/pkix/jcajce/X509CRLStoreSelector;Ljava/security/cert/PKIXParameters;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
    :try_end_d
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_d .. :try_end_d} :catch_9

    move-result-object v4

    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;

    :try_start_e
    sget-object v7, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->ISSUING_DISTRIBUTION_POINT:Ljava/lang/String;

    invoke-static {v2, v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_e
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_e .. :try_end_e} :catch_a

    move-result-object v2

    invoke-static {v5, v2}, Lorg/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    :goto_8
    if-nez v2, :cond_11

    const-string v2, "CertPathReviewer.noBaseCRL"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :cond_10
    const-string v2, "CertPathReviewer.notRevoked"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->addNotification(Lorg/bouncycastle/pkix/util/ErrorBundle;I)V

    goto/16 :goto_7

    :catch_5
    move-exception v2

    const-string v2, "CertPathReviewer.distrPtExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :catch_6
    move-exception v2

    const-string v2, "CertPathReviewer.deltaCrlExtError"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :catch_7
    move-exception v2

    const-string v3, "CertPathReviewer.crlIssuerException"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :catch_8
    move-exception v2

    const-string v3, "CertPathReviewer.crlNbrExtError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :catch_9
    move-exception v2

    const-string v3, "CertPathReviewer.crlExtractionError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :catch_a
    move-exception v2

    const-string v3, "CertPathReviewer.distrPtExtError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_11
    if-eqz v5, :cond_15

    invoke-static {v5}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;

    move-result-object v2

    :try_start_f
    sget-object v3, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->BASIC_CONSTRAINTS:Ljava/lang/String;

    invoke-static {p2, v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getExtensionValue(Ljava/security/cert/X509Extension;Ljava/lang/String;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/BasicConstraints;
    :try_end_f
    .catch Lorg/bouncycastle/pkix/jcajce/AnnotatedException; {:try_start_f .. :try_end_f} :catch_b

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsUserCerts()Z

    move-result v4

    if-eqz v4, :cond_12

    if-eqz v3, :cond_12

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v4

    if-eqz v4, :cond_12

    const-string v2, "CertPathReviewer.crlOnlyUserCert"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :catch_b
    move-exception v2

    const-string v3, "CertPathReviewer.crlBCExtError"

    invoke-static {v3}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v4, v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;Ljava/lang/Throwable;)V

    throw v4

    :cond_12
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsCACerts()Z

    move-result v4

    if-eqz v4, :cond_14

    if-eqz v3, :cond_13

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/x509/BasicConstraints;->isCA()Z

    move-result v3

    if-nez v3, :cond_14

    :cond_13
    const-string v2, "CertPathReviewer.crlOnlyCaCert"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :cond_14
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/IssuingDistributionPoint;->onlyContainsAttributeCerts()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v2, "CertPathReviewer.crlOnlyAttrCert"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :cond_15
    if-nez v6, :cond_16

    const-string v2, "CertPathReviewer.noValidCrlFound"

    invoke-static {v2}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v3, v2}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v3

    :cond_16
    return-void

    :catch_c
    move-exception v3

    move-object v4, v3

    goto/16 :goto_5

    :cond_17
    move v2, v3

    goto/16 :goto_8

    :cond_18
    move-object v4, v5

    move v6, v3

    goto/16 :goto_6

    :cond_19
    move-object v5, v2

    move v3, v4

    goto/16 :goto_3
.end method

.method protected checkRevocation(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;Ljava/util/Vector;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move/from16 v7, p8

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkCRLs(Ljava/security/cert/PKIXParameters;Ljava/security/cert/X509Certificate;Ljava/util/Date;Ljava/security/cert/X509Certificate;Ljava/security/PublicKey;Ljava/util/Vector;I)V

    return-void
.end method

.method protected doChecks()V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->initialized:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Object not initialized. Call init() first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    if-nez v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/List;

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkSignatures()V

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkNameConstraints()V

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkPathLength()V

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkPolicy()V

    invoke-direct {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->checkCriticalExtensions()V

    :cond_2
    return-void
.end method

.method protected getCRLDistUrls(Lorg/bouncycastle/asn1/x509/CRLDistPoint;)Ljava/util/Vector;
    .locals 8

    const/4 v2, 0x0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CRLDistPoint;->getDistributionPoints()[Lorg/bouncycastle/asn1/x509/DistributionPoint;

    move-result-object v5

    move v1, v2

    :goto_0
    array-length v0, v5

    if-ge v1, v0, :cond_2

    aget-object v0, v5, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPoint;->getDistributionPoint()Lorg/bouncycastle/asn1/x509/DistributionPointName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getType()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/DistributionPointName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/GeneralNames;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralNames;->getNames()[Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v6

    move v3, v2

    :goto_1
    array-length v0, v6

    if-ge v3, v0, :cond_1

    aget-object v0, v6, v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v0

    const/4 v7, 0x6

    if-ne v0, v7, :cond_0

    aget-object v0, v6, v3

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method public getCertPath()Ljava/security/cert/CertPath;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    return-object v0
.end method

.method public getCertPathSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    return v0
.end method

.method public getErrors(I)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getErrors()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    return-object v0
.end method

.method public getNotifications(I)Ljava/util/List;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getNotifications()[Ljava/util/List;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    return-object v0
.end method

.method protected getOCSPUrls(Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;)Ljava/util/Vector;
    .locals 6

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/AuthorityInformationAccess;->getAccessDescriptions()[Lorg/bouncycastle/asn1/x509/AccessDescription;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessMethod()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    sget-object v4, Lorg/bouncycastle/asn1/x509/AccessDescription;->id_ad_ocsp:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, v3, v1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AccessDescription;->getAccessLocation()Lorg/bouncycastle/asn1/x509/GeneralName;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getTagNo()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/GeneralName;->getName()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1IA5String;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1IA5String;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public getPolicyTree()Ljava/security/cert/PolicyNode;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-object v0
.end method

.method public getSubjectPublicKey()Ljava/security/PublicKey;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getTrustAnchor()Ljava/security/cert/TrustAnchor;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    return-object v0
.end method

.method protected getTrustAnchors(Ljava/security/cert/X509Certificate;Ljava/util/Set;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    :try_start_0
    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/auth/x500/X500Principal;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/cert/X509CertSelector;->setSubject([B)V

    sget-object v0, Lorg/bouncycastle/asn1/x509/Extension;->authorityKeyIdentifier:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Primitive;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getAuthorityCertSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/cert/X509CertSelector;->setSerialNumber(Ljava/math/BigInteger;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/security/cert/X509CertSelector;->match(Ljava/security/cert/Certificate;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/x509/AuthorityKeyIdentifier;->getKeyIdentifier()[B

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v4, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v4, v0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/DEROctetString;->getEncoded()[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/cert/X509CertSelector;->setSubjectKeyIdentifier([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "CertPathReviewer.trustAnchorIssuerError"

    invoke-static {v0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v1

    :cond_2
    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getEncodedIssuerPrincipal(Ljava/lang/Object;)Ljavax/security/auth/x500/X500Principal;

    move-result-object v4

    new-instance v5, Ljavax/security/auth/x500/X500Principal;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getCAName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method public init(Ljava/security/cert/CertPath;Ljava/security/cert/PKIXParameters;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v5, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->initialized:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "object is already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean v2, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->initialized:Z

    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certPath was null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v2, :cond_5

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->getTrustAnchors()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/TrustAnchor;

    invoke-virtual {v0}, Ljava/security/cert/TrustAnchor;->getTrustedCert()Ljava/security/cert/X509Certificate;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-eq v0, v4, :cond_4

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    :try_start_0
    const-string v0, "X.509"

    const-string v1, "BC"

    invoke-static {v0, v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/security/cert/CertificateFactory;->generateCertPath(Ljava/util/List;)Ljava/security/cert/CertPath;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->n:I

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;

    const-string v1, "CertPathReviewer.emptyCertPath"

    invoke-static {v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->createErrorBundle(Ljava/lang/String;)Lorg/bouncycastle/pkix/util/ErrorBundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/CertPathReviewerException;-><init>(Lorg/bouncycastle/pkix/util/ErrorBundle;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unable to rebuild certpath"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-object p1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certPath:Ljava/security/cert/CertPath;

    invoke-virtual {p1}, Ljava/security/cert/CertPath;->getCertificates()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->certs:Ljava/util/List;

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Ljava/security/cert/PKIXParameters;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/PKIXParameters;

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    iget-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->pkixParams:Ljava/security/cert/PKIXParameters;

    iget-object v1, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->currentDate:Ljava/util/Date;

    invoke-static {v0, v1}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->getValidityDate(Ljava/security/cert/PKIXParameters;Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->validDate:Ljava/util/Date;

    iput-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->notifications:[Ljava/util/List;

    iput-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    iput-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->trustAnchor:Ljava/security/cert/TrustAnchor;

    iput-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->subjectPublicKey:Ljava/security/PublicKey;

    iput-object v5, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->policyTree:Ljava/security/cert/PolicyNode;

    return-void
.end method

.method public isValidCertPath()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->doChecks()V

    const/4 v2, 0x1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pkix/jcajce/PKIXCertPathReviewer;->errors:[Ljava/util/List;

    aget-object v3, v3, v0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
