.class public abstract Lorg/bouncycastle/asn1/ASN1BitString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;
.implements Lorg/bouncycastle/asn1/ASN1BitStringParser;


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

.field private static final table:[C


# instance fields
.field final contents:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1BitString$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1BitString;

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1BitString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->table:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method constructor <init>(BI)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    const/4 v0, 0x7

    if-gt p2, v0, :cond_0

    if-gez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    aput-byte p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-void
.end method

.method constructor <init>([BI)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'data\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zero length data with non-zero pad bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x7

    if-gt p2, v0, :cond_2

    if-gez p2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    int-to-byte v0, p2

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->prepend([BB)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-void
.end method

.method constructor <init>([BZ)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'contents\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'contents\' cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-lez v0, :cond_3

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "zero length data with non-zero pad bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v1, 0x7

    if-le v0, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "pad bits cannot be greater than 7 or less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    return-void
.end method

.method static createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 4

    const/4 v3, 0x0

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "truncated BIT STRING detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_3

    const/4 v2, 0x7

    if-gt v1, v2, :cond_1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid pad bits detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p0, v0

    const/16 v2, 0xff

    shl-int v1, v2, v1

    and-int/2addr v1, v0

    int-to-byte v1, v1

    if-eq v0, v1, :cond_3

    new-instance v0, Lorg/bouncycastle/asn1/DLBitString;

    invoke-direct {v0, p0, v3}, Lorg/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    :goto_0
    return-object v0

    :cond_3
    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    invoke-direct {v0, p0, v3}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    goto :goto_0
.end method

.method protected static getBytes(I)[B
    .locals 5

    const/4 v1, 0x0

    if-nez p0, :cond_1

    new-array v0, v1, [B

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x4

    const/4 v0, 0x3

    :goto_0
    const/4 v3, 0x1

    if-lt v0, v3, :cond_2

    const/16 v3, 0xff

    mul-int/lit8 v4, v0, 0x8

    shl-int/2addr v3, v4

    and-int/2addr v3, p0

    if-eqz v3, :cond_3

    :cond_2
    new-array v0, v2, [B

    :goto_1
    if-ge v1, v2, :cond_0

    mul-int/lit8 v3, v1, 0x8

    shr-int v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1BitString;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_1
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_2

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1BitString;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BitString;

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BitString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct BIT STRING from byte[]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal object in getInstance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1BitString;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/ASN1BitString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BitString;

    return-object v0
.end method

.method protected static getPadBits(I)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x3

    :goto_0
    if-ltz v1, :cond_4

    if-eqz v1, :cond_0

    mul-int/lit8 v2, v1, 0x8

    shr-int v2, p0, v2

    if-eqz v2, :cond_1

    mul-int/lit8 v1, v1, 0x8

    shr-int v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    :goto_1
    if-nez v1, :cond_2

    :goto_2
    return v0

    :cond_0
    if-eqz p0, :cond_1

    and-int/lit16 v1, p0, 0xff

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_3
    shl-int/lit8 v1, v1, 0x1

    and-int/lit16 v2, v1, 0xff

    if-eqz v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    rsub-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_1
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 9

    const/16 v8, 0xff

    const/4 v0, 0x1

    const/4 v1, 0x0

    instance-of v2, p1, Lorg/bouncycastle/asn1/ASN1BitString;

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    check-cast p1, Lorg/bouncycastle/asn1/ASN1BitString;

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v4, p1, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v3

    array-length v5, v4

    if-ne v5, v2, :cond_0

    if-ne v2, v0, :cond_2

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v5, v2, -0x1

    move v2, v1

    :goto_1
    if-ge v2, v5, :cond_3

    aget-byte v6, v3, v2

    aget-byte v7, v4, v2

    if-ne v6, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    aget-byte v2, v3, v1

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, v3, v5

    shl-int v6, v8, v2

    and-int/2addr v3, v6

    int-to-byte v3, v3

    aget-byte v4, v4, v5

    shl-int v2, v8, v2

    and-int/2addr v2, v4

    int-to-byte v2, v2

    if-ne v3, v2, :cond_4

    :goto_2
    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method public getBitStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public getBytes()[B
    .locals 5

    const/4 v3, 0x1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    if-ne v0, v3, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ASN1OctetString;->EMPTY_OCTETS:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v1, v0, 0xff

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v2

    invoke-static {v0, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v0, v2

    const/16 v4, 0xff

    shl-int v1, v4, v1

    int-to-byte v1, v1

    and-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v0, v2

    goto :goto_0
.end method

.method public getLoadedObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public getOctetStream()Ljava/io/InputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expected octet-aligned bitstring, but found padBits: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getBitStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getOctets()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to get non-octet aligned data from BIT STRING"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v2, v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public getPadBits()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 6

    :try_start_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getEncoded()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    const/16 v0, 0x23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    if-eq v0, v3, :cond_0

    aget-byte v3, v1, v0

    sget-object v4, Lorg/bouncycastle/asn1/ASN1BitString;->table:[C

    ushr-int/lit8 v5, v3, 0x4

    and-int/lit8 v5, v5, 0xf

    aget-char v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v4, Lorg/bouncycastle/asn1/ASN1BitString;->table:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ParsingException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Internal error encoding BitString: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/asn1/ASN1ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v2, v2, v1

    const/16 v3, 0xff

    shl-int v0, v3, v0

    and-int/2addr v0, v2

    int-to-byte v0, v0

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    invoke-static {v2, v4, v1}, Lorg/bouncycastle/util/Arrays;->hashCode([BII)I

    move-result v1

    mul-int/lit16 v1, v1, 0x101

    xor-int/2addr v0, v1

    goto :goto_0
.end method

.method public intValue()I
    .locals 8

    const/4 v7, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v1, v2

    move v0, v3

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v5, v5, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v6, v1, -0x1

    mul-int/lit8 v6, v6, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v0, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-gt v2, v4, :cond_1

    if-ge v4, v7, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    aget-byte v2, v2, v4

    const/16 v3, 0xff

    shl-int v1, v3, v1

    and-int/2addr v1, v2

    int-to-byte v1, v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, v4, -0x1

    mul-int/lit8 v2, v2, 0x8

    shl-int/2addr v1, v2

    or-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public parser()Lorg/bouncycastle/asn1/ASN1BitStringParser;
    .locals 0

    return-object p0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DERBitString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BZ)V

    return-object v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DLBitString;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BitString;->contents:[B

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DLBitString;-><init>([BZ)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BitString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
