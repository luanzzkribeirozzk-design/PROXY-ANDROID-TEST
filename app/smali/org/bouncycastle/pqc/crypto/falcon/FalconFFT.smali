.class Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;
.super Ljava/lang/Object;


# instance fields
.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    return-void
.end method


# virtual methods
.method FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 24

    const/4 v5, 0x1

    shl-int v5, v5, p3

    shr-int/lit8 v10, v5, 0x1

    const/4 v6, 0x1

    const/4 v5, 0x2

    move v8, v5

    move v9, v10

    move v12, v6

    :goto_0
    move/from16 v0, p3

    if-ge v12, v0, :cond_2

    shr-int/lit8 v11, v9, 0x1

    shr-int/lit8 v13, v8, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    :goto_1
    if-ge v7, v13, :cond_1

    add-int v14, v6, v11

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v15, v8, v7

    shl-int/lit8 v15, v15, 0x1

    add-int/lit8 v15, v15, 0x0

    aget-object v15, v5, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v16, v8, v7

    shl-int/lit8 v16, v16, 0x1

    add-int/lit8 v16, v16, 0x1

    aget-object v16, v5, v16

    move v5, v6

    :goto_2
    if-ge v5, v14, :cond_0

    add-int v17, p2, v5

    aget-object v17, p1, v17

    add-int v18, p2, v5

    add-int v18, v18, v10

    aget-object v18, p1, v18

    add-int v19, p2, v5

    add-int v19, v19, v11

    aget-object v19, p1, v19

    add-int v20, p2, v5

    add-int v20, v20, v11

    add-int v20, v20, v10

    aget-object v20, p1, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v21

    add-int v22, p2, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v23, v0

    aput-object v23, p1, v22

    add-int v22, p2, v5

    add-int v22, v22, v10

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v21, v0

    aput-object v21, p1, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v20

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v17

    add-int v18, p2, v5

    add-int v18, v18, v11

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v19, v0

    aput-object v19, p1, v18

    add-int v18, p2, v5

    add-int v18, v18, v11

    add-int v18, v18, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v17, v0

    aput-object v17, p1, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v7, 0x1

    add-int/2addr v6, v9

    move v7, v5

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v6, v12, 0x1

    shl-int/lit8 v5, v8, 0x1

    move v8, v5

    move v9, v11

    move v12, v6

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v2
.end method

.method FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p3, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, p1, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, p2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, p1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, p2, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v1
.end method

.method FPC_INV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v2
.end method

.method FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p1, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v3, p2, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v2
.end method

.method FPC_SQR(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v2, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_double(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v2
.end method

.method FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v1, p2, p4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;-><init>(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)V

    return-object v2
.end method

.method iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 24

    const/4 v5, 0x1

    shl-int v8, v5, p3

    const/4 v6, 0x1

    shr-int/lit8 v13, v8, 0x1

    move v5, v8

    move v10, v6

    move/from16 v12, p3

    :goto_0
    const/4 v6, 0x1

    if-le v12, v6, :cond_2

    shr-int/lit8 v9, v5, 0x1

    shl-int/lit8 v11, v10, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v5

    :goto_1
    if-ge v6, v13, :cond_1

    add-int v14, v6, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v15, v9, v7

    shl-int/lit8 v15, v15, 0x1

    add-int/lit8 v15, v15, 0x0

    aget-object v15, v5, v15

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v16, v0

    add-int v17, v9, v7

    shl-int/lit8 v17, v17, 0x1

    add-int/lit8 v17, v17, 0x1

    aget-object v16, v16, v17

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v16

    move v5, v6

    :goto_2
    if-ge v5, v14, :cond_0

    add-int v17, p2, v5

    aget-object v17, p1, v17

    add-int v18, p2, v5

    add-int v18, v18, v13

    aget-object v18, p1, v18

    add-int v19, p2, v5

    add-int v19, v19, v10

    aget-object v19, p1, v19

    add-int v20, p2, v5

    add-int v20, v20, v10

    add-int v20, v20, v13

    aget-object v20, p1, v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v21

    add-int v22, p2, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v23, v0

    aput-object v23, p1, v22

    add-int v22, p2, v5

    add-int v22, v22, v13

    move-object/from16 v0, v21

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v21, v0

    aput-object v21, p1, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v17

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v15, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v17

    add-int v18, p2, v5

    add-int v18, v18, v10

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v19, v0

    aput-object v19, p1, v18

    add-int v18, p2, v5

    add-int v18, v18, v10

    add-int v18, v18, v13

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v17, v0

    aput-object v17, p1, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v7, 0x1

    add-int/2addr v6, v11

    move v7, v5

    goto/16 :goto_1

    :cond_1
    add-int/lit8 v6, v12, -0x1

    move v5, v9

    move v10, v11

    move v12, v6

    goto/16 :goto_0

    :cond_2
    if-lez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v6, v5, p3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v8, :cond_3

    add-int v7, p2, v5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v10, p2, v5

    aget-object v10, p1, v10

    invoke-virtual {v9, v10, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    aput-object v9, p1, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method poly_LDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 9

    const/4 v0, 0x1

    shl-int v0, v0, p7

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    aget-object v2, p1, v2

    add-int v3, p2, v0

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    add-int v4, p4, v0

    aget-object v4, p3, v4

    add-int v5, p4, v0

    add-int/2addr v5, v1

    aget-object v5, p3, v5

    add-int v6, p6, v0

    aget-object v6, p5, v6

    add-int v7, p6, v0

    add-int/2addr v7, v1

    aget-object v7, p5, v7

    invoke-virtual {p0, v4, v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {p0, v3, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {p0, v6, v7, v5, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    add-int v5, p6, v0

    iget-object v6, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p5, v5

    add-int v5, p6, v0

    add-int/2addr v5, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p5, v5

    add-int v4, p4, v0

    aput-object v3, p3, v4

    add-int v3, p4, v0

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 9

    const/4 v0, 0x1

    shl-int v0, v0, p11

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p6, v0

    aget-object v2, p5, v2

    add-int v3, p6, v0

    add-int/2addr v3, v1

    aget-object v3, p5, v3

    add-int v4, p8, v0

    aget-object v4, p7, v4

    add-int v5, p8, v0

    add-int/2addr v5, v1

    aget-object v5, p7, v5

    add-int v6, p10, v0

    aget-object v6, p9, v6

    add-int v7, p10, v0

    add-int/2addr v7, v1

    aget-object v7, p9, v7

    invoke-virtual {p0, v4, v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {p0, v3, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {p0, v6, v7, v5, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    add-int v5, p2, v0

    iget-object v6, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v6, p1, v5

    add-int v5, p2, v0

    add-int/2addr v5, v1

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v5

    add-int v4, p4, v0

    aput-object v3, p3, v4

    add-int v3, p4, v0

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v4, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p3, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 6

    const/4 v0, 0x1

    shl-int v1, v0, p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v0

    aget-object v4, p1, v4

    add-int v5, p4, v0

    aget-object v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_add_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 11

    const/4 v0, 0x1

    shl-int v0, v0, p11

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p4, v0

    aget-object v2, p3, v2

    add-int v3, p4, v0

    add-int/2addr v3, v1

    aget-object v3, p3, v3

    add-int v4, p6, v0

    aget-object v4, p5, v4

    add-int v5, p6, v0

    add-int/2addr v5, v1

    aget-object v5, p5, v5

    add-int v6, p8, v0

    aget-object v6, p7, v6

    add-int v7, p8, v0

    add-int/2addr v7, v1

    aget-object v7, p7, v7

    add-int v8, p10, v0

    aget-object v8, p9, v8

    add-int v9, p10, v0

    add-int/2addr v9, v1

    aget-object v9, p9, v9

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {p0, v2, v3, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    iget-object v3, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v8, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v4

    iget-object v5, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v6, p2, v0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v7, v3, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v6

    add-int v3, p2, v0

    add-int/2addr v3, v1

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v2, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_adj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 5

    const/4 v0, 0x1

    shl-int v1, v0, p3

    shr-int/lit8 v0, v1, 0x1

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_div_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 6

    const/4 v0, 0x1

    shl-int/2addr v0, p5

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v3, p4, v0

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    add-int v3, p2, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v5, p2, v0

    aget-object v5, p1, v5

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p1, v3

    add-int v3, p2, v0

    add-int/2addr v3, v1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v5, p2, v0

    add-int/2addr v5, v1

    aget-object v5, p1, v5

    invoke-virtual {v4, v5, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_div_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 6

    const/4 v0, 0x1

    shl-int/2addr v0, p5

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    aget-object v2, p1, v2

    add-int v3, p2, v0

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    add-int v4, p4, v0

    aget-object v4, p3, v4

    add-int v5, p4, v0

    add-int/2addr v5, v1

    aget-object v5, p3, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_DIV(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    add-int v3, p2, v0

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v3

    add-int v3, p2, v0

    add-int/2addr v3, v1

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_invnorm2_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 11

    const/4 v0, 0x1

    shl-int v0, v0, p7

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p4, v0

    aget-object v2, p3, v2

    add-int v3, p4, v0

    add-int/2addr v3, v1

    aget-object v3, p3, v3

    add-int v4, p6, v0

    aget-object v4, p5, v4

    add-int v5, p6, v0

    add-int/2addr v5, v1

    aget-object v5, p5, v5

    add-int v6, p2, v0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v9, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 10

    const/4 v0, 0x1

    shl-int v0, v0, p7

    shr-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v1, 0x1

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v3, p4, 0x0

    aget-object v3, p3, v3

    aput-object v3, p1, v0

    add-int v0, p2, v1

    add-int/lit8 v3, p6, 0x0

    aget-object v3, p5, v3

    aput-object v3, p1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    add-int v3, p4, v0

    aget-object v3, p3, v3

    add-int v4, p4, v0

    add-int/2addr v4, v2

    aget-object v4, p3, v4

    add-int v5, p6, v0

    aget-object v5, p5, v5

    add-int v6, p6, v0

    add-int/2addr v6, v2

    aget-object v6, p5, v6

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v8, v0, v1

    shl-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x0

    aget-object v7, v7, v8

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v9, v0, v1

    shl-int/lit8 v9, v9, 0x1

    add-int/lit8 v9, v9, 0x1

    aget-object v8, v8, v9

    invoke-virtual {p0, v5, v6, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v5

    iget-object v6, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {p0, v3, v4, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v7

    iget-object v8, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    shl-int/lit8 v9, v0, 0x1

    add-int/2addr v9, p2

    add-int/lit8 v9, v9, 0x0

    aput-object v8, p1, v9

    shl-int/lit8 v8, v0, 0x1

    add-int/2addr v8, p2

    add-int/lit8 v8, v8, 0x0

    add-int/2addr v8, v1

    aput-object v7, p1, v8

    invoke-virtual {p0, v3, v4, v6, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v3

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    shl-int/lit8 v5, v0, 0x1

    add-int/2addr v5, p2

    add-int/lit8 v5, v5, 0x1

    aput-object v4, p1, v5

    shl-int/lit8 v4, v0, 0x1

    add-int/2addr v4, p2

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v4, v1

    aput-object v3, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_mul_autoadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 6

    const/4 v0, 0x1

    shl-int/2addr v0, p5

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v0

    aget-object v4, p1, v4

    add-int v5, p4, v0

    aget-object v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int v2, p2, v0

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v0

    add-int/2addr v4, v1

    aget-object v4, p1, v4

    add-int v5, p4, v0

    aget-object v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 6

    const/4 v0, 0x1

    shl-int/2addr v0, p5

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    aget-object v2, p1, v2

    add-int v3, p2, v0

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    add-int v4, p4, v0

    aget-object v4, p3, v4

    add-int v5, p4, v0

    add-int/2addr v5, v1

    aget-object v5, p3, v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    add-int v3, p2, v0

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v3

    add-int v3, p2, v0

    add-int/2addr v3, v1

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 7

    const/4 v0, 0x1

    shl-int/2addr v0, p5

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    aget-object v2, p1, v2

    add-int v3, p2, v0

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    add-int v4, p4, v0

    aget-object v4, p3, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v6, p4, v0

    add-int/2addr v6, v1

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v5

    invoke-virtual {p0, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v2

    add-int v3, p2, v0

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v4, p1, v3

    add-int v3, p2, v0

    add-int/2addr v3, v1

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v2, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 5

    const/4 v0, 0x1

    shl-int v1, v0, p4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 7

    const/4 v0, 0x1

    shl-int/2addr v0, p3

    shr-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    aget-object v2, p1, v2

    add-int v3, p2, v0

    add-int/2addr v3, v1

    aget-object v3, p1, v3

    add-int v4, p2, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    invoke-virtual {v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    aput-object v2, p1, v4

    add-int v2, p2, v0

    add-int/2addr v2, v1

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 5

    const/4 v0, 0x1

    shl-int v1, v0, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v0

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 11

    const/4 v0, 0x1

    shl-int v0, v0, p7

    shr-int/lit8 v1, v0, 0x1

    shr-int/lit8 v2, v1, 0x1

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v3, p6, 0x0

    aget-object v3, p5, v3

    aput-object v3, p1, v0

    add-int/lit8 v0, p4, 0x0

    add-int v3, p6, v1

    aget-object v3, p5, v3

    aput-object v3, p3, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    shl-int/lit8 v3, v0, 0x1

    add-int v3, v3, p6

    add-int/lit8 v3, v3, 0x0

    aget-object v3, p5, v3

    shl-int/lit8 v4, v0, 0x1

    add-int v4, v4, p6

    add-int/lit8 v4, v4, 0x0

    add-int/2addr v4, v1

    aget-object v4, p5, v4

    shl-int/lit8 v5, v0, 0x1

    add-int v5, v5, p6

    add-int/lit8 v5, v5, 0x1

    aget-object v5, p5, v5

    shl-int/lit8 v6, v0, 0x1

    add-int v6, v6, p6

    add-int/lit8 v6, v6, 0x1

    add-int/2addr v6, v1

    aget-object v6, p5, v6

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_ADD(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v7

    iget-object v8, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v9, p2, v0

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    aput-object v8, p1, v9

    add-int v8, p2, v0

    add-int/2addr v8, v2

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    aput-object v7, p1, v8

    invoke-virtual {p0, v3, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_SUB(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v3

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v6, v0, v1

    shl-int/lit8 v6, v6, 0x1

    add-int/lit8 v6, v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v8, v0, v1

    shl-int/lit8 v8, v8, 0x1

    add-int/lit8 v8, v8, 0x1

    aget-object v7, v7, v8

    invoke-virtual {v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    invoke-virtual {p0, v4, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FPC_MUL(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;

    move-result-object v3

    iget-object v4, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->re:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/ComplexNumberWrapper;->im:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    add-int v5, p4, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v6, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v4

    aput-object v4, p3, v5

    add-int v4, p4, v0

    add-int/2addr v4, v2

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p3, v4

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V
    .locals 6

    const/4 v0, 0x1

    shl-int v1, v0, p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p2, v0

    aget-object v4, p1, v4

    add-int v5, p4, v0

    aget-object v5, p3, v5

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
