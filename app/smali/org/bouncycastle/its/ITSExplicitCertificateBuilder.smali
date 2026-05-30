.class public Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;
.super Lorg/bouncycastle/its/ITSCertificateBuilder;


# instance fields
.field private final signer:Lorg/bouncycastle/its/operator/ITSContentSigner;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/its/operator/ITSContentSigner;Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V
    .locals 0

    invoke-direct {p0, p2}, Lorg/bouncycastle/its/ITSCertificateBuilder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    iput-object p1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    return-void
.end method


# virtual methods
.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;Lorg/bouncycastle/its/ITSPublicVerificationKey;Lorg/bouncycastle/its/ITSPublicEncryptionKey;)Lorg/bouncycastle/its/ITSCertificate;
    .locals 8

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->tbsCertificateBuilder:Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setId(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateId;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/bouncycastle/its/ITSPublicEncryptionKey;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setEncryptionKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicEncryptionKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/its/ITSPublicVerificationKey;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->verificationKey(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/PublicVerificationKey;)Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->setVerifyKeyIndicator(Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;)Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate$Builder;->createToBeSignedCertificate()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/its/operator/ITSContentSigner;->isForSelfSigning()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    :try_start_0
    sget-object v3, Lorg/bouncycastle/oer/its/template/ieee1609dot2/IEEE1609dot2;->ToBeSignedCertificate:Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/oer/OEREncoder;->toByteArray(Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Element;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;->getChoice()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v0}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/its/ITSCertificate;->toASN1Structure()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;->getToBeSigned()Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;->getVerifyKeyIndicator()Lorg/bouncycastle/oer/its/ieee1609dot2/VerificationKeyIndicator;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot produce certificate signature"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    :goto_1
    new-instance v3, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    invoke-direct {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v4}, Lorg/bouncycastle/its/operator/ITSContentSigner;->isForSelfSigning()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;->sha256:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->self(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v1

    :goto_2
    iget-object v4, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->version:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setVersion(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UINT8;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    sget-object v4, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;->explicit:Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;

    invoke-virtual {v3, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setType(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateType;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setIssuer(Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    invoke-virtual {v3, v2}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setToBeSigned(Lorg/bouncycastle/oer/its/ieee1609dot2/ToBeSignedCertificate;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    invoke-virtual {v3, v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->setSignature(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;)Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;

    new-instance v0, Lorg/bouncycastle/its/ITSCertificate;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase$Builder;->createCertificateBase()Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/its/ITSCertificate;-><init>(Lorg/bouncycastle/oer/its/ieee1609dot2/CertificateBase;)V

    return-object v0

    :pswitch_1
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    sget-object v0, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v1, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v1}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getSignature()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/its/operator/ECDSAEncoder;->toITS(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[B)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Signature;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;->sha384:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;

    invoke-static {v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->self(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashAlgorithm;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget-object v4, p0, Lorg/bouncycastle/its/ITSExplicitCertificateBuilder;->signer:Lorg/bouncycastle/its/operator/ITSContentSigner;

    invoke-interface {v4}, Lorg/bouncycastle/its/operator/ITSContentSigner;->getAssociatedCertificateDigest()[B

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;

    array-length v6, v4

    add-int/lit8 v6, v6, -0x8

    array-length v7, v4

    invoke-static {v4, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {v5}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->sha256AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v1

    goto :goto_2

    :cond_5
    sget-object v4, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {v5}, Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;->sha384AndDigest(Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;)Lorg/bouncycastle/oer/its/ieee1609dot2/IssuerIdentifier;

    move-result-object v1

    goto :goto_2

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "unknown digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
