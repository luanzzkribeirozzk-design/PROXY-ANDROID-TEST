.class public Lorg/bouncycastle/asn1/cmc/PKIData;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

.field private final controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

.field private final otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

.field private final reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 5

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sequence not 4 elements."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cmc/TaggedAttribute;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    move v1, v2

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cmc/TaggedRequest;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    move v1, v2

    :goto_2
    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    new-array v1, v1, [Lorg/bouncycastle/asn1/cmc/OtherMsg;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    :goto_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    array-length v1, v1

    if-ge v2, v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    invoke-virtual {v0, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v3

    invoke-static {v3}, Lorg/bouncycastle/asn1/cmc/OtherMsg;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/OtherMsg;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/cmc/TaggedAttribute;[Lorg/bouncycastle/asn1/cmc/TaggedRequest;[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;[Lorg/bouncycastle/asn1/cmc/OtherMsg;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedAttribute;)[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    invoke-direct {p0, p2}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedRequest;)[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    invoke-direct {p0, p3}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;)[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    invoke-direct {p0, p4}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/OtherMsg;)[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    return-void
.end method

.method private copy([Lorg/bouncycastle/asn1/cmc/OtherMsg;)[Lorg/bouncycastle/asn1/cmc/OtherMsg;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/OtherMsg;

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private copy([Lorg/bouncycastle/asn1/cmc/TaggedAttribute;)[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private copy([Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;)[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private copy([Lorg/bouncycastle/asn1/cmc/TaggedRequest;)[Lorg/bouncycastle/asn1/cmc/TaggedRequest;
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    new-array v0, v0, [Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    array-length v1, v0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmc/PKIData;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmc/PKIData;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmc/PKIData;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmc/PKIData;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCmsSequence()[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;)[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    move-result-object v0

    return-object v0
.end method

.method public getControlSequence()[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedAttribute;)[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    move-result-object v0

    return-object v0
.end method

.method public getOtherMsgSequence()[Lorg/bouncycastle/asn1/cmc/OtherMsg;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/OtherMsg;)[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    move-result-object v0

    return-object v0
.end method

.method public getReqSequence()[Lorg/bouncycastle/asn1/cmc/TaggedRequest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/cmc/PKIData;->copy([Lorg/bouncycastle/asn1/cmc/TaggedRequest;)[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    move-result-object v0

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->controlSequence:[Lorg/bouncycastle/asn1/cmc/TaggedAttribute;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->reqSequence:[Lorg/bouncycastle/asn1/cmc/TaggedRequest;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->cmsSequence:[Lorg/bouncycastle/asn1/cmc/TaggedContentInfo;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Lorg/bouncycastle/asn1/DERSequence;

    iget-object v4, p0, Lorg/bouncycastle/asn1/cmc/PKIData;->otherMsgSequence:[Lorg/bouncycastle/asn1/cmc/OtherMsg;

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
