.class Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;
.super Ljava/lang/Object;


# instance fields
.field private COND_BYTES:I

.field private GFBITS:I

.field private GFMASK:I

.field private IRR_BYTES:I

.field private PK_NCOLS:I

.field private PK_NROWS:I

.field private PK_ROW_BYTES:I

.field private SYND_BYTES:I

.field private SYS_N:I

.field private SYS_T:I

.field private benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

.field private countErrorIndices:Z

.field private final defaultKeySize:I

.field private gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

.field private poly:[I

.field private usePadding:Z

.field private usePivots:Z


# direct methods
.method public constructor <init>(III[IZI)V
    .locals 6

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    add-int/lit8 v0, v0, -0x4

    shl-int v0, v1, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    mul-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    mul-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v0, v1, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    const/16 v3, 0xc

    if-ne v0, v3, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/GF12;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF12;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/BENES12;-><init>(III)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v0, v1, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-le v0, v3, :cond_2

    :goto_2
    iput-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/GF13;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/cmce/GF13;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-direct {v0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/BENES13;-><init>(III)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private bm([S[S)V
    .locals 14

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v0, v0, 0x1

    new-array v6, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v0, v0, 0x1

    new-array v7, v0, [S

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v3, v3, 0x1

    if-ge v0, v3, :cond_0

    const/4 v3, 0x0

    aput-short v3, v7, v0

    aput-short v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput-short v4, v6, v3

    aput-short v4, v7, v0

    const/4 v3, 0x0

    move v0, v1

    :goto_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v1, v1, 0x2

    if-ge v3, v1, :cond_5

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    invoke-static {v3, v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->min(SI)I

    move-result v8

    if-gt v1, v8, :cond_1

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v9, v6, v1

    sub-int v10, v3, v1

    aget-short v10, p2, v10

    invoke-virtual {v8, v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul_ext(SS)I

    move-result v8

    xor-int/2addr v4, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_reduce(I)S

    move-result v4

    add-int/lit8 v1, v4, -0x1

    int-to-short v1, v1

    shr-int/lit8 v1, v1, 0xf

    int-to-short v1, v1

    and-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-short v8, v1

    mul-int/lit8 v1, v2, 0x2

    sub-int v1, v3, v1

    int-to-short v1, v1

    shr-int/lit8 v1, v1, 0xf

    int-to-short v1, v1

    and-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    add-int/lit8 v1, v1, -0x1

    int-to-short v1, v1

    and-int/2addr v1, v8

    int-to-short v9, v1

    const/4 v1, 0x0

    :goto_3
    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v1, v10, :cond_2

    aget-short v10, v6, v1

    aput-short v10, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v1, v0, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_frac(SS)S

    move-result v10

    const/4 v1, 0x0

    :goto_4
    iget v11, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v1, v11, :cond_3

    aget-short v11, v6, v1

    iget-object v12, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v13, v7, v1

    invoke-virtual {v12, v10, v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v12

    and-int/2addr v12, v8

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_3
    xor-int/lit8 v1, v9, -0x1

    and-int/2addr v1, v2

    add-int/lit8 v8, v3, 0x1

    sub-int v2, v8, v2

    and-int/2addr v2, v9

    or-int/2addr v1, v2

    int-to-short v1, v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v2, v2, -0x1

    :goto_5
    if-ltz v2, :cond_4

    add-int/lit8 v8, v2, 0x1

    aget-short v10, v7, v2

    xor-int/lit8 v11, v9, -0x1

    and-int/2addr v10, v11

    aget-short v11, v5, v2

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, v7, v8

    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    const/4 v8, 0x0

    aput-short v8, v7, v2

    xor-int/lit8 v2, v9, -0x1

    and-int/2addr v0, v2

    and-int v2, v4, v9

    or-int/2addr v0, v2

    int-to-short v0, v0

    add-int/lit8 v2, v3, 0x1

    int-to-short v3, v2

    move v2, v1

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v0, v1, :cond_6

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    sub-int/2addr v1, v0

    aget-short v1, v6, v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method static cbrecursion([BJJ[SIJJ[I)V
    .locals 17

    const-wide/16 v2, 0x1

    cmp-long v2, p7, v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    shr-long v2, p1, v2

    long-to-int v2, v2

    aget-byte v3, p0, v2

    move-object/from16 v0, p11

    move/from16 v1, p6

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v4

    const-wide/16 v6, 0x7

    and-long v6, v6, p1

    long-to-int v5, v6

    shl-int/2addr v4, v5

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    :goto_0
    return-void

    :cond_0
    if-eqz p5, :cond_1

    const-wide/16 v2, 0x0

    :goto_1
    cmp-long v4, v2, p9

    if-gez v4, :cond_2

    long-to-int v4, v2

    long-to-int v5, v2

    aget-short v5, p5, v5

    xor-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x10

    const-wide/16 v6, 0x1

    xor-long/2addr v6, v2

    long-to-int v6, v6

    aget-short v6, p5, v6

    or-int/2addr v5, v6

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_1

    :cond_1
    const-wide/16 v2, 0x0

    :goto_2
    cmp-long v4, v2, p9

    if-gez v4, :cond_2

    long-to-int v4, v2

    move/from16 v0, p6

    int-to-long v6, v0

    add-long/2addr v6, v2

    long-to-int v5, v6

    move-object/from16 v0, p11

    invoke-static {v0, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x10

    move/from16 v0, p6

    int-to-long v6, v0

    const-wide/16 v8, 0x1

    xor-long/2addr v8, v2

    add-long/2addr v6, v8

    long-to-int v6, v6

    move-object/from16 v0, p11

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v6

    or-int/2addr v5, v6

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move-wide/from16 v0, p9

    long-to-int v3, v0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_3
    cmp-long v2, v4, p9

    if-gez v2, :cond_3

    long-to-int v2, v4

    aget v2, p11, v2

    const v3, 0xffff

    and-int/2addr v3, v2

    int-to-long v6, v3

    cmp-long v2, v4, v6

    if-gez v2, :cond_1d

    long-to-int v2, v4

    :goto_4
    add-long v6, p9, v4

    long-to-int v6, v6

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    aput v2, p11, v6

    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    move-wide v4, v2

    goto :goto_3

    :cond_3
    const-wide/16 v2, 0x0

    :goto_5
    cmp-long v4, v2, p9

    if-gez v4, :cond_4

    long-to-int v4, v2

    long-to-int v5, v2

    aget v5, p11, v5

    shl-int/lit8 v5, v5, 0x10

    int-to-long v6, v5

    or-long/2addr v6, v2

    long-to-int v5, v6

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    move-wide/from16 v0, p9

    long-to-int v3, v0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x0

    :goto_6
    cmp-long v4, v2, p9

    if-gez v4, :cond_5

    long-to-int v4, v2

    long-to-int v5, v2

    aget v5, p11, v5

    shl-int/lit8 v5, v5, 0x10

    add-long v6, p9, v2

    long-to-int v6, v6

    aget v6, p11, v6

    shr-int/lit8 v6, v6, 0x10

    add-int/2addr v5, v6

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_6

    :cond_5
    const/4 v2, 0x0

    move-wide/from16 v0, p9

    long-to-int v3, v0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0xa

    cmp-long v2, p7, v2

    if-gtz v2, :cond_b

    const-wide/16 v2, 0x0

    :goto_7
    cmp-long v4, v2, p9

    if-gez v4, :cond_6

    add-long v4, p9, v2

    long-to-int v4, v4

    long-to-int v5, v2

    aget v5, p11, v5

    const v6, 0xffff

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0xa

    add-long v6, p9, v2

    long-to-int v6, v6

    aget v6, p11, v6

    and-int/lit16 v6, v6, 0x3ff

    or-int/2addr v5, v6

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_7

    :cond_6
    const-wide/16 v2, 0x1

    move-wide v6, v2

    :goto_8
    const-wide/16 v2, 0x1

    sub-long v2, p7, v2

    cmp-long v2, v6, v2

    if-gez v2, :cond_a

    const-wide/16 v2, 0x0

    :goto_9
    cmp-long v4, v2, p9

    if-gez v4, :cond_7

    long-to-int v4, v2

    add-long v8, p9, v2

    long-to-int v5, v8

    aget v5, p11, v5

    and-int/lit16 v5, v5, -0x400

    shl-int/lit8 v5, v5, 0x6

    int-to-long v8, v5

    or-long/2addr v8, v2

    long-to-int v5, v8

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_9

    :cond_7
    const/4 v2, 0x0

    move-wide/from16 v0, p9

    long-to-int v3, v0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x0

    :goto_a
    cmp-long v4, v2, p9

    if-gez v4, :cond_8

    long-to-int v4, v2

    long-to-int v5, v2

    aget v5, p11, v5

    shl-int/lit8 v5, v5, 0x14

    add-long v8, p9, v2

    long-to-int v8, v8

    aget v8, p11, v8

    or-int/2addr v5, v8

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_a

    :cond_8
    const/4 v2, 0x0

    move-wide/from16 v0, p9

    long-to-int v3, v0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_b
    cmp-long v2, v4, p9

    if-gez v2, :cond_9

    long-to-int v2, v4

    aget v2, p11, v2

    const v3, 0xfffff

    and-int/2addr v2, v3

    long-to-int v3, v4

    aget v3, p11, v3

    const v8, 0xffc00

    and-int/2addr v3, v8

    add-long v8, p9, v4

    long-to-int v8, v8

    aget v8, p11, v8

    and-int/lit16 v8, v8, 0x3ff

    or-int/2addr v3, v8

    if-ge v2, v3, :cond_1c

    :goto_c
    add-long v8, p9, v4

    long-to-int v3, v8

    aput v2, p11, v3

    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    move-wide v4, v2

    goto :goto_b

    :cond_9
    const-wide/16 v2, 0x1

    add-long/2addr v2, v6

    move-wide v6, v2

    goto :goto_8

    :cond_a
    const-wide/16 v2, 0x0

    :goto_d
    cmp-long v4, v2, p9

    if-gez v4, :cond_14

    add-long v4, p9, v2

    long-to-int v4, v4

    aget v5, p11, v4

    and-int/lit16 v5, v5, 0x3ff

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_d

    :cond_b
    const-wide/16 v2, 0x0

    :goto_e
    cmp-long v4, v2, p9

    if-gez v4, :cond_c

    add-long v4, p9, v2

    long-to-int v4, v4

    long-to-int v5, v2

    aget v5, p11, v5

    shl-int/lit8 v5, v5, 0x10

    add-long v6, p9, v2

    long-to-int v6, v6

    aget v6, p11, v6

    const v7, 0xffff

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_e

    :cond_c
    const-wide/16 v2, 0x1

    move-wide v4, v2

    :goto_f
    const-wide/16 v2, 0x1

    sub-long v2, p7, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_13

    const-wide/16 v2, 0x0

    :goto_10
    cmp-long v6, v2, p9

    if-gez v6, :cond_d

    long-to-int v6, v2

    add-long v8, p9, v2

    long-to-int v7, v8

    aget v7, p11, v7

    const/high16 v8, -0x10000

    and-int/2addr v7, v8

    int-to-long v8, v7

    or-long/2addr v8, v2

    long-to-int v7, v8

    aput v7, p11, v6

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_10

    :cond_d
    const/4 v2, 0x0

    move-wide/from16 v0, p9

    long-to-int v3, v0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x0

    :goto_11
    cmp-long v6, v2, p9

    if-gez v6, :cond_e

    long-to-int v6, v2

    long-to-int v7, v2

    aget v7, p11, v7

    shl-int/lit8 v7, v7, 0x10

    add-long v8, p9, v2

    long-to-int v8, v8

    aget v8, p11, v8

    const v9, 0xffff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, p11, v6

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_11

    :cond_e
    const-wide/16 v2, 0x2

    sub-long v2, p7, v2

    cmp-long v2, v4, v2

    if-gez v2, :cond_10

    const-wide/16 v2, 0x0

    :goto_12
    cmp-long v6, v2, p9

    if-gez v6, :cond_f

    add-long v6, p9, v2

    long-to-int v6, v6

    long-to-int v7, v2

    aget v7, p11, v7

    const/high16 v8, -0x10000

    and-int/2addr v7, v8

    add-long v8, p9, v2

    long-to-int v8, v8

    aget v8, p11, v8

    shr-int/lit8 v8, v8, 0x10

    or-int/2addr v7, v8

    aput v7, p11, v6

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_12

    :cond_f
    move-wide/from16 v0, p9

    long-to-int v2, v0

    const-wide/16 v6, 0x2

    mul-long v6, v6, p9

    long-to-int v3, v6

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x0

    :goto_13
    cmp-long v6, v2, p9

    if-gez v6, :cond_10

    add-long v6, p9, v2

    long-to-int v6, v6

    add-long v8, p9, v2

    long-to-int v7, v8

    aget v7, p11, v7

    shl-int/lit8 v7, v7, 0x10

    long-to-int v8, v2

    aget v8, p11, v8

    const v9, 0xffff

    and-int/2addr v8, v9

    or-int/2addr v7, v8

    aput v7, p11, v6

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_13

    :cond_10
    const/4 v2, 0x0

    move-wide/from16 v0, p9

    long-to-int v3, v0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x0

    :goto_14
    cmp-long v6, v2, p9

    if-gez v6, :cond_12

    add-long v6, p9, v2

    long-to-int v6, v6

    aget v6, p11, v6

    const/high16 v7, -0x10000

    and-int/2addr v6, v7

    long-to-int v7, v2

    aget v7, p11, v7

    const v8, 0xffff

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    add-long v8, p9, v2

    long-to-int v7, v8

    aget v7, p11, v7

    if-ge v6, v7, :cond_11

    add-long v8, p9, v2

    long-to-int v7, v8

    aput v6, p11, v7

    :cond_11
    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_14

    :cond_12
    const-wide/16 v2, 0x1

    add-long/2addr v2, v4

    move-wide v4, v2

    goto/16 :goto_f

    :cond_13
    const-wide/16 v2, 0x0

    :goto_15
    cmp-long v4, v2, p9

    if-gez v4, :cond_14

    add-long v4, p9, v2

    long-to-int v4, v4

    aget v5, p11, v4

    const v6, 0xffff

    and-int/2addr v5, v6

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_15

    :cond_14
    if-eqz p5, :cond_15

    const-wide/16 v2, 0x0

    :goto_16
    cmp-long v4, v2, p9

    if-gez v4, :cond_16

    long-to-int v4, v2

    long-to-int v5, v2

    aget-short v5, p5, v5

    shl-int/lit8 v5, v5, 0x10

    int-to-long v6, v5

    add-long/2addr v6, v2

    long-to-int v5, v6

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_16

    :cond_15
    const-wide/16 v2, 0x0

    :goto_17
    cmp-long v4, v2, p9

    if-gez v4, :cond_16

    long-to-int v4, v2

    move/from16 v0, p6

    int-to-long v6, v0

    add-long/2addr v6, v2

    long-to-int v5, v6

    move-object/from16 v0, p11

    invoke-static {v0, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->get_q_short([II)S

    move-result v5

    shl-int/lit8 v5, v5, 0x10

    int-to-long v6, v5

    add-long/2addr v6, v2

    long-to-int v5, v6

    aput v5, p11, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    move-wide/from16 v0, p9

    long-to-int v3, v0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x0

    :goto_18
    const-wide/16 v4, 0x2

    div-long v4, p9, v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_17

    const-wide/16 v4, 0x2

    mul-long/2addr v4, v2

    add-long v6, p9, v4

    long-to-int v6, v6

    aget v6, p11, v6

    and-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    add-long/2addr v8, v4

    long-to-int v7, v8

    xor-int/lit8 v8, v7, 0x1

    const/4 v9, 0x3

    shr-long v10, p1, v9

    long-to-int v9, v10

    aget-byte v10, p0, v9

    const-wide/16 v12, 0x7

    and-long v12, v12, p1

    long-to-int v11, v12

    shl-int/2addr v6, v11

    xor-int/2addr v6, v10

    int-to-byte v6, v6

    aput-byte v6, p0, v9

    add-long p1, p1, p3

    add-long v10, p9, v4

    long-to-int v6, v10

    long-to-int v9, v4

    aget v9, p11, v9

    shl-int/lit8 v9, v9, 0x10

    or-int/2addr v7, v9

    aput v7, p11, v6

    add-long v6, p9, v4

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    long-to-int v6, v6

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    long-to-int v4, v4

    aget v4, p11, v4

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v4, v8

    aput v4, p11, v6

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_18

    :cond_17
    move-wide/from16 v0, p9

    long-to-int v2, v0

    const-wide/16 v4, 0x2

    mul-long v4, v4, p9

    long-to-int v3, v4

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x2

    mul-long v2, v2, p7

    const-wide/16 v4, 0x3

    sub-long/2addr v2, v4

    mul-long v2, v2, p3

    const-wide/16 v4, 0x2

    div-long v4, p9, v4

    mul-long/2addr v2, v4

    add-long v4, p1, v2

    const-wide/16 v2, 0x0

    :goto_19
    const-wide/16 v6, 0x2

    div-long v6, p9, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_18

    const-wide/16 v6, 0x2

    mul-long/2addr v6, v2

    add-long v8, p9, v6

    long-to-int v8, v8

    aget v8, p11, v8

    and-int/lit8 v8, v8, 0x1

    int-to-long v10, v8

    add-long/2addr v10, v6

    long-to-int v9, v10

    xor-int/lit8 v10, v9, 0x1

    const/4 v11, 0x3

    shr-long v12, v4, v11

    long-to-int v11, v12

    aget-byte v12, p0, v11

    const-wide/16 v14, 0x7

    and-long/2addr v14, v4

    long-to-int v13, v14

    shl-int/2addr v8, v13

    xor-int/2addr v8, v12

    int-to-byte v8, v8

    aput-byte v8, p0, v11

    add-long v4, v4, p3

    long-to-int v8, v6

    shl-int/lit8 v9, v9, 0x10

    add-long v12, p9, v6

    long-to-int v11, v12

    aget v11, p11, v11

    const v12, 0xffff

    and-int/2addr v11, v12

    or-int/2addr v9, v11

    aput v9, p11, v8

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    long-to-int v8, v8

    shl-int/lit8 v9, v10, 0x10

    add-long v6, v6, p9

    const-wide/16 v10, 0x1

    add-long/2addr v6, v10

    long-to-int v6, v6

    aget v6, p11, v6

    const v7, 0xffff

    and-int/2addr v6, v7

    or-int/2addr v6, v9

    aput v6, p11, v8

    const-wide/16 v6, 0x1

    add-long/2addr v2, v6

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    move-wide/from16 v0, p9

    long-to-int v3, v0

    move-object/from16 v0, p11

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort32([III)V

    const-wide/16 v2, 0x2

    mul-long v2, v2, p7

    const-wide/16 v6, 0x2

    sub-long/2addr v2, v6

    mul-long v2, v2, p3

    const-wide/16 v6, 0x2

    div-long v6, p9, v6

    mul-long/2addr v2, v6

    sub-long/2addr v4, v2

    move-wide/from16 v0, p9

    long-to-int v2, v0

    mul-int/lit8 v2, v2, 0x4

    new-array v6, v2, [S

    const-wide/16 v2, 0x0

    :goto_1a
    const-wide/16 v8, 0x2

    mul-long v8, v8, p9

    cmp-long v7, v2, v8

    if-gez v7, :cond_19

    const-wide/16 v8, 0x2

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x0

    add-long/2addr v8, v10

    long-to-int v7, v8

    long-to-int v8, v2

    aget v8, p11, v8

    int-to-short v8, v8

    aput-short v8, v6, v7

    const-wide/16 v8, 0x2

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    long-to-int v7, v8

    long-to-int v8, v2

    aget v8, p11, v8

    const/high16 v9, -0x10000

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x10

    int-to-short v8, v8

    aput-short v8, v6, v7

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_1a

    :cond_19
    const-wide/16 v2, 0x0

    :goto_1b
    const-wide/16 v8, 0x2

    div-long v8, p9, v8

    cmp-long v7, v2, v8

    if-gez v7, :cond_1a

    long-to-int v7, v2

    const-wide/16 v8, 0x2

    mul-long/2addr v8, v2

    long-to-int v8, v8

    aget v8, p11, v8

    const v9, 0xffff

    and-int/2addr v8, v9

    ushr-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    aput-short v8, v6, v7

    const-wide/16 v8, 0x2

    div-long v8, p9, v8

    add-long/2addr v8, v2

    long-to-int v7, v8

    const-wide/16 v8, 0x2

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    long-to-int v8, v8

    aget v8, p11, v8

    const v9, 0xffff

    and-int/2addr v8, v9

    ushr-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    aput-short v8, v6, v7

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_1b

    :cond_1a
    const-wide/16 v2, 0x0

    :goto_1c
    const-wide/16 v8, 0x2

    div-long v8, p9, v8

    cmp-long v7, v2, v8

    if-gez v7, :cond_1b

    const-wide/16 v8, 0x4

    div-long v8, p9, v8

    add-long v8, v8, p9

    add-long/2addr v8, v2

    long-to-int v7, v8

    const-wide/16 v8, 0x2

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    long-to-int v8, v8

    aget-short v8, v6, v8

    shl-int/lit8 v8, v8, 0x10

    const-wide/16 v10, 0x2

    mul-long/2addr v10, v2

    long-to-int v9, v10

    aget-short v9, v6, v9

    or-int/2addr v8, v9

    aput v8, p11, v7

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_1c

    :cond_1b
    const-wide/16 v2, 0x2

    mul-long v6, p3, v2

    const/4 v8, 0x0

    const-wide/16 v2, 0x4

    div-long v2, p9, v2

    add-long v2, v2, p9

    long-to-int v2, v2

    mul-int/lit8 v9, v2, 0x2

    const-wide/16 v2, 0x1

    sub-long v10, p7, v2

    const-wide/16 v2, 0x2

    div-long v12, p9, v2

    move-object/from16 v3, p0

    move-object/from16 v14, p11

    invoke-static/range {v3 .. v14}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    add-long v4, v4, p3

    const-wide/16 v2, 0x2

    mul-long v6, p3, v2

    const/4 v8, 0x0

    const-wide/16 v2, 0x4

    div-long v2, p9, v2

    add-long v2, v2, p9

    const-wide/16 v10, 0x2

    mul-long/2addr v2, v10

    const-wide/16 v10, 0x2

    div-long v10, p9, v10

    add-long/2addr v2, v10

    long-to-int v9, v2

    const-wide/16 v2, 0x1

    sub-long v10, p7, v2

    const-wide/16 v2, 0x2

    div-long v12, p9, v2

    move-object/from16 v3, p0

    move-object/from16 v14, p11

    invoke-static/range {v3 .. v14}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    goto/16 :goto_0

    :cond_1c
    move v2, v3

    goto/16 :goto_c

    :cond_1d
    move v2, v3

    goto/16 :goto_4
.end method

.method private static controlbitsfrompermutation([B[SJJ)V
    .locals 16

    const-wide/16 v2, 0x2

    mul-long v2, v2, p4

    long-to-int v2, v2

    new-array v14, v2, [I

    move-wide/from16 v0, p4

    long-to-int v2, v0

    new-array v15, v2, [S

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-long v4, v2

    const-wide/16 v6, 0x2

    mul-long v6, v6, p2

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    mul-long v6, v6, p4

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    const-wide/16 v8, 0x7

    add-long/2addr v6, v8

    const-wide/16 v8, 0x8

    div-long/2addr v6, v8

    cmp-long v3, v4, v6

    if-gez v3, :cond_1

    const/4 v3, 0x0

    aput-byte v3, p0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v8, p1

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-static/range {v3 .. v14}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->cbrecursion([BJJ[SIJJ[I)V

    const/4 v2, 0x0

    :goto_1
    int-to-long v4, v2

    cmp-long v3, v4, p4

    if-gez v3, :cond_2

    int-to-short v3, v2

    aput-short v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    int-to-long v4, v3

    cmp-long v4, v4, p2

    if-gez v4, :cond_3

    move-wide/from16 v0, p4

    long-to-int v4, v0

    move-object/from16 v0, p0

    invoke-static {v15, v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    int-to-long v4, v2

    const/4 v2, 0x4

    shr-long v6, p4, v2

    add-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const-wide/16 v4, 0x2

    sub-long v4, p2, v4

    long-to-int v3, v4

    :goto_3
    if-ltz v3, :cond_4

    move-wide/from16 v0, p4

    long-to-int v4, v0

    move-object/from16 v0, p0

    invoke-static {v15, v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->layer([S[BIII)V

    int-to-long v4, v2

    const/4 v2, 0x4

    shr-long v6, p4, v2

    add-long/2addr v4, v6

    long-to-int v2, v4

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_4
    int-to-long v4, v2

    cmp-long v4, v4, p4

    if-gez v4, :cond_5

    aget-short v4, p1, v2

    aget-short v5, v15, v2

    xor-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-short v3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    if-nez v3, :cond_0

    return-void
.end method

.method private static ctz(J)I
    .locals 12

    const/4 v0, 0x2

    const/16 v10, 0x8

    const-wide v4, 0x101010101010101L

    const-wide/16 v2, 0x0

    const-wide/16 v6, -0x1

    xor-long/2addr v6, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v10, :cond_0

    ushr-long v8, v6, v1

    and-long/2addr v4, v8

    add-long/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-wide v4, 0x808080808080808L

    and-long/2addr v4, v2

    const/4 v1, 0x1

    ushr-long v6, v4, v1

    or-long/2addr v4, v6

    ushr-long v6, v4, v0

    or-long/2addr v4, v6

    ushr-long v6, v2, v10

    and-long v8, v6, v4

    add-long/2addr v2, v8

    :goto_1
    if-ge v0, v10, :cond_1

    ushr-long v8, v4, v10

    and-long/2addr v4, v8

    ushr-long/2addr v6, v10

    and-long v8, v6, v4

    add-long/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    long-to-int v0, v2

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private decrypt([B[B[B)I
    .locals 12

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v4, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v0, v0, 0x2

    new-array v6, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v0, v0, 0x1

    new-array v2, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v7, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v8, v0, [B

    move v0, v1

    :goto_0
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v0, v9, :cond_0

    aget-byte v9, p3, v0

    aput-byte v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    :goto_1
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v9, v9, 0x8

    if-ge v0, v9, :cond_1

    aput-byte v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_2
    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v0, v9, :cond_2

    mul-int/lit8 v9, v0, 0x2

    add-int/lit8 v9, v9, 0x28

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {p2, v9, v10}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v9

    aput-short v9, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/4 v9, 0x1

    aput-short v9, v3, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->benes:Lorg/bouncycastle/pqc/crypto/cmce/BENES;

    invoke-virtual {v0, v4, p2}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->support_gen([S[B)V

    invoke-direct {p0, v5, v3, v4, v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->bm([S[S)V

    invoke-direct {p0, v7, v2, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    move v0, v1

    :goto_3
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v2, v2, 0x8

    if-ge v0, v2, :cond_3

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v0, v1

    move v2, v1

    :goto_4
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v0, v8, :cond_4

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v9, v7, v0

    invoke-virtual {v8, v9}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v8

    and-int/lit8 v8, v8, 0x1

    int-to-short v8, v8

    div-int/lit8 v9, v0, 0x8

    aget-byte v10, p1, v9

    rem-int/lit8 v11, v0, 0x8

    shl-int v11, v8, v11

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, p1, v9

    add-int/2addr v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    invoke-direct {p0, v6, v3, v4, p1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->synd([S[S[S[B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    xor-int/2addr v0, v2

    :goto_5
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v1, v2, :cond_5

    aget-short v2, v5, v1

    aget-short v3, v6, v1

    xor-int/2addr v2, v3

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, -0x1

    shr-int/lit8 v0, v0, 0xf

    and-int/lit8 v0, v0, 0x1

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_6

    :cond_6
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private encrypt([B[B[BLjava/security/SecureRandom;)V
    .locals 0

    invoke-direct {p0, p3, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_error_vector([BLjava/security/SecureRandom;)V

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->syndrome([B[B[B)V

    return-void
.end method

.method private eval([SS)S
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    aget-short v1, p1, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v2, v1, p2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v1

    aget-short v2, p1, v0

    xor-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private generate_error_vector([BLjava/security/SecureRandom;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v6, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v7, v0, [B

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->countErrorIndices:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    invoke-virtual {p2, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_1

    mul-int/lit8 v3, v0, 0x2

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v2, v3, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v3

    aput-short v3, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v3, v3, 0x2

    if-ge v0, v3, :cond_3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v3, :cond_3

    aget-short v3, v5, v0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v3, v8, :cond_2

    add-int/lit8 v3, v2, 0x1

    aget-short v8, v5, v0

    aput-short v8, v6, v2

    move v2, v3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-lt v2, v0, :cond_0

    :cond_4
    move v0, v4

    move v2, v1

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v0, v3, :cond_8

    if-eq v2, v4, :cond_8

    move v3, v1

    :goto_3
    if-ge v3, v0, :cond_5

    aget-short v8, v6, v0

    aget-short v9, v6, v3

    if-ne v8, v9, :cond_7

    move v2, v4

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v0, v0, 0x2

    new-array v2, v0, [B

    invoke-virtual {p2, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    move v0, v1

    :goto_4
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v0, v3, :cond_4

    mul-int/lit8 v3, v0, 0x2

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v2, v3, v8}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v3

    aput-short v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    if-nez v2, :cond_0

    move v0, v1

    :goto_5
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v0, v2, :cond_9

    aget-short v2, v6, v0

    and-int/lit8 v2, v2, 0x7

    shl-int v2, v4, v2

    int-to-byte v2, v2

    aput-byte v2, v7, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_9
    move v0, v1

    :goto_6
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v2, v2, 0x8

    if-ge v0, v2, :cond_b

    aput-byte v1, p1, v0

    move v2, v1

    :goto_7
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v3, :cond_a

    aget-short v3, v6, v2

    shr-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask32(SS)B

    move-result v3

    int-to-short v3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    aget-byte v4, p1, v0

    aget-byte v5, v7, v2

    and-int/2addr v3, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_6

    :cond_b
    return-void
.end method

.method private generate_irr_poly([S)I
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, [[S

    const/4 v1, 0x0

    aget-object v1, v14, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-short v3, v1, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    aget-object v2, v14, v2

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    move-object/from16 v0, p1

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x1

    new-array v6, v1, [I

    const/4 v1, 0x2

    move v15, v1

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v15, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    aget-object v4, v14, v15

    ushr-int/lit8 v5, v15, 0x1

    aget-object v5, v14, v5

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sqr_poly(I[I[S[S[I)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    add-int/lit8 v1, v15, 0x1

    aget-object v10, v14, v1

    aget-object v11, v14, v15

    move-object/from16 v12, p1

    move-object v13, v6

    invoke-virtual/range {v7 .. v13}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul_poly(I[I[S[S[S[I)V

    add-int/lit8 v1, v15, 0x2

    move v15, v1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ne v15, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->poly:[I

    aget-object v4, v14, v15

    ushr-int/lit8 v5, v15, 0x1

    aget-object v5, v14, v5

    invoke-virtual/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sqr_poly(I[I[S[S[I)V

    :cond_1
    const/4 v1, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v1, v2, :cond_8

    add-int/lit8 v2, v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v4, v14, v1

    aget-short v4, v4, v1

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_iszero(S)S

    move-result v4

    move v3, v1

    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v5, v5, 0x1

    if-ge v3, v5, :cond_2

    aget-object v5, v14, v3

    aget-short v6, v5, v1

    aget-object v7, v14, v3

    aget-short v7, v7, v2

    and-int/2addr v7, v4

    int-to-short v7, v7

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    aget-object v2, v14, v1

    aget-short v2, v2, v1

    if-nez v2, :cond_4

    const/4 v1, -0x1

    :goto_4
    return v1

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v3, v14, v1

    aget-short v3, v3, v1

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v3

    move v2, v1

    :goto_5
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v4, v4, 0x1

    if-ge v2, v4, :cond_5

    aget-object v4, v14, v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v6, v14, v2

    aget-short v6, v6, v1

    invoke-virtual {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v5

    aput-short v5, v4, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v3, :cond_7

    if-eq v2, v1, :cond_6

    aget-object v3, v14, v1

    aget-short v4, v3, v2

    move v3, v1

    :goto_7
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-gt v3, v5, :cond_6

    aget-object v5, v14, v3

    aget-short v6, v5, v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-object v8, v14, v3

    aget-short v8, v8, v1

    invoke-virtual {v7, v8, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v7

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v5, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    aget-object v1, v14, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    move-object/from16 v0, p1

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    goto :goto_4
.end method

.method static get_q_short([II)S
    .locals 2

    div-int/lit8 v0, p1, 0x2

    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    aget v0, p0, v0

    int-to-short v0, v0

    :goto_0
    return v0

    :cond_0
    aget v0, p0, v0

    const/high16 v1, -0x10000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    goto :goto_0
.end method

.method private static layer([S[BIII)V
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x1

    shl-int v4, v0, p3

    move v0, v2

    move v3, v2

    :goto_0
    if-ge v3, p4, :cond_1

    move v1, v2

    :goto_1
    if-ge v1, v4, :cond_0

    add-int v5, v3, v1

    aget-short v5, p0, v5

    add-int v6, v3, v1

    add-int/2addr v6, v4

    aget-short v6, p0, v6

    xor-int/2addr v5, v6

    shr-int/lit8 v6, v0, 0x3

    add-int/2addr v6, p2

    aget-byte v6, p1, v6

    and-int/lit8 v7, v0, 0x7

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x1

    neg-int v6, v6

    and-int/2addr v5, v6

    add-int v6, v3, v1

    aget-short v7, p0, v6

    xor-int/2addr v7, v5

    int-to-short v7, v7

    aput-short v7, p0, v6

    add-int v6, v3, v1

    add-int/2addr v6, v4

    aget-short v7, p0, v6

    xor-int/2addr v5, v7

    int-to-short v5, v5

    aput-short v5, p0, v6

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    mul-int/lit8 v1, v4, 0x2

    add-int/2addr v1, v3

    move v3, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static min(SI)I
    .locals 0

    if-ge p0, p1, :cond_0

    :goto_0
    return p0

    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method private mov_columns([[B[S[J)I
    .locals 20

    const/16 v2, 0x40

    new-array v6, v2, [J

    const/16 v2, 0x20

    new-array v7, v2, [J

    const-wide/16 v8, 0x1

    const/16 v2, 0x9

    new-array v10, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v11, v2, -0x20

    div-int/lit8 v12, v11, 0x8

    rem-int/lit8 v13, v11, 0x8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v2, 0x20

    if-ge v3, v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    const/16 v4, 0x9

    if-ge v2, v4, :cond_0

    add-int v4, v11, v3

    aget-object v4, p1, v4

    add-int v5, v12, v2

    aget-byte v4, v4, v5

    aput-byte v4, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_2
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    aget-byte v4, v10, v2

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v13

    add-int/lit8 v5, v2, 0x1

    aget-byte v5, v10, v5

    rsub-int/lit8 v14, v13, 0x8

    shl-int/2addr v5, v14

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v10, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    invoke-static {v10, v2}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v4

    aput-wide v4, v6, v3

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x20

    if-ge v2, v3, :cond_3

    add-int v3, v11, v2

    aget-object v3, p1, v3

    invoke-static {v3, v12}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v4

    aput-wide v4, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, p3, v2

    const/4 v2, 0x0

    move v5, v2

    :goto_4
    const/16 v2, 0x20

    if-ge v5, v2, :cond_8

    aget-wide v2, v6, v5

    add-int/lit8 v4, v5, 0x1

    :goto_5
    const/16 v14, 0x20

    if-ge v4, v14, :cond_4

    aget-wide v14, v6, v4

    or-long/2addr v2, v14

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    const-wide/16 v14, 0x0

    cmp-long v4, v2, v14

    if-nez v4, :cond_5

    const/4 v2, -0x1

    :goto_6
    return v2

    :cond_5
    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->ctz(J)I

    move-result v3

    int-to-long v14, v3

    aput-wide v14, v7, v5

    const/4 v2, 0x0

    aget-wide v14, p3, v2

    aget-wide v16, v7, v5

    move-wide/from16 v0, v16

    long-to-int v4, v0

    shl-long v16, v8, v4

    or-long v14, v14, v16

    aput-wide v14, p3, v2

    add-int/lit8 v2, v5, 0x1

    :goto_7
    const/16 v4, 0x20

    if-ge v2, v4, :cond_6

    aget-wide v14, v6, v5

    shr-long/2addr v14, v3

    const-wide/16 v16, 0x1

    and-long v14, v14, v16

    const-wide/16 v16, 0x1

    sub-long v14, v14, v16

    aget-wide v16, v6, v5

    aget-wide v18, v6, v2

    and-long v14, v14, v18

    xor-long v14, v14, v16

    aput-wide v14, v6, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v2, v5, 0x1

    :goto_8
    const/16 v4, 0x20

    if-ge v2, v4, :cond_7

    aget-wide v14, v6, v2

    shr-long/2addr v14, v3

    const-wide/16 v16, 0x1

    and-long v14, v14, v16

    neg-long v14, v14

    aget-wide v16, v6, v2

    aget-wide v18, v6, v5

    and-long v14, v14, v18

    xor-long v14, v14, v16

    aput-wide v14, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    move v3, v2

    :goto_9
    const/16 v2, 0x20

    if-ge v3, v2, :cond_a

    add-int/lit8 v2, v3, 0x1

    :goto_a
    const/16 v4, 0x40

    if-ge v2, v4, :cond_9

    add-int v4, v11, v3

    aget-short v4, p2, v4

    add-int v5, v11, v2

    aget-short v5, p2, v5

    xor-int/2addr v4, v5

    int-to-long v4, v4

    int-to-short v6, v2

    aget-wide v8, v7, v3

    long-to-int v8, v8

    int-to-short v8, v8

    invoke-static {v6, v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->same_mask64(SS)J

    move-result-wide v8

    and-long/2addr v4, v8

    add-int v6, v11, v3

    aget-short v8, p2, v6

    int-to-long v8, v8

    xor-long/2addr v8, v4

    long-to-int v8, v8

    int-to-short v8, v8

    aput-short v8, p2, v6

    add-int v6, v11, v2

    aget-short v8, p2, v6

    int-to-long v8, v8

    xor-long/2addr v4, v8

    long-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, p2, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_9

    :cond_a
    const/4 v2, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v2, v3, :cond_11

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v3, :cond_d

    const/4 v3, 0x0

    :goto_c
    const/16 v4, 0x9

    if-ge v3, v4, :cond_b

    aget-object v4, p1, v2

    add-int v5, v12, v3

    aget-byte v4, v4, v5

    aput-byte v4, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_b
    const/4 v3, 0x0

    :goto_d
    const/16 v4, 0x8

    if-ge v3, v4, :cond_c

    aget-byte v4, v10, v3

    and-int/lit16 v4, v4, 0xff

    shr-int/2addr v4, v13

    add-int/lit8 v5, v3, 0x1

    aget-byte v5, v10, v5

    rsub-int/lit8 v6, v13, 0x8

    shl-int/2addr v5, v6

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v10, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    invoke-static {v10, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v4

    :goto_e
    const/4 v3, 0x0

    :goto_f
    const/16 v6, 0x20

    if-ge v3, v6, :cond_e

    shr-long v8, v4, v3

    aget-wide v14, v7, v3

    long-to-int v6, v14

    shr-long v14, v4, v6

    xor-long/2addr v8, v14

    const-wide/16 v14, 0x1

    and-long/2addr v8, v14

    aget-wide v14, v7, v3

    long-to-int v6, v14

    shl-long v14, v8, v6

    xor-long/2addr v4, v14

    shl-long/2addr v8, v3

    xor-long/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_d
    aget-object v3, p1, v2

    invoke-static {v3, v12}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load8([BI)J

    move-result-wide v4

    goto :goto_e

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v3, :cond_f

    const/4 v3, 0x0

    invoke-static {v10, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    aget-object v3, p1, v2

    add-int/lit8 v4, v12, 0x8

    aget-object v5, p1, v2

    add-int/lit8 v6, v12, 0x8

    aget-byte v5, v5, v6

    and-int/lit16 v5, v5, 0xff

    ushr-int/2addr v5, v13

    shl-int/2addr v5, v13

    const/4 v6, 0x7

    aget-byte v6, v10, v6

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v8, v13, 0x8

    ushr-int/2addr v6, v8

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    aget-object v3, p1, v2

    add-int/lit8 v4, v12, 0x0

    const/4 v5, 0x0

    aget-byte v5, v10, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v5, v13

    aget-object v6, p1, v2

    aget-byte v6, v6, v12

    and-int/lit16 v6, v6, 0xff

    rsub-int/lit8 v8, v13, 0x8

    shl-int/2addr v6, v8

    rsub-int/lit8 v8, v13, 0x8

    ushr-int/2addr v6, v8

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const/4 v3, 0x7

    :goto_10
    const/4 v4, 0x1

    if-lt v3, v4, :cond_10

    aget-object v4, p1, v2

    add-int v5, v12, v3

    aget-byte v6, v10, v3

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v6, v13

    add-int/lit8 v8, v3, -0x1

    aget-byte v8, v10, v8

    and-int/lit16 v8, v8, 0xff

    rsub-int/lit8 v9, v13, 0x8

    ushr-int/2addr v8, v9

    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v3, v3, -0x1

    goto :goto_10

    :cond_f
    aget-object v3, p1, v2

    invoke-static {v3, v12, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_b

    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_6
.end method

.method private pk_gen([B[B[I[S[J)I
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    const/4 v2, 0x1

    aput-short v2, v1, v0

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x28

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {p2, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v0, v2

    new-array v2, v0, [J

    const/4 v0, 0x0

    :goto_1
    const/4 v3, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v3, v4

    if-ge v0, v3, :cond_1

    aget v3, p3, v0

    int-to-long v4, v3

    aput-wide v4, v2, v0

    aget-wide v4, v2, v0

    const/16 v3, 0x1f

    shl-long/2addr v4, v3

    aput-wide v4, v2, v0

    aget-wide v4, v2, v0

    int-to-long v6, v0

    or-long/2addr v4, v6

    aput-wide v4, v2, v0

    aget-wide v4, v2, v0

    const-wide v6, 0x7fffffffffffffffL

    and-long/2addr v4, v6

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    array-length v3, v2

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    const/4 v0, 0x1

    :goto_2
    const/4 v3, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v3, v4

    if-ge v0, v3, :cond_3

    add-int/lit8 v3, v0, -0x1

    aget-wide v4, v2, v3

    const/16 v3, 0x1f

    shr-long/2addr v4, v3

    aget-wide v6, v2, v0

    const/16 v3, 0x1f

    shr-long/2addr v6, v3

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    const/4 v0, -0x1

    :goto_3
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v4, v0, [S

    const/4 v0, 0x0

    :goto_4
    const/4 v3, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v3, v5

    if-ge v0, v3, :cond_4

    aget-wide v6, v2, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v8, v3

    and-long/2addr v6, v8

    long-to-int v3, v6

    int-to-short v3, v3

    aput-short v3, p4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_5
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v0, v2, :cond_5

    aget-short v2, p4, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->bitrev(SI)S

    move-result v2

    aput-short v2, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    new-array v5, v0, [S

    invoke-direct {p0, v5, v1, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->root([S[S[S)V

    const/4 v0, 0x0

    :goto_6
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v2, v5, v0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v1

    aput-short v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v1, 0x0

    :goto_7
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v2, :cond_8

    const/4 v2, 0x0

    :goto_8
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    if-ge v2, v3, :cond_7

    aget-object v3, v0, v1

    const/4 v6, 0x0

    aput-byte v6, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_8
    const/4 v1, 0x0

    :goto_9
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v1, v2, :cond_c

    const/4 v2, 0x0

    :goto_a
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v2, v3, :cond_a

    const/4 v3, 0x0

    :goto_b
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    if-ge v3, v6, :cond_9

    add-int/lit8 v6, v2, 0x7

    aget-short v6, v5, v6

    ushr-int/2addr v6, v3

    and-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    add-int/lit8 v7, v2, 0x6

    aget-short v7, v5, v7

    ushr-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    add-int/lit8 v7, v2, 0x5

    aget-short v7, v5, v7

    ushr-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    add-int/lit8 v7, v2, 0x4

    aget-short v7, v5, v7

    ushr-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    add-int/lit8 v7, v2, 0x3

    aget-short v7, v5, v7

    ushr-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    add-int/lit8 v7, v2, 0x2

    aget-short v7, v5, v7

    ushr-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    add-int/lit8 v7, v2, 0x1

    aget-short v7, v5, v7

    ushr-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    shl-int/lit8 v6, v6, 0x1

    int-to-byte v6, v6

    add-int/lit8 v7, v2, 0x0

    aget-short v7, v5, v7

    ushr-int/2addr v7, v3

    and-int/lit8 v7, v7, 0x1

    or-int/2addr v6, v7

    int-to-byte v6, v6

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v3

    aget-object v7, v0, v7

    div-int/lit8 v8, v2, 0x8

    aput-byte v6, v7, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_9
    add-int/lit8 v2, v2, 0x8

    goto :goto_a

    :cond_a
    const/4 v2, 0x0

    :goto_c
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v2, v3, :cond_b

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    aget-short v6, v5, v2

    aget-short v7, v4, v2

    invoke-virtual {v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v3

    aput-short v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_9

    :cond_c
    const/4 v2, 0x0

    move v3, v1

    :goto_d
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v2, v1, :cond_13

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v5, v2, 0x7

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v1, :cond_d

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v1, v1, -0x20

    if-ne v2, v1, :cond_d

    invoke-direct {p0, v0, p4, p5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->mov_columns([[B[S[J)I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v0, -0x1

    goto/16 :goto_3

    :cond_d
    add-int/lit8 v1, v2, 0x1

    :goto_e
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v4, :cond_f

    aget-object v4, v0, v2

    aget-byte v4, v4, v3

    aget-object v6, v0, v1

    aget-byte v6, v6, v3

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    neg-int v4, v4

    int-to-byte v6, v4

    const/4 v4, 0x0

    :goto_f
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    if-ge v4, v7, :cond_e

    aget-object v7, v0, v2

    aget-byte v8, v7, v4

    aget-object v9, v0, v1

    aget-byte v9, v9, v4

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_f
    aget-object v1, v0, v2

    aget-byte v1, v1, v3

    shr-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_10

    const/4 v0, -0x1

    goto/16 :goto_3

    :cond_10
    const/4 v1, 0x0

    :goto_10
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v4, :cond_12

    if-eq v1, v2, :cond_11

    aget-object v4, v0, v1

    aget-byte v4, v4, v3

    shr-int/2addr v4, v5

    int-to-byte v4, v4

    and-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    neg-int v4, v4

    int-to-byte v6, v4

    const/4 v4, 0x0

    :goto_11
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    if-ge v4, v7, :cond_11

    aget-object v7, v0, v1

    aget-byte v8, v7, v4

    aget-object v9, v0, v2

    aget-byte v9, v9, v4

    and-int/2addr v9, v6

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    :cond_12
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_d

    :cond_13
    if-eqz p1, :cond_14

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v1, :cond_17

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v5, v2, 0x8

    if-nez v5, :cond_15

    aget-object v0, v0, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x8

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    add-int/2addr v0, v1

    :cond_14
    const/4 v0, 0x0

    goto/16 :goto_3

    :cond_15
    const/4 v2, 0x0

    :goto_12
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v2, v3, :cond_14

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v3, v3, -0x1

    div-int/lit8 v4, v3, 0x8

    move v3, v1

    :goto_13
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, -0x1

    if-ge v4, v1, :cond_16

    add-int/lit8 v1, v3, 0x1

    aget-object v6, v0, v2

    aget-byte v6, v6, v4

    and-int/lit16 v6, v6, 0xff

    ushr-int/2addr v6, v5

    aget-object v7, v0, v2

    add-int/lit8 v8, v4, 0x1

    aget-byte v7, v7, v8

    rsub-int/lit8 v8, v5, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v1

    goto :goto_13

    :cond_16
    add-int/lit8 v1, v3, 0x1

    aget-object v6, v0, v2

    aget-byte v4, v6, v4

    and-int/lit16 v4, v4, 0xff

    ushr-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_17
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v2, v1, 0x8

    const/4 v1, 0x0

    :goto_14
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v1, v3, :cond_14

    aget-object v3, v0, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    div-int/lit8 v4, v4, 0x8

    mul-int v5, v2, v1

    invoke-static {v3, v4, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_14
.end method

.method private root([S[S[S)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v0, v1, :cond_0

    aget-short v1, p3, v0

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v1

    aput-short v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static same_mask32(SS)B
    .locals 1

    xor-int v0, p0, p1

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v0, v0, 0x1f

    neg-int v0, v0

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private static same_mask64(SS)J
    .locals 4

    xor-int v0, p0, p1

    int-to-long v0, v0

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    neg-long v0, v0

    return-wide v0
.end method

.method private static sort32([III)V
    .locals 11

    const/4 v4, 0x0

    sub-int v7, p2, p1

    const/4 v0, 0x2

    if-ge v7, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x1

    :goto_0
    sub-int v0, v7, v5

    if-ge v5, v0, :cond_2

    add-int/2addr v5, v5

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_1
    if-lez v6, :cond_0

    move v0, v4

    :goto_2
    sub-int v1, v7, v6

    if-ge v0, v1, :cond_4

    and-int v1, v0, v6

    if-nez v1, :cond_3

    add-int v1, p1, v0

    add-int/2addr v1, v6

    aget v1, p0, v1

    add-int v2, p1, v0

    aget v2, p0, v2

    xor-int/2addr v1, v2

    add-int v2, p1, v0

    add-int/2addr v2, v6

    aget v2, p0, v2

    add-int v3, p1, v0

    aget v3, p0, v3

    sub-int/2addr v2, v3

    add-int v3, p1, v0

    add-int/2addr v3, v6

    aget v3, p0, v3

    xor-int/2addr v3, v2

    and-int/2addr v3, v1

    xor-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1f

    and-int/2addr v1, v2

    add-int v2, p1, v0

    aget v3, p0, v2

    xor-int/2addr v3, v1

    aput v3, p0, v2

    add-int v2, p1, v0

    add-int/2addr v2, v6

    aget v3, p0, v2

    xor-int/2addr v1, v3

    aput v1, p0, v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v0, v4

    move v2, v5

    :goto_3
    if-le v2, v6, :cond_8

    move v3, v0

    :goto_4
    sub-int v0, v7, v2

    if-ge v3, v0, :cond_7

    and-int v0, v3, v6

    if-nez v0, :cond_6

    add-int v0, p1, v3

    add-int/2addr v0, v6

    aget v0, p0, v0

    move v1, v2

    :goto_5
    if-le v1, v6, :cond_5

    add-int v8, p1, v3

    add-int/2addr v8, v1

    aget v8, p0, v8

    xor-int/2addr v8, v0

    add-int v9, p1, v3

    add-int/2addr v9, v1

    aget v9, p0, v9

    sub-int/2addr v9, v0

    add-int v10, p1, v3

    add-int/2addr v10, v1

    aget v10, p0, v10

    xor-int/2addr v10, v9

    and-int/2addr v10, v8

    xor-int/2addr v9, v10

    shr-int/lit8 v9, v9, 0x1f

    and-int/2addr v8, v9

    xor-int/2addr v0, v8

    add-int v9, p1, v3

    add-int/2addr v9, v1

    aget v10, p0, v9

    xor-int/2addr v8, v10

    aput v8, p0, v9

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    add-int v1, p1, v3

    add-int/2addr v1, v6

    aput v0, p0, v1

    :cond_6
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_7
    ushr-int/lit8 v2, v2, 0x1

    move v0, v3

    goto :goto_3

    :cond_8
    ushr-int/lit8 v0, v6, 0x1

    move v6, v0

    goto/16 :goto_1
.end method

.method private static sort64([JII)V
    .locals 14

    sub-int v7, p2, p1

    const/4 v0, 0x2

    if-ge v7, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v5, 0x1

    :goto_0
    sub-int v0, v7, v5

    if-ge v5, v0, :cond_2

    add-int/2addr v5, v5

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_1
    if-lez v6, :cond_0

    const/4 v0, 0x0

    :goto_2
    sub-int v1, v7, v6

    if-ge v0, v1, :cond_4

    and-int v1, v0, v6

    if-nez v1, :cond_3

    add-int v1, p1, v0

    add-int/2addr v1, v6

    aget-wide v2, p0, v1

    add-int v1, p1, v0

    aget-wide v8, p0, v1

    sub-long/2addr v2, v8

    const/16 v1, 0x3f

    ushr-long/2addr v2, v1

    neg-long v2, v2

    add-int v1, p1, v0

    aget-wide v8, p0, v1

    add-int v1, p1, v0

    add-int/2addr v1, v6

    aget-wide v10, p0, v1

    xor-long/2addr v8, v10

    and-long/2addr v2, v8

    add-int v1, p1, v0

    aget-wide v8, p0, v1

    xor-long/2addr v8, v2

    aput-wide v8, p0, v1

    add-int v1, p1, v0

    add-int/2addr v1, v6

    aget-wide v8, p0, v1

    xor-long/2addr v2, v8

    aput-wide v2, p0, v1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    move v3, v5

    :goto_3
    if-le v3, v6, :cond_8

    move v4, v0

    :goto_4
    sub-int v0, v7, v3

    if-ge v4, v0, :cond_7

    and-int v0, v4, v6

    if-nez v0, :cond_6

    add-int v0, p1, v4

    add-int/2addr v0, v6

    aget-wide v0, p0, v0

    move v2, v3

    :goto_5
    if-le v2, v6, :cond_5

    add-int v8, p1, v4

    add-int/2addr v8, v2

    aget-wide v8, p0, v8

    sub-long/2addr v8, v0

    const/16 v10, 0x3f

    ushr-long/2addr v8, v10

    neg-long v8, v8

    add-int v10, p1, v4

    add-int/2addr v10, v2

    aget-wide v10, p0, v10

    xor-long/2addr v10, v0

    and-long/2addr v8, v10

    xor-long/2addr v0, v8

    add-int v10, p1, v4

    add-int/2addr v10, v2

    aget-wide v12, p0, v10

    xor-long/2addr v8, v12

    aput-wide v8, p0, v10

    ushr-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_5
    add-int v2, p1, v4

    add-int/2addr v2, v6

    aput-wide v0, p0, v2

    :cond_6
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_7
    ushr-int/lit8 v3, v3, 0x1

    move v0, v4

    goto :goto_3

    :cond_8
    ushr-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1
.end method

.method private synd([S[S[S[B)V
    .locals 8

    const/4 v1, 0x1

    const/4 v7, 0x0

    aget-byte v0, p4, v7

    and-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    aget-short v3, p3, v7

    invoke-direct {p0, p2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v5, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sq(S)S

    move-result v2

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v2

    neg-int v0, v0

    and-int/2addr v0, v2

    int-to-short v2, v0

    aput-short v2, p1, v7

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v4, v2, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v2

    aput-short v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    if-ge v0, v2, :cond_2

    div-int/lit8 v2, v0, 0x8

    aget-byte v2, p4, v2

    rem-int/lit8 v3, v0, 0x8

    shr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    aget-short v4, p3, v0

    invoke-direct {p0, p2, v4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->eval([SS)S

    move-result v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_sq(S)S

    move-result v3

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_inv(S)S

    move-result v3

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v5, v3, v2}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v3

    aget-short v2, p1, v7

    xor-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v7

    move v2, v1

    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v5, v5, 0x2

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->gf:Lorg/bouncycastle/pqc/crypto/cmce/GF;

    invoke-virtual {v5, v3, v4}, Lorg/bouncycastle/pqc/crypto/cmce/GF;->gf_mul(SS)S

    move-result v3

    aget-short v5, p1, v2

    xor-int/2addr v5, v3

    int-to-short v5, v5

    aput-short v5, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private syndrome([B[B[B)V
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v5, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v6, v0, 0x8

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v0, v2, :cond_0

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v2, v3, :cond_5

    move v3, v1

    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    if-ge v3, v4, :cond_1

    aput-short v1, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    move v3, v1

    :goto_3
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    if-ge v3, v4, :cond_2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    sub-int/2addr v4, v7

    add-int/2addr v4, v3

    add-int v7, v0, v3

    aget-byte v7, p2, v7

    int-to-short v7, v7

    aput-short v7, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    iget-boolean v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, -0x1

    :goto_4
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    sub-int/2addr v4, v7

    if-lt v3, v4, :cond_3

    aget-short v4, v5, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v4, v6

    add-int/lit8 v7, v3, -0x1

    aget-short v7, v5, v7

    and-int/lit16 v7, v7, 0xff

    rsub-int/lit8 v8, v6, 0x8

    ushr-int/2addr v7, v8

    or-int/2addr v4, v7

    and-int/lit16 v4, v4, 0xff

    int-to-short v4, v4

    aput-short v4, v5, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    :cond_3
    div-int/lit8 v3, v2, 0x8

    aget-short v4, v5, v3

    const/4 v7, 0x1

    rem-int/lit8 v8, v2, 0x8

    shl-int/2addr v7, v8

    or-int/2addr v4, v7

    int-to-short v4, v4

    aput-short v4, v5, v3

    move v3, v1

    move v4, v1

    :goto_5
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v7, v7, 0x8

    if-ge v4, v7, :cond_4

    aget-short v7, v5, v4

    aget-byte v8, p3, v4

    and-int/2addr v7, v8

    xor-int/2addr v3, v7

    int-to-byte v3, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_4
    ushr-int/lit8 v4, v3, 0x4

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    ushr-int/lit8 v4, v3, 0x2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    ushr-int/lit8 v4, v3, 0x1

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    and-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    div-int/lit8 v4, v2, 0x8

    aget-byte v7, p1, v4

    rem-int/lit8 v8, v2, 0x8

    shl-int/2addr v3, v8

    or-int/2addr v3, v7

    int-to-byte v3, v3

    aput-byte v3, p1, v4

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method


# virtual methods
.method check_c_padding([B)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/lit8 v0, v0, -0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    rem-int/lit8 v1, v1, 0x8

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method check_pk_padding([B)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    mul-int/2addr v1, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_ROW_BYTES:I

    add-int/2addr v1, v3

    add-int/lit8 v1, v1, -0x1

    aget-byte v1, p1, v1

    or-int/2addr v1, v2

    int-to-byte v1, v1

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    and-int/lit16 v0, v2, 0xff

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    rem-int/lit8 v1, v1, 0x8

    ushr-int/2addr v0, v1

    int-to-byte v0, v0

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x7

    int-to-byte v0, v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public decompress_private_key([B)[B
    .locals 14

    const/16 v7, 0x28

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v0

    new-array v2, v0, [B

    array-length v0, p1

    invoke-static {p1, v9, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v1, v8, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x20

    new-array v10, v0, [B

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v1, 0x40

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    const/16 v1, 0x20

    invoke-interface {v0, p1, v9, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v1, v10

    invoke-interface {v0, v10, v9, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length v0, p1

    if-gt v0, v7, :cond_2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v1, v0, [S

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    new-array v3, v0, [B

    array-length v0, v10

    add-int/lit8 v0, v0, -0x20

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int v4, v0, v4

    move v0, v9

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v0, v5, :cond_0

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v5, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v10, v5, v6}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v5

    aput-short v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    move v0, v9

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v0, v4, :cond_1

    mul-int/lit8 v4, v0, 0x2

    aget-short v5, v1, v0

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    invoke-static {v3, v9, v2, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v1, v1, 0x28

    if-gt v0, v1, :cond_5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v0, v8, v0

    new-array v3, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v0, v8, v0

    new-array v4, v0, [S

    array-length v0, v10

    add-int/lit8 v0, v0, -0x20

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v1, v8, v1

    mul-int/lit8 v1, v1, 0x4

    sub-int v1, v0, v1

    move v0, v9

    :goto_2
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v5, v8, v5

    if-ge v0, v5, :cond_3

    mul-int/lit8 v5, v0, 0x4

    add-int/2addr v5, v1

    invoke-static {v10, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v5

    aput v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-eqz v0, :cond_6

    new-array v5, v8, [J

    const-wide/16 v0, 0x0

    aput-wide v0, v5, v9

    const/4 v1, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    :cond_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v3, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    int-to-long v5, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v0, v8, v0

    int-to-long v7, v0

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v0, v0, 0x28

    array-length v1, v3

    invoke-static {v3, v9, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPrivateKeySize()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    invoke-static {v10, v9, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2

    :cond_6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v0, v8, v0

    new-array v1, v0, [J

    move v0, v9

    :goto_3
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v5, v8, v5

    if-ge v0, v5, :cond_7

    aget v5, v3, v0

    int-to-long v6, v5

    aput-wide v6, v1, v0

    aget-wide v6, v1, v0

    const/16 v5, 0x1f

    shl-long/2addr v6, v5

    aput-wide v6, v1, v0

    aget-wide v6, v1, v0

    int-to-long v12, v0

    or-long/2addr v6, v12

    aput-wide v6, v1, v0

    aget-wide v6, v1, v0

    const-wide v12, 0x7fffffffffffffffL

    and-long/2addr v6, v12

    aput-wide v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    array-length v0, v1

    invoke-static {v1, v9, v0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->sort64([JII)V

    move v0, v9

    :goto_4
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v3, v8, v3

    if-ge v0, v3, :cond_4

    aget-wide v6, v1, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    int-to-long v12, v3

    and-long/2addr v6, v12

    long-to-int v3, v6

    int-to-short v3, v3

    aput-short v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public generate_public_key_from_private_key([B)[B
    .locals 10

    const/4 v0, 0x0

    const/4 v9, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->getPublicKeySize()I

    move-result v1

    new-array v1, v1, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v9, v2

    new-array v4, v2, [S

    new-array v5, v9, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v5, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v2, v9, v2

    new-array v3, v2, [I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v2, v2, 0x8

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v6, v9, v6

    mul-int/lit8 v6, v6, 0x4

    add-int/2addr v2, v6

    new-array v2, v2, [B

    array-length v6, v2

    add-int/lit8 v6, v6, -0x20

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    sub-int/2addr v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v7, v9, v7

    mul-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    new-instance v7, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v8, 0x100

    invoke-direct {v7, v8}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/16 v8, 0x40

    invoke-interface {v7, v8}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    const/16 v8, 0x20

    invoke-interface {v7, p1, v0, v8}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v8, v2

    invoke-interface {v7, v2, v0, v8}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    :goto_0
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int v7, v9, v7

    if-ge v0, v7, :cond_0

    mul-int/lit8 v7, v0, 0x4

    add-int/2addr v7, v6

    invoke-static {v2, v7}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v7

    aput v7, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    return-object v1
.end method

.method public getCipherTextSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    return v0
.end method

.method public getCondBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    return v0
.end method

.method public getDefaultSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->defaultKeySize:I

    return v0
.end method

.method public getIrrBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x28

    return v0
.end method

.method public getPublicKeySize()I
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x8

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NROWS:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->PK_NCOLS:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    goto :goto_0
.end method

.method public kem_dec([B[B[B)I
    .locals 10

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v3, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    add-int/2addr v0, v2

    new-array v4, v0, [B

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, p2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_c_padding([B)I

    move-result v0

    :goto_0
    invoke-direct {p0, v3, p3, p2}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->decrypt([B[B[B)I

    move-result v2

    int-to-byte v2, v2

    int-to-short v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-short v2, v2

    shr-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v5, v2

    and-int/lit8 v2, v5, 0x1

    int-to-byte v2, v2

    aput-byte v2, v4, v1

    move v2, v1

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v6, v6, 0x8

    if-ge v2, v6, :cond_0

    add-int/lit8 v6, v2, 0x1

    xor-int/lit8 v7, v5, -0x1

    add-int/lit8 v8, v2, 0x28

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/2addr v8, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    add-int/2addr v8, v9

    aget-byte v8, p3, v8

    and-int/2addr v7, v8

    aget-byte v8, v3, v2

    and-int/2addr v8, v5

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move v2, v1

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v2, v3, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v2

    aget-byte v5, p2, v2

    aput-byte v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    new-instance v2, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    array-length v3, v4

    invoke-interface {v2, v4, v1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v3, p1

    invoke-interface {v2, p1, v1, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_2

    int-to-byte v2, v0

    :goto_3
    array-length v3, p1

    if-ge v1, v3, :cond_3

    aget-byte v3, p1, v1

    or-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public kem_enc([B[B[BLjava/security/SecureRandom;)I
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v0, v0, 0x8

    new-array v2, v0, [B

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0, p3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->check_pk_padding([B)I

    move-result v0

    :goto_0
    invoke-direct {p0, p1, p3, v2, p4}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->encrypt([B[B[BLjava/security/SecureRandom;)V

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v4, 0x100

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    array-length v4, v2

    invoke-interface {v3, v2, v1, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v2, p1

    invoke-interface {v3, p1, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    array-length v2, p2

    invoke-interface {v3, p2, v1, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePadding:Z

    if-eqz v2, :cond_1

    int-to-byte v2, v0

    xor-int/lit16 v2, v2, 0xff

    int-to-byte v3, v2

    move v2, v1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYND_BYTES:I

    if-ge v2, v4, :cond_0

    aget-byte v4, p1, v2

    and-int/2addr v4, v3

    int-to-byte v4, v4

    aput-byte v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    const/16 v2, 0x20

    if-ge v1, v2, :cond_2

    aget-byte v2, p2, v1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    move v0, v1

    :cond_2
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 16

    const/4 v2, 0x1

    new-array v10, v2, [B

    const/16 v2, 0x20

    new-array v3, v2, [B

    const/4 v2, 0x0

    const/16 v4, 0x40

    aput-byte v4, v10, v2

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v2, v2, 0x8

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0x4

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x20

    new-array v14, v2, [B

    const/4 v2, 0x1

    new-array v7, v2, [J

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    aput-wide v4, v7, v2

    new-instance v11, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v2, 0x100

    invoke-direct {v11, v2}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    move-object v2, v3

    move-object v4, v3

    :goto_0
    const/4 v3, 0x0

    array-length v5, v10

    invoke-interface {v11, v10, v3, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 v3, 0x0

    array-length v5, v4

    invoke-interface {v11, v4, v3, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    const/4 v3, 0x0

    array-length v4, v14

    invoke-interface {v11, v14, v3, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length v3, v14

    add-int/lit8 v3, v3, -0x20

    add-int/lit8 v4, v3, 0x20

    invoke-static {v14, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x20

    move-object/from16 v0, p2

    invoke-static {v2, v3, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-static {v9, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    new-array v3, v2, [S

    array-length v2, v14

    add-int/lit8 v2, v2, -0x20

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    mul-int/lit8 v4, v4, 0x2

    sub-int v4, v2, v4

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v5, :cond_0

    mul-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFMASK:I

    invoke-static {v14, v5, v6}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load_gf([BII)S

    move-result v5

    aput-short v5, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->generate_irr_poly([S)I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_1

    move-object v2, v8

    move-object v4, v9

    goto :goto_0

    :cond_1
    const/16 v5, 0x28

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_T:I

    if-ge v2, v6, :cond_2

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v5

    aget-short v12, v3, v2

    move-object/from16 v0, p2

    invoke-static {v0, v6, v12}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store_gf([BIS)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v2, v3

    new-array v5, v2, [I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v2, v3

    mul-int/lit8 v2, v2, 0x4

    sub-int v15, v4, v2

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v3, v4

    if-ge v2, v3, :cond_3

    mul-int/lit8 v3, v2, 0x4

    add-int/2addr v3, v15

    invoke-static {v14, v3}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->load4([BI)I

    move-result v3

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v2, v3

    new-array v6, v2, [S

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->pk_gen([B[B[I[S[J)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_4

    move-object v2, v8

    move-object v4, v9

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->COND_BYTES:I

    new-array v8, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    int-to-long v10, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->GFBITS:I

    shl-int/2addr v2, v3

    int-to-long v12, v2

    move-object v9, v6

    invoke-static/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->controlbitsfrompermutation([B[SJJ)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->IRR_BYTES:I

    add-int/lit8 v3, v3, 0x28

    array-length v4, v8

    move-object/from16 v0, p2

    invoke-static {v8, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v2, v2, 0x8

    sub-int v2, v15, v2

    move-object/from16 v0, p2

    array-length v3, v0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    sub-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->SYS_N:I

    div-int/lit8 v4, v4, 0x8

    move-object/from16 v0, p2

    invoke-static {v14, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/bouncycastle/pqc/crypto/cmce/CMCEEngine;->usePivots:Z

    if-nez v2, :cond_5

    const/16 v2, 0x20

    const-wide v4, 0xffffffffL

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    :goto_4
    return-void

    :cond_5
    const/16 v2, 0x20

    const/4 v3, 0x0

    aget-wide v4, v7, v3

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/cmce/Utils;->store8([BIJ)V

    goto :goto_4
.end method
