.class public abstract Lorg/bouncycastle/asn1/ASN1BMPString;
.super Lorg/bouncycastle/asn1/ASN1Primitive;

# interfaces
.implements Lorg/bouncycastle/asn1/ASN1String;


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field final string:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1BMPString$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1BMPString;

    const/16 v2, 0x1e

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1BMPString$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    return-void
.end method

.method constructor <init>([B)V
    .locals 5

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "malformed BMPString encoding encountered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    div-int/lit8 v1, v0, 0x2

    new-array v2, v1, [C

    const/4 v0, 0x0

    :goto_0
    if-eq v0, v1, :cond_2

    mul-int/lit8 v3, v0, 0x2

    aget-byte v3, p1, v3

    shl-int/lit8 v3, v3, 0x8

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v3, v4

    int-to-char v3, v3

    aput-char v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iput-object v2, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    return-void
.end method

.method constructor <init>([C)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'string\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    return-void
.end method

.method static createPrimitive([B)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([B)V

    return-object v0
.end method

.method static createPrimitive([C)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DERBMPString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DERBMPString;-><init>([C)V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1BMPString;

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

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-eqz v1, :cond_2

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BMPString;

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BMPString;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "encoding error in getInstance: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1BMPString;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/ASN1BMPString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1BMPString;

    return-object v0
.end method


# virtual methods
.method final asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1BMPString;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1BMPString;

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    iget-object v1, p1, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([C[C)Z

    move-result v0

    goto :goto_0
.end method

.method final encode(Lorg/bouncycastle/asn1/ASN1OutputStream;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v3, v0

    const/16 v0, 0x1e

    invoke-virtual {p1, p2, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeIdentifier(ZI)V

    mul-int/lit8 v0, v3, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeDL(I)V

    new-array v4, v10, [B

    and-int/lit8 v0, v3, -0x4

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v5, v5, v2

    iget-object v6, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v7, v2, 0x1

    aget-char v6, v6, v7

    iget-object v7, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v8, v2, 0x2

    aget-char v7, v7, v8

    iget-object v8, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    add-int/lit8 v9, v2, 0x3

    aget-char v8, v8, v9

    add-int/lit8 v2, v2, 0x4

    shr-int/lit8 v9, v5, 0x8

    int-to-byte v9, v9

    aput-byte v9, v4, v1

    const/4 v9, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v9

    const/4 v5, 0x2

    shr-int/lit8 v9, v6, 0x8

    int-to-byte v9, v9

    aput-byte v9, v4, v5

    const/4 v5, 0x3

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x4

    shr-int/lit8 v6, v7, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x5

    int-to-byte v6, v7

    aput-byte v6, v4, v5

    const/4 v5, 0x6

    shr-int/lit8 v6, v8, 0x8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    const/4 v5, 0x7

    int-to-byte v6, v8

    aput-byte v6, v4, v5

    invoke-virtual {p1, v4, v1, v10}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    if-ge v2, v3, :cond_2

    move v0, v1

    :cond_1
    iget-object v5, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    aget-char v5, v5, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v0, 0x1

    shr-int/lit8 v7, v5, 0x8

    int-to-byte v7, v7

    aput-byte v7, v4, v0

    add-int/lit8 v0, v6, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v6

    if-lt v2, v3, :cond_1

    invoke-virtual {p1, v4, v1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->write([BII)V

    :cond_2
    return-void
.end method

.method final encodeConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final encodedLength(Z)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Lorg/bouncycastle/asn1/ASN1OutputStream;->getLengthOfEncodingDL(ZI)I

    move-result v0

    return v0
.end method

.method public final getString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1BMPString;->string:[C

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->hashCode([C)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1BMPString;->getString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
