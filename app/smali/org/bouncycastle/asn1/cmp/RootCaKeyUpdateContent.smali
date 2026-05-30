.class public Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

.field private final oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v6, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence of 1 to 3 elements only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v4

    move-object v0, v2

    move-object v1, v2

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v2, v6}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {v2, v6}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasContextTag(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v2, v6}, Lorg/bouncycastle/asn1/cmp/CMPCertificate;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    move-result-object v0

    goto :goto_0

    :cond_4
    iput-object v4, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iput-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/cmp/CMPCertificate;Lorg/bouncycastle/asn1/cmp/CMPCertificate;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'newWithNew\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getNewWithNew()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getNewWithOld()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public getOldWithNew()Lorg/bouncycastle/asn1/cmp/CMPCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->newWithOld:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/RootCaKeyUpdateContent;->oldWithNew:Lorg/bouncycastle/asn1/cmp/CMPCertificate;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
