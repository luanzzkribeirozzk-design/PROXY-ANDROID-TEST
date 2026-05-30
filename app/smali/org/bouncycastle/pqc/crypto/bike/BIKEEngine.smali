.class Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;
.super Ljava/lang/Object;


# instance fields
.field private L_BYTE:I

.field private R2_BYTE:I

.field private R_BYTE:I

.field private final bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

.field private hw:I

.field private nbIter:I

.field private r:I

.field private t:I

.field private tau:I

.field private w:I


# direct methods
.method public constructor <init>(IIIIII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->w:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->t:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->nbIter:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->w:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    div-int/lit8 v0, p4, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    add-int/lit8 v0, p1, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x7

    ushr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R2_BYTE:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    return-void
.end method

.method private BFIter([B[BI[I[I[I[I[B[B[B)V
    .locals 7

    move-object/from16 v0, p10

    invoke-direct {p0, p6, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    const/4 v1, 0x0

    aget-byte v1, p10, v1

    and-int/lit16 v1, v1, 0xff

    sub-int v2, v1, p3

    shr-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v3, p3, v3

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    const/4 v3, 0x0

    aget-byte v4, p2, v3

    int-to-byte v5, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    const/4 v3, 0x0

    int-to-byte v2, v2

    aput-byte v2, p8, v3

    const/4 v2, 0x0

    int-to-byte v1, v1

    aput-byte v1, p9, v2

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v1, v2, :cond_0

    aget-byte v2, p10, v1

    and-int/lit16 v2, v2, 0xff

    sub-int v3, v2, p3

    shr-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v4, p3, v4

    sub-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v4, v1

    aget-byte v5, p2, v4

    int-to-byte v6, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    int-to-byte v3, v3

    aput-byte v3, p8, v1

    int-to-byte v2, v2

    aput-byte v2, p9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p10

    invoke-direct {p0, p7, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    const/4 v1, 0x0

    aget-byte v1, p10, v1

    and-int/lit16 v1, v1, 0xff

    sub-int v2, v1, p3

    shr-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v3, p3, v3

    sub-int/2addr v1, v3

    shr-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aget-byte v4, p2, v3

    int-to-byte v5, v2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    int-to-byte v2, v2

    aput-byte v2, p8, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    int-to-byte v1, v1

    aput-byte v1, p9, v2

    const/4 v1, 0x1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v1, v2, :cond_1

    aget-byte v2, p10, v1

    and-int/lit16 v2, v2, 0xff

    sub-int v3, v2, p3

    shr-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->tau:I

    sub-int v4, p3, v4

    sub-int/2addr v2, v4

    shr-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v1

    aget-byte v5, p2, v4

    int-to-byte v6, v3

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v4, v1

    int-to-byte v3, v3

    aput-byte v3, p8, v4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v3, v1

    int-to-byte v2, v2

    aput-byte v2, p9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_3

    aget-byte v1, p8, v3

    if-eqz v1, :cond_2

    const/4 v6, 0x1

    :goto_3
    move-object v1, p0

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[IZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    return-void
.end method

.method private BFIter2([B[BI[I[I[I[I[B)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [I

    invoke-direct {p0, p6, p1, p8}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    const/4 v0, 0x0

    aget-byte v0, p8, v0

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    aget-byte v2, p2, v1

    int-to-byte v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/4 v1, 0x0

    aput v0, v6, v1

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v0, v1, :cond_0

    aget-byte v1, p8, v0

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v2, v0

    aget-byte v3, p2, v2

    int-to-byte v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p7, p1, p8}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctrAll([I[B[B)V

    const/4 v0, 0x0

    aget-byte v0, p8, v0

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v0, p3

    shr-int/lit8 v0, v0, 0x1f

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aget-byte v2, p2, v1

    int-to-byte v3, v0

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aput v0, v6, v1

    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v0, v1, :cond_1

    aget-byte v1, p8, v0

    and-int/lit16 v1, v1, 0xff

    sub-int/2addr v1, p3

    shr-int/lit8 v1, v1, 0x1f

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v0

    aget-byte v3, p2, v2

    int-to-byte v4, v1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v2, v0

    aput v1, v6, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_3

    aget v0, v6, v2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    :goto_3
    move-object v0, p0

    move-object v1, p1

    move-object v3, p4

    move-object v4, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    return-void
.end method

.method private BFMaskedIter([B[B[BI[I[I[I[I)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v0, v1, :cond_3

    aget-byte v1, p3, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p7, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v1

    if-lt v1, p4, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-direct {p0, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BIZ)V

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_2
    aput v1, v6, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_3
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v0, v1, :cond_7

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v1, v0

    aget-byte v1, p3, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    invoke-direct {p0, p8, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->ctr([I[BI)I

    move-result v1

    if-lt v1, p4, :cond_5

    const/4 v1, 0x1

    :goto_4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v2, v0

    invoke-direct {p0, p2, v2, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->updateNewErrorIndex([BIZ)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v2, v0

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    :goto_5
    aput v1, v6, v2

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    goto :goto_5

    :cond_7
    const/4 v2, 0x0

    :goto_6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    if-ge v2, v0, :cond_9

    aget v0, v6, v2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    const/4 v5, 0x1

    :goto_7
    move-object v0, p0

    move-object v1, p1

    move-object v3, p5

    move-object v4, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->recomputeSyndrome([BI[I[IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    const/4 v5, 0x0

    goto :goto_7

    :cond_9
    return-void
.end method

.method private BGFDecoder([B[I[I)[B
    .locals 22

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v2, v2, 0x2

    new-array v4, v2, [B

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getColumnFromCompactVersion([I)[I

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->getColumnFromCompactVersion([I)[I

    move-result-object v9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v2, v2, 0x2

    new-array v10, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    new-array v12, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v2, v2, 0x2

    new-array v11, v2, [B

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->getHammingWeight([B)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->threshold(II)I

    move-result v5

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    invoke-direct/range {v2 .. v12}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFIter([B[BI[I[I[I[I[B[B[B)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v17, v2, 0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v4

    move-object/from16 v16, v10

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v13 .. v21}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFMaskedIter([B[B[BI[I[I[I[I)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/lit8 v2, v2, 0x1

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v17, v2, 0x1

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v4

    move-object/from16 v16, v11

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move-object/from16 v20, v8

    move-object/from16 v21, v9

    invoke-direct/range {v13 .. v21}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFMaskedIter([B[B[BI[I[I[I[I)V

    const/4 v2, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->nbIter:I

    if-ge v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-static {v10, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->getHammingWeight([B)I

    move-result v3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->threshold(II)I

    move-result v16

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object v15, v4

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v12

    invoke-direct/range {v13 .. v21}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BFIter2([B[BI[I[I[I[I[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {p1 .. p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->getHammingWeight([B)I

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private computeSyndrome([B[B)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2, p1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2, p2, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2, v0, v1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->encodeBitsTransposed([J)[B

    move-result-object v0

    return-object v0
.end method

.method private convertToCompact([I[B)V
    .locals 8

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    if-ge v0, v3, :cond_2

    move v3, v1

    :goto_1
    const/16 v4, 0x8

    if-ge v3, v4, :cond_0

    mul-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ne v4, v5, :cond_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    aget-byte v4, p2, v0

    shr-int/2addr v4, v3

    and-int/lit8 v4, v4, 0x1

    mul-int/lit8 v5, v0, 0x8

    add-int/2addr v5, v3

    neg-int v6, v4

    and-int/2addr v5, v6

    aget v6, p1, v2

    neg-int v7, v4

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, p1, v2

    add-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    rem-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private ctr([I[BI)I
    .locals 9

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/lit8 v3, v0, -0x4

    move v0, v2

    move v1, v2

    :goto_0
    if-gt v0, v3, :cond_0

    add-int/lit8 v2, v0, 0x0

    aget v2, p1, v2

    add-int/2addr v2, p3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v2, v4

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    add-int/2addr v4, p3

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v0, 0x2

    aget v5, p1, v5

    add-int/2addr v5, p3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v5, v6

    add-int/lit8 v6, v0, 0x3

    aget v6, p1, v6

    add-int/2addr v6, p3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v6, v7

    shr-int/lit8 v7, v2, 0x1f

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v7, v8

    add-int/2addr v2, v7

    shr-int/lit8 v7, v4, 0x1f

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v7, v8

    add-int/2addr v4, v7

    shr-int/lit8 v7, v5, 0x1f

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v7, v8

    add-int/2addr v5, v7

    shr-int/lit8 v7, v6, 0x1f

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v7, v8

    add-int/2addr v6, v7

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aget-byte v2, p2, v4

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aget-byte v2, p2, v5

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    aget-byte v2, p2, v6

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v0, v2, :cond_1

    aget v2, p1, v0

    add-int/2addr v2, p3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v2, v3

    shr-int/lit8 v3, v2, 0x1f

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/2addr v3, v4

    add-int/2addr v2, v3

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return v1
.end method

.method private ctrAll([I[B[B)V
    .locals 9

    const/4 v3, 0x0

    aget v0, p1, v3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int/2addr v1, v0

    invoke-static {p2, v0, p3, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p2, v3, p3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v0, v1, :cond_4

    aget v4, p1, v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v2, v1, v4

    add-int/lit8 v5, v2, -0x4

    move v1, v3

    :goto_1
    if-gt v1, v5, :cond_0

    add-int/lit8 v6, v1, 0x0

    aget-byte v7, p3, v6

    add-int v8, v4, v1

    add-int/lit8 v8, v8, 0x0

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    add-int/lit8 v6, v1, 0x1

    aget-byte v7, p3, v6

    add-int v8, v4, v1

    add-int/lit8 v8, v8, 0x1

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    add-int/lit8 v6, v1, 0x2

    aget-byte v7, p3, v6

    add-int v8, v4, v1

    add-int/lit8 v8, v8, 0x2

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    add-int/lit8 v6, v1, 0x3

    aget-byte v7, p3, v6

    add-int v8, v4, v1

    add-int/lit8 v8, v8, 0x3

    aget-byte v8, p2, v8

    and-int/lit16 v8, v8, 0xff

    add-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, p3, v6

    add-int/lit8 v1, v1, 0x4

    goto :goto_1

    :cond_0
    :goto_2
    if-ge v1, v2, :cond_1

    aget-byte v5, p3, v1

    add-int v6, v4, v1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/lit8 v4, v1, -0x4

    move v1, v2

    :goto_3
    if-gt v1, v4, :cond_2

    add-int/lit8 v5, v1, 0x0

    aget-byte v6, p3, v5

    add-int/lit8 v7, v1, 0x0

    sub-int/2addr v7, v2

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v5, v1, 0x1

    aget-byte v6, p3, v5

    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v7, v2

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v5, v1, 0x2

    aget-byte v6, p3, v5

    add-int/lit8 v7, v1, 0x2

    sub-int/2addr v7, v2

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v5, v1, 0x3

    aget-byte v6, p3, v5

    add-int/lit8 v7, v1, 0x3

    sub-int/2addr v7, v2

    aget-byte v7, p2, v7

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p3, v5

    add-int/lit8 v1, v1, 0x4

    goto :goto_3

    :cond_2
    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge v1, v4, :cond_3

    aget-byte v4, p3, v1

    sub-int v5, v1, v2

    aget-byte v5, p2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private functionH([B)[B
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 v2, 0x0

    array-length v3, p1

    invoke-interface {v1, p1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v2, v2, 0x2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->t:I

    invoke-static {v0, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V

    return-object v0
.end method

.method private functionK([B[B[B[B)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length v2, p2

    invoke-virtual {v1, p2, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length v2, p3

    invoke-virtual {v1, p3, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v0, v3, p4, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private functionL([B[B[B)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA3Digest;

    const/16 v2, 0x180

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;-><init>(I)V

    array-length v2, p1

    invoke-virtual {v1, p1, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    array-length v2, p2

    invoke-virtual {v1, p2, v3, v2}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->update([BII)V

    invoke-virtual {v1, v0, v3}, Lorg/bouncycastle/crypto/digests/SHA3Digest;->doFinal([BI)I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v0, v3, p3, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private getColumnFromCompactVersion([I)[I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v1, v1, [I

    aget v2, p1, v0

    if-nez v2, :cond_0

    aput v0, v1, v0

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    sub-int/2addr v3, v0

    aget v3, p1, v3

    sub-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v0, v2, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    aget v3, p1, v3

    sub-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method private recomputeSyndrome([BI[I[IZ)V
    .locals 4

    const/4 v1, 0x0

    if-eqz p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-ge p2, v2, :cond_2

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_4

    aget v2, p3, v1

    if-gt v2, p2, :cond_1

    aget v2, p3, v1

    sub-int v2, p2, v2

    aget-byte v3, p1, v2

    xor-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int/2addr v2, p2

    aget v3, p3, v1

    sub-int/2addr v2, v3

    aget-byte v3, p1, v2

    xor-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    goto :goto_2

    :cond_2
    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    if-ge v1, v2, :cond_4

    aget v2, p4, v1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v3, p2, v3

    if-gt v2, v3, :cond_3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v2, p2, v2

    aget v3, p4, v1

    sub-int/2addr v2, v3

    aget-byte v3, p1, v2

    xor-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    aget v3, p4, v1

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int v3, p2, v3

    add-int/2addr v2, v3

    aget-byte v3, p1, v2

    xor-int/2addr v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    goto :goto_4

    :cond_4
    return-void
.end method

.method private splitEBytes([B[B[B)V
    .locals 6

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    and-int/lit8 v3, v1, 0x7

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v0, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    const/4 v2, -0x1

    shl-int/2addr v2, v3

    int-to-byte v2, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/lit8 v4, v4, -0x1

    xor-int/lit8 v5, v2, -0x1

    and-int/2addr v5, v1

    int-to-byte v5, v5

    aput-byte v5, p2, v4

    and-int/2addr v1, v2

    int-to-byte v1, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    add-int/2addr v2, v0

    aget-byte v2, p1, v2

    rsub-int/lit8 v4, v3, 0x8

    shl-int v4, v2, v4

    and-int/lit16 v1, v1, 0xff

    ushr-int/2addr v1, v3

    or-int/2addr v1, v4

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private threshold(II)I
    .locals 7

    sparse-switch p2, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :sswitch_0
    const-wide v2, 0x3f7c8ee1afb2e092L    # 0.0069722

    const-wide v4, 0x402b0f5c28f5c28fL    # 13.53

    const/16 v6, 0x24

    move v1, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->thresholdFromParameters(IDDI)I

    move-result v0

    :goto_0
    return v0

    :sswitch_1
    const-wide v2, 0x3f7590c0ad03d9a9L    # 0.005265

    const-wide v4, 0x402e84816f0068dcL    # 15.2588

    const/16 v6, 0x34

    move v1, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->thresholdFromParameters(IDDI)I

    move-result v0

    goto :goto_0

    :sswitch_2
    const-wide v2, 0x3f707a8c0d3f02caL    # 0.00402312

    const-wide v4, 0x4031e0e560418937L    # 17.8785

    const/16 v6, 0x45

    move v1, p1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->thresholdFromParameters(IDDI)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x3023 -> :sswitch_0
        0x6053 -> :sswitch_1
        0xa00d -> :sswitch_2
    .end sparse-switch
.end method

.method private static thresholdFromParameters(IDDI)I
    .locals 3

    int-to-double v0, p0

    mul-double/2addr v0, p1

    add-double/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p5, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private updateNewErrorIndex([BIZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    if-le p2, v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v0, p2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    add-int p2, v0, v1

    :cond_0
    :goto_0
    aget-byte v1, p1, p2

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    :goto_1
    xor-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    return-void

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    sub-int p2, v0, p2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public decaps([B[B[B[B[B[B)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v0, v0, [I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    new-array v2, v2, [I

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->convertToCompact([I[B)V

    invoke-direct {p0, v2, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->convertToCompact([I[B)V

    invoke-direct {p0, p5, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->computeSyndrome([B[B)[B

    move-result-object v3

    invoke-direct {p0, v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->BGFDecoder([B[I[I)[B

    move-result-object v2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v0, v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->fromBitArrayToByteArray([B[BII)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v2, v2, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v3, v3, [B

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->splitEBytes([B[B[B)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v6, v4, [B

    invoke-direct {p0, v2, v3, v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionL([B[B[B)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v2, p6, v6}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    invoke-direct {p0, v6}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionH([B)[B

    move-result-object v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R2_BYTE:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R2_BYTE:I

    move v4, v1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/util/Arrays;->areEqual([BII[BII)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6, p5, p6, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B[B)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p4, p5, p6, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B[B)V

    goto :goto_0
.end method

.method public encaps([B[B[B[BLjava/security/SecureRandom;)V
    .locals 7

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    new-array v0, v0, [B

    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionH([B)[B

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v2, v2, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->R_BYTE:I

    new-array v3, v3, [B

    invoke-direct {p0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->splitEBytes([B[B[B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v5, v2, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v5

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v6, p4, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v6, v5, v4, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v4, v5, v1, v5}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->add([J[J[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1, v5, p1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->encodeBytes([J[B)V

    invoke-direct {p0, v2, v3, p2}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionL([B[B[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-static {v1, v0, p2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->functionK([B[B[B[B)V

    return-void
.end method

.method public genKeyPair([B[B[B[BLjava/security/SecureRandom;)V
    .locals 6

    const/4 v5, 0x0

    const/16 v0, 0x40

    new-array v0, v0, [B

    invoke-virtual {p5, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    invoke-interface {v1, v0, v5, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    invoke-static {p1, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->r:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->hw:I

    invoke-static {p2, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKEUtils;->generateRandomByteArray([BIILorg/bouncycastle/crypto/Xof;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v3, p1, v1}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v3, p2, v2}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->decodeBytes([B[J)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->create()[J

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v4, v1, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->inv([J[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1, v3, v2, v3}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->multiply([J[J[J)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->bikeRing:Lorg/bouncycastle/pqc/crypto/bike/BIKERing;

    invoke-virtual {v1, v3, p4}, Lorg/bouncycastle/pqc/crypto/bike/BIKERing;->encodeBytes([J[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    array-length v2, p3

    invoke-static {v0, v1, p3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/bike/BIKEEngine;->L_BYTE:I

    return v0
.end method
