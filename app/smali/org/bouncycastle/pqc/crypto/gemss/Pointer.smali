.class Lorg/bouncycastle/pqc/crypto/gemss/Pointer;
.super Ljava/lang/Object;


# instance fields
.field protected array:[J

.field protected cp:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method


# virtual methods
.method public changeIndex(I)V
    .locals 0

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 1

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public changeIndex(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 1

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public copyFrom(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 4

    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v3, p1

    invoke-static {v0, v1, v2, v3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public copyFrom(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 4

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public fill(I[BII)V
    .locals 10

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p1

    move v1, v2

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v3, v3

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v1, 0x8

    if-gt v3, p4, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    invoke-static {p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    aput-wide v4, v3, v0

    add-int/lit8 p3, p3, 0x8

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, p4, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v0

    :goto_1
    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    if-ge v1, p4, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v4, v3, v0

    aget-byte v6, p2, p3

    int-to-long v6, v6

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    shl-int/lit8 v8, v2, 0x3

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, v3, v0

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 p3, p3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public fillRandom(ILjava/security/SecureRandom;I)V
    .locals 3

    new-array v0, p3, [B

    invoke-virtual {p2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    array-length v2, v0

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->fill(I[BII)V

    return-void
.end method

.method public get()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public get(I)J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getArray()[J
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    return-object v0
.end method

.method public getD_for_not0_or_plus(II)I
    .locals 10

    const/4 v4, 0x0

    const-wide/16 v0, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    move-wide v6, v0

    move v3, v2

    move v5, v4

    :goto_0
    if-lez p2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v3, 0x1

    aget-wide v0, v0, v3

    const/4 v3, 0x1

    move v4, v3

    :goto_1
    if-ge v4, p1, :cond_0

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v2, 0x1

    aget-wide v8, v8, v2

    or-long/2addr v0, v8

    add-int/lit8 v4, v4, 0x1

    move v2, v3

    goto :goto_1

    :cond_0
    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->ORBITS_UINT(J)J

    move-result-wide v0

    or-long/2addr v0, v6

    int-to-long v4, v5

    add-long/2addr v4, v0

    long-to-int v4, v4

    add-int/lit8 p2, p2, -0x1

    move-wide v6, v0

    move v3, v2

    move v5, v4

    goto :goto_0

    :cond_1
    return v5
.end method

.method public getDotProduct(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)J
    .locals 14

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v2, p1

    move-object/from16 v0, p2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v4, p3, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v2, 0x1

    aget-wide v8, v3, v2

    move-object/from16 v0, p2

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v4, 0x1

    aget-wide v4, v2, v4

    and-long/2addr v4, v8

    const/4 v2, 0x1

    move v7, v6

    :goto_0
    move/from16 v0, p4

    if-ge v2, v0, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v7, 0x1

    aget-wide v10, v6, v7

    move-object/from16 v0, p2

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v3, 0x1

    aget-wide v12, v7, v3

    and-long/2addr v10, v12

    xor-long/2addr v4, v10

    add-int/lit8 v2, v2, 0x1

    move v3, v6

    move v7, v8

    goto :goto_0

    :cond_0
    return-wide v4
.end method

.method public getIndex()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return v0
.end method

.method public getLength()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public indexReset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public is0_gf2n(II)I
    .locals 6

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v2

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->get(I)J

    move-result-wide v4

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSUtils;->NORBITS_UINT(J)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public isEqual_nocst_gf2(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)I
    .locals 10

    const/4 v0, 0x0

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    move v1, v0

    move v4, v3

    :goto_0
    if-ge v1, p2, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v2, 0x1

    aget-wide v6, v5, v2

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v4, 0x1

    aget-wide v8, v2, v4

    cmp-long v2, v6, v8

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public move(I)V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public moveIncremental()V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public searchDegree(III)I
    .locals 1

    :goto_0
    mul-int v0, p1, p3

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->is0_gf2n(II)I

    move-result v0

    if-eqz v0, :cond_0

    if-lt p1, p2, :cond_0

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public set(IJ)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aput-wide p2, v0, v1

    return-void
.end method

.method public set(J)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public set1_gf2n(II)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v1, v0, 0x1

    const-wide/16 v4, 0x1

    aput-wide v4, v2, v0

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v1, 0x1

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setAnd(IJ)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    and-long/2addr v2, p2

    aput-wide v2, v0, v1

    return-void
.end method

.method public setAnd(J)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v2, v0, v1

    and-long/2addr v2, p1

    aput-wide v2, v0, v1

    return-void
.end method

.method public setClear(I)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method public setRangeClear(II)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int v2, v0, p2

    const-wide/16 v4, 0x0

    invoke-static {v1, v0, v2, v4, v5}, Ljava/util/Arrays;->fill([JIIJ)V

    return-void
.end method

.method public setRangeFromXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 14

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v6, p1, v2

    move-object/from16 v0, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v4, p3, v2

    move-object/from16 v0, p4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v3, p5, v2

    const/4 v2, 0x0

    move v5, v4

    move v7, v6

    :goto_0
    move/from16 v0, p6

    if-ge v2, v0, :cond_0

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v7, 0x1

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v5, 0x1

    aget-wide v10, v4, v5

    move-object/from16 v0, p4

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v12, v5, v3

    xor-long/2addr v10, v12

    aput-wide v10, v9, v7

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v5, v6

    move v7, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRangeFromXor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 12

    const/4 v5, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    move v2, v1

    move v4, v3

    move v6, v5

    :goto_0
    if-ge v6, p3, :cond_0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v4, 0x1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v2, 0x1

    aget-wide v8, v1, v2

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v1, v0, 0x1

    aget-wide v10, v2, v0

    xor-long/2addr v8, v10

    aput-wide v8, v7, v4

    add-int/lit8 v6, v6, 0x1

    move v0, v1

    move v2, v3

    move v4, v5

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRangeFromXorAndMask_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;JI)V
    .locals 15

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    move-object/from16 v0, p1

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    move-object/from16 v0, p2

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v2, 0x0

    move v5, v4

    move v7, v6

    :goto_0
    move/from16 v0, p5

    if-ge v2, v0, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v8, v6, v5

    move-object/from16 v0, p2

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v10, v6, v3

    xor-long/2addr v8, v10

    and-long v8, v8, p3

    aput-wide v8, v4, v7

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v5, 0x1

    aget-wide v8, v4, v5

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v10, v10, v7

    xor-long/2addr v8, v10

    aput-wide v8, v4, v5

    move-object/from16 v0, p2

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v10, v5, v3

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v7, 0x1

    aget-wide v12, v9, v7

    xor-long/2addr v10, v12

    aput-wide v10, v5, v3

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v5, v6

    move v7, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;I)V
    .locals 12

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v0, :cond_1

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    invoke-static {v0, v1, v2, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void

    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v0, v0, 0x8

    shl-int/lit8 v4, v0, 0x3

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v5, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v2, 0x1

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v8, v7, v1

    ushr-long/2addr v8, v5

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v1, v1, 0x1

    aget-wide v10, v7, v1

    shl-long/2addr v10, v4

    xor-long/2addr v8, v10

    aput-wide v8, v6, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0
.end method

.method public setRangePointerUnion(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 18

    and-int/lit8 v6, p3, 0x3f

    rsub-int/lit8 v7, v6, 0x40

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v10, v9, v3

    ushr-long/2addr v10, v6

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v12, v9, v3

    shl-long/2addr v12, v7

    xor-long/2addr v10, v12

    aput-wide v10, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_0

    :cond_0
    move-object/from16 v0, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v8, v2, 0x3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/lit8 v9, v2, 0x3

    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p2

    if-ge v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v12, v11, v3

    ushr-long/2addr v12, v8

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v14, v11, v3

    shl-long/2addr v14, v9

    or-long/2addr v12, v14

    ushr-long/2addr v12, v6

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v14, v11, v3

    ushr-long/2addr v14, v8

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v16, v3, 0x1

    aget-wide v16, v11, v16

    shl-long v16, v16, v9

    or-long v14, v14, v16

    shl-long/2addr v14, v7

    xor-long/2addr v12, v14

    aput-wide v12, v10, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setRangePointerUnion_Check(Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 18

    and-int/lit8 v6, p3, 0x3f

    rsub-int/lit8 v7, v6, 0x40

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    move-object/from16 v0, p1

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    move-object/from16 v0, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v2, v0, :cond_0

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v10, v9, v3

    ushr-long/2addr v10, v6

    move-object/from16 v0, p1

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v12, v9, v3

    shl-long/2addr v12, v7

    xor-long/2addr v10, v12

    aput-wide v10, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_0

    :cond_0
    move/from16 v0, p2

    if-ge v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v8, v5, v3

    ushr-long v6, v8, v6

    aput-wide v6, v2, v4

    :cond_1
    :goto_1
    return-void

    :cond_2
    move-object/from16 v0, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v8, v2, 0x3

    move-object/from16 v0, p1

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/lit8 v9, v2, 0x3

    const/4 v2, 0x0

    :goto_2
    move/from16 v0, p2

    if-ge v2, v0, :cond_3

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    array-length v5, v5

    add-int/lit8 v5, v5, -0x2

    if-ge v3, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v4, 0x1

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v12, v11, v3

    ushr-long/2addr v12, v8

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v14, v11, v3

    shl-long/2addr v14, v9

    or-long/2addr v12, v14

    ushr-long/2addr v12, v6

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v14, v11, v3

    ushr-long/2addr v14, v8

    move-object/from16 v0, p1

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v16, v3, 0x1

    aget-wide v16, v11, v16

    shl-long v16, v16, v9

    or-long v14, v14, v16

    shl-long/2addr v14, v7

    xor-long/2addr v12, v14

    aput-wide v12, v10, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_2

    :cond_3
    move/from16 v0, p2

    if-ge v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v10, v5, v3

    ushr-long/2addr v10, v8

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v12, v5, v3

    shl-long/2addr v12, v9

    or-long/2addr v10, v12

    ushr-long/2addr v10, v6

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v12, v5, v3

    ushr-long v8, v12, v8

    shl-long v6, v8, v7

    xor-long/2addr v6, v10

    aput-wide v6, v2, v4

    goto :goto_1
.end method

.method public setRangeRotate(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;III)V
    .locals 10

    rsub-int/lit8 v4, p5, 0x40

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v2, p1, v0

    iget v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v1, p3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v3, v2, 0x1

    iget-object v6, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    aget-wide v6, v6, v1

    ushr-long/2addr v6, v4

    iget-object v8, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v1, v1, 0x1

    aget-wide v8, v8, v1

    shl-long/2addr v8, p5

    xor-long/2addr v6, v8

    aput-wide v6, v5, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setRange_xi(JII)I
    .locals 9

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v2, p3

    ushr-long v4, p1, v0

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    aput-wide v4, v1, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return p3
.end method

.method public setXor(IJ)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v1, p1

    aget-wide v2, v0, v1

    xor-long/2addr v2, p2

    aput-wide v2, v0, v1

    return-void
.end method

.method public setXor(J)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v2, v0, v1

    xor-long/2addr v2, p1

    aput-wide v2, v0, v1

    return-void
.end method

.method public setXorMatrix(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 12

    const/4 v1, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    move v5, v1

    :goto_0
    if-ge v5, p3, :cond_1

    move v0, v1

    move v2, v3

    :goto_1
    if-ge v0, p2, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v2, 0x1

    aget-wide v8, v6, v2

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v10, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v10, v7, v10

    xor-long/2addr v8, v10

    aput-wide v8, v6, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public setXorMatrix_NoMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 12

    const/4 v1, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    move v5, v1

    :goto_0
    if-ge v5, p3, :cond_1

    move v0, v1

    move v2, v3

    :goto_1
    if-ge v0, p2, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v2, 0x1

    aget-wide v8, v6, v2

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v10, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v11, v10, 0x1

    iput v11, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v10, v7, v10

    xor-long/2addr v8, v10

    aput-wide v8, v6, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v2, p1, v0

    iget v0, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v1, p3, v0

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    if-ge v0, p4, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v6, v5, v3

    iget-object v8, p2, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v1, 0x1

    aget-wide v8, v8, v1

    xor-long/2addr v6, v8

    aput-wide v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRange(ILorg/bouncycastle/pqc/crypto/gemss/PointerUnion;II)V
    .locals 16

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v4, p1, v2

    move-object/from16 v0, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->cp:I

    add-int v3, p3, v2

    move-object/from16 v0, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move v5, v4

    :goto_0
    move/from16 v0, p4

    if-ge v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v5, 0x1

    aget-wide v8, v7, v5

    move-object/from16 v0, p2

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v10, v10, v3

    xor-long/2addr v8, v10

    aput-wide v8, v7, v5

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v5, v6

    goto :goto_0

    :cond_0
    move-object/from16 v0, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    shl-int/lit8 v6, v2, 0x3

    move-object/from16 v0, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->remainder:I

    rsub-int/lit8 v2, v2, 0x8

    shl-int/lit8 v7, v2, 0x3

    const/4 v2, 0x0

    :goto_1
    move/from16 v0, p4

    if-ge v2, v0, :cond_1

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v5, v4, 0x1

    aget-wide v10, v8, v4

    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    aget-wide v12, v9, v3

    ushr-long/2addr v12, v6

    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/PointerUnion;->array:[J

    add-int/lit8 v3, v3, 0x1

    aget-wide v14, v9, v3

    shl-long/2addr v14, v7

    or-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 10

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v6, v5, v3

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v1, 0x1

    aget-wide v8, v8, v1

    xor-long/2addr v6, v8

    aput-wide v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRange(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 10

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v2, p2, v0

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v1, 0x1

    aget-wide v6, v5, v1

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v8, v8, v3

    xor-long/2addr v6, v8

    aput-wide v6, v5, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRangeAndMask(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V
    .locals 11

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v0, 0x0

    move v3, v2

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v6, v5, v3

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v1, 0x1

    aget-wide v8, v8, v1

    and-long/2addr v8, p3

    xor-long/2addr v6, v8

    aput-wide v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v3, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRangeAndMaskMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;IJ)V
    .locals 9

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v1, 0x1

    aget-wide v4, v3, v1

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v7, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v8, v7, 0x1

    iput v8, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v6, v6, v7

    and-long/2addr v6, p3

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRangeXor(ILorg/bouncycastle/pqc/crypto/gemss/Pointer;ILorg/bouncycastle/pqc/crypto/gemss/Pointer;II)V
    .locals 16

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v6, p1, v2

    move-object/from16 v0, p2

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v4, p3, v2

    move-object/from16 v0, p4

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int v3, p5, v2

    const/4 v2, 0x0

    move v5, v4

    move v7, v6

    :goto_0
    move/from16 v0, p6

    if-ge v2, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v8, v7, 0x1

    aget-wide v10, v9, v7

    move-object/from16 v0, p2

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v6, v5, 0x1

    aget-wide v12, v4, v5

    move-object/from16 v0, p4

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v4, v3, 0x1

    aget-wide v14, v5, v3

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, v9, v7

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v5, v6

    move v7, v8

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setXorRange_SelfMove(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;I)V
    .locals 10

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    add-int/lit8 v2, v4, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    aget-wide v6, v3, v4

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    add-int/lit8 v2, v1, 0x1

    aget-wide v8, v5, v1

    xor-long/2addr v6, v8

    aput-wide v6, v3, v4

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public swap(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
    .locals 3

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput-object v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput v2, p1, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    return-void
.end method

.method public toBytes(I)[B
    .locals 5

    new-array v1, p1, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->array:[J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Pointer;->cp:I

    ushr-int/lit8 v4, v0, 0x3

    add-int/2addr v3, v4

    aget-wide v2, v2, v3

    and-int/lit8 v4, v0, 0x7

    shl-int/lit8 v4, v4, 0x3

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
