.class public Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
.super Lorg/bouncycastle/pqc/math/ntru/Polynomial;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V

    return-void
.end method


# virtual methods
.method public lift(Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V
    .locals 13

    const/4 v1, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x2

    const/4 v0, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    array-length v4, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v5

    rem-int/lit8 v2, v4, 0x3

    rsub-int/lit8 v2, v2, 0x3

    int-to-short v6, v2

    iget-object v2, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v0

    rsub-int/lit8 v7, v6, 0x2

    mul-int/2addr v3, v7

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v7, v12

    mul-int/lit8 v7, v7, 0x0

    add-int/2addr v3, v7

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v7, v11

    mul-int/2addr v7, v6

    add-int/2addr v3, v7

    int-to-short v3, v3

    aput-short v3, v2, v0

    iget-object v2, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v12

    rsub-int/lit8 v7, v6, 0x2

    mul-int/2addr v3, v7

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v7, v11

    mul-int/lit8 v7, v7, 0x0

    add-int/2addr v3, v7

    int-to-short v3, v3

    aput-short v3, v2, v12

    iget-object v2, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v11

    rsub-int/lit8 v7, v6, 0x2

    mul-int/2addr v3, v7

    int-to-short v3, v3

    aput-short v3, v2, v11

    move v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    iget-object v7, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v7, v0

    iget-object v9, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v9, v3

    mul-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v2

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v7, v0

    iget-object v7, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v7, v12

    iget-object v9, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v9, v3

    add-int v10, v2, v6

    mul-int/2addr v9, v10

    add-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v7, v12

    iget-object v7, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v7, v11

    iget-object v9, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v9, v9, v3

    mul-int/2addr v9, v2

    add-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v7, v11

    add-int/2addr v2, v6

    rem-int/lit8 v2, v2, 0x3

    int-to-short v2, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v3, v12

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v0

    add-int v9, v2, v6

    mul-int/2addr v8, v9

    add-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v3, v12

    iget-object v3, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v3, v11

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v0

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v3, v11

    iget-object v3, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v7, v3, v11

    iget-object v8, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v8, v8, v12

    add-int/2addr v2, v6

    mul-int/2addr v2, v8

    add-int/2addr v2, v7

    int-to-short v2, v2

    aput-short v2, v3, v11

    :goto_1
    if-ge v1, v4, :cond_1

    iget-object v2, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v6, v1, -0x3

    aget-short v3, v3, v6

    iget-object v6, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v6, v6, v1

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v8, v1, -0x1

    aget-short v7, v7, v8

    add-int/2addr v6, v7

    iget-object v7, p1, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v8, v1, -0x2

    aget-short v7, v7, v8

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->mod3PhiN()V

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->z3ToZq()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v2, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v2, v2, v0

    neg-int v2, v2

    int-to-short v2, v2

    aput-short v2, v1, v0

    :goto_2
    add-int/lit8 v1, v4, -0x1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v2, v0, 0x1

    iget-object v3, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-short v3, v3, v0

    iget-object v6, v5, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    add-int/lit8 v7, v0, 0x1

    aget-short v6, v6, v7

    sub-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public sqFromBytes([B)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x0

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x7

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x6

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x9

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x7

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x8

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x5

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x9

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x3f

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x6

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x6

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0xa

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0xb

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x7

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0xb

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x3

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0xc

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x5

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    and-int/lit8 v2, v2, 0x7

    packed-switch v2, :pswitch_data_0

    :goto_1
    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-short v1, v0, v2

    return-void

    :pswitch_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x0

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x2

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x2

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x4

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x7f

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x3

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x7

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x5

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    mul-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x6

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0x9

    or-int/2addr v0, v4

    int-to-short v0, v0

    aput-short v0, v2, v3

    goto/16 :goto_1

    :pswitch_2
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x0

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0x1f

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0xd

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v0, 0xd

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    mul-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0xb

    or-int/2addr v0, v4

    int-to-short v0, v0

    aput-short v0, v2, v3

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public sqToBytes(I)[B
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-array v3, p1, [B

    const/16 v0, 0x8

    new-array v4, v0, [S

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x8

    if-ge v0, v2, :cond_1

    move v2, v1

    :goto_1
    const/16 v5, 0x8

    if-ge v2, v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v6, v0, 0x8

    add-int/2addr v6, v2

    aget-short v5, v5, v6

    const v6, 0xffff

    and-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v6

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->modQ(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x0

    aget-short v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x1

    aget-short v5, v4, v1

    ushr-int/lit8 v5, v5, 0x8

    aget-short v6, v4, v7

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x2

    aget-short v5, v4, v7

    ushr-int/lit8 v5, v5, 0x3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x3

    aget-short v5, v4, v7

    ushr-int/lit8 v5, v5, 0xb

    aget-short v6, v4, v9

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x4

    aget-short v5, v4, v9

    ushr-int/lit8 v5, v5, 0x6

    aget-short v6, v4, v8

    and-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x5

    aget-short v5, v4, v8

    ushr-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x6

    aget-short v5, v4, v8

    ushr-int/lit8 v5, v5, 0x9

    aget-short v6, v4, v10

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x7

    aget-short v5, v4, v10

    ushr-int/lit8 v5, v5, 0x4

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x8

    aget-short v5, v4, v10

    ushr-int/lit8 v5, v5, 0xc

    const/4 v6, 0x5

    aget-short v6, v4, v6

    and-int/lit8 v6, v6, 0x7f

    shl-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x9

    const/4 v5, 0x5

    aget-short v5, v4, v5

    ushr-int/lit8 v5, v5, 0x7

    const/4 v6, 0x6

    aget-short v6, v4, v6

    and-int/lit8 v6, v6, 0x3

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0xa

    const/4 v5, 0x6

    aget-short v5, v4, v5

    ushr-int/lit8 v5, v5, 0x2

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0xb

    const/4 v5, 0x6

    aget-short v5, v4, v5

    ushr-int/lit8 v5, v5, 0xa

    const/4 v6, 0x7

    aget-short v6, v4, v6

    and-int/lit8 v6, v6, 0x1f

    shl-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0xc

    const/4 v5, 0x7

    aget-short v5, v4, v5

    ushr-int/lit8 v5, v5, 0x5

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    move v2, v1

    :goto_2
    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v5

    mul-int/lit8 v6, v0, 0x8

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_2

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    mul-int/lit8 v6, v0, 0x8

    add-int/2addr v6, v2

    aget-short v5, v5, v6

    const v6, 0xffff

    and-int/2addr v5, v6

    iget-object v6, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v6

    invoke-static {v5, v6}, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->modQ(II)I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    const/16 v5, 0x8

    if-ge v2, v5, :cond_3

    aput-short v1, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v5

    div-int/lit8 v5, v5, 0x8

    mul-int/lit8 v5, v5, 0x8

    sub-int/2addr v2, v5

    packed-switch v2, :pswitch_data_0

    :goto_4
    :pswitch_0
    return-object v3

    :pswitch_1
    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x0

    aget-short v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x1

    aget-short v5, v4, v1

    ushr-int/lit8 v5, v5, 0x8

    aget-short v6, v4, v7

    and-int/lit8 v6, v6, 0x7

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x2

    aget-short v5, v4, v7

    ushr-int/lit8 v5, v5, 0x3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x3

    aget-short v5, v4, v7

    ushr-int/lit8 v5, v5, 0xb

    aget-short v6, v4, v9

    and-int/lit8 v6, v6, 0x3f

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x4

    aget-short v5, v4, v9

    ushr-int/lit8 v5, v5, 0x6

    aget-short v6, v4, v8

    and-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x5

    aget-short v5, v4, v8

    ushr-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x6

    aget-short v5, v4, v8

    ushr-int/lit8 v5, v5, 0x9

    aget-short v6, v4, v10

    and-int/lit8 v6, v6, 0xf

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    :pswitch_2
    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x0

    aget-short v5, v4, v1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v2

    mul-int/lit8 v2, v0, 0xd

    add-int/lit8 v2, v2, 0x1

    aget-short v1, v4, v1

    ushr-int/lit8 v1, v1, 0x8

    aget-short v5, v4, v7

    and-int/lit8 v5, v5, 0x7

    shl-int/lit8 v5, v5, 0x5

    or-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    mul-int/lit8 v1, v0, 0xd

    add-int/lit8 v1, v1, 0x2

    aget-short v2, v4, v7

    ushr-int/lit8 v2, v2, 0x3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v3, v1

    mul-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x3

    aget-short v1, v4, v7

    ushr-int/lit8 v1, v1, 0xb

    aget-short v2, v4, v9

    and-int/lit8 v2, v2, 0x3f

    shl-int/lit8 v2, v2, 0x2

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v3, v0

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
