.class Lorg/bouncycastle/pqc/crypto/saber/Poly;
.super Ljava/lang/Object;


# static fields
.field private static final KARATSUBA_N:I = 0x40

.field private static SCHB_N:I


# instance fields
.field private final N_RES:I

.field private final N_SB:I

.field private final N_SB_RES:I

.field private final SABER_L:I

.field private final SABER_N:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

.field private final utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    sput v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SCHB_N:I

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_L()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_N()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    shl-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_RES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    shr-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getUtils()Lorg/bouncycastle/pqc/crypto/saber/Utils;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    return-void
.end method

.method private OVERFLOWING_MUL(II)S
    .locals 1

    mul-int v0, p1, p2

    int-to-short v0, v0

    return v0
.end method

.method private cbd([S[BI)V
    .locals 12

    const/4 v0, 0x4

    new-array v4, v0, [I

    const/4 v0, 0x4

    new-array v5, v0, [I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_MU()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_5

    mul-int/lit8 v1, v0, 0x3

    add-int/2addr v1, p3

    const/4 v2, 0x3

    invoke-direct {p0, p2, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->load_littleendian([BII)J

    move-result-wide v2

    long-to-int v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    const/4 v6, 0x3

    if-ge v2, v6, :cond_0

    shr-int v6, v3, v2

    const v7, 0x249249

    and-int/2addr v6, v7

    add-int/2addr v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    and-int/lit8 v3, v1, 0x7

    aput v3, v4, v2

    const/4 v2, 0x0

    ushr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x7

    aput v3, v5, v2

    const/4 v2, 0x1

    ushr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x7

    aput v3, v4, v2

    const/4 v2, 0x1

    ushr-int/lit8 v3, v1, 0x9

    and-int/lit8 v3, v3, 0x7

    aput v3, v5, v2

    const/4 v2, 0x2

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0x7

    aput v3, v4, v2

    const/4 v2, 0x2

    ushr-int/lit8 v3, v1, 0xf

    and-int/lit8 v3, v3, 0x7

    aput v3, v5, v2

    const/4 v2, 0x3

    ushr-int/lit8 v3, v1, 0x12

    and-int/lit8 v3, v3, 0x7

    aput v3, v4, v2

    const/4 v2, 0x3

    ushr-int/lit8 v1, v1, 0x15

    aput v1, v5, v2

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x0

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    aget v2, v4, v2

    const/4 v3, 0x2

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    aget v2, v4, v2

    const/4 v3, 0x3

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_MU()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_5

    mul-int/lit8 v1, v0, 0x4

    add-int/2addr v1, p3

    const/4 v2, 0x4

    invoke-direct {p0, p2, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->load_littleendian([BII)J

    move-result-wide v2

    long-to-int v3, v2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v6, 0x4

    if-ge v2, v6, :cond_2

    ushr-int v6, v3, v2

    const v7, 0x11111111

    and-int/2addr v6, v7

    add-int/2addr v1, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    and-int/lit8 v3, v1, 0xf

    aput v3, v4, v2

    const/4 v2, 0x0

    ushr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    aput v3, v5, v2

    const/4 v2, 0x1

    ushr-int/lit8 v3, v1, 0x8

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v2

    const/4 v2, 0x1

    ushr-int/lit8 v3, v1, 0xc

    and-int/lit8 v3, v3, 0xf

    aput v3, v5, v2

    const/4 v2, 0x2

    ushr-int/lit8 v3, v1, 0x10

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v2

    const/4 v2, 0x2

    ushr-int/lit8 v3, v1, 0x14

    and-int/lit8 v3, v3, 0xf

    aput v3, v5, v2

    const/4 v2, 0x3

    ushr-int/lit8 v3, v1, 0x18

    and-int/lit8 v3, v3, 0xf

    aput v3, v4, v2

    const/4 v2, 0x3

    ushr-int/lit8 v1, v1, 0x1c

    aput v1, v5, v2

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x0

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    aget v2, v4, v2

    const/4 v3, 0x2

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    aget v2, v4, v2

    const/4 v3, 0x3

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_MU()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    :goto_4
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_5

    mul-int/lit8 v1, v0, 0x5

    add-int/2addr v1, p3

    const/4 v2, 0x5

    invoke-direct {p0, p2, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->load_littleendian([BII)J

    move-result-wide v6

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    :goto_5
    const/4 v8, 0x5

    if-ge v1, v8, :cond_4

    ushr-long v8, v6, v1

    const-wide v10, 0x842108421L

    and-long/2addr v8, v10

    add-long/2addr v2, v8

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    const/4 v1, 0x0

    const-wide/16 v6, 0x1f

    and-long/2addr v6, v2

    long-to-int v6, v6

    aput v6, v4, v1

    const/4 v1, 0x0

    const/4 v6, 0x5

    ushr-long v6, v2, v6

    const-wide/16 v8, 0x1f

    and-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v5, v1

    const/4 v1, 0x1

    const/16 v6, 0xa

    ushr-long v6, v2, v6

    const-wide/16 v8, 0x1f

    and-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v4, v1

    const/4 v1, 0x1

    const/16 v6, 0xf

    ushr-long v6, v2, v6

    const-wide/16 v8, 0x1f

    and-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v5, v1

    const/4 v1, 0x2

    const/16 v6, 0x14

    ushr-long v6, v2, v6

    const-wide/16 v8, 0x1f

    and-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v4, v1

    const/4 v1, 0x2

    const/16 v6, 0x19

    ushr-long v6, v2, v6

    const-wide/16 v8, 0x1f

    and-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v5, v1

    const/4 v1, 0x3

    const/16 v6, 0x1e

    ushr-long v6, v2, v6

    const-wide/16 v8, 0x1f

    and-long/2addr v6, v8

    long-to-int v6, v6

    aput v6, v4, v1

    const/4 v1, 0x3

    const/16 v6, 0x23

    ushr-long/2addr v2, v6

    long-to-int v2, v2

    aput v2, v5, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x0

    const/4 v2, 0x0

    aget v2, v4, v2

    const/4 v3, 0x0

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x1

    aget v2, v4, v2

    const/4 v3, 0x1

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x2

    const/4 v2, 0x2

    aget v2, v4, v2

    const/4 v3, 0x2

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    mul-int/lit8 v1, v0, 0x4

    add-int/lit8 v1, v1, 0x3

    const/4 v2, 0x3

    aget v2, v4, v2

    const/4 v3, 0x3

    aget v3, v5, v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_5
    return-void
.end method

.method private karatsuba_simple([I[I[I)V
    .locals 24

    const/16 v4, 0x1f

    new-array v6, v4, [I

    const/16 v4, 0x1f

    new-array v7, v4, [I

    const/16 v4, 0x1f

    new-array v8, v4, [I

    const/16 v4, 0x3f

    new-array v9, v4, [I

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/16 v4, 0x10

    if-ge v5, v4, :cond_1

    aget v10, p1, v5

    add-int/lit8 v4, v5, 0x10

    aget v11, p1, v4

    add-int/lit8 v4, v5, 0x20

    aget v12, p1, v4

    add-int/lit8 v4, v5, 0x30

    aget v13, p1, v4

    const/4 v4, 0x0

    :goto_1
    const/16 v14, 0x10

    if-ge v4, v14, :cond_0

    aget v14, p2, v4

    add-int/lit8 v15, v4, 0x10

    aget v15, p2, v15

    add-int v16, v5, v4

    add-int/lit8 v16, v16, 0x0

    add-int v17, v5, v4

    add-int/lit8 v17, v17, 0x0

    aget v17, p3, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v14}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v18

    add-int v17, v17, v18

    aput v17, p3, v16

    add-int v16, v5, v4

    add-int/lit8 v16, v16, 0x20

    add-int v17, v5, v4

    add-int/lit8 v17, v17, 0x20

    aget v17, p3, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v15}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v18

    add-int v17, v17, v18

    aput v17, p3, v16

    add-int v16, v14, v15

    add-int v17, v10, v11

    add-int v18, v5, v4

    add-int v19, v5, v4

    aget v19, v6, v19

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v16, v0

    mul-long v16, v16, v22

    add-long v16, v16, v20

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    aput v16, v6, v18

    add-int/lit8 v16, v4, 0x20

    aget v16, p2, v16

    add-int/lit8 v17, v4, 0x30

    aget v17, p2, v17

    add-int v18, v5, v4

    add-int/lit8 v18, v18, 0x40

    add-int v19, v5, v4

    add-int/lit8 v19, v19, 0x40

    aget v19, p3, v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1, v12}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v20

    add-int v19, v19, v20

    aput v19, p3, v18

    add-int v18, v5, v4

    add-int/lit8 v18, v18, 0x60

    add-int v19, v5, v4

    add-int/lit8 v19, v19, 0x60

    aget v19, p3, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1, v13}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v20

    add-int v19, v19, v20

    aput v19, p3, v18

    add-int v18, v12, v13

    add-int v19, v16, v17

    add-int v20, v5, v4

    add-int v21, v5, v4

    aget v21, v8, v21

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v18

    add-int v18, v18, v21

    aput v18, v8, v20

    add-int v14, v14, v16

    add-int v16, v10, v12

    add-int v18, v5, v4

    add-int/lit8 v18, v18, 0x0

    add-int v19, v5, v4

    add-int/lit8 v19, v19, 0x0

    aget v19, v9, v19

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v20

    add-int v19, v19, v20

    aput v19, v9, v18

    add-int v15, v15, v17

    add-int v17, v11, v13

    add-int v18, v5, v4

    add-int/lit8 v18, v18, 0x20

    add-int v19, v5, v4

    add-int/lit8 v19, v19, 0x20

    aget v19, v9, v19

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v20

    add-int v19, v19, v20

    aput v19, v9, v18

    add-int/2addr v14, v15

    add-int v15, v16, v17

    add-int v16, v5, v4

    add-int v17, v5, v4

    aget v17, v7, v17

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->OVERFLOWING_MUL(II)S

    move-result v14

    add-int v14, v14, v17

    aput v14, v7, v16

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_0
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto/16 :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_2
    const/16 v5, 0x1f

    if-ge v4, v5, :cond_2

    aget v5, v7, v4

    add-int/lit8 v10, v4, 0x0

    aget v10, v9, v10

    sub-int/2addr v5, v10

    add-int/lit8 v10, v4, 0x20

    aget v10, v9, v10

    sub-int/2addr v5, v10

    aput v5, v7, v4

    aget v5, v6, v4

    add-int/lit8 v10, v4, 0x0

    aget v10, p3, v10

    sub-int/2addr v5, v10

    add-int/lit8 v10, v4, 0x20

    aget v10, p3, v10

    sub-int/2addr v5, v10

    aput v5, v6, v4

    aget v5, v8, v4

    add-int/lit8 v10, v4, 0x40

    aget v10, p3, v10

    sub-int/2addr v5, v10

    add-int/lit8 v10, v4, 0x60

    aget v10, p3, v10

    sub-int/2addr v5, v10

    aput v5, v8, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    const/16 v5, 0x1f

    if-ge v4, v5, :cond_3

    add-int/lit8 v5, v4, 0x10

    add-int/lit8 v10, v4, 0x10

    aget v10, v9, v10

    aget v11, v7, v4

    add-int/2addr v10, v11

    aput v10, v9, v5

    add-int/lit8 v5, v4, 0x10

    add-int/lit8 v10, v4, 0x10

    aget v10, p3, v10

    aget v11, v6, v4

    add-int/2addr v10, v11

    aput v10, p3, v5

    add-int/lit8 v5, v4, 0x50

    add-int/lit8 v10, v4, 0x50

    aget v10, p3, v10

    aget v11, v8, v4

    add-int/2addr v10, v11

    aput v10, p3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_4
    const/16 v5, 0x3f

    if-ge v4, v5, :cond_4

    aget v5, v9, v4

    aget v6, p3, v4

    sub-int/2addr v5, v6

    add-int/lit8 v6, v4, 0x40

    aget v6, p3, v6

    sub-int/2addr v5, v6

    aput v5, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_4
    const/4 v4, 0x0

    :goto_5
    const/16 v5, 0x3f

    if-ge v4, v5, :cond_5

    add-int/lit8 v5, v4, 0x20

    add-int/lit8 v6, v4, 0x20

    aget v6, p3, v6

    aget v7, v9, v4

    add-int/2addr v6, v7

    aput v6, p3, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method private load_littleendian([BII)J
    .locals 6

    add-int/lit8 v0, p2, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    const/4 v2, 0x1

    :goto_0
    if-ge v2, p3, :cond_0

    add-int v3, p2, v2

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v4, v3

    mul-int/lit8 v3, v2, 0x8

    shl-long/2addr v4, v3

    or-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method private poly_mul_acc([S[S[S)V
    .locals 6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [S

    invoke-direct {p0, p1, p2, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->toom_cook_4way([S[S[S)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    mul-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    sub-int v2, v0, v2

    aget-short v3, p3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    sub-int v4, v0, v4

    aget-short v4, v1, v4

    aget-short v5, v1, v0

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    int-to-short v3, v3

    aput-short v3, p3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private toom_cook_4way([S[S[S)V
    .locals 35

    const v4, 0xaaab

    const v5, 0x8e39

    const v6, 0xeeef

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v7, v3, [I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v8, v3, [I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v9, v3, [I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v10, v3, [I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v11, v3, [I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v12, v3, [I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v13, v3, [I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v14, v3, [I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v15, v3, [I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v0, v3, [I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v0, v3, [I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v0, v3, [I

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v0, v3, [I

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    new-array v0, v3, [I

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v0, v3, [I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v0, v3, [I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v0, v3, [I

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v0, v3, [I

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v0, v3, [I

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v0, v3, [I

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    new-array v0, v3, [I

    move-object/from16 v27, v0

    const/4 v3, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v3, v0, :cond_0

    aget-short v28, p1, v3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    move/from16 v29, v0

    add-int v29, v29, v3

    aget-short v29, p1, v29

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x2

    add-int v30, v30, v3

    aget-short v30, p1, v30

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    add-int v31, v31, v3

    aget-short v31, p1, v31

    add-int v32, v28, v30

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    add-int v33, v29, v31

    move/from16 v0, v33

    int-to-short v0, v0

    move/from16 v33, v0

    add-int v34, v32, v33

    move/from16 v0, v34

    int-to-short v0, v0

    move/from16 v34, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput v34, v9, v3

    aput v32, v10, v3

    shl-int/lit8 v32, v28, 0x2

    add-int v32, v32, v30

    shl-int/lit8 v32, v32, 0x1

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    shl-int/lit8 v33, v29, 0x2

    add-int v33, v33, v31

    move/from16 v0, v33

    int-to-short v0, v0

    move/from16 v33, v0

    add-int v34, v32, v33

    move/from16 v0, v34

    int-to-short v0, v0

    move/from16 v34, v0

    sub-int v32, v32, v33

    move/from16 v0, v32

    int-to-short v0, v0

    move/from16 v32, v0

    aput v34, v11, v3

    aput v32, v12, v3

    shl-int/lit8 v32, v31, 0x3

    shl-int/lit8 v30, v30, 0x2

    add-int v30, v30, v32

    shl-int/lit8 v29, v29, 0x1

    add-int v29, v29, v30

    add-int v29, v29, v28

    move/from16 v0, v29

    int-to-short v0, v0

    move/from16 v29, v0

    aput v29, v8, v3

    aput v28, v13, v3

    aput v31, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    move/from16 v28, v0

    move/from16 v0, v28

    if-ge v3, v0, :cond_1

    aget-short v28, p2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    move/from16 v29, v0

    add-int v29, v29, v3

    aget-short v29, p2, v29

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    move/from16 v30, v0

    mul-int/lit8 v30, v30, 0x2

    add-int v30, v30, v3

    aget-short v30, p2, v30

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB:I

    move/from16 v31, v0

    mul-int/lit8 v31, v31, 0x3

    add-int v31, v31, v3

    aget-short v31, p2, v31

    add-int v32, v28, v30

    add-int v33, v29, v31

    add-int v34, v32, v33

    sub-int v32, v32, v33

    aput v34, v16, v3

    aput v32, v17, v3

    shl-int/lit8 v32, v28, 0x2

    add-int v32, v32, v30

    shl-int/lit8 v32, v32, 0x1

    shl-int/lit8 v33, v29, 0x2

    add-int v33, v33, v31

    add-int v34, v32, v33

    sub-int v32, v32, v33

    aput v34, v18, v3

    aput v32, v19, v3

    shl-int/lit8 v32, v31, 0x3

    shl-int/lit8 v30, v30, 0x2

    add-int v30, v30, v32

    shl-int/lit8 v29, v29, 0x1

    add-int v29, v29, v30

    add-int v29, v29, v28

    aput v29, v15, v3

    aput v28, v20, v3

    aput v31, v14, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v7, v14, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v8, v15, v1}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v9, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v24

    invoke-direct {v0, v10, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v25

    invoke-direct {v0, v11, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v26

    invoke-direct {v0, v12, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v27

    invoke-direct {v0, v13, v1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->karatsuba_simple([I[I[I)V

    const/4 v3, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->N_SB_RES:I

    if-ge v3, v7, :cond_2

    aget v7, v21, v3

    aget v8, v22, v3

    aget v9, v23, v3

    aget v10, v24, v3

    aget v11, v25, v3

    aget v12, v26, v3

    aget v13, v27, v3

    add-int/2addr v8, v11

    sub-int/2addr v12, v11

    const v14, 0xffff

    and-int/2addr v10, v14

    const v14, 0xffff

    and-int/2addr v14, v9

    sub-int/2addr v10, v14

    ushr-int/lit8 v10, v10, 0x1

    sub-int/2addr v11, v7

    shl-int/lit8 v14, v13, 0x6

    sub-int/2addr v11, v14

    shl-int/lit8 v11, v11, 0x1

    add-int/2addr v11, v12

    add-int/2addr v9, v10

    shl-int/lit8 v14, v9, 0x6

    sub-int/2addr v8, v14

    sub-int/2addr v8, v9

    sub-int/2addr v9, v13

    sub-int/2addr v9, v7

    mul-int/lit8 v14, v9, 0x2d

    add-int/2addr v8, v14

    const v14, 0xffff

    and-int/2addr v11, v14

    shl-int/lit8 v14, v9, 0x3

    sub-int/2addr v11, v14

    mul-int/2addr v11, v4

    shr-int/lit8 v11, v11, 0x3

    add-int/2addr v12, v8

    const v14, 0xffff

    and-int/2addr v8, v14

    const v14, 0xffff

    and-int/2addr v14, v10

    shl-int/lit8 v14, v14, 0x4

    add-int/2addr v8, v14

    mul-int/2addr v8, v5

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v10, v8

    neg-int v10, v10

    const v14, 0xffff

    and-int/2addr v14, v8

    mul-int/lit8 v14, v14, 0x1e

    const v15, 0xffff

    and-int/2addr v12, v15

    sub-int v12, v14, v12

    mul-int/2addr v12, v6

    shr-int/lit8 v12, v12, 0x2

    sub-int/2addr v9, v11

    sub-int/2addr v8, v12

    aget-short v14, p3, v3

    const v15, 0xffff

    and-int/2addr v13, v15

    add-int/2addr v13, v14

    int-to-short v13, v13

    aput-short v13, p3, v3

    add-int/lit8 v13, v3, 0x40

    aget-short v14, p3, v13

    const v15, 0xffff

    and-int/2addr v12, v15

    add-int/2addr v12, v14

    int-to-short v12, v12

    aput-short v12, p3, v13

    add-int/lit16 v12, v3, 0x80

    aget-short v13, p3, v12

    const v14, 0xffff

    and-int/2addr v11, v14

    add-int/2addr v11, v13

    int-to-short v11, v11

    aput-short v11, p3, v12

    add-int/lit16 v11, v3, 0xc0

    aget-short v12, p3, v11

    const v13, 0xffff

    and-int/2addr v10, v13

    add-int/2addr v10, v12

    int-to-short v10, v10

    aput-short v10, p3, v11

    add-int/lit16 v10, v3, 0x100

    aget-short v11, p3, v10

    const v12, 0xffff

    and-int/2addr v9, v12

    add-int/2addr v9, v11

    int-to-short v9, v9

    aput-short v9, p3, v10

    add-int/lit16 v9, v3, 0x140

    aget-short v10, p3, v9

    const v11, 0xffff

    and-int/2addr v8, v11

    add-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p3, v9

    add-int/lit16 v8, v3, 0x180

    aget-short v9, p3, v8

    const v10, 0xffff

    and-int/2addr v7, v10

    add-int/2addr v7, v9

    int-to-short v7, v7

    aput-short v7, p3, v8

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public GenMatrix([[[S[B)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYVECBYTES()I

    move-result v1

    mul-int/2addr v0, v1

    new-array v1, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_SEEDBYTES()I

    move-result v2

    array-length v3, v1

    invoke-virtual {v0, v1, p2, v2, v3}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->prf([B[BII)V

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYVECBYTES()I

    move-result v3

    mul-int/2addr v3, v0

    aget-object v4, p1, v0

    invoke-virtual {v2, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECq([BI[[S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public GenSecret([[S[B)V
    .locals 7

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v2

    mul-int/2addr v0, v2

    new-array v3, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_NOISE_SEEDBYTES()I

    move-result v2

    array-length v4, v3

    invoke-virtual {v0, v3, p2, v2, v4}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->prf([B[BII)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    iget-boolean v2, v2, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->usingEffectiveMasking:Z

    if-nez v2, :cond_1

    aget-object v2, p1, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v4

    mul-int/2addr v4, v0

    invoke-direct {p0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->cbd([S[BI)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_N:I

    div-int/lit8 v4, v4, 0x4

    if-ge v2, v4, :cond_0

    aget-object v4, p1, v0

    mul-int/lit8 v5, v2, 0x4

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v6

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget-byte v6, v3, v6

    and-int/lit8 v6, v6, 0x3

    xor-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x2

    int-to-short v6, v6

    aput-short v6, v4, v5

    aget-object v4, p1, v0

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v6

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget-byte v6, v3, v6

    ushr-int/lit8 v6, v6, 0x2

    and-int/lit8 v6, v6, 0x3

    xor-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x2

    int-to-short v6, v6

    aput-short v6, v4, v5

    aget-object v4, p1, v0

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v6

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget-byte v6, v3, v6

    ushr-int/lit8 v6, v6, 0x4

    and-int/lit8 v6, v6, 0x3

    xor-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x2

    int-to-short v6, v6

    aput-short v6, v4, v5

    aget-object v4, p1, v0

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->getSABER_POLYCOINBYTES()I

    move-result v6

    mul-int/2addr v6, v0

    add-int/2addr v6, v2

    aget-byte v6, v3, v6

    ushr-int/lit8 v6, v6, 0x6

    and-int/lit8 v6, v6, 0x3

    xor-int/lit8 v6, v6, 0x2

    add-int/lit8 v6, v6, -0x2

    int-to-short v6, v6

    aput-short v6, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public InnerProd([[S[[S[S)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v0, v1, :cond_0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-direct {p0, v1, v2, p3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->poly_mul_acc([S[S[S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public MatrixVectorMul([[[S[[S[[SI)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v0, v2, :cond_2

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/saber/Poly;->SABER_L:I

    if-ge v2, v3, :cond_1

    const/4 v3, 0x1

    if-ne p4, v3, :cond_0

    aget-object v3, p1, v2

    aget-object v3, v3, v0

    aget-object v4, p2, v2

    aget-object v5, p3, v0

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->poly_mul_acc([S[S[S)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    aget-object v3, p1, v0

    aget-object v3, v3, v2

    aget-object v4, p2, v2

    aget-object v5, p3, v0

    invoke-direct {p0, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->poly_mul_acc([S[S[S)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
