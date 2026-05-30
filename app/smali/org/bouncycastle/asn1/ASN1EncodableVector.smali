.class public Lorg/bouncycastle/asn1/ASN1EncodableVector;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_CAPACITY:I = 0xa

.field static final EMPTY_ELEMENTS:[Lorg/bouncycastle/asn1/ASN1Encodable;


# instance fields
.field private copyOnWrite:Z

.field private elementCount:I

.field private elements:[Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    sput-object v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'initialCapacity\' must not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lorg/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iput v1, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    iput-boolean v1, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-void

    :cond_1
    new-array v0, p1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0
.end method

.method static cloneElements([Lorg/bouncycastle/asn1/ASN1Encodable;)[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 2

    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lorg/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, [Lorg/bouncycastle/asn1/ASN1Encodable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0
.end method

.method private doAddAll([Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    array-length v2, p1

    if-ge v2, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v3, v3

    iget v4, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v4, v2

    if-le v4, v3, :cond_2

    :goto_1
    iget-boolean v3, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v0, v3

    if-eqz v0, :cond_1

    invoke-direct {p0, v4}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    :cond_1
    aget-object v0, p1, v1

    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget v5, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/2addr v5, v1

    aput-object v0, v3, v5

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_1

    iput v4, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    goto :goto_0
.end method

.method private reallocate(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    shr-int/lit8 v1, p1, 0x1

    add-int/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-boolean v3, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    return-void
.end method


# virtual methods
.method public add(Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'element\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    add-int/lit8 v1, v1, 0x1

    if-le v1, v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iget-boolean v2, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    or-int/2addr v0, v2

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->reallocate(I)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    aput-object p1, v0, v2

    iput v1, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAll(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'other\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p1, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    const-string v1, "\'other\' elements cannot be null"

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->doAddAll([Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)V

    return-void
.end method

.method public addAll([Lorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\'others\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-string v0, "\'others\' elements cannot be null"

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->doAddAll([Lorg/bouncycastle/asn1/ASN1Encodable;Ljava/lang/String;)V

    return-void
.end method

.method copyElements()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lorg/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public get(I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 3

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-lt p1, v0, :cond_0

    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " >= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    return v0
.end method

.method takeElements()[Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->EMPTY_ELEMENTS:[Lorg/bouncycastle/asn1/ASN1Encodable;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->copyOnWrite:Z

    iget-object v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    new-array v0, v0, [Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elements:[Lorg/bouncycastle/asn1/ASN1Encodable;

    iget v2, p0, Lorg/bouncycastle/asn1/ASN1EncodableVector;->elementCount:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method
