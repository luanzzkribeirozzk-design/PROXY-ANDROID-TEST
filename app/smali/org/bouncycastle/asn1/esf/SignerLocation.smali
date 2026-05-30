.class public Lorg/bouncycastle/asn1/esf/SignerLocation;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

.field private postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjects()Ljava/util/Enumeration;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "illegal tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_0

    :pswitch_1
    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->isExplicit()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v1

    const/4 v2, 0x6

    if-le v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "postal address must contain less than 6 strings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    goto :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/ASN1UTF8String;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v0

    invoke-static {p2}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-direct {p0, v0, v1, p3}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x6

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "postal address must contain less than 6 strings"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    iput-object p2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    iput-object p3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;[Lorg/bouncycastle/asn1/x500/DirectoryString;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v0, p3}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/x500/DirectoryString;Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/esf/SignerLocation;
    .locals 2

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    :goto_0
    return-object p0

    :cond_1
    new-instance v0, Lorg/bouncycastle/asn1/esf/SignerLocation;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/esf/SignerLocation;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0
.end method


# virtual methods
.method public getCountry()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getCountryName()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/esf/SignerLocation;->getCountry()Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getLocality()Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    return-object v0
.end method

.method public getLocalityName()Lorg/bouncycastle/asn1/DERUTF8String;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERUTF8String;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/esf/SignerLocation;->getLocality()Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERUTF8String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getPostal()[Lorg/bouncycastle/asn1/x500/DirectoryString;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    new-array v1, v0, [Lorg/bouncycastle/asn1/x500/DirectoryString;

    const/4 v0, 0x0

    :goto_1
    array-length v2, v1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/asn1/x500/DirectoryString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x500/DirectoryString;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public getPostalAddress()Lorg/bouncycastle/asn1/ASN1Sequence;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->countryName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->localityName:Lorg/bouncycastle/asn1/x500/DirectoryString;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    if-eqz v1, :cond_2

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/asn1/esf/SignerLocation;->postalAddress:Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_2
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
