.class public Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;
.super Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/math/ntru/HPSPolynomial;-><init>(Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHPSParameterSet;)V

    return-void
.end method


# virtual methods
.method public sqFromBytes([B)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x0

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/lit8 v4, v0, 0x3

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x4

    mul-int/lit8 v5, v0, 0x3

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    int-to-short v5, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    iget-object v2, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->n()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    aput-short v1, v0, v2

    return-void
.end method

.method public sqToBytes(I)[B
    .locals 8

    const v7, 0xffff

    new-array v1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->q()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->params:Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUParameterSet;->packDegree()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x0

    aget-short v4, v4, v5

    and-int/2addr v4, v7

    invoke-static {v4, v2}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x0

    aget-short v4, v4, v5

    and-int/2addr v4, v7

    invoke-static {v4, v2}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x8

    iget-object v5, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v6, v0, 0x2

    add-int/lit8 v6, v6, 0x1

    aget-short v5, v5, v6

    and-int/2addr v5, v7

    invoke-static {v5, v2}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    mul-int/lit8 v3, v0, 0x3

    add-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->coeffs:[S

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-short v4, v4, v5

    and-int/2addr v4, v7

    invoke-static {v4, v2}, Lorg/bouncycastle/pqc/math/ntru/HPS4096Polynomial;->modQ(II)I

    move-result v4

    ushr-int/lit8 v4, v4, 0x4

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
