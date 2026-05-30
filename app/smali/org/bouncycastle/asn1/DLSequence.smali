.class public Lorg/bouncycastle/asn1/DLSequence;
.super Lorg/bouncycastle/asn1/ASN1Sequence;


# instance fields
.field private contentsLength:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Sequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    return-void
.end method

.method private getContentsLength()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    if-gez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v3, v0

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v1

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    iput v2, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

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

    const/16 v1, 0x30

    invoke-virtual {p1, p2, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getDLSubStream()Lorg/bouncycastle/asn1/DLOutputStream;

    move-result-object v3

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v4, v1

    iget v1, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    if-gez v1, :cond_0

    const/16 v1, 0x10

    if-le v4, v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result v1

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_0
    if-ge v0, v4, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v1, v1, v0

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    invoke-virtual {v3, v1, v7}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-array v5, v4, [Lorg/bouncycastle/asn1/ASN1Primitive;

    move v1, v0

    move v2, v0

    :goto_1
    if-ge v1, v4, :cond_2

    iget-object v6, p0, Lorg/bouncycastle/asn1/DLSequence;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v1

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v6, v7}, Lorg/bouncycastle/asn1/ASN1Primitive;->encodedLength(Z)I

    move-result v6

    add-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput v2, p0, Lorg/bouncycastle/asn1/DLSequence;->contentsLength:I

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    :goto_2
    if-ge v0, v4, :cond_3

    aget-object v1, v5, v0

    invoke-virtual {v3, v1, v7}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitive(Lorg/bouncycastle/asn1/ASN1Primitive;Z)V

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

    invoke-direct {p0}, Lorg/bouncycastle/asn1/DLSequence;->getContentsLength()I

    move-result v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method toASN1BitString()Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DLBitString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLSequence;->getConstructedBitStrings()[Lorg/bouncycastle/asn1/ASN1BitString;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lorg/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method toASN1External()Lorg/bouncycastle/asn1/ASN1External;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DLExternal;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DLExternal;-><init>(Lorg/bouncycastle/asn1/DLSequence;)V

    return-object v0
.end method

.method toASN1OctetString()Lorg/bouncycastle/asn1/ASN1OctetString;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLSequence;->getConstructedOctetStrings()[Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lorg/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    return-object v0
.end method

.method toASN1Set()Lorg/bouncycastle/asn1/ASN1Set;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DLSet;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/DLSequence;->toArrayInternal()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DLSet;-><init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 0

    return-object p0
.end method
