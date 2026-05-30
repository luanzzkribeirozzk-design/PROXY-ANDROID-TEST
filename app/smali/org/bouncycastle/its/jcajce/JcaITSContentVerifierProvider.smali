.class public Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentVerifierProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$Builder;
    }
.end annotation


# instance fields
.field private digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private final issuer:Lorg/bouncycastle/its/ITSCertificate;

.field private final parentData:[B

.field private pubParams:Ljava/security/interfaces/ECPublicKey;

.field private sigChoice:I


# direct methods
.method private constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    :try_start_0
    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getVerificationKeyIndicator()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->initForPvi(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to extract parent data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not public verification key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;-><init>(Lorg/bouncycastle/its/ITSCertificate;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    iput-object p2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {p1}, Lorg/bouncycastle/its/ITSPublicVerificationKey;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->initForPvi(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;-><init>(Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    return-void
.end method

.method static synthetic access$200(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;)Ljava/security/interfaces/ECPublicKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->pubParams:Ljava/security/interfaces/ECPublicKey;

    return-object v0
.end method

.method private initForPvi(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    invoke-virtual {p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;->getChoice()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_0
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;Lorg/bouncycastle/jcajce/util/JcaJceHelper;)V

    invoke-virtual {v0}, Lorg/bouncycastle/its/jcajce/JcaITSPublicVerificationKey;->getKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPublicKey;

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->pubParams:Ljava/security/interfaces/ECPublicKey;

    return-void

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public get(I)Lorg/bouncycastle/operator/ContentVerifier;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    if-eq v0, p1, :cond_0

    new-instance v0, Lorg/bouncycastle/operator/OperatorCreationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wrong verifier for algorithm: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/operator/OperatorCreationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->setHelper(Lorg/bouncycastle/jcajce/util/JcaJceHelper;)Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/operator/jcajce/JcaDigestCalculatorProviderBuilder;->build()Lorg/bouncycastle/operator/DigestCalculatorProvider;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v3

    :try_start_1
    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->parentData:[B

    array-length v4, v4

    invoke-virtual {v2, v0, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    :cond_1
    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/its/ITSCertificate;->getIssuer()Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->isSelf()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v0}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v4, v0

    invoke-virtual {v2, v0, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v5

    :goto_0
    iget v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "choice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->sigChoice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "SHA256withECDSA"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v4

    :goto_1
    new-instance v0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider$1;-><init>(Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/operator/DigestCalculator;Ljava/security/Signature;[B[B)V

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->helper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    const-string v1, "SHA384withECDSA"

    invoke-interface {v0, v1}, Lorg/bouncycastle/jcajce/util/JcaJceHelper;->createSignature(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public hasAssociatedCertificate()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/jcajce/JcaITSContentVerifierProvider;->issuer:Lorg/bouncycastle/its/ITSCertificate;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
