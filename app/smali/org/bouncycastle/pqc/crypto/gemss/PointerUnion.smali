.class Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;
.super Lorg/bouncycastle/pqc/crypto/gemss/Pointer;


# instance fields
.field protected remainder:I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v1, 0x0

    ushr-int/lit8 v2, p1, 0x3

    and-int/lit8 v0, p1, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public constructor <init>([B)V
    .locals 12

    const/4 v1, 0x0

    array-length v0, p1

    shr-int/lit8 v2, v0, 0x3

    array-length v0, p1

    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;-><init>(I)V

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v3, v3

    if-ge v0, v3, :cond_2

    move v3, v1

    :goto_2
    const/16 v4, 0x8

    if-ge v3, v4, :cond_1

    array-length v4, p1

    if-ge v2, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v6, v4, v0

    aget-byte v5, p1, v2

    int-to-long v8, v5

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    shl-int/lit8 v5, v3, 0x3

    shl-long/2addr v8, v5

    or-long/2addr v6, v8

    aput-wide v6, v4, v0

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method


# virtual methods
.method public changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;)V
    .locals 1

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public fill(I[BII)V
    .locals 10

    const-wide/16 v8, -0x1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int v2, v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v4, v0, v2

    shl-int/lit8 v3, v1, 0x3

    shl-long v6, v8, v3

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v0, v2

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v1, v3, :cond_0

    if-ge v0, p4, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v4, v3, v2

    aget-byte v6, p2, p3

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    shl-int/lit8 v8, v1, 0x3

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v2

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v0, v0, 0x8

    sub-int/2addr p4, v0

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    return-void
.end method

.method public fillBytes(I[BII)V
    .locals 10

    const-wide/16 v8, -0x1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int v1, p1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    ushr-int/lit8 v2, v1, 0x3

    add-int/2addr v0, v2

    and-int/lit8 v2, v1, 0x7

    if-eqz v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v4, v1, v0

    shl-int/lit8 v3, v2, 0x3

    shl-long v6, v8, v3

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v1, v0

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    if-ge v1, p4, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v4, v3, v0

    aget-byte v6, p2, p3

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    shl-int/lit8 v8, v2, 0x3

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p4, v1

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    sub-int/2addr v0, v1

    invoke-super {p0, v0, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    return-void
.end method

.method public fillRandomBytes(ILjava/security/SecureRandom;I)V
    .locals 3

    new-array v0, p3, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->fillBytes(I[BII)V

    return-void
.end method

.method public get()J
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v0, v0, v1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v0, v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public get(I)J
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public getByte()B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v0, v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public getByte(I)B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v1, p1

    ushr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v1, p1

    and-int/lit8 v1, v1, 0x7

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v2, v2, v0

    shl-int/lit8 v0, v1, 0x3

    ushr-long v0, v2, v0

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public getWithCheck()J
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v0, v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v0, v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v0, v0, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/lit8 v3, v3, 0x1

    aget-wide v2, v2, v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public getWithCheck(I)J
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v0, v1, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v0, v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v2, v1, v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v1, v1, 0x3

    ushr-long/2addr v2, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v0, v0, 0x1

    aget-wide v0, v1, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    goto :goto_0
.end method

.method public indexReset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public moveNextByte()V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    ushr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public moveNextBytes(I)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    ushr-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    return-void
.end method

.method public set(IJ)V
    .locals 12

    const-wide/16 v10, -0x1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    shl-long v4, p2, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v7, p1

    aget-wide v6, v6, v7

    ushr-long v8, v10, v1

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    ushr-long v4, p2, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v6, p1

    add-int/lit8 v6, v6, 0x1

    aget-wide v6, v1, v6

    shl-long v0, v10, v0

    and-long/2addr v0, v6

    or-long/2addr v0, v4

    aput-wide v0, v2, v3

    goto :goto_0
.end method

.method public setAnd(IJ)V
    .locals 12

    const-wide/16 v10, -0x1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setAnd(IJ)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v1, v1, 0x8

    shl-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    aget-wide v4, v2, v3

    shl-long v6, p2, v0

    ushr-long v8, v10, v1

    or-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v3, p1

    add-int/lit8 v3, v3, 0x1

    aget-wide v4, v2, v3

    ushr-long v6, p2, v1

    shl-long v0, v10, v0

    or-long/2addr v0, v6

    and-long/2addr v0, v4

    aput-wide v0, v2, v3

    goto :goto_0
.end method

.method public setAndByte(IJ)V
    .locals 12

    const-wide/16 v8, 0xff

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v4, v2, v1

    and-long v6, p2, v8

    shl-int/lit8 v3, v0, 0x3

    shl-long/2addr v6, v3

    shl-int/lit8 v0, v0, 0x3

    shl-long/2addr v8, v0

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    or-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v2, v1

    return-void
.end method

.method public setAndThenXorByte(IJJ)V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x3

    and-int/lit8 v0, v0, 0x7

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v4, v2, v1

    const-wide/16 v6, 0xff

    and-long/2addr v6, p2

    shl-int/lit8 v3, v0, 0x3

    shl-long/2addr v6, v3

    const-wide/16 v8, 0xff

    shl-int/lit8 v3, v0, 0x3

    shl-long/2addr v8, v3

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    or-long/2addr v6, v8

    and-long/2addr v4, v6

    aput-wide v4, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v4, v2, v1

    const-wide/16 v6, 0xff

    and-long v6, v6, p4

    shl-int/lit8 v0, v0, 0x3

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    return-void
.end method

.method public setByte(I)V
    .locals 9

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v4, 0x3

    shl-long/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v4, v4, v5

    const-wide/16 v6, -0x1

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v8, v8, 0x8

    shl-int/lit8 v8, v8, 0x3

    ushr-long/2addr v6, v8

    and-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method public setByteIndex(I)V
    .locals 1

    and-int/lit8 v0, p1, 0x7

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    ushr-int/lit8 v0, p1, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    return-void
.end method

.method public setRangeClear(II)V
    .locals 8

    const-wide/16 v6, -0x1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    ushr-long v4, v6, v4

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setRangeClear(II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v4, 0x3

    shl-long v4, v6, v4

    and-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public setXor(IJ)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(IJ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v4, 0x3

    shl-long v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    ushr-long v4, p2, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public setXor(J)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXor(J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v4, 0x3

    shl-long v4, p1, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v4, v4, 0x8

    shl-int/lit8 v4, v4, 0x3

    ushr-long v4, p1, v4

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    goto :goto_0
.end method

.method public setXorByte(I)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v2, v0, v1

    int-to-long v4, p1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v6, v6, 0x3

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    return-void
.end method

.method public setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V
    .locals 13

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_1

    invoke-super/range {p0 .. p4}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V

    :cond_0
    return-void

    :cond_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v4, v0, 0x3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v0, v0, 0x8

    shl-int/lit8 v5, v0, 0x3

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v1, 0x1

    aget-wide v6, v6, v1

    and-long v6, v6, p3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v8, v1, v3

    shl-long v10, v6, v4

    xor-long/2addr v8, v10

    aput-wide v8, v1, v3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v8, v1, v3

    ushr-long/2addr v6, v5

    xor-long/2addr v6, v8

    aput-wide v6, v1, v3

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0
.end method

.method public toBytes(I)[B
    .locals 6

    new-array v1, p1, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    :goto_0
    array-length v2, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    sub-int v2, v0, v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    ushr-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    aget-wide v4, v3, v4

    and-int/lit8 v3, v0, 0x7

    shl-int/lit8 v3, v3, 0x3

    ushr-long/2addr v4, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toBytesMove([BII)I
    .locals 7

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_1

    add-int/lit8 v2, p2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    aget-wide v4, v3, v4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    add-int/lit8 v6, v3, 0x1

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v3, v3, 0x3

    ushr-long/2addr v4, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    :cond_0
    add-int/lit8 v0, v0, 0x1

    move p2, v2

    goto :goto_0

    :cond_1
    return p2
.end method
