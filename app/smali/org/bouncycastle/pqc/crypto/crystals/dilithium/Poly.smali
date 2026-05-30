.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;
.super Ljava/lang/Object;


# instance fields
.field private coeffs:[I

.field private final dilithiumN:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

.field private final polyUniformNBlocks:I

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->GetSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    add-int/lit16 v0, v0, 0x300

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    div-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyUniformNBlocks:I

    return-void
.end method

.method private static rejectEta(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BII)I
    .locals 7

    const/16 v6, 0xf

    const/16 v5, 0x9

    const/4 v2, 0x0

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_3

    if-ge v1, p4, :cond_3

    aget-byte v2, p3, v1

    and-int/lit16 v2, v2, 0xff

    and-int/lit8 v3, v2, 0xf

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v1, v1, 0x4

    const/4 v4, 0x2

    if-ne p5, v4, :cond_1

    if-ge v3, v6, :cond_0

    mul-int/lit16 v4, v3, 0xcd

    shr-int/lit8 v4, v4, 0xa

    mul-int/lit8 v4, v4, 0x5

    sub-int/2addr v3, v4

    add-int v4, p1, v0

    rsub-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v4, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-ge v1, v6, :cond_4

    if-ge v0, p2, :cond_4

    mul-int/lit16 v3, v1, 0xcd

    shr-int/lit8 v3, v3, 0xa

    mul-int/lit8 v3, v3, 0x5

    sub-int/2addr v1, v3

    add-int v3, p1, v0

    rsub-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v4, 0x4

    if-ne p5, v4, :cond_4

    if-ge v3, v5, :cond_2

    add-int v4, p1, v0

    rsub-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v4, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    if-ge v1, v5, :cond_4

    if-ge v0, p2, :cond_4

    add-int v3, p1, v0

    rsub-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method private static rejectUniform(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BI)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, p2, :cond_1

    add-int/lit8 v1, v0, 0x3

    if-gt v1, p4, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p3, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v3, v1, 0x1

    aget-byte v1, p3, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v1, v0

    add-int/lit8 v0, v3, 0x1

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v1, v3

    const v3, 0x7fffff

    and-int/2addr v1, v3

    const v3, 0x7fe001

    if-ge v1, v3, :cond_0

    add-int v3, p1, v2

    invoke-virtual {p0, v3, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private unpackZ([B)V
    .locals 6

    const v5, 0xfffff

    const/4 v0, 0x0

    const v4, 0x3ffff

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v1

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    and-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    and-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x8

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    or-int/2addr v2, v3

    and-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v1

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/2addr v2, v5

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    and-int/2addr v2, v5

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithiumn Gamma1!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public addPoly(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public challenge([B)V
    .locals 14

    const-wide/16 v12, 0x1

    const/16 v4, 0x8

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    new-array v6, v0, [B

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v0, 0x100

    invoke-direct {v7, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v0, 0x20

    invoke-virtual {v7, p1, v1, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    invoke-virtual {v7, v6, v1, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    const-wide/16 v2, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v4, :cond_0

    aget-byte v5, v6, v0

    and-int/lit16 v5, v5, 0xff

    int-to-long v8, v5

    mul-int/lit8 v5, v0, 0x8

    shl-long/2addr v8, v5

    or-long/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v5, :cond_1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumTau()I

    move-result v5

    sub-int v5, v0, v5

    move v0, v4

    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v5, v4, :cond_3

    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    if-lt v0, v4, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    invoke-virtual {v7, v6, v1, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;->doOutput([BII)I

    move v4, v1

    :goto_3
    add-int/lit8 v0, v4, 0x1

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    if-gt v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v8

    invoke-virtual {p0, v5, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    const-wide/16 v8, 0x2

    and-long v10, v2, v12

    mul-long/2addr v8, v10

    sub-long v8, v12, v8

    long-to-int v8, v8

    invoke-virtual {p0, v4, v8}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    const/4 v4, 0x1

    shr-long/2addr v2, v4

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    :cond_3
    return-void

    :cond_4
    move v4, v0

    goto :goto_3
.end method

.method public checkNorm(I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const v0, 0xffc00

    if-le p1, v0, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v0, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x1f

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    and-int/2addr v3, v5

    sub-int v3, v4, v3

    if-lt v3, p1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public conditionalAddQ()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Reduce;->conditionalAddQ(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decompose(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->decompose(II)[I

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v2, v3

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    aget v2, v2, v1

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCoeffIndex(I)I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCoeffs()[I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    return-object v0
.end method

.method public invNttToMont()V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffs()[I

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Ntt;->invNttToMont([I)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffs([I)V

    return-void
.end method

.method public pointwiseAccountMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;)V
    .locals 4

    const/4 v2, 0x0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)V

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v0

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumL()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v2

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/PolyVecL;->getVectorIndex(I)Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->addPoly(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public pointwiseMontgomery(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    int-to-long v4, v1

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Reduce;->montgomeryReduce(J)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public polyEtaPack([BI)[B
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x4

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x8

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    if-ne v0, v7, :cond_0

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v3, v3, 0x8

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v3

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v3

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v3

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v7

    const/4 v3, 0x3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v4

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v3

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x4

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v8

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v3

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    const/4 v3, 0x6

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v4

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x6

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x7

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v4

    mul-int/lit8 v5, v0, 0x8

    add-int/lit8 v5, v5, 0x7

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x0

    aget-byte v4, v2, v1

    shr-int/lit8 v4, v4, 0x0

    aget-byte v5, v2, v6

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    aget-byte v5, v2, v7

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v2, v7

    shr-int/lit8 v4, v4, 0x2

    const/4 v5, 0x3

    aget-byte v5, v2, v5

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    aget-byte v5, v2, v8

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    aget-byte v5, v2, v9

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    mul-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p2

    add-int/lit8 v3, v3, 0x2

    aget-byte v4, v2, v9

    shr-int/lit8 v4, v4, 0x1

    const/4 v5, 0x6

    aget-byte v5, v2, v5

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    const/4 v5, 0x7

    aget-byte v5, v2, v5

    shl-int/lit8 v5, v5, 0x5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    if-ne v0, v8, :cond_1

    move v0, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x0

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v6

    add-int v3, p2, v0

    aget-byte v4, v2, v1

    aget-byte v5, v2, v6

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Eta needs to be 2 or 4!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object p1
.end method

.method public polyEtaUnpack([BI)V
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v2, v2, 0x8

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x3

    add-int/2addr v2, p2

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x0

    add-int/lit8 v4, v2, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x0

    and-int/lit8 v4, v4, 0x7

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x3

    and-int/lit8 v4, v4, 0x7

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v2, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x2

    and-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x3

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x1

    and-int/lit8 v4, v4, 0x7

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x5

    add-int/lit8 v4, v2, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v2, 0x2

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x1

    and-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v2, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shr-int/lit8 v4, v4, 0x2

    and-int/lit8 v4, v4, 0x7

    invoke-virtual {p0, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x7

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x5

    and-int/lit8 v2, v2, 0x7

    invoke-virtual {p0, v3, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x3

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x5

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x7

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x7

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit8 v3, v3, 0xf

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int v3, p2, v0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int v3, v1, v3

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public polyMakeHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)I
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v2, v1, :cond_0

    invoke-virtual {p1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-virtual {p2, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-static {v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->makeHint(IILorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)I

    move-result v1

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public polyNtt()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Ntt;->ntt([I)[I

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffs([I)V

    return-void
.end method

.method public polyUseHint(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-virtual {p2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->useHint(III)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public polyt0Pack([BI)[B
    .locals 11

    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x8

    new-array v2, v0, [I

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v3, v3, 0x8

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v2, v1

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v2, v7

    const/4 v3, 0x2

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    rsub-int v4, v4, 0x1000

    aput v4, v2, v3

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v2, v8

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v2, v9

    const/4 v3, 0x5

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x5

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    rsub-int v4, v4, 0x1000

    aput v4, v2, v3

    mul-int/lit8 v3, v0, 0x8

    add-int/lit8 v3, v3, 0x6

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    rsub-int v3, v3, 0x1000

    aput v3, v2, v10

    const/4 v3, 0x7

    mul-int/lit8 v4, v0, 0x8

    add-int/lit8 v4, v4, 0x7

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    rsub-int v4, v4, 0x1000

    aput v4, v2, v3

    mul-int/lit8 v3, v0, 0xd

    add-int/2addr v3, p2

    add-int/lit8 v4, v3, 0x0

    aget v5, v2, v1

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x1

    aget v5, v2, v1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, p1, v5

    aget v6, v2, v7

    shl-int/lit8 v6, v6, 0x5

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x2

    aget v5, v2, v7

    shr-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x3

    aget v5, v2, v7

    shr-int/lit8 v5, v5, 0xb

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x3

    add-int/lit8 v5, v3, 0x3

    aget-byte v5, p1, v5

    const/4 v6, 0x2

    aget v6, v2, v6

    shl-int/lit8 v6, v6, 0x2

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x4

    const/4 v5, 0x2

    aget v5, v2, v5

    shr-int/lit8 v5, v5, 0x6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x4

    add-int/lit8 v5, v3, 0x4

    aget-byte v5, p1, v5

    aget v6, v2, v8

    shl-int/lit8 v6, v6, 0x7

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x5

    aget v5, v2, v8

    shr-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x6

    aget v5, v2, v8

    shr-int/lit8 v5, v5, 0x9

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x6

    add-int/lit8 v5, v3, 0x6

    aget-byte v5, p1, v5

    aget v6, v2, v9

    shl-int/lit8 v6, v6, 0x4

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x7

    aget v5, v2, v9

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x8

    aget v5, v2, v9

    shr-int/lit8 v5, v5, 0xc

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x8

    add-int/lit8 v5, v3, 0x8

    aget-byte v5, p1, v5

    const/4 v6, 0x5

    aget v6, v2, v6

    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x9

    const/4 v5, 0x5

    aget v5, v2, v5

    shr-int/lit8 v5, v5, 0x7

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0x9

    add-int/lit8 v5, v3, 0x9

    aget-byte v5, p1, v5

    aget v6, v2, v10

    shl-int/lit8 v6, v6, 0x6

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0xa

    aget v5, v2, v10

    shr-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0xb

    aget v5, v2, v10

    shr-int/lit8 v5, v5, 0xa

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v4, v3, 0xb

    add-int/lit8 v5, v3, 0xb

    aget-byte v5, p1, v5

    const/4 v6, 0x7

    aget v6, v2, v6

    shl-int/lit8 v6, v6, 0x3

    int-to-byte v6, v6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v3, v3, 0xc

    const/4 v4, 0x7

    aget v4, v2, v4

    shr-int/lit8 v4, v4, 0x5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-object p1
.end method

.method public polyt0Unpack([BI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0xd

    add-int/2addr v1, p2

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x0

    add-int/lit8 v3, v1, 0x0

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v4, v1, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x5

    add-int/lit8 v4, v1, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xb

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v1, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x2

    add-int/lit8 v4, v1, 0x4

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x3

    add-int/lit8 v3, v1, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x7

    add-int/lit8 v4, v1, 0x5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x6

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x9

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v3, v1, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x4

    add-int/lit8 v4, v1, 0x7

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0x8

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v3, v1, 0x8

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v1, 0x9

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x7

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v3, v1, 0x9

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x6

    add-int/lit8 v4, v1, 0xa

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    add-int/lit8 v4, v1, 0xb

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v3, v4

    and-int/lit16 v3, v3, 0x1fff

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x7

    add-int/lit8 v3, v1, 0xb

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v3, v3, 0x3

    add-int/lit8 v1, v1, 0xc

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v1, v3

    and-int/lit16 v1, v1, 0x1fff

    invoke-virtual {p0, v2, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    rsub-int v2, v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    rsub-int v2, v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    rsub-int v2, v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    rsub-int v2, v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x4

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    rsub-int v2, v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x5

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    rsub-int v2, v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x6

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x6

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    rsub-int v2, v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x7

    mul-int/lit8 v2, v0, 0x8

    add-int/lit8 v2, v2, 0x7

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    rsub-int v2, v2, 0x1000

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method public polyt1Pack()[B
    .locals 6

    const/16 v0, 0x140

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x0

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x0

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x0

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x8

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x6

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    aget v4, v4, v5

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    aget v3, v3, v4

    shr-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public polyt1Unpack([B)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    and-int/lit16 v2, v2, 0x3ff

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public power2Round(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->power2Round(I)[I

    move-result-object v2

    aget v3, v2, v1

    invoke-virtual {p0, v0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p1, v0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public reduce()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Reduce;->reduce32(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setCoeffIndex(II)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    aput p2, v0, p1

    return-void
.end method

.method public setCoeffs([I)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    return-void
.end method

.method public shiftLeft()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0xd

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subtract(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->coeffs:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uniformBlocks([BS)V
    .locals 7

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->polyUniformNBlocks:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    mul-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x2

    new-array v4, v1, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128init([BS)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    invoke-virtual {v1, v4, v3, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128squeezeBlocks([BII)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    invoke-static {p0, v3, v1, v4, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->rejectUniform(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BI)I

    move-result v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    if-ge v1, v2, :cond_1

    rem-int/lit8 v5, v0, 0x3

    move v2, v3

    :goto_1
    if-ge v2, v5, :cond_0

    sub-int v6, v0, v5

    add-int/2addr v6, v2

    aget-byte v6, v4, v6

    aput-byte v6, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    invoke-virtual {v0, v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128squeezeBlocks([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream128BlockBytes:I

    add-int/2addr v0, v5

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    sub-int/2addr v2, v1

    invoke-static {p0, v1, v2, v4, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->rejectUniform(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BI)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    return-void
.end method

.method public uniformEta([BS)V
    .locals 12

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    add-int/lit16 v0, v0, 0x88

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    div-int/2addr v0, v2

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    mul-int v4, v0, v2

    new-array v3, v4, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256init([BS)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    invoke-virtual {v0, v3, v1, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256squeezeBlocks([BII)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->rejectEta(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BII)I

    move-result v7

    :goto_1
    const/16 v0, 0x100

    if-ge v7, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    invoke-virtual {v0, v3, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256squeezeBlocks([BII)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    sub-int v8, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    move-object v6, p0

    move-object v9, v3

    move v11, v5

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->rejectEta(Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;II[BII)I

    move-result v0

    add-int/2addr v7, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumEta()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    add-int/lit16 v0, v0, 0xe3

    add-int/lit8 v0, v0, -0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    div-int/2addr v0, v2

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithium Eta!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method public uniformGamma1([BS)V
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getPolyUniformGamma1NBlocks()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    mul-int/2addr v0, v1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    invoke-virtual {v1, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256init([BS)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getPolyUniformGamma1NBlocks()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256BlockBytes:I

    mul-int/2addr v3, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Symmetric;->stream256squeezeBlocks([BII)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->unpackZ([B)V

    return-void
.end method

.method public w1Pack()[B
    .locals 5

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyW1PackedBytes()I

    move-result v1

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v2

    const v3, 0x17400

    if-ne v2, v3, :cond_0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v2, v2, 0x4

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x0

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    int-to-byte v3, v3

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    mul-int/lit8 v2, v0, 0x3

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    shr-int/lit8 v3, v3, 0x4

    int-to-byte v3, v3

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x3

    invoke-virtual {p0, v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v4

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v2

    const v3, 0x3ff00

    if-ne v2, v3, :cond_1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public zPack()[B
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumPolyZPackedBytes()I

    move-result v0

    new-array v2, v0, [B

    const/4 v0, 0x4

    new-array v3, v0, [I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v0

    const/high16 v4, 0x20000

    if-ne v0, v4, :cond_0

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v4, v4, 0x4

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v3, v7

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v3, v8

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v3, v9

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x0

    aget v5, v3, v1

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x1

    aget v5, v3, v1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x2

    aget v5, v3, v1

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aget v6, v3, v7

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x3

    aget v5, v3, v7

    shr-int/lit8 v5, v5, 0x6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x4

    aget v5, v3, v7

    shr-int/lit8 v5, v5, 0xe

    int-to-byte v5, v5

    aget v6, v3, v8

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x5

    aget v5, v3, v8

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x6

    aget v5, v3, v8

    shr-int/lit8 v5, v5, 0xc

    int-to-byte v5, v5

    aget v6, v3, v9

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x7

    aget v5, v3, v9

    shr-int/lit8 v5, v5, 0x2

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x9

    add-int/lit8 v4, v4, 0x8

    aget v5, v3, v9

    shr-int/lit8 v5, v5, 0xa

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v0

    const/high16 v4, 0x80000

    if-ne v0, v4, :cond_1

    move v0, v1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v4

    mul-int/lit8 v5, v0, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {p0, v5}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v5

    sub-int/2addr v4, v5

    aput v4, v3, v7

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x0

    aget v5, v3, v1

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x1

    aget v5, v3, v1

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x2

    aget v5, v3, v1

    shr-int/lit8 v5, v5, 0x10

    int-to-byte v5, v5

    aget v6, v3, v7

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x3

    aget v5, v3, v7

    shr-int/lit8 v5, v5, 0x4

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    mul-int/lit8 v4, v0, 0x5

    add-int/lit8 v4, v4, 0x4

    aget v5, v3, v7

    shr-int/lit8 v5, v5, 0xc

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithium Gamma1!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v2
.end method

.method zUnpack([B)V
    .locals 6

    const v5, 0xfffff

    const/4 v0, 0x0

    const v4, 0x3ffff

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v1

    const/high16 v2, 0x20000

    if-ne v1, v2, :cond_0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x6

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    and-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x5

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x6

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    and-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    mul-int/lit8 v2, v0, 0x9

    add-int/lit8 v2, v2, 0x6

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x6

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x7

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x2

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x9

    add-int/lit8 v3, v3, 0x8

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xa

    or-int/2addr v2, v3

    and-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v1

    const/high16 v2, 0x80000

    if-ne v1, v2, :cond_1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->dilithiumN:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x0

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    and-int/2addr v2, v5

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v2, v0, 0x5

    add-int/lit8 v2, v2, 0x2

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x4

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x4

    or-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x5

    add-int/lit8 v3, v3, 0x4

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xc

    or-int/2addr v2, v3

    and-int/2addr v2, v5

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->engine:Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma1()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v3}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->getCoeffIndex(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Poly;->setCoeffIndex(II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Dilithium Gamma1!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method
