.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shake128MatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;-><init>(II)V

    return-void
.end method


# virtual methods
.method genMatrix([B)[S
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    mul-int/2addr v0, v2

    new-array v3, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    mul-int/lit8 v0, v0, 0x10

    div-int/lit8 v0, v0, 0x8

    new-array v4, v0, [B

    array-length v0, p1

    add-int/lit8 v0, v0, 0x2

    new-array v5, v0, [B

    const/4 v0, 0x2

    array-length v2, p1

    invoke-static {p1, v1, v5, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v0, 0x80

    invoke-direct {v6, v0}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    if-ge v0, v2, :cond_1

    invoke-static {v0, v5, v1}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    array-length v2, v5

    invoke-interface {v6, v5, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v2, v4

    invoke-interface {v6, v4, v1, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move v2, v1

    :goto_1
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    if-ge v2, v7, :cond_0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->n:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v2

    mul-int/lit8 v8, v2, 0x2

    invoke-static {v4, v8}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v8

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;->q:I

    add-int/lit8 v9, v9, -0x1

    and-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v3, v7

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method
