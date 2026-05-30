.class public Lorg/bouncycastle/asn1/BEROctetString;
.super Lorg/bouncycastle/asn1/ASN1OctetString;


# static fields
.field private static final DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

.field private final segmentLimit:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method private constructor <init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;I)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/ASN1OctetString;-><init>([B)V

    iput-object p2, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    iput p3, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1OctetString;)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([Lorg/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1OctetString;I)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/asn1/BEROctetString;->flattenOctetStrings([Lorg/bouncycastle/asn1/ASN1OctetString;)[B

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/asn1/BEROctetString;-><init>([B[Lorg/bouncycastle/asn1/ASN1OctetString;I)V

    return-void
.end method

.method static flattenOctetStrings([Lorg/bouncycastle/asn1/ASN1OctetString;)[B
    .locals 7

    const/4 v2, 0x0

    array-length v4, p0

    packed-switch v4, :pswitch_data_0

    move v0, v2

    move v1, v2

    :goto_0
    if-ge v0, v4, :cond_1

    aget-object v3, p0, v0

    iget-object v3, v3, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    sget-object v0, Lorg/bouncycastle/asn1/BEROctetString;->EMPTY_OCTETS:[B

    :cond_0
    :goto_1
    return-object v0

    :pswitch_1
    aget-object v0, p0, v2

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    goto :goto_1

    :cond_1
    new-array v0, v1, [B

    move v1, v2

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_0

    aget-object v5, p0, v3

    iget-object v5, v5, Lorg/bouncycastle/asn1/ASN1OctetString;->string:[B

    array-length v6, v5

    invoke-static {v5, v2, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v5

    add-int/2addr v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v0, 0x24

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lorg/bouncycastle/asn1/ASN1Primitive;)V

    :cond_0
    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    return-void

    :cond_1
    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v2, v2

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    invoke-static {p1, v3, v4, v0, v2}, Lorg/bouncycastle/asn1/DEROctetString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    add-int/2addr v0, v2

    goto :goto_0
.end method

.method encodeConstructed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method encodedLength(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    move v2, v0

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    array-length v0, v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->elements:[Lorg/bouncycastle/asn1/ASN1OctetString;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1OctetString;->encodedLength(Z)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v1, v1

    iget v2, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    invoke-static {v4, v2}, Lorg/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/asn1/BEROctetString;->string:[B

    array-length v0, v0

    iget v3, p0, Lorg/bouncycastle/asn1/BEROctetString;->segmentLimit:I

    mul-int/2addr v1, v3

    sub-int/2addr v0, v1

    if-lez v0, :cond_2

    invoke-static {v4, v0}, Lorg/bouncycastle/asn1/DEROctetString;->encodedLength(ZI)I

    move-result v0

    add-int/2addr v2, v0

    :cond_2
    return v2
.end method
