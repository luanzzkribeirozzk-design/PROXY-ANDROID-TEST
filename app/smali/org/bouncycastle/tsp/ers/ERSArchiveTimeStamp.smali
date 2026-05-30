.class public Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
.super Ljava/lang/Object;


# instance fields
.field private final archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

.field private final digCalc:Lorg/bouncycastle/operator/DigestCalculator;

.field private final previousChainsDigest:[B

.field private rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

.field private final timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->previousChainsDigest:[B

    :try_start_0
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->previousChainsDigest:[B

    :try_start_0
    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>([BLorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->previousChainsDigest:[B

    :try_start_0
    iput-object p2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    new-instance v0, Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getTimeStamp()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TimeStampToken;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    invoke-interface {p3, v0}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSException;

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>([BLorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public static fromTimeStampToken(Lorg/bouncycastle/tsp/TimeStampToken;Lorg/bouncycastle/operator/DigestCalculatorProvider;)Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    invoke-direct {v0, v1, p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method


# virtual methods
.method checkContainsHashValue(Z[BLorg/bouncycastle/operator/DigestCalculator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez p1, :cond_1

    invoke-virtual {v0, p2}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->containsHash([B)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValueCount()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;->getValues()[[B

    move-result-object v0

    invoke-static {p3, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[[B)[B

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string v1, "object hash not found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintDigest()[B

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string v1, "object hash not found in wrapped timestamp"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method checkTimeStampValid(Lorg/bouncycastle/tsp/TimeStampToken;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getMessageImprintDigest()[B

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string v1, "timestamp hash does not match root"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getDigestAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    return-object v0
.end method

.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method

.method public getExpiryTime()Ljava/util/Date;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/bouncycastle/cert/X509CertificateHolder;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGenTime()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getSigningCertificate()Lorg/bouncycastle/cert/X509CertificateHolder;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getCertificates()Lorg/bouncycastle/util/Store;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v1}, Lorg/bouncycastle/tsp/TimeStampToken;->getSID()Lorg/bouncycastle/cms/SignerId;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/bouncycastle/util/Store;->getMatches(Lorg/bouncycastle/util/Selector;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/cert/X509CertificateHolder;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    return-object v0
.end method

.method public isContaining(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string v1, "timestamp generation time is in the future"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    return-object v0
.end method

.method public validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/tsp/TimeStampToken;->validate(Lorg/bouncycastle/cms/SignerInformationVerifier;)V

    return-void
.end method

.method public validatePresent(Lorg/bouncycastle/tsp/ers/ERSData;Ljava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    instance-of v0, p1, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->previousChainsDigest:[B

    invoke-interface {p1, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSData;->getHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->validatePresent(Z[BLjava/util/Date;)V

    return-void
.end method

.method public validatePresent(Z[BLjava/util/Date;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;

    const-string v1, "timestamp generation time is in the future"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ArchiveTimeStampValidationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->checkContainsHashValue(Z[BLorg/bouncycastle/operator/DigestCalculator;)V

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->archiveTimeStamp:Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;->getReducedHashTree()[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->recoverRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object p2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->timeStampToken:Lorg/bouncycastle/tsp/TimeStampToken;

    invoke-virtual {p0, v0, p2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->checkTimeStampValid(Lorg/bouncycastle/tsp/TimeStampToken;[B)V

    return-void
.end method
