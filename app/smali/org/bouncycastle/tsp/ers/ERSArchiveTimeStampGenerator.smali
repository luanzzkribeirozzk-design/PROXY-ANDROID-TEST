.class public Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
    }
.end annotation


# instance fields
.field private dataObjects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;"
        }
    .end annotation
.end field

.field private final digCalc:Lorg/bouncycastle/operator/DigestCalculator;

.field private previousChainHash:[B

.field private rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculator;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    new-instance v0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;

    invoke-direct {v0}, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    return-void
.end method

.method private getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->previousChainHash:[B

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/tsp/ers/ERSUtil;->buildIndexedHashList(Lorg/bouncycastle/operator/DigestCalculator;Ljava/util/List;[B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v4, v0, [Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    move v1, v2

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eq v2, v0, :cond_3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/tsp/ers/IndexedHash;

    iget-object v1, v0, Lorg/bouncycastle/tsp/ers/IndexedHash;->digest:[B

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/tsp/ers/IndexedHash;

    iget v0, v0, Lorg/bouncycastle/tsp/ers/IndexedHash;->order:I

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/tsp/ers/ERSData;

    instance-of v5, v0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    if-eqz v5, :cond_2

    check-cast v0, Lorg/bouncycastle/tsp/ers/ERSDataGroup;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->previousChainHash:[B

    invoke-virtual {v0, v1, v5}, Lorg/bouncycastle/tsp/ers/ERSDataGroup;->getHashes(Lorg/bouncycastle/operator/DigestCalculator;[B)Ljava/util/List;

    move-result-object v1

    new-instance v5, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/tsp/ers/IndexedHash;

    iget v6, v0, Lorg/bouncycastle/tsp/ers/IndexedHash;->order:I

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [[B

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    invoke-direct {v5, v6, v0, v7}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;-><init>(I[[BLorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$1;)V

    aput-object v5, v4, v2

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    new-instance v5, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/tsp/ers/IndexedHash;

    iget v0, v0, Lorg/bouncycastle/tsp/ers/IndexedHash;->order:I

    invoke-direct {v5, v0, v1, v7}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;-><init>(I[BLorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$1;)V

    aput-object v5, v4, v2

    goto :goto_2

    :cond_3
    return-object v4
.end method


# virtual methods
.method public addAllData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/tsp/ers/ERSData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public addData(Lorg/bouncycastle/tsp/ers/ERSData;)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->dataObjects:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addPreviousChains(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStampSequence;->getEncoded(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->previousChainHash:[B

    return-void
.end method

.method public generateArchiveTimeStamp(Lorg/bouncycastle/tsp/TimeStampResponse;)Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    move-result-object v1

    array-length v0, v1

    if-eq v0, v5, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v1, "multiple reduced hash trees found"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0, v2, v1}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TSP response error status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v1, "time stamp imprint for wrong algorithm"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v2

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v1, "time stamp imprint for wrong root hash"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;->getValueCount()I

    move-result v0

    if-ne v0, v5, :cond_4

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v2

    invoke-direct {v1, v6, v6, v2}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V

    :goto_0
    return-object v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v2, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v3}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v4

    invoke-direct {v2, v3, v1, v4}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-direct {v0, v2, v1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V

    goto :goto_0
.end method

.method public generateArchiveTimeStamps(Lorg/bouncycastle/tsp/TimeStampResponse;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/tsp/TimeStampResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v3, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v0, v3, v2}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatus()I

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Lorg/bouncycastle/tsp/TSPException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TSP response error status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/TSPException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/TSTInfo;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v1, "time stamp imprint for wrong algorithm"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/TSTInfo;->getMessageImprint()Lorg/bouncycastle/asn1/tsp/MessageImprint;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/tsp/MessageImprint;->getHashedMessage()[B

    move-result-object v3

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSException;

    const-string v1, "time stamp imprint for wrong root hash"

    invoke-direct {v0, v1}, Lorg/bouncycastle/tsp/ers/ERSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/TimeStampToken;->toCMSSignedData()Lorg/bouncycastle/cms/CMSSignedData;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/cms/CMSSignedData;->toASN1Structure()Lorg/bouncycastle/asn1/cms/ContentInfo;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    array-length v0, v2

    if-ne v0, v6, :cond_4

    aget-object v0, v2, v1

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;->getValueCount()I

    move-result v0

    if-ne v0, v6, :cond_4

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    invoke-direct {v1, v7, v7, v3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v4

    :cond_4
    array-length v0, v2

    new-array v5, v0, [Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    move v0, v1

    :goto_0
    array-length v6, v2

    if-eq v0, v6, :cond_5

    iget-object v6, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v7, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    aget-object v8, v2, v0

    invoke-interface {v6, v7, v8, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computePathToRoot(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;I)[Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    move-result-object v6

    aget-object v7, v2, v0

    iget v7, v7, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;->order:I

    new-instance v8, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    new-instance v9, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    iget-object v10, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v10}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v10

    invoke-direct {v9, v10, v6, v3}, Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;Lorg/bouncycastle/asn1/cms/ContentInfo;)V

    iget-object v6, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-direct {v8, v9, v6}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;-><init>(Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;Lorg/bouncycastle/operator/DigestCalculator;)V

    aput-object v8, v5, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    array-length v0, v2

    if-eq v1, v0, :cond_3

    aget-object v0, v5, v1

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public generateTimeStampRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[B)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v0

    return-object v0
.end method

.method public generateTimeStampRequest(Lorg/bouncycastle/tsp/TimeStampRequestGenerator;Ljava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->getPartialHashtrees()[Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator$IndexedPartialHashtree;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->rootNodeCalculator:Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;->computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStampGenerator;->digCalc:Lorg/bouncycastle/operator/DigestCalculator;

    invoke-interface {v1}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    invoke-virtual {p1, v1, v0, p2}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v0

    return-object v0
.end method
