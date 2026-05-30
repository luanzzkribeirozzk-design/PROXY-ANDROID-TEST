.class public Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;
.super Ljava/lang/Object;


# instance fields
.field private final digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;->digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method


# virtual methods
.method public generate(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    const/4 v5, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v3, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    new-instance v4, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;

    invoke-virtual {v0}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v0

    invoke-direct {v4, v5, v5, v0}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/CryptoInfos;Lorg/bouncycastle/asn1/tsp/EncryptionInfo;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;->digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v3, v4, v0}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public generate(Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;)Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/tsp/TSPException;,
            Lorg/bouncycastle/tsp/ers/ERSException;
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;

    new-instance v1, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;

    invoke-virtual {p1}, Lorg/bouncycastle/tsp/ers/ERSArchiveTimeStamp;->toASN1Structure()Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;

    move-result-object v2

    invoke-direct {v1, v3, v3, v2}, Lorg/bouncycastle/asn1/tsp/EvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/CryptoInfos;Lorg/bouncycastle/asn1/tsp/EncryptionInfo;Lorg/bouncycastle/asn1/tsp/ArchiveTimeStamp;)V

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecordGenerator;->digCalcProv:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSEvidenceRecord;-><init>(Lorg/bouncycastle/asn1/tsp/EvidenceRecord;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-object v0
.end method
