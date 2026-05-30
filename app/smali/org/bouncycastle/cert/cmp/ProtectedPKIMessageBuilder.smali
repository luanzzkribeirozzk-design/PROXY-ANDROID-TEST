.class public Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
.super Ljava/lang/Object;


# instance fields
.field private body:Lorg/bouncycastle/asn1/cmp/PKIBody;

.field private extraCerts:Ljava/util/List;

.field private generalInfos:Ljava/util/List;

.field private hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;


# direct methods
.method public constructor <init>(ILorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-direct {v0, p1, p2, p3}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;-><init>(ILorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;-><init>(ILorg/bouncycastle/asn1/x509/GeneralName;Lorg/bouncycastle/asn1/x509/GeneralName;)V

    return-void
.end method

.method private calculateMac(Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v0

    return-object v0
.end method

.method private calculateSignature(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>()V

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const-string v0, "DER"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getSignature()[B

    move-result-object v0

    return-object v0
.end method

.method private finaliseHeader(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setProtectionAlg(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    iget-object v1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setGeneralInfo([Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    :cond_0
    return-void
.end method

.method private finaliseMessage(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-eq v1, v0, :cond_0

    new-instance v3, Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->toASN1Structure()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    aput-object v3, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;

    new-instance v1, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    iget-object v3, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-direct {v1, p1, v3, p2, v2}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/ASN1BitString;[Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V

    :goto_1
    return-object v0

    :cond_1
    new-instance v0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;

    new-instance v1, Lorg/bouncycastle/asn1/cmp/PKIMessage;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-direct {v1, p1, v2, p2}, Lorg/bouncycastle/asn1/cmp/PKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;Lorg/bouncycastle/asn1/ASN1BitString;)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;-><init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V

    goto :goto_1
.end method


# virtual methods
.method public addCMPCertificate(Lorg/bouncycastle/cert/X509CertificateHolder;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->extraCerts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGeneralInfo(Lorg/bouncycastle/asn1/cmp/InfoTypeAndValue;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->generalInfos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build(Lorg/bouncycastle/operator/ContentSigner;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "body must be set before building"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/operator/ContentSigner;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseHeader(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->build()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-direct {p0, p1, v0, v2}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->calculateSignature(Lorg/bouncycastle/operator/ContentSigner;Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseMessage(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode signature input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public build(Lorg/bouncycastle/operator/MacCalculator;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/cmp/CMPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "body must be set before building"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Lorg/bouncycastle/operator/MacCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseHeader(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)V

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->build()Lorg/bouncycastle/asn1/cmp/PKIHeader;

    move-result-object v0

    :try_start_0
    new-instance v1, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v2, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-direct {p0, p1, v0, v2}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->calculateMac(Lorg/bouncycastle/operator/MacCalculator;Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/cmp/PKIBody;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([B)V

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->finaliseMessage(Lorg/bouncycastle/asn1/cmp/PKIHeader;Lorg/bouncycastle/asn1/DERBitString;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessage;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cert/cmp/CMPException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to encode MAC input: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cert/cmp/CMPException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public setBody(ILorg/bouncycastle/cert/cmp/CertificateConfirmationContent;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->isCertificateConfirmationContent(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match CMP type CertConfirmContent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/cmp/CertificateConfirmationContent;->toASN1Structure()Lorg/bouncycastle/asn1/cmp/CertConfirmContent;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/cmp/PKIBody;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    return-object p0
.end method

.method public setBody(ILorg/bouncycastle/cert/crmf/CertificateRepMessage;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->isCertificateRepMessage(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match CMP type CertRepMessage"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/crmf/CertificateRepMessage;->toASN1Structure()Lorg/bouncycastle/asn1/cmp/CertRepMessage;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/cmp/PKIBody;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    return-object p0
.end method

.method public setBody(ILorg/bouncycastle/cert/crmf/CertificateReqMessages;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 3

    invoke-static {p1}, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->isCertificateRequestMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "body type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not match CMP type CertReqMessages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIBody;

    invoke-virtual {p2}, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->toASN1Structure()Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/asn1/cmp/PKIBody;-><init>(ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iput-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    return-object p0
.end method

.method public setBody(Lorg/bouncycastle/asn1/cmp/PKIBody;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->body:Lorg/bouncycastle/asn1/cmp/PKIBody;

    return-object p0
.end method

.method public setFreeText(Lorg/bouncycastle/asn1/cmp/PKIFreeText;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setFreeText(Lorg/bouncycastle/asn1/cmp/PKIFreeText;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setMessageTime(Ljava/util/Date;)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    new-instance v1, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;

    invoke-direct {v1, p1}, Lorg/bouncycastle/asn1/ASN1GeneralizedTime;-><init>(Ljava/util/Date;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setMessageTime(Lorg/bouncycastle/asn1/ASN1GeneralizedTime;)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setRecipKID([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setRecipKID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setRecipNonce([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setRecipNonce([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setSenderKID([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setSenderKID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setSenderNonce([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setSenderNonce([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method

.method public setTransactionID([B)Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cert/cmp/ProtectedPKIMessageBuilder;->hdrBuilder:Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;->setTransactionID([B)Lorg/bouncycastle/asn1/cmp/PKIHeaderBuilder;

    return-object p0
.end method
