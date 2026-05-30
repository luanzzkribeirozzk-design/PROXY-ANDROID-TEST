.class public abstract Lorg/bouncycastle/asn1/ASN1Set;
.super Lorg/bouncycastle/asn1/ASN1Primitive;

# interfaces
.implements Lorg/bouncycastle/util/Iterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/bouncycastle/asn1/ASN1Primitive;",
        "Lorg/bouncycastle/util/Iterable",
        "<",
        "Lorg/bouncycastle/asn1/ASN1Encodable;",
        ">;"
    }
.end annotation


# static fields
.field static final TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;


# instance fields
.field protected final elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

.field protected sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Set$1;

    const-class v1, Lorg/bouncycastle/asn1/ASN1Set;

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/ASN1Set$1;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Lorg/bouncycastle/asn1/ASN1Set;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    sget-object v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;Z)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elementVector\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->size()I

    move-result v0

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->copyElements()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->sort([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez p2, :cond_1

    array-length v0, v0

    if-ge v0, v1, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_2
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->takeElements()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method constructor <init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez p1, :cond_0

    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_1
    const/4 p2, 0x0

    goto :goto_0
.end method

.method protected constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;Z)V
    .locals 3

    const/4 v2, 0x2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->isNullOrContainsNull([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'elements\' cannot be null, or contain null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lorg/bouncycastle/asn1/ASN1Encodable;)[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-eqz p2, :cond_1

    array-length v1, v0

    if-lt v1, v2, :cond_1

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->sort([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez p2, :cond_2

    array-length v0, v0

    if-ge v0, v2, :cond_3

    :cond_2
    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void

    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method constructor <init>([Lorg/bouncycastle/asn1/ASN1Encodable;[Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Primitive;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object p2, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method private static getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B
    .locals 2

    :try_start_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    const-string v1, "DER"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cannot encode object added to SET"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 4

    if-eqz p0, :cond_0

    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v0, :cond_1

    :cond_0
    check-cast p0, Lorg/bouncycastle/asn1/ASN1Set;

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

    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1Set;

    if-eqz v1, :cond_3

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    goto :goto_0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    :try_start_0
    sget-object v0, Lorg/bouncycastle/asn1/ASN1Set;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    check-cast p0, [B

    invoke-virtual {v0, p0}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromByteArray([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to construct set from byte[]: "

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

    const-string v2, "unknown object in getInstance: "

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

.method public static getInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Set;
    .locals 1

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Set;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->getContextInstance(Lorg/bouncycastle/asn1/ASN1TaggedObject;Z)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Set;

    return-object v0
.end method

.method private static lessThanOrEqual([B[B)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xdf

    aget-byte v3, p1, v1

    and-int/lit16 v3, v3, 0xdf

    if-eq v2, v3, :cond_2

    if-ge v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    aget-byte v4, p0, v2

    aget-byte v5, p1, v2

    if-eq v4, v5, :cond_3

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-lt v3, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    aget-byte v2, p0, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    if-le v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private static sort([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 11

    const/4 v8, 0x2

    array-length v9, p0

    if-ge v9, v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    aget-object v5, p0, v0

    const/4 v0, 0x1

    aget-object v6, p0, v0

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    invoke-static {v6}, Lorg/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v2

    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_6

    move-object v0, v1

    move-object v3, v2

    move-object v4, v5

    move-object v7, v6

    :goto_1
    move-object v2, v0

    move-object v6, v4

    :goto_2
    if-ge v8, v9, :cond_5

    aget-object v5, p0, v8

    invoke-static {v5}, Lorg/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v1

    invoke-static {v2, v1}, Lorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v8, -0x2

    aput-object v7, p0, v0

    move-object v0, v1

    move-object v3, v2

    move-object v4, v5

    move-object v7, v6

    :goto_3
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move-object v2, v0

    move-object v6, v4

    goto :goto_2

    :cond_1
    invoke-static {v3, v1}, Lorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v0, v8, -0x2

    aput-object v7, p0, v0

    move-object v0, v2

    move-object v3, v1

    move-object v4, v6

    move-object v7, v5

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v8, -0x1

    :goto_4
    add-int/lit8 v0, v0, -0x1

    if-lez v0, :cond_3

    add-int/lit8 v4, v0, -0x1

    aget-object v4, p0, v4

    invoke-static {v4}, Lorg/bouncycastle/asn1/ASN1Set;->getDEREncoded(Lorg/bouncycastle/asn1/ASN1Encodable;)[B

    move-result-object v10

    invoke-static {v10, v1}, Lorg/bouncycastle/asn1/ASN1Set;->lessThanOrEqual([B[B)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    aput-object v5, p0, v0

    move-object v0, v2

    move-object v4, v6

    goto :goto_3

    :cond_4
    aput-object v4, p0, v0

    goto :goto_4

    :cond_5
    add-int/lit8 v0, v9, -0x2

    aput-object v7, p0, v0

    add-int/lit8 v0, v9, -0x1

    aput-object v6, p0, v0

    goto :goto_0

    :cond_6
    move-object v0, v2

    move-object v3, v1

    move-object v4, v6

    move-object v7, v5

    goto :goto_1
.end method


# virtual methods
.method asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z
    .locals 7

    const/4 v2, 0x0

    instance-of v0, p1, Lorg/bouncycastle/asn1/ASN1Set;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/asn1/ASN1Set;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/DERSet;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Set;->toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/DERSet;

    move v3, v2

    :goto_1
    if-ge v3, v4, :cond_3

    iget-object v5, v0, Lorg/bouncycastle/asn1/DERSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v5, v5, v3

    invoke-interface {v5}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    iget-object v6, v1, Lorg/bouncycastle/asn1/DERSet;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v6, v6, v3

    invoke-interface {v6}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v6

    if-eq v5, v6, :cond_2

    invoke-virtual {v5, v6}, Lorg/bouncycastle/asn1/ASN1Primitive;->asn1Equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v5

    if-nez v5, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method encodeConstructed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getObjects()Ljava/util/Enumeration;
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1Set$2;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/ASN1Set$2;-><init>(Lorg/bouncycastle/asn1/ASN1Set;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v1, v0

    add-int/lit8 v0, v1, 0x1

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v2, v2, v1

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/ASN1Primitive;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    goto :goto_0

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/util/Arrays$Iterator;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/util/Arrays$Iterator;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method

.method public parser()Lorg/bouncycastle/asn1/ASN1SetParser;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v0

    new-instance v1, Lorg/bouncycastle/asn1/ASN1Set$3;

    invoke-direct {v1, p0, v0}, Lorg/bouncycastle/asn1/ASN1Set$3;-><init>(Lorg/bouncycastle/asn1/ASN1Set;I)V

    return-object v1
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    return v0
.end method

.method public toArray()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->cloneElements([Lorg/bouncycastle/asn1/ASN1Encodable;)[Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method toDERObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, [Lorg/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Set;->sort([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    new-instance v0, Lorg/bouncycastle/asn1/DERSet;

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DERSet;-><init>(Z[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method toDLObject()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3

    new-instance v0, Lorg/bouncycastle/asn1/DLSet;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v2, p0, Lorg/bouncycastle/asn1/ASN1Set;->sortedElements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/asn1/DLSet;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;[Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Set;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "[]"

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x5b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1Set;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    if-lt v0, v1, :cond_1

    const/16 v0, 0x5d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
