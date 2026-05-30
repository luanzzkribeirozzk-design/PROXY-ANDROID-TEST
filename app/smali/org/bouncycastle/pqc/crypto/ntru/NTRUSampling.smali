.class Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;
.super Ljava/lang/Object;


# instance fields
.field private final params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    return-void
.end method

.method private static mod3(I)I
    .locals 1

    rem-int/lit8 v0, p0, 0x3

    return v0
.end method


# virtual methods
.method public sampleFg([B)Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIidPlus([B)Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    array-length v2, p1

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIidPlus([B)Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    move-result-object v2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;-><init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleFixedType([B)Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    move-result-object v2

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;-><init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid polynomial type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sampleFixedType([B)Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;->weight()I

    move-result v3

    new-instance v4, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    add-int/lit8 v0, v2, -0x1

    new-array v5, v0, [I

    move v0, v1

    :goto_0
    add-int/lit8 v6, v2, -0x1

    div-int/lit8 v6, v6, 0x4

    if-ge v0, v6, :cond_0

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x0

    mul-int/lit8 v7, v0, 0xf

    add-int/lit8 v7, v7, 0x0

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xa

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x12

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x1a

    add-int/2addr v7, v8

    aput v7, v5, v6

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v7, v7, 0xc0

    shr-int/lit8 v7, v7, 0x4

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x4

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xc

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x6

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x14

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x7

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x1c

    add-int/2addr v7, v8

    aput v7, v5, v6

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x2

    mul-int/lit8 v7, v0, 0x7

    add-int/lit8 v7, v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v7, v7, 0xf0

    shr-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x8

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x6

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x9

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xe

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0xa

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x16

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0xb

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x1e

    add-int/2addr v7, v8

    aput v7, v5, v6

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v0, 0xf

    add-int/lit8 v7, v7, 0xb

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v7, v7, 0xfc

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0xc

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0xd

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x10

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0xe

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x18

    add-int/2addr v7, v8

    aput v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    add-int/lit8 v0, v2, -0x1

    add-int/lit8 v6, v2, -0x1

    div-int/lit8 v6, v6, 0x4

    mul-int/lit8 v6, v6, 0x4

    if-le v0, v6, :cond_1

    add-int/lit8 v0, v2, -0x1

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x0

    mul-int/lit8 v7, v0, 0xf

    add-int/lit8 v7, v7, 0x0

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x2

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xa

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x12

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x1a

    add-int/2addr v7, v8

    aput v7, v5, v6

    mul-int/lit8 v6, v0, 0x4

    add-int/lit8 v6, v6, 0x1

    mul-int/lit8 v7, v0, 0x3

    add-int/lit8 v7, v7, 0xf

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v7, v7, 0xc0

    shr-int/lit8 v7, v7, 0x4

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x4

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x4

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x5

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0xc

    add-int/2addr v7, v8

    mul-int/lit8 v8, v0, 0xf

    add-int/lit8 v8, v8, 0x6

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x14

    add-int/2addr v7, v8

    mul-int/lit8 v0, v0, 0xf

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x1c

    add-int/2addr v0, v7

    aput v0, v5, v6

    :cond_1
    move v0, v1

    :goto_1
    div-int/lit8 v6, v3, 0x2

    if-ge v0, v6, :cond_2

    aget v6, v5, v0

    or-int/lit8 v6, v6, 0x1

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    div-int/lit8 v0, v3, 0x2

    :goto_2
    if-ge v0, v3, :cond_3

    aget v6, v5, v0

    or-int/lit8 v6, v6, 0x2

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    invoke-static {v5}, Ljava/util/Arrays;->sort([I)V

    move v0, v1

    :goto_3
    add-int/lit8 v3, v2, -0x1

    if-ge v0, v3, :cond_4

    iget-object v3, v4, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    aget v6, v5, v0

    and-int/lit8 v6, v6, 0x3

    int-to-short v6, v6

    aput-short v6, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    iget-object v0, v4, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;->coeffs:[S

    add-int/lit8 v2, v2, -0x1

    aput-short v1, v0, v2

    return-object v4
.end method

.method public sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->createPolynomial()Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v2

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    iget-object v3, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    aget-byte v4, p1, v0

    and-int/lit16 v4, v4, 0xff

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->mod3(I)I

    move-result v4

    int-to-short v4, v4

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lorg/bouncycastle/pqc/math/ntru/Polynomial;->coeffs:[S

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput-short v1, v0, v3

    return-object v2
.end method

.method public sampleIidPlus([B)Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;
    .locals 8

    const v7, 0xffff

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v4

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    move v2, v1

    :goto_0
    add-int/lit8 v3, v4, -0x1

    if-ge v2, v3, :cond_0

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v5, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v5, v5, v2

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v6, v6, v2

    ushr-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    or-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v1

    :goto_1
    add-int/lit8 v5, v4, -0x1

    if-ge v3, v5, :cond_1

    iget-object v5, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    add-int/lit8 v6, v3, 0x1

    aget-short v5, v5, v6

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v6, v6, v3

    mul-int/2addr v5, v6

    int-to-short v5, v5

    add-int/2addr v2, v5

    int-to-short v2, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    and-int/2addr v2, v7

    ushr-int/lit8 v2, v2, 0xf

    neg-int v2, v2

    or-int/lit8 v2, v2, 0x1

    int-to-short v3, v2

    move v2, v1

    :goto_2
    add-int/lit8 v5, v4, -0x1

    if-ge v2, v5, :cond_2

    iget-object v5, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v6, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v6, v6, v2

    mul-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, v5, v2

    add-int/lit8 v2, v2, 0x2

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v2, v4, -0x1

    if-ge v1, v2, :cond_3

    iget-object v2, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    iget-object v3, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v3, v3, v1

    and-int/2addr v3, v7

    iget-object v5, v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;->coeffs:[S

    aget-short v5, v5, v1

    and-int/2addr v5, v7

    ushr-int/lit8 v5, v5, 0xf

    xor-int/2addr v3, v5

    and-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    return-object v0
.end method

.method public sampleRm([B)Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/pqc/math/ntru/HRSSPolynomial;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;-><init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    instance-of v0, v0, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v0

    invoke-static {p1, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleIid([B)Lorg/bouncycastle/pqc/math/ntru/Polynomial;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->sampleIidBytes()I

    move-result v1

    array-length v2, p1

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/ntru/NTRUSampling;->sampleFixedType([B)Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;

    move-result-object v2

    new-instance v1, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/ntru/PolynomialPair;-><init>(Lorg/bouncycastle/pqc/math/ntru/Polynomial;Lorg/bouncycastle/pqc/math/ntru/Polynomial;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid polynomial type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
