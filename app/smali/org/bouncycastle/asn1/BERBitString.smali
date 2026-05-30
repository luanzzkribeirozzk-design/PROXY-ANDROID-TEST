.class public Lorg/bouncycastle/asn1/BERBitString;
.super Lorg/bouncycastle/asn1/ASN1BitString;


# static fields
.field private static final DEFAULT_SEGMENT_LIMIT:I = 0x3e8


# instance fields
.field private final elements:[Lorg/bouncycastle/asn1/ASN1BitString;

.field private final segmentLimit:I


# direct methods
.method public constructor <init>(BI)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>(BI)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    const/16 v0, 0x3e8

    iput v0, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>([BI)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BI)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    iput p3, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method constructor <init>([BZ)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    const/16 v0, 0x3e8

    iput v0, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1BitString;)V
    .locals 1

    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/BERBitString;-><init>([Lorg/bouncycastle/asn1/ASN1BitString;I)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/ASN1BitString;I)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/asn1/BERBitString;->flattenBitStrings([Lorg/bouncycastle/asn1/ASN1BitString;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1BitString;-><init>([BZ)V

    iput-object p1, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    iput p2, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    return-void
.end method

.method static flattenBitStrings([Lorg/bouncycastle/asn1/ASN1BitString;)[B
    .locals 8

    const/4 v3, 0x1

    const/4 v1, 0x0

    array-length v4, p0

    packed-switch v4, :pswitch_data_0

    add-int/lit8 v5, v4, -0x1

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v5, :cond_2

    aget-object v6, p0, v0

    iget-object v6, v6, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v7, v6, v1

    if-eqz v7, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only the last nested bitstring can have padding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-array v0, v3, [B

    aput-byte v1, v0, v1

    :cond_0
    :goto_1
    return-object v0

    :pswitch_1
    aget-object v0, p0, v1

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    goto :goto_1

    :cond_1
    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    add-int/2addr v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    aget-object v0, p0, v5

    iget-object v0, v0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v5, v0, v1

    array-length v0, v0

    add-int/2addr v0, v2

    new-array v0, v0, [B

    aput-byte v5, v0, v1

    move v2, v3

    :goto_2
    if-ge v1, v4, :cond_0

    aget-object v5, p0, v1

    iget-object v5, v5, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v6, v5

    add-int/lit8 v6, v6, -0x1

    invoke-static {v5, v3, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v1, v1

    invoke-static {p1, p2, v0, v2, v1}, Lorg/bouncycastle/asn1/DLBitString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z[BII)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x23

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    const/16 v0, 0x80

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writePrimitives([Lorg/bouncycastle/asn1/ASN1Primitive;)V

    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    aget-byte v9, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v7, v0

    add-int/lit8 v8, v7, -0x1

    iget v0, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v5, v0, -0x1

    :goto_2
    if-le v8, v5, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    sub-int v4, v7, v8

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/asn1/DLBitString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    sub-int/2addr v8, v5

    goto :goto_2

    :cond_3
    iget-object v6, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    sub-int/2addr v7, v8

    move-object v3, p1

    move v4, v1

    move v5, v9

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/asn1/DLBitString;->encode(Lorg/bouncycastle/asn1/ASN1OutputStream;ZB[BII)V

    goto :goto_1
.end method

.method encodeConstructed()Z
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method encodedLength(Z)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/BERBitString;->encodeConstructed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v0, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-eqz p1, :cond_2

    const/4 v0, 0x4

    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    array-length v0, v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/BERBitString;->elements:[Lorg/bouncycastle/asn1/ASN1BitString;

    aget-object v0, v0, v1

    invoke-virtual {v0, v4}, Lorg/bouncycastle/asn1/ASN1BitString;->encodedLength(Z)I

    move-result v0

    add-int/2addr v2, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v1, v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_4

    move v2, v0

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x2

    iget v2, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    invoke-static {v4, v2}, Lorg/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/asn1/BERBitString;->contents:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/asn1/BERBitString;->segmentLimit:I

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v1, v3

    sub-int v1, v2, v1

    invoke-static {v4, v1}, Lorg/bouncycastle/asn1/DLBitString;->encodedLength(ZI)I

    move-result v1

    add-int v2, v0, v1

    goto :goto_0
.end method
