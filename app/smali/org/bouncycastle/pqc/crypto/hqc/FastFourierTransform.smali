.class Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeFFTBetas([II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, p1, -0x1

    if-ge v0, v1, :cond_0

    const/4 v1, 0x1

    add-int/lit8 v2, p1, -0x1

    sub-int/2addr v2, v0

    shl-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static computeFFTRec([I[IIII[III)V
    .locals 19

    const/4 v3, 0x1

    add-int/lit8 v4, p6, -0x2

    shl-int/2addr v3, v4

    const/4 v4, 0x1

    add-int/lit8 v5, p7, -0x2

    shl-int v5, v4, v5

    new-array v4, v3, [I

    new-array v14, v3, [I

    add-int/lit8 v3, p7, -0x2

    new-array v7, v3, [I

    add-int/lit8 v3, p7, -0x2

    new-array v8, v3, [I

    new-array v0, v5, [I

    move-object/from16 v17, v0

    new-array v3, v5, [I

    new-array v0, v5, [I

    move-object/from16 v18, v0

    sub-int v5, p7, p6

    add-int/lit8 v5, v5, 0x1

    new-array v6, v5, [I

    const/4 v5, 0x1

    move/from16 v0, p4

    if-ne v0, v5, :cond_2

    const/4 v3, 0x0

    :goto_0
    move/from16 v0, p3

    if-ge v3, v0, :cond_0

    aget v4, p5, v3

    const/4 v5, 0x1

    aget v5, p1, v5

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v4

    aput v4, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget v4, p1, v4

    aput v4, p0, v3

    const/4 v5, 0x1

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    move/from16 v0, p3

    if-ge v4, v0, :cond_6

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_1

    add-int v7, v5, v3

    aget v8, p0, v3

    aget v9, v6, v4

    xor-int/2addr v8, v9

    aput v8, p0, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    shl-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v5, p3, -0x1

    aget v5, p5, v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    const/4 v6, 0x1

    const/4 v5, 0x1

    shl-int v9, v5, p4

    const/4 v5, 0x1

    :goto_3
    if-ge v5, v9, :cond_3

    add-int/lit8 v10, p3, -0x1

    aget v10, p5, v10

    invoke-static {v6, v10}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    aget v10, p1, v5

    invoke-static {v6, v10}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v10

    aput v10, p1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p6

    invoke-static {v4, v14, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v6, p3, -0x1

    if-ge v5, v6, :cond_4

    aget v6, p5, v5

    add-int/lit8 v9, p3, -0x1

    aget v9, p5, v9

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->inverse(I)I

    move-result v9

    invoke-static {v6, v9}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    aput v6, v7, v5

    aget v6, v7, v5

    aget v9, v7, v5

    invoke-static {v6, v9}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v6

    aget v9, v7, v5

    xor-int/2addr v6, v9

    aput v6, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v5, p3, -0x1

    move-object/from16 v0, v17

    invoke-static {v0, v7, v5}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeSubsetSum([I[II)V

    add-int/lit8 v5, p2, 0x1

    div-int/lit8 v5, v5, 0x2

    add-int/lit8 v6, p3, -0x1

    add-int/lit8 v7, p4, -0x1

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    const/4 v4, 0x1

    add-int/lit8 v5, p3, -0x1

    and-int/lit8 v5, v5, 0xf

    shl-int v5, v4, v5

    const/4 v4, 0x3

    move/from16 v0, p2

    if-gt v0, v4, :cond_5

    const/4 v4, 0x0

    const/4 v6, 0x0

    aget v6, v3, v6

    aput v6, p0, v4

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v6, 0x0

    aget v6, v14, v6

    xor-int/2addr v4, v6

    aput v4, p0, v5

    const/4 v4, 0x1

    :goto_5
    if-ge v4, v5, :cond_6

    aget v6, v3, v4

    aget v7, v17, v4

    const/4 v8, 0x0

    aget v8, v14, v8

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v7

    xor-int/2addr v6, v7

    aput v6, p0, v4

    add-int v6, v5, v4

    aget v7, p0, v4

    const/4 v8, 0x0

    aget v8, v14, v8

    xor-int/2addr v7, v8

    aput v7, p0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_5
    div-int/lit8 v11, p2, 0x2

    add-int/lit8 v12, p3, -0x1

    add-int/lit8 v13, p4, -0x1

    move-object/from16 v9, v18

    move-object v10, v14

    move-object v14, v8

    move/from16 v15, p6

    move/from16 v16, p7

    invoke-static/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-static {v0, v4, v1, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    aget v6, v3, v6

    aput v6, p0, v4

    aget v4, p0, v5

    const/4 v6, 0x0

    aget v6, v3, v6

    xor-int/2addr v4, v6

    aput v4, p0, v5

    const/4 v4, 0x1

    :goto_6
    if-ge v4, v5, :cond_6

    aget v6, v3, v4

    aget v7, v17, v4

    aget v8, v18, v4

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v7

    xor-int/2addr v6, v7

    aput v6, p0, v4

    add-int v6, v5, v4

    aget v7, p0, v6

    aget v8, p0, v4

    xor-int/2addr v7, v8

    aput v7, p0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method static computeRadix([I[I[III)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x3

    const/4 v3, 0x1

    packed-switch p3, :pswitch_data_0

    invoke-static {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadixBig([I[I[III)V

    :goto_0
    return-void

    :pswitch_0
    const/4 v0, 0x4

    const/16 v1, 0x8

    aget v1, p2, v1

    const/16 v2, 0xc

    aget v2, p2, v2

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x6

    const/16 v1, 0xc

    aget v1, p2, v1

    const/16 v2, 0xe

    aget v2, p2, v2

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/4 v0, 0x7

    const/16 v1, 0xe

    aget v1, p2, v1

    const/16 v2, 0xf

    aget v2, p2, v2

    xor-int/2addr v1, v2

    aput v1, p0, v0

    const/16 v0, 0xb

    aget v0, p2, v0

    const/16 v1, 0xd

    aget v1, p2, v1

    xor-int/2addr v0, v1

    aput v0, p1, v7

    const/4 v0, 0x6

    const/16 v1, 0xd

    aget v1, p2, v1

    const/16 v2, 0xe

    aget v2, p2, v2

    xor-int/2addr v1, v2

    aput v1, p1, v0

    const/4 v0, 0x7

    const/16 v1, 0xf

    aget v1, p2, v1

    aput v1, p1, v0

    const/16 v0, 0xa

    aget v0, p2, v0

    const/16 v1, 0xc

    aget v1, p2, v1

    xor-int/2addr v0, v1

    aget v1, p1, v7

    xor-int/2addr v0, v1

    aput v0, p0, v7

    const/4 v0, 0x4

    const/16 v1, 0x9

    aget v1, p2, v1

    const/16 v2, 0xd

    aget v2, p2, v2

    xor-int/2addr v1, v2

    aget v2, p0, v7

    xor-int/2addr v1, v2

    aput v1, p1, v0

    aget v0, p2, v5

    aput v0, p0, v5

    const/4 v0, 0x7

    aget v0, p2, v0

    const/16 v1, 0xb

    aget v1, p2, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xf

    aget v1, p2, v1

    xor-int/2addr v0, v1

    aput v0, p1, v4

    const/4 v0, 0x6

    aget v0, p2, v0

    const/16 v1, 0xa

    aget v1, p2, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xe

    aget v1, p2, v1

    xor-int/2addr v0, v1

    aget v1, p1, v4

    xor-int/2addr v0, v1

    aput v0, p0, v4

    const/4 v0, 0x4

    aget v0, p2, v0

    const/4 v1, 0x4

    aget v1, p0, v1

    xor-int/2addr v0, v1

    aget v1, p0, v4

    xor-int/2addr v0, v1

    aget v1, p1, v4

    xor-int/2addr v0, v1

    aput v0, p0, v6

    aget v0, p2, v4

    aget v1, p2, v7

    xor-int/2addr v0, v1

    const/16 v1, 0x9

    aget v1, p2, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xd

    aget v1, p2, v1

    xor-int/2addr v0, v1

    aget v1, p1, v4

    xor-int/2addr v0, v1

    aput v0, p1, v3

    aget v0, p2, v4

    aget v1, p1, v3

    xor-int/2addr v0, v1

    aget v1, p0, v4

    xor-int/2addr v0, v1

    aput v0, p1, v6

    aget v0, p2, v6

    aget v1, p0, v6

    xor-int/2addr v0, v1

    aget v1, p1, v3

    xor-int/2addr v0, v1

    aput v0, p0, v3

    aget v0, p2, v3

    aget v1, p0, v3

    xor-int/2addr v0, v1

    aput v0, p1, v5

    goto/16 :goto_0

    :pswitch_1
    aget v0, p2, v5

    aput v0, p0, v5

    const/4 v0, 0x4

    aget v0, p2, v0

    const/4 v1, 0x6

    aget v1, p2, v1

    xor-int/2addr v0, v1

    aput v0, p0, v6

    const/4 v0, 0x6

    aget v0, p2, v0

    const/4 v1, 0x7

    aget v1, p2, v1

    xor-int/2addr v0, v1

    aput v0, p0, v4

    aget v0, p2, v4

    aget v1, p2, v7

    xor-int/2addr v0, v1

    const/4 v1, 0x7

    aget v1, p2, v1

    xor-int/2addr v0, v1

    aput v0, p1, v3

    aget v0, p2, v7

    const/4 v1, 0x6

    aget v1, p2, v1

    xor-int/2addr v0, v1

    aput v0, p1, v6

    const/4 v0, 0x7

    aget v0, p2, v0

    aput v0, p1, v4

    aget v0, p2, v6

    aget v1, p0, v6

    xor-int/2addr v0, v1

    aget v1, p1, v3

    xor-int/2addr v0, v1

    aput v0, p0, v3

    aget v0, p2, v3

    aget v1, p0, v3

    xor-int/2addr v0, v1

    aput v0, p1, v5

    goto/16 :goto_0

    :pswitch_2
    aget v0, p2, v5

    aput v0, p0, v5

    aget v0, p2, v6

    aget v1, p2, v4

    xor-int/2addr v0, v1

    aput v0, p0, v3

    aget v0, p2, v3

    aget v1, p0, v3

    xor-int/2addr v0, v1

    aput v0, p1, v5

    aget v0, p2, v4

    aput v0, p1, v3

    goto/16 :goto_0

    :pswitch_3
    aget v0, p2, v5

    aput v0, p0, v5

    aget v0, p2, v3

    aput v0, p1, v5

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static computeRadixBig([I[I[III)V
    .locals 11

    const/4 v0, 0x1

    add-int/lit8 v1, p3, -0x2

    shl-int v1, v0, v1

    const/4 v0, 0x1

    add-int/lit8 v2, p4, -0x2

    shl-int/2addr v0, v2

    mul-int/lit8 v2, v0, 0x2

    new-array v2, v2, [I

    mul-int/lit8 v3, v0, 0x2

    new-array v3, v3, [I

    new-array v4, v0, [I

    new-array v5, v0, [I

    new-array v6, v0, [I

    new-array v7, v0, [I

    mul-int/lit8 v0, v1, 0x3

    const/4 v8, 0x0

    mul-int/lit8 v9, v1, 0x2

    invoke-static {p2, v0, v2, v8, v9}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    mul-int/lit8 v0, v1, 0x3

    mul-int/lit8 v8, v1, 0x2

    invoke-static {p2, v0, v2, v1, v8}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    const/4 v0, 0x0

    const/4 v8, 0x0

    mul-int/lit8 v9, v1, 0x4

    invoke-static {p2, v0, v3, v8, v9}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget v8, v2, v0

    mul-int/lit8 v9, v1, 0x2

    add-int/2addr v9, v0

    aget v9, p2, v9

    xor-int/2addr v8, v9

    aput v8, v2, v0

    add-int v8, v1, v0

    aget v9, v3, v8

    aget v10, v2, v0

    xor-int/2addr v9, v10

    aput v9, v3, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p3, -0x1

    invoke-static {v4, v5, v2, v0, p4}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    add-int/lit8 v0, p3, -0x1

    invoke-static {v6, v7, v3, v0, p4}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v6, v0, p0, v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    const/4 v0, 0x0

    mul-int/lit8 v2, v1, 0x2

    invoke-static {v4, v0, p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    mul-int/lit8 v3, v1, 0x2

    invoke-static {v7, v0, p1, v2, v3}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    const/4 v0, 0x0

    mul-int/lit8 v2, v1, 0x2

    invoke-static {v5, v0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->copyBytes([II[III)V

    return-void
.end method

.method static computeSubsetSum([I[II)V
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    aput v1, p0, v1

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_1

    move v0, v1

    :goto_1
    shl-int v3, v6, v2

    if-ge v0, v3, :cond_0

    shl-int v3, v6, v2

    add-int/2addr v3, v0

    aget v4, p1, v2

    aget v5, p0, v0

    xor-int/2addr v4, v5

    aput v4, p0, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method static fastFourierTransform([I[III)V
    .locals 20

    const/16 v10, 0x8

    const/16 v5, 0x80

    const/4 v3, 0x1

    shl-int v3, v3, p3

    new-array v4, v3, [I

    new-array v12, v3, [I

    const/4 v3, 0x7

    new-array v8, v3, [I

    new-array v3, v5, [I

    new-array v11, v5, [I

    const/4 v6, 0x7

    new-array v6, v6, [I

    new-array v0, v5, [I

    move-object/from16 v19, v0

    invoke-static {v6, v10}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTBetas([II)V

    const/4 v5, 0x7

    move-object/from16 v0, v19

    invoke-static {v0, v6, v5}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeSubsetSum([I[II)V

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p3

    invoke-static {v4, v12, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeRadix([I[I[III)V

    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x7

    if-ge v5, v7, :cond_0

    aget v7, v6, v5

    aget v9, v6, v5

    invoke-static {v7, v9}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v7

    aget v9, v6, v5

    xor-int/2addr v7, v9

    aput v7, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v5, p2, 0x1

    div-int/lit8 v5, v5, 0x2

    const/4 v6, 0x7

    add-int/lit8 v7, p3, -0x1

    move/from16 v9, p3

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    div-int/lit8 v13, p2, 0x2

    const/4 v14, 0x7

    add-int/lit8 v15, p3, -0x1

    move-object/from16 v16, v8

    move/from16 v17, p3

    move/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTRec([I[IIII[III)V

    const/16 v5, 0x80

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v11, v4, v0, v5, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    aget v6, v3, v6

    aput v6, p0, v4

    aget v4, p0, v5

    const/4 v6, 0x0

    aget v6, v3, v6

    xor-int/2addr v4, v6

    aput v4, p0, v5

    const/4 v4, 0x1

    :goto_1
    if-ge v4, v5, :cond_1

    aget v6, v3, v4

    aget v7, v19, v4

    aget v8, v11, v4

    invoke-static {v7, v8}, Lorg/bouncycastle/pqc/crypto/hqc/GFCalculator;->mult(II)I

    move-result v7

    xor-int/2addr v6, v7

    aput v6, p0, v4

    add-int/lit16 v6, v4, 0x80

    aget v7, p0, v6

    aget v8, p0, v4

    xor-int/2addr v7, v8

    aput v7, p0, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static fastFourierTransformGetError([B[II[I)V
    .locals 6

    const/4 v5, 0x7

    const/4 v4, 0x0

    const/16 v0, 0x8

    const/16 v1, 0xff

    new-array v2, v5, [I

    new-array v3, p2, [I

    invoke-static {v2, v0}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeFFTBetas([II)V

    invoke-static {v3, v2, v5}, Lorg/bouncycastle/pqc/crypto/hqc/FastFourierTransform;->computeSubsetSum([I[II)V

    aget-byte v0, p0, v4

    aget v2, p1, v4

    neg-int v2, v2

    shr-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->toUnsigned16Bits(I)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    aget-byte v0, p0, v4

    aget v2, p1, p2

    neg-int v2, v2

    shr-int/lit8 v2, v2, 0xf

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/hqc/Utils;->toUnsigned16Bits(I)I

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p0, v4

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p2, :cond_0

    aget v2, v3, v0

    aget v2, p3, v2

    sub-int v2, v1, v2

    aget-byte v4, p0, v2

    aget v5, p1, v0

    neg-int v5, v5

    shr-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    aget v2, v3, v0

    xor-int/lit8 v2, v2, 0x1

    aget v2, p3, v2

    sub-int v2, v1, v2

    aget-byte v4, p0, v2

    add-int v5, p2, v0

    aget v5, p1, v5

    neg-int v5, v5

    shr-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
