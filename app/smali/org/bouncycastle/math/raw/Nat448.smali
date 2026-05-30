.class public abstract Lorg/bouncycastle/math/raw/Nat448;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copy64([JI[JI)V
    .locals 4

    add-int/lit8 v0, p3, 0x0

    add-int/lit8 v1, p1, 0x0

    aget-wide v2, p0, v1

    aput-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x1

    add-int/lit8 v1, p1, 0x1

    aget-wide v2, p0, v1

    aput-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x2

    add-int/lit8 v1, p1, 0x2

    aget-wide v2, p0, v1

    aput-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x3

    add-int/lit8 v1, p1, 0x3

    aget-wide v2, p0, v1

    aput-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x4

    add-int/lit8 v1, p1, 0x4

    aget-wide v2, p0, v1

    aput-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x5

    add-int/lit8 v1, p1, 0x5

    aget-wide v2, p0, v1

    aput-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x6

    add-int/lit8 v1, p1, 0x6

    aget-wide v2, p0, v1

    aput-wide v2, p2, v0

    return-void
.end method

.method public static copy64([J[J)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-wide v0, p0, v2

    aput-wide v0, p1, v2

    aget-wide v0, p0, v3

    aput-wide v0, p1, v3

    aget-wide v0, p0, v4

    aput-wide v0, p1, v4

    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    aget-wide v0, p0, v6

    aput-wide v0, p1, v6

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    aput-wide v2, p1, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-wide v2, p0, v1

    aput-wide v2, p1, v0

    return-void
.end method

.method public static create64()[J
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [J

    return-object v0
.end method

.method public static createExt64()[J
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [J

    return-object v0
.end method

.method public static eq64([J[J)Z
    .locals 6

    const/4 v0, 0x6

    :goto_0
    if-ltz v0, :cond_1

    aget-wide v2, p0, v0

    aget-wide v4, p1, v0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static fromBigInteger64(Ljava/math/BigInteger;)[J
    .locals 4

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1c0

    if-le v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat448;->create64()[J

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    aput-wide v2, v1, v0

    const/16 v2, 0x40

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static isOne64([J)Z
    .locals 8

    const/4 v1, 0x1

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v2, v1

    :goto_1
    const/4 v3, 0x7

    if-ge v2, v3, :cond_2

    aget-wide v4, p0, v2

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public static isZero64([J)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static mul([I[I[I)V
    .locals 12

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    const/4 v1, 0x7

    const/4 v3, 0x7

    const/16 v5, 0xe

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat224;->mul([II[II[II)V

    const/4 v0, 0x7

    const/16 v1, 0xe

    invoke-static {p2, v0, p2, v1}, Lorg/bouncycastle/math/raw/Nat224;->addToEachOther([II[II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-static {p2, v1, p2, v2, v3}, Lorg/bouncycastle/math/raw/Nat224;->addTo([II[III)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x15

    const/16 v3, 0xe

    invoke-static {p2, v2, p2, v3, v1}, Lorg/bouncycastle/math/raw/Nat224;->addTo([II[III)I

    move-result v1

    add-int v11, v0, v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v9

    const/4 v1, 0x7

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat224;->diff([II[II[II)Z

    move-result v0

    const/4 v6, 0x7

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/math/raw/Nat224;->diff([II[II[II)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v1

    invoke-static {v4, v9, v1}, Lorg/bouncycastle/math/raw/Nat224;->mul([I[I[I)V

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, p2, v3}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v0

    :goto_1
    add-int/2addr v0, v11

    const/16 v1, 0x1c

    const/16 v2, 0x15

    invoke-static {v1, v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0xe

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v0, v1, v2, p2, v3}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    goto :goto_1
.end method

.method public static square([I[I)V
    .locals 9

    const/16 v8, 0x15

    const/16 v7, 0xe

    const/4 v1, 0x7

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    invoke-static {p0, v1, p1, v7}, Lorg/bouncycastle/math/raw/Nat224;->square([II[II)V

    invoke-static {p1, v1, p1, v7}, Lorg/bouncycastle/math/raw/Nat224;->addToEachOther([II[II)I

    move-result v0

    invoke-static {p1, v3, p1, v1, v3}, Lorg/bouncycastle/math/raw/Nat224;->addTo([II[III)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p1, v8, p1, v7, v2}, Lorg/bouncycastle/math/raw/Nat224;->addTo([II[III)I

    move-result v2

    add-int v6, v0, v2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->create()[I

    move-result-object v4

    move-object v0, p0

    move-object v2, p0

    move v5, v3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat224;->diff([II[II[II)Z

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat224;->createExt()[I

    move-result-object v0

    invoke-static {v4, v0}, Lorg/bouncycastle/math/raw/Nat224;->square([I[I)V

    invoke-static {v7, v0, v3, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    add-int/2addr v0, v6

    const/16 v1, 0x1c

    invoke-static {v1, v0, p1, v8}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    return-void
.end method

.method public static toBigInteger64([J)Ljava/math/BigInteger;
    .locals 6

    const/16 v0, 0x38

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    aget-wide v2, p0, v0

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    rsub-int/lit8 v4, v0, 0x6

    shl-int/lit8 v4, v4, 0x3

    invoke-static {v2, v3, v1, v4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method
