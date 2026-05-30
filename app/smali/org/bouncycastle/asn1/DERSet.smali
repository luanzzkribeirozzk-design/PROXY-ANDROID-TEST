.class public Lorg/bouncycastle/asn1/DERSet;
.super Lorg/bouncycastle/asn1/ASN1Set;


# instance fields
.field private contentsLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;Z)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method constructor <init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/DERSet;->checkSorted(Z)Z

    move-result v0

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/asn1/ASN1Set;-><init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1Set;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return-void
.end method

.method private static checkSorted(Z)Z
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DERSet elements should always be in sorted order"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return p0
.end method

.method public static convert(Lorg/bouncycastle/asn1/ASN1Set;)Lorg/bouncycastle/asn1/DERSet;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERSet;

    return-object v0
.end method

.method private getContentsLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v3, v0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    return v0
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v0, 0x0

    const/16 v1, 0x31

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getDERSubStream()Lorg/bouncycastle/asn1/DEROutputStream;

    move-result-object v3

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v4, v1

    iget v1, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    if-gez v1, :cond_0

    const/16 v1, 0x10

    if-le v4, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERSet;->getContentsLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_0
    if-ge v0, v4, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/asn1/DERSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1, v3, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v5, v4, [Lorg/bouncycastle/asn1/ASN1Primitive;

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v6, p0, Lorg/bouncycastle/asn1/DERSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v1

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput v2, p0, Lorg/bouncycastle/asn1/DERSet;->contentsLength:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v1, v5, v0

    invoke-virtual {v1, v3, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method encodedLength(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DERSet;->getContentsLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DERSet;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Set;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object p0

    goto :goto_0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method
