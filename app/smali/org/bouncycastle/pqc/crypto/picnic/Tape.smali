.class Lorg/bouncycastle/pqc/crypto/picnic/Tape;
.super Ljava/lang/Object;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

.field nTapes:I

.field pos:I

.field tapes:[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    mul-int/lit8 v1, v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->nTapes:I

    return-void
.end method

.method private tapesToParityBits([II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected computeAuxTape([B)V
    .locals 10

    const/16 v0, 0x10

    const/4 v9, 0x0

    new-array v1, v0, [I

    new-array v2, v0, [I

    new-array v3, v0, [I

    new-array v4, v0, [I

    new-array v5, v0, [I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    add-int/lit8 v0, v0, -0x1

    aput v9, v5, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {p0, v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToParityBits([II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v7

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v0

    invoke-virtual {v6, v4, v5, v7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v4, v9, v0, p1, v9}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    :goto_0
    if-lez v0, :cond_2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6, v7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v8

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    invoke-virtual {v7, v1, v4, v8, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6, v2, v2, v1, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v8

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    invoke-virtual {v7, v3, v2, v8, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    const/4 v6, 0x1

    if-ne v0, v6, :cond_1

    array-length v6, v5

    invoke-static {v5, v9, v2, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    add-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v6, v2, v3, p0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    mul-int/lit8 v6, v6, 0x2

    add-int/lit8 v7, v0, -0x1

    mul-int/2addr v6, v7

    iput v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {p0, v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToParityBits([II)V

    goto :goto_1

    :cond_2
    iput v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    return-void
.end method

.method protected setAuxBits([B)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v5, v0, -0x1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-ge v0, v3, :cond_1

    move v3, v1

    :goto_1
    if-ge v3, v6, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v7, v4, v5

    mul-int/lit8 v4, v6, 0x2

    mul-int/2addr v4, v0

    add-int/2addr v4, v6

    add-int v8, v4, v3

    add-int/lit8 v4, v2, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v2

    invoke-static {v7, v8, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v3, v3, 0x1

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected tapesToWord()I
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    ushr-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    and-int/lit8 v1, v1, 0x7

    xor-int/lit8 v1, v1, 0x7

    shl-int v2, v5, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v4

    aget-byte v3, v3, v0

    and-int/2addr v3, v2

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x6

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x5

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v5, 0x3

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v5, 0x4

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v5, 0x5

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x2

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v5, 0x6

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x1

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v5, 0x7

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x0

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v5, 0x8

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0xf

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v5, 0x9

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0xe

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v5, 0xa

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0xd

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v5, 0xb

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0xc

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v5, 0xc

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0xb

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v5, 0xd

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0xa

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v5, 0xe

    aget-object v4, v4, v5

    aget-byte v4, v4, v0

    and-int/2addr v4, v2

    shl-int/lit8 v4, v4, 0x9

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/16 v5, 0xf

    aget-object v4, v4, v5

    aget-byte v0, v4, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr v0, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    ushr-int/2addr v0, v1

    return v0
.end method
