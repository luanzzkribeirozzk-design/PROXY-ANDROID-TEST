.class Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;
.super Ljava/lang/Object;


# instance fields
.field private GF_POLY_M2:I

.field private GF_POLY_WT:I

.field private G_FCT_DOMAIN:B

.field private H_FCT_DOMAIN:B

.field private K_BYTE:I

.field private K_BYTE_64:I

.field private K_FCT_DOMAIN:B

.field private N1N2_BYTE:I

.field private N1N2_BYTE_64:I

.field private N1_BYTE:I

.field private N1_BYTE_64:I

.field private N_BYTE:I

.field private N_BYTE_64:I

.field private RED_MASK:J

.field private SALT_SIZE_64:I

.field private SALT_SIZE_BYTES:I

.field private SEED_SIZE:I

.field private SHA512_BYTES:I

.field private delta:I

.field private fft:I

.field private g:I

.field private generatorPoly:[I

.field private gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

.field private k:I

.field private mulParam:I

.field private n:I

.field private n1:I

.field private n1n2:I

.field private n2:I

.field private rejectionThreshold:I

.field private w:I

.field private we:I

.field private wr:I


# direct methods
.method public constructor <init>(IIIIIIIIIII[I)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v2, 0x28

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    const/4 v2, 0x3

    iput-byte v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->G_FCT_DOMAIN:B

    const/4 v2, 0x4

    iput-byte v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->H_FCT_DOMAIN:B

    const/4 v2, 0x5

    iput-byte v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_FCT_DOMAIN:B

    const/4 v2, 0x5

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->GF_POLY_WT:I

    const/4 v2, 0x4

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->GF_POLY_M2:I

    const/16 v2, 0x10

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    const/4 v2, 0x2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_64:I

    const/16 v2, 0x40

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->delta:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    move/from16 v0, p8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    move/from16 v0, p9

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->we:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n2:I

    mul-int v2, p2, p3

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    move-object/from16 v0, p12

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatorPoly:[I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    move/from16 v0, p10

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->rejectionThreshold:I

    move/from16 v0, p11

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->fft:I

    div-int/lit16 v2, p3, 0x80

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByte64SizeFromBitSize(I)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE_64:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1_BYTE_64:I

    mul-int v2, p2, p3

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByte64SizeFromBitSize(I)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    mul-int v2, p2, p3

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->getByteSizeFromBitSize(I)I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1_BYTE:I

    const-wide/16 v2, 0x1

    int-to-long v4, p1

    const-wide/16 v6, 0x40

    rem-long/2addr v4, v6

    long-to-int v4, v4

    shl-long/2addr v2, v4

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->RED_MASK:J

    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->RED_MASK:J

    invoke-direct {v2, v3, p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;-><init>(IIJ)V

    iput-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    return-void
.end method

.method private decrypt([B[B[B[B[J)V
    .locals 8

    const/4 v7, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v0, v0, [J

    invoke-static {v0, p3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v1, v1, [J

    invoke-static {v1, p4}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v2, v2, [J

    array-length v3, v1

    invoke-static {v1, v7, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v3, v1, [J

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {v1, v3, p5, v0}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->multLongs([J[J[J)V

    invoke-static {v3, v3, v2}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    new-array v1, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {v1, v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->decode([B[JII)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->fft:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->delta:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/ReedSolomon;->decode([B[BIIIII)V

    array-length v0, p1

    invoke-static {p2, v7, p1, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private encrypt([B[J[J[B[B[B)V
    .locals 12

    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    move-object/from16 v0, p6

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v8, v2, [J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v2, v2, [J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v9, v3, [J

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    invoke-direct {p0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    invoke-direct {p0, v9, v1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->we:I

    invoke-direct {p0, v8, v1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v1, v1, [J

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {v3, v1, v9, p3}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->multLongs([J[J[J)V

    invoke-static {v1, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    new-array v1, v1, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v10, v2, [J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v11, v2, [J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    mul-int/lit8 v3, v2, 0x8

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->g:I

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatorPoly:[I

    move-object/from16 v2, p5

    invoke-static/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/hqc/ReedSolomon;->encode([B[BIIII[I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->mulParam:I

    invoke-static {v10, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/ReedMuller;->encode([J[BII)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v10

    invoke-static {v10, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v1, v1, [J

    move-object/from16 v0, p4

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v3, v2, [J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {v2, v3, v9, v1}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->multLongs([J[J[J)V

    invoke-static {v3, v3, v11}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    invoke-static {v3, v3, v8}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n1n2:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    move-object v1, p2

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->resizeArray([JI[JIII)V

    return-void
.end method

.method private extractCiphertexts([B[B[B[B[B)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    invoke-static {p5, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v1, p2

    invoke-static {p5, v0, p2, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    invoke-static {p5, v0, p3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p1

    array-length v1, p2

    add-int/2addr v0, v1

    array-length v1, p3

    add-int/2addr v0, v1

    array-length v1, p4

    invoke-static {p5, v0, p4, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private extractKeysFromSecretKeys([J[J[B[B)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p4, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {p0, p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {p0, p2, v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    array-length v1, p3

    invoke-static {p4, v0, p3, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private extractPublicKeys([J[B[B)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v0, v0, [B

    array-length v1, v0

    invoke-static {p3, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    array-length v2, v0

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v0, v0, [J

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatePublicKeyH([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;)V

    array-length v1, p1

    invoke-static {v0, v3, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x28

    array-length v1, p2

    invoke-static {p3, v0, p2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V
    .locals 12

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v1, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v3, v2, [I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v4, v2, [I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->wr:I

    new-array v5, v2, [J

    mul-int/lit8 v2, p3, 0x4

    invoke-virtual {p2, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->expandSeed([BI)V

    const/4 v2, 0x0

    const/4 v6, 0x0

    array-length v7, v1

    invoke-static {v0, v2, v1, v6, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    int-to-long v6, v0

    aget v2, v1, v0

    int-to-long v8, v2

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    sub-int/2addr v2, v0

    int-to-long v10, v2

    rem-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v2, v6

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p3, -0x1

    move v2, v0

    :goto_1
    if-ltz v2, :cond_3

    const/4 v0, 0x0

    add-int/lit8 v1, v2, 0x1

    :goto_2
    if-ge v1, p3, :cond_2

    aget v6, v3, v1

    aget v7, v3, v2

    if-ne v6, v7, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    neg-int v0, v0

    and-int v1, v0, v2

    xor-int/lit8 v0, v0, -0x1

    aget v6, v3, v2

    and-int/2addr v0, v6

    xor-int/2addr v0, v1

    aput v0, v3, v2

    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_3
    if-ge v0, p3, :cond_4

    aget v1, v3, v0

    ushr-int/lit8 v1, v1, 0x6

    aput v1, v4, v0

    aget v1, v3, v0

    and-int/lit8 v1, v1, 0x3f

    const-wide/16 v6, 0x1

    shl-long/2addr v6, v1

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    if-ge v0, v1, :cond_6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, p3, :cond_5

    aget v6, v4, v1

    sub-int v6, v0, v6

    neg-int v7, v6

    or-int/2addr v6, v7

    ushr-int/lit8 v6, v6, 0x1f

    xor-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    int-to-long v6, v6

    aget-wide v8, v5, v1

    and-long/2addr v6, v8

    or-long/2addr v2, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    aget-wide v6, p1, v0

    or-long/2addr v2, v6

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method public decaps([B[B[B)V
    .locals 15

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v1, v1, [J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v11, v2, [J

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    add-int/lit8 v2, v2, 0x28

    new-array v13, v2, [B

    move-object/from16 v0, p3

    invoke-direct {p0, v1, v11, v13, v0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractKeysFromSecretKeys([J[J[B[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v2, v1, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    new-array v3, v1, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v4, v1, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    new-array v5, v1, [B

    move-object v1, p0

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractCiphertexts([B[B[B[B[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->k:I

    new-array v7, v1, [B

    move-object v6, p0

    move-object v8, v7

    move-object v9, v2

    move-object v10, v3

    invoke-direct/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->decrypt([B[B[B[B[J)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v14, v1, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    add-int/2addr v1, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    add-int/2addr v1, v6

    new-array v1, v1, [B

    const/4 v6, 0x0

    const/4 v8, 0x0

    array-length v9, v7

    invoke-static {v7, v6, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    invoke-static {v13, v6, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    add-int/2addr v8, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    invoke-static {v5, v6, v1, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v6, 0x100

    invoke-direct {v5, v6}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    array-length v6, v1

    const/4 v8, 0x1

    new-array v8, v8, [B

    const/4 v9, 0x0

    iget-byte v10, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->G_FCT_DOMAIN:B

    aput-byte v10, v8, v9

    invoke-virtual {v5, v14, v1, v6, v8}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v11, v1, [J

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v12, v1, [B

    invoke-direct {p0, v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractPublicKeys([J[B[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v9, v1, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    new-array v6, v1, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v10, v1, [J

    move-object v8, p0

    move-object v13, v7

    invoke-direct/range {v8 .. v14}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->encrypt([B[J[J[B[B[B)V

    invoke-static {v6, v10}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v8, v1, [B

    array-length v1, v7

    const/4 v10, 0x1

    new-array v10, v10, [B

    const/4 v11, 0x0

    iget-byte v12, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->H_FCT_DOMAIN:B

    aput-byte v12, v10, v11

    invoke-virtual {v5, v8, v7, v1, v10}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    add-int/2addr v1, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    add-int/2addr v1, v10

    new-array v1, v1, [B

    invoke-static {v7, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    array-length v7, v1

    const/4 v10, 0x1

    new-array v10, v10, [B

    const/4 v11, 0x0

    iget-byte v12, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_FCT_DOMAIN:B

    aput-byte v12, v10, v11

    move-object/from16 v0, p1

    invoke-virtual {v5, v0, v1, v7, v10}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    const/4 v1, 0x1

    invoke-static {v2, v9}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    :cond_0
    invoke-static {v3, v6}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-static {v4, v8}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->getSessionKeySize()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x0

    aput-byte v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public encaps([B[B[B[B[B[B[B)V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    new-array v5, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, p6

    const/4 v4, 0x0

    invoke-virtual {v1, p6, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->randomGeneratorInit([B[BII)V

    const/16 v2, 0x28

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v0, v0, [B

    const/16 v2, 0x28

    invoke-virtual {v1, v0, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    invoke-virtual {v1, v5, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    new-array v6, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    add-int/2addr v0, v2

    new-array v0, v0, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    invoke-virtual {v1, p7, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v3, v5

    invoke-static {v5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    invoke-static {p5, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SALT_SIZE_BYTES:I

    invoke-static {p7, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    const/16 v1, 0x100

    invoke-direct {v7, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    array-length v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    iget-byte v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->G_FCT_DOMAIN:B

    aput-byte v4, v2, v3

    invoke-virtual {v7, v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v3, v0, [J

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v4, v0, [B

    invoke-direct {p0, v3, v4, p5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->extractPublicKeys([J[B[B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE_64:I

    new-array v2, v0, [J

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->encrypt([B[J[J[B[B[B)V

    invoke-static {p2, v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    array-length v0, v5

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget-byte v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->H_FCT_DOMAIN:B

    aput-byte v3, v1, v2

    invoke-virtual {v7, p4, v5, v0, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_BYTE:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N1N2_BYTE:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    invoke-static {v5, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    new-array v2, v2, [B

    const/4 v3, 0x0

    iget-byte v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->K_FCT_DOMAIN:B

    aput-byte v4, v2, v3

    invoke-virtual {v7, p3, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->SHAKE256_512_ds([B[BI[B)V

    return-void
.end method

.method public genKeyPair([B[B[B)V
    .locals 9

    const/16 v8, 0x28

    const/16 v6, 0x100

    const/4 v7, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    invoke-direct {v1, v6}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3, v7}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->randomGeneratorInit([B[BII)V

    invoke-virtual {v1, v0, v8}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    invoke-direct {v2, v6}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    array-length v3, v0

    invoke-virtual {v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v3, v3, [J

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v4, v4, [J

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {p0, v3, v2, v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->w:I

    invoke-direct {p0, v4, v2, v5}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generateRandomFixedWeight([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SEED_SIZE:I

    new-array v2, v2, [B

    invoke-virtual {v1, v2, v8}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->squeeze([BI)V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;

    invoke-direct {v1, v6}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    array-length v5, v2

    invoke-virtual {v1, v2, v5}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->seedExpanderInit([BI)V

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v5, v5, [J

    invoke-virtual {p0, v5, v1}, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->generatePublicKeyH([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v1, v1, [J

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->gfCalculator:Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;

    invoke-virtual {v6, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->multLongs([J[J[J)V

    invoke-static {v1, v1, v3}, Lorg/bouncycastle/pqc/crypto/hqc/GF2PolynomialCalculator;->addLongs([J[J[J)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v3, v3, [B

    invoke-static {v3, v1}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromLongArrayToByteArray([B[J)V

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    array-length v2, v1

    invoke-static {v1, v7, p1, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, v0

    invoke-static {v0, v7, p2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method generatePublicKeyH([JLorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;)V
    .locals 9

    const/4 v8, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE:I

    invoke-virtual {p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->expandSeed([BI)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    new-array v1, v1, [J

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->fromByteArrayToLongArray([J[B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->N_BYTE_64:I

    add-int/lit8 v0, v0, -0x1

    aget-wide v2, v1, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->n:I

    int-to-long v4, v4

    const-wide/16 v6, 0x40

    invoke-static {v4, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->bitMask(JJ)J

    move-result-wide v4

    and-long/2addr v2, v4

    aput-wide v2, v1, v0

    array-length v0, p1

    invoke-static {v1, v8, p1, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/HQCEngine;->SHA512_BYTES:I

    return v0
.end method
