.class Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decompose(II)[I
    .locals 4

    add-int/lit8 v0, p0, 0x7f

    shr-int/lit8 v0, v0, 0x7

    const v1, 0x3ff00

    if-ne p1, v1, :cond_0

    mul-int/lit16 v0, v0, 0x401

    const/high16 v1, 0x200000

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x16

    and-int/lit8 v0, v0, 0xf

    :goto_0
    mul-int/lit8 v1, v0, 0x2

    mul-int/2addr v1, p1

    sub-int v1, p0, v1

    const v2, 0x3ff000

    sub-int/2addr v2, v1

    shr-int/lit8 v2, v2, 0x1f

    const v3, 0x7fe001

    and-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    return-object v2

    :cond_0
    const v1, 0x17400

    if-ne p1, v1, :cond_1

    mul-int/lit16 v0, v0, 0x2c0b

    const/high16 v1, 0x800000

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x18

    rsub-int/lit8 v1, v0, 0x2b

    shr-int/lit8 v1, v1, 0x1f

    and-int/2addr v1, v0

    xor-int/2addr v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Gamma2!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static makeHint(IILorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;)I
    .locals 3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/DilithiumEngine;->getDilithiumGamma2()I

    move-result v0

    const v1, 0x7fe001

    if-le p0, v0, :cond_0

    sub-int v2, v1, v0

    if-gt p0, v2, :cond_0

    sub-int v0, v1, v0

    if-ne p0, v0, :cond_1

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static power2Round(I)[I
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    add-int/lit16 v1, p0, 0x1000

    add-int/lit8 v1, v1, -0x1

    shr-int/lit8 v1, v1, 0xd

    aput v1, v0, v2

    const/4 v1, 0x1

    aget v2, v0, v2

    shl-int/lit8 v2, v2, 0xd

    sub-int v2, p0, v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static useHint(III)I
    .locals 5

    const/16 v1, 0x2b

    const/4 v0, 0x0

    invoke-static {p0, p2}, Lorg/bouncycastle/pqc/crypto/crystals/dilithium/Rounding;->decompose(II)[I

    move-result-object v2

    aget v3, v2, v0

    const/4 v4, 0x1

    aget v2, v2, v4

    if-nez p1, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    const v4, 0x3ff00

    if-ne p2, v4, :cond_3

    if-lez v3, :cond_2

    add-int/lit8 v0, v2, 0x1

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v2, -0x1

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :cond_3
    const v4, 0x17400

    if-ne p2, v4, :cond_6

    if-lez v3, :cond_4

    if-eq v2, v1, :cond_0

    add-int/lit8 v0, v2, 0x1

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Wrong Gamma2!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
