.class public abstract Lorg/bouncycastle/mime/smime/SMimeParserListener;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/mime/MimeParserListener;


# instance fields
.field private digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

.field private parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public content(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "content handling not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createContext(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)Lorg/bouncycastle/mime/MimeContext;
    .locals 1

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)V

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    invoke-virtual {v0}, Lorg/bouncycastle/mime/smime/SMimeMultipartContext;->getDigestCalculators()[Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->parent:Lorg/bouncycastle/mime/smime/SMimeMultipartContext;

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/mime/ConstantMimeContext;

    invoke-direct {v0}, Lorg/bouncycastle/mime/ConstantMimeContext;-><init>()V

    goto :goto_0
.end method

.method public envelopedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/cms/OriginatorInformation;Lorg/bouncycastle/cms/RecipientInformationStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "envelopedData handling not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs7-signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-pkcs7-signature"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    array-length v2, v2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    iget-object v2, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v2, v2, v0

    invoke-interface {v2}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMimeParserListener;->digestCalculators:[Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v3, v3, v0

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {p3}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/cms/CMSSignedData;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/cms/CMSSignedData;-><init>(Ljava/util/Map;[B)V

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->getCRLs()Lorg/bouncycastle/util/Store;

    move-result-object v4

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->getAttributeCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v5

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->getSignerInfos()Lorg/bouncycastle/cms/SignerInformationStore;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/mime/smime/SMimeParserListener;->signedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/cms/SignerInformationStore;)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pkcs7-mime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getContentType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/x-pkcs7-mime"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;

    invoke-direct {v0, p3}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->getOriginatorInfo()Lorg/bouncycastle/cms/OriginatorInformation;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->getRecipientInfos()Lorg/bouncycastle/cms/RecipientInformationStore;

    move-result-object v2

    invoke-virtual {p0, p1, p2, v1, v2}, Lorg/bouncycastle/mime/smime/SMimeParserListener;->envelopedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/cms/OriginatorInformation;Lorg/bouncycastle/cms/RecipientInformationStore;)V

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSEnvelopedDataParser;->close()V
    :try_end_0
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/mime/MimeIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CMS failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/mime/MimeIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/mime/smime/SMimeParserListener;->content(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    :try_end_1
    .catch Lorg/bouncycastle/cms/CMSException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public signedData(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/util/Store;Lorg/bouncycastle/cms/SignerInformationStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "signedData handling not implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
