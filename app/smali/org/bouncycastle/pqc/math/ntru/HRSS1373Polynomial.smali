.class public Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;
.super Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;


# static fields
.field private static final K:I = 0x56

.field private static final L:I = 0x560

.field private static final M:I = 0x158


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V

    return-void
.end method


# virtual methods
.method public sqFromBytes([B)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x6

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0xf

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, p1, v4

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0x7

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    ushr-int/lit8 v4, v4, 0x6

    mul-int/lit8 v5, v0, 0x7

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, p1, v0

    int-to-short v0, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xa

    or-int/2addr v0, v4

    int-to-short v0, v0

    aput-short v0, v2, v3

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-short v1, v0, v2

    return-void
.end method

.method public sqToBytes(I)[B
    .locals 11

    const/4 v10, 0x3

    const v9, 0xffff

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-array v3, p1, [B

    const/4 v0, 0x4

    new-array v4, v0, [S

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    const/4 v5, 0x4

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    mul-int/lit8 v6, v0, 0x4

    add-int/2addr v6, v2

    aget-short v5, v5, v6

    and-int/2addr v5, v9

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v6

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->modQ(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x0

    aget-short v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    aget-short v5, v4, v1

    ushr-int/lit8 v5, v5, 0x8

    aget-short v6, v4, v7

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x2

    aget-short v5, v4, v7

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x3

    aget-short v5, v4, v7

    ushr-int/lit8 v5, v5, 0xa

    aget-short v6, v4, v8

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x4

    aget-short v5, v4, v8

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x5

    aget-short v5, v4, v8

    ushr-int/lit8 v5, v5, 0xc

    aget-short v6, v4, v10

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x6

    aget-short v5, v4, v10

    ushr-int/lit8 v5, v5, 0x6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    rem-int/lit8 v2, v2, 0x4

    if-ne v2, v8, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    aget-short v2, v2, v5

    and-int/2addr v2, v9

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v5

    invoke-static {v2, v5}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->modQ(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v4, v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->coeffs:[S

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    aget-short v2, v2, v5

    and-int/2addr v2, v9

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v5

    invoke-static {v2, v5}, Lorg/bouncycastle/pqc/math/ntru/HRSS1373Polynomial;->modQ(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, v4, v7

    mul-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x0

    aget-short v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0x7

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v4, v1

    ushr-int/lit8 v1, v1, 0x8

    aget-short v5, v4, v7

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    mul-int/lit8 v1, v0, 0x7

    add-int/lit8 v1, v1, 0x2

    aget-short v2, v4, v7

    ushr-int/lit8 v2, v2, 0x2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    mul-int/lit8 v0, v0, 0x7

    add-int/lit8 v0, v0, 0x3

    aget-short v1, v4, v7

    ushr-int/lit8 v1, v1, 0xa

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    :cond_2
    return-object v3
.end method
