.class public Lorg/bouncycastle/asn1/cmp/KemOtherInfo;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field private static final DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;


# instance fields
.field private final ct:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final len:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

.field private final transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    const-string v1, "CMP-KEM"

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;JLorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 8

    new-instance v4, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-direct {v4, p4, p5}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object p4, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p5, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    iput-object p6, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 9

    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x4

    const/4 v7, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v8, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x7

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sequence size should be between 4 and 7 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    sget-object v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/cmp/PKIFreeText;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "staticString field should be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->DEFAULT_staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p1, v7}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {v1, v3, v7, v8}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_7

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {p1, v6}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    move-object v5, v0

    move v3, v6

    :goto_0
    if-eqz v1, :cond_6

    invoke-static {v1, v7, v7, v8}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    add-int/lit8 v3, v3, 0x1

    invoke-static {p1, v3}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    move-object v4, v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-static {v1, v6, v7, v8}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    if-eqz v0, :cond_5

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetString;

    add-int/lit8 v2, v3, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    move v3, v2

    :goto_2
    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object v5, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v4, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unexpected data at end of sequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void

    :cond_5
    move-object v0, v2

    goto :goto_2

    :cond_6
    move-object v4, v2

    goto :goto_1

    :cond_7
    move-object v5, v2

    move v3, v7

    goto :goto_0
.end method

.method private static addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {p0, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/KemOtherInfo;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static tryGetTagged(Lorg/bouncycastle/asn1/ASN1Sequence;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v1, :cond_0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCt()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getLen()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getMac()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getRecipNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getSenderNonce()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public getTransactionID()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->staticString:Lorg/bouncycastle/asn1/cmp/PKIFreeText;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->transactionID:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->senderNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->recipNonce:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->addOptional(Lorg/bouncycastle/asn1/ASN1EncodableVector;ILorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->len:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->mac:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/KemOtherInfo;->ct:Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
