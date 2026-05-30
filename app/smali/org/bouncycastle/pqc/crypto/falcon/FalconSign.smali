.class Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;
.super Ljava/lang/Object;


# instance fields
.field common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

.field fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

.field fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    return-void
.end method

.method private static MKN(I)I
    .locals 1

    const/4 v0, 0x1

    shl-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method do_sign_dyn(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I
    .locals 30

    invoke-static/range {p15 .. p15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v28

    add-int v8, p17, v28

    add-int v29, v8, v28

    add-int v21, v29, v28

    move-object/from16 v6, p0

    move-object/from16 v7, p16

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p15

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v9, p0

    move-object/from16 v10, p16

    move/from16 v11, p17

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p15

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v9, p0

    move-object/from16 v10, p16

    move/from16 v11, v21

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p15

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v9, p0

    move-object/from16 v10, p16

    move/from16 v11, v29

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p15

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, p15

    invoke-virtual {v6, v0, v8, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, p17

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v21

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v29

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, p15

    invoke-virtual {v6, v0, v8, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v21

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v16, v21, v28

    add-int v11, v16, v28

    move-object/from16 v0, p16

    move-object/from16 v1, p16

    move/from16 v2, v16

    move/from16 v3, v28

    invoke-static {v0, v8, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v16

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p16

    move/from16 v1, p17

    move-object/from16 v2, p16

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v10, p16

    move-object/from16 v12, p16

    move/from16 v13, v29

    move/from16 v14, p15

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, p17

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v13, p16

    move/from16 v14, p17

    move-object/from16 v15, p16

    move/from16 v17, p15

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p16

    move-object/from16 v1, p16

    move/from16 v2, v16

    move/from16 v3, v28

    invoke-static {v0, v8, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v17, v0

    move-object/from16 v18, p16

    move/from16 v19, v8

    move-object/from16 v20, p16

    move/from16 v22, p15

    invoke-virtual/range {v17 .. v22}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v22, v0

    move-object/from16 v23, p16

    move/from16 v24, v8

    move-object/from16 v25, p16

    move/from16 v26, v11

    move/from16 v27, p15

    invoke-virtual/range {v22 .. v27}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v29

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p16

    move/from16 v1, v21

    move-object/from16 v2, p16

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, p15

    invoke-virtual {v6, v0, v11, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v22, v0

    move-object/from16 v23, p16

    move/from16 v24, v29

    move-object/from16 v25, p16

    move/from16 v26, v11

    move/from16 v27, p15

    invoke-virtual/range {v22 .. v27}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v19, v16, v28

    add-int v14, v19, v28

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v28

    if-ge v6, v0, :cond_0

    add-int v7, v19, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v10, p14, v6

    aget-short v10, p13, v10

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    aput-object v9, p16, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v19

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v0, p16

    move/from16 v1, v19

    move-object/from16 v2, p16

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v14, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v13, p16

    move-object/from16 v15, p16

    move/from16 v17, p15

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p16

    move/from16 v1, p15

    invoke-virtual {v7, v0, v14, v9, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v17, v0

    move-object/from16 v18, p16

    move-object/from16 v20, p16

    move/from16 v22, p15

    invoke-virtual/range {v17 .. v22}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v19

    move/from16 v2, p15

    invoke-virtual {v7, v0, v1, v6, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    mul-int/lit8 v6, v28, 0x2

    move-object/from16 v0, p16

    move/from16 v1, v19

    move-object/from16 v2, p16

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v13, v29, v28

    add-int v15, v13, v28

    add-int v25, v15, v28

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p16

    move-object/from16 v14, p16

    move-object/from16 v16, p16

    move/from16 v17, p17

    move-object/from16 v18, p16

    move/from16 v19, v8

    move-object/from16 v20, p16

    move/from16 v21, v29

    move/from16 v22, p15

    move/from16 v23, p15

    move-object/from16 v24, p16

    invoke-virtual/range {v9 .. v25}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    add-int v8, p17, v28

    add-int v16, v8, v28

    add-int v18, v16, v28

    add-int v6, v18, v28

    mul-int/lit8 v7, v28, 0x2

    move-object/from16 v0, p16

    move-object/from16 v1, p16

    invoke-static {v0, v13, v1, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v19, v18, v28

    add-int v20, v19, v28

    move-object/from16 v6, p0

    move-object/from16 v7, p16

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p15

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v9, p0

    move-object/from16 v10, p16

    move/from16 v11, p17

    move-object/from16 v12, p7

    move/from16 v13, p8

    move/from16 v14, p15

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v9, p0

    move-object/from16 v10, p16

    move/from16 v11, v18

    move-object/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p15

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v9, p0

    move-object/from16 v10, p16

    move/from16 v11, v16

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p15

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, p15

    invoke-virtual {v6, v0, v8, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, p17

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v18

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v16

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, p15

    invoke-virtual {v6, v0, v8, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v18

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v11, v20, v28

    add-int v21, v11, v28

    move-object/from16 v0, p16

    move/from16 v1, v19

    move-object/from16 v2, p16

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p16

    move/from16 v1, v20

    move-object/from16 v2, p16

    move/from16 v3, v21

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v10, p16

    move-object/from16 v12, p16

    move/from16 v13, p17

    move/from16 v14, p15

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v13, p16

    move/from16 v14, v21

    move-object/from16 v15, p16

    move/from16 v17, p15

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v10, p16

    move-object/from16 v12, p16

    move/from16 v13, v21

    move/from16 v14, p15

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p16

    move/from16 v1, v19

    move-object/from16 v2, p16

    move/from16 v3, v21

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v13, p16

    move/from16 v14, v21

    move-object/from16 v15, p16

    move/from16 v16, v8

    move/from16 v17, p15

    invoke-virtual/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p16

    move-object/from16 v1, p16

    move/from16 v2, v19

    move/from16 v3, v28

    invoke-static {v0, v11, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p16

    move/from16 v8, v20

    move-object/from16 v9, p16

    move/from16 v10, v18

    move/from16 v11, p15

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p16

    move/from16 v8, v20

    move-object/from16 v9, p16

    move/from16 v10, v21

    move/from16 v11, p15

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v19

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p16

    move/from16 v1, v20

    move/from16 v2, p15

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v0, v28

    new-array v9, v0, [S

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_1
    move/from16 v0, v28

    if-ge v8, v0, :cond_1

    add-int v10, p14, v8

    aget-short v10, p13, v10

    const v11, 0xffff

    and-int/2addr v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v12, v19, v8

    aget-object v12, p16, v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v12

    long-to-int v11, v12

    sub-int/2addr v10, v11

    mul-int v11, v10, v10

    add-int/2addr v7, v11

    or-int/2addr v6, v7

    int-to-short v10, v10

    aput-short v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v6, v6, 0x1f

    neg-int v6, v6

    or-int/2addr v7, v6

    move/from16 v0, v28

    new-array v8, v0, [S

    const/4 v6, 0x0

    :goto_2
    move/from16 v0, v28

    if-ge v6, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v10, v20, v6

    aget-object v10, p16, v10

    invoke-virtual {v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v10

    neg-long v10, v10

    long-to-int v9, v10

    int-to-short v9, v9

    aput-short v9, v8, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    const/4 v9, 0x0

    move/from16 v0, p15

    invoke-virtual {v6, v7, v8, v9, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->is_short_half(I[SII)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, v28

    invoke-static {v8, v6, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    :goto_3
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method do_sign_tree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I
    .locals 35

    invoke-static/range {p9 .. p9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v32

    add-int v8, p11, v32

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b00(I)I

    move-result v6

    add-int v33, p6, v6

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b01(I)I

    move-result v6

    add-int v10, p6, v6

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b10(I)I

    move-result v6

    add-int v34, p6, v6

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b11(I)I

    move-result v6

    add-int v15, p6, v6

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_tree(I)I

    move-result v6

    add-int v24, p6, v6

    const/4 v6, 0x0

    :goto_0
    move/from16 v0, v32

    if-ge v6, v0, :cond_0

    add-int v7, p11, v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v11, p8, v6

    aget-short v11, p7, v11

    int-to-long v12, v11

    invoke-virtual {v9, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    aput-object v9, p10, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p10

    move/from16 v1, p11

    move/from16 v2, p9

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v0, v6, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-object/from16 v17, v0

    move-object/from16 v0, p10

    move/from16 v1, p11

    move-object/from16 v2, p10

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p10

    move-object/from16 v9, p5

    move/from16 v11, p9

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, p10

    move/from16 v1, p9

    invoke-virtual {v6, v0, v8, v7, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p5

    move/from16 v16, p9

    invoke-virtual/range {v11 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p10

    move/from16 v1, p11

    move-object/from16 v2, v17

    move/from16 v3, p9

    invoke-virtual {v6, v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulconst([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;ILorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    add-int v20, v8, v32

    add-int v22, v20, v32

    add-int v31, v22, v32

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move-object/from16 v18, p2

    move-object/from16 v19, p10

    move-object/from16 v21, p10

    move-object/from16 v23, p5

    move-object/from16 v25, p10

    move/from16 v26, p11

    move-object/from16 v27, p10

    move/from16 v28, v8

    move/from16 v29, p9

    move-object/from16 v30, p10

    invoke-virtual/range {v16 .. v31}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p10

    move/from16 v1, v20

    move-object/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p10

    move/from16 v1, v22

    move-object/from16 v2, p10

    move/from16 v3, v32

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v23, v0

    move-object/from16 v24, p10

    move/from16 v25, v20

    move-object/from16 v26, p5

    move/from16 v27, v33

    move/from16 v28, p9

    invoke-virtual/range {v23 .. v28}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v23, v0

    move-object/from16 v24, p10

    move/from16 v25, v22

    move-object/from16 v26, p5

    move/from16 v27, v34

    move/from16 v28, p9

    invoke-virtual/range {v23 .. v28}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v18, v0

    move-object/from16 v19, p10

    move-object/from16 v21, p10

    move/from16 v23, p9

    invoke-virtual/range {v18 .. v23}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p10

    move/from16 v1, p11

    move-object/from16 v2, p10

    move/from16 v3, v22

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v23, v0

    move-object/from16 v24, p10

    move/from16 v25, v22

    move-object/from16 v26, p5

    move/from16 v27, v10

    move/from16 v28, p9

    invoke-virtual/range {v23 .. v28}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p10

    move/from16 v1, v20

    move-object/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, v32

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p10

    move-object/from16 v9, p5

    move v10, v15

    move/from16 v11, p9

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p10

    move-object/from16 v9, p10

    move/from16 v10, v22

    move/from16 v11, p9

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p10

    move/from16 v1, p11

    move/from16 v2, p9

    invoke-virtual {v6, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p10

    move/from16 v1, p9

    invoke-virtual {v6, v0, v8, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->iFFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move/from16 v0, v32

    new-array v10, v0, [S

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_1
    move/from16 v0, v32

    if-ge v9, v0, :cond_1

    add-int v11, p8, v9

    aget-short v11, p7, v11

    const v12, 0xffff

    and-int/2addr v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v13, p11, v9

    aget-object v13, p10, v13

    invoke-virtual {v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v12

    long-to-int v12, v12

    sub-int/2addr v11, v12

    mul-int v12, v11, v11

    add-int/2addr v7, v12

    or-int/2addr v6, v7

    int-to-short v11, v11

    aput-short v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    ushr-int/lit8 v6, v6, 0x1f

    neg-int v6, v6

    or-int/2addr v7, v6

    move/from16 v0, v32

    new-array v9, v0, [S

    const/4 v6, 0x0

    :goto_2
    move/from16 v0, v32

    if-ge v6, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v12, v8, v6

    aget-object v12, p10, v12

    invoke-virtual {v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J

    move-result-wide v12

    neg-long v12, v12

    long-to-int v11, v12

    int-to-short v11, v11

    aput-short v11, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->common:Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;

    const/4 v8, 0x0

    move/from16 v0, p9

    invoke-virtual {v6, v7, v9, v8, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->is_short_half(I[SII)I

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, v32

    invoke-static {v9, v6, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x0

    move-object/from16 v0, p10

    move/from16 v1, p11

    move/from16 v2, v32

    invoke-static {v10, v6, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v6, 0x1

    :goto_3
    return v6

    :cond_3
    const/4 v6, 0x0

    goto :goto_3
.end method

.method expand_privkey([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BI[BI[BI[BII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 29

    invoke-static/range {p11 .. p11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b00(I)I

    move-result v5

    add-int v14, p2, v5

    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b01(I)I

    move-result v5

    add-int v7, p2, v5

    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b10(I)I

    move-result v5

    add-int v17, p2, v5

    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_b11(I)I

    move-result v5

    add-int v20, p2, v5

    move-object/from16 v0, p0

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->skoff_tree(I)I

    move-result v5

    add-int v28, p2, v5

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p11

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move v10, v14

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p11

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, v20

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p11

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v10, v17

    move-object/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p1

    move/from16 v1, p11

    invoke-virtual {v5, v0, v7, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p1

    move/from16 v1, p11

    invoke-virtual {v5, v0, v14, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, p11

    invoke-virtual {v5, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, p11

    invoke-virtual {v5, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->FFT([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p1

    move/from16 v1, p11

    invoke-virtual {v5, v0, v7, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, p11

    invoke-virtual {v5, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_neg([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v15, p13, v19

    add-int v24, v15, v19

    add-int v12, v24, v19

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    move/from16 v2, p13

    move/from16 v3, v19

    invoke-static {v0, v14, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p12

    move/from16 v1, p13

    move/from16 v2, p11

    invoke-virtual {v5, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    move/from16 v2, v19

    invoke-static {v0, v7, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-virtual {v5, v0, v12, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v9, p12

    move/from16 v10, p13

    move-object/from16 v11, p12

    move/from16 v13, p11

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    move/from16 v2, v19

    invoke-static {v0, v14, v1, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v14, p12

    move-object/from16 v16, p1

    move/from16 v18, p11

    invoke-virtual/range {v13 .. v18}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p1

    move-object/from16 v1, p12

    move/from16 v2, v19

    invoke-static {v0, v7, v1, v12, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v6, p12

    move v7, v12

    move-object/from16 v8, p1

    move/from16 v9, v20

    move/from16 v10, p11

    invoke-virtual/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_muladj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v9, p12

    move v10, v15

    move-object/from16 v11, p12

    move/from16 v13, p11

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-object/from16 v2, p12

    move/from16 v3, v24

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p12

    move/from16 v1, v24

    move/from16 v2, p11

    invoke-virtual {v5, v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p1

    move/from16 v1, v20

    move-object/from16 v2, p12

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v0, p12

    move/from16 v1, p11

    invoke-virtual {v5, v0, v12, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mulselfadj_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v9, p12

    move/from16 v10, v24

    move-object/from16 v11, p12

    move/from16 v13, p11

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v16, p0

    move-object/from16 v17, p1

    move/from16 v18, v28

    move-object/from16 v19, p12

    move/from16 v20, p13

    move-object/from16 v21, p12

    move/from16 v22, v15

    move-object/from16 v23, p12

    move/from16 v25, p11

    move-object/from16 v26, p12

    move/from16 v27, v12

    invoke-virtual/range {v16 .. v27}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v28

    move/from16 v3, p11

    move/from16 v4, p11

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V

    return-void
.end method

.method ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V
    .locals 4

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v3, p2, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqrt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v3, v3, p3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v1

    aput-object v1, p1, v0

    :goto_0
    return-void

    :cond_0
    add-int v1, p2, v0

    add-int/lit8 v2, p4, -0x1

    invoke-virtual {p0, p1, v1, p3, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V

    add-int/2addr v0, p2

    add-int/lit8 v1, p4, -0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v1, p4, -0x1

    invoke-virtual {p0, p1, v0, p3, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_binary_normalize([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III)V

    goto :goto_0
.end method

.method ffLDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 20

    invoke-static/range {p9 .. p9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v18

    const/4 v5, 0x1

    move/from16 v0, v18

    if-ne v0, v5, :cond_0

    add-int/lit8 v5, p2, 0x0

    add-int/lit8 v6, p4, 0x0

    aget-object v6, p3, v6

    aput-object v6, p1, v5

    :goto_0
    return-void

    :cond_0
    shr-int/lit8 v19, v18, 0x1

    add-int v7, p11, v18

    shl-int/lit8 v5, v18, 0x1

    add-int v17, p11, v5

    move-object/from16 v0, p3

    move/from16 v1, p4

    move-object/from16 v2, p10

    move/from16 v3, p11

    move/from16 v4, v18

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v6, p10

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move-object/from16 v12, p5

    move/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    invoke-virtual/range {v5 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v12, v17, v19

    move-object/from16 v9, p10

    move/from16 v10, v17

    move-object/from16 v11, p10

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p9

    invoke-virtual/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v12, p11, v19

    move-object/from16 v9, p10

    move/from16 v10, p11

    move-object/from16 v11, p10

    move-object/from16 v13, p10

    move v14, v7

    move/from16 v15, p9

    invoke-virtual/range {v8 .. v15}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p10

    move/from16 v1, v17

    move-object/from16 v2, p10

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v10, p2, v18

    add-int v14, v7, v19

    add-int/lit8 v15, p9, -0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p10

    move v12, v7

    move-object/from16 v13, p10

    move-object/from16 v16, p10

    invoke-virtual/range {v8 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    add-int v5, p2, v18

    add-int/lit8 v6, p9, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v6

    add-int v10, v5, v6

    add-int v14, p11, v19

    add-int/lit8 v15, p9, -0x1

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v11, p10

    move/from16 v12, p11

    move-object/from16 v13, p10

    move-object/from16 v16, p10

    invoke-virtual/range {v8 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    goto/16 :goto_0
.end method

.method ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 14

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v12

    const/4 v0, 0x1

    if-ne v12, v0, :cond_0

    add-int/lit8 v0, p2, 0x0

    add-int/lit8 v1, p4, 0x0

    aget-object v1, p3, v1

    aput-object v1, p1, v0

    :goto_0
    return-void

    :cond_0
    shr-int/lit8 v13, v12, 0x1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v1, p8

    move/from16 v2, p9

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p7

    invoke-virtual/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDLmv_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v4, p6, v13

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p5

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v4, p4, v13

    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p3

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v2, p2, v12

    add-int v6, p6, v13

    add-int/lit8 v7, p7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object/from16 v5, p5

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    add-int v0, p2, v12

    add-int/lit8 v1, p7, -0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v1

    add-int v2, v0, v1

    add-int v6, p4, v13

    add-int/lit8 v7, p7, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_fft_inner([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    goto :goto_0
.end method

.method ffLDL_treesize(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x1

    shl-int/2addr v0, p1

    return v0
.end method

.method ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 25

    const/4 v6, 0x2

    move/from16 v0, p13

    if-ne v0, v6, :cond_0

    add-int/lit8 v6, p8, 0x4

    add-int/lit8 v7, p8, 0x8

    add-int/lit8 v8, p12, 0x0

    aget-object v8, p11, v8

    add-int/lit8 v9, p12, 0x2

    aget-object v9, p11, v9

    add-int/lit8 v10, p12, 0x1

    aget-object v10, p11, v10

    add-int/lit8 v11, p12, 0x3

    aget-object v11, p11, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v8, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v9, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v8, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v9, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v14, v14, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v10, v11, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v9, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v9, v9, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v11, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    add-int/lit8 v9, v7, 0x3

    aget-object v9, p7, v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10, v9}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v14

    int-to-long v14, v14

    invoke-virtual {v11, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v9

    int-to-long v0, v9

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    add-int/lit8 v14, v7, 0x0

    aget-object v14, p7, v14

    add-int/lit8 v15, v7, 0x1

    aget-object v15, p7, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v18

    invoke-virtual/range {v16 .. v18}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v8, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v10, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, v16

    invoke-virtual {v10, v0, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v8, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    add-int/lit8 v7, v7, 0x2

    aget-object v7, p7, v7

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v10, v7}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v10

    int-to-long v14, v10

    invoke-virtual {v12, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v8, v7}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v7

    int-to-long v14, v7

    invoke-virtual {v12, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v11, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v8, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v11, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v11, v11, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v12, v9, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    add-int/lit8 v11, p6, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v10, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    aput-object v12, p5, v11

    add-int/lit8 v11, p6, 0x2

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v7, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    aput-object v13, p5, v11

    add-int/lit8 v11, p6, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v10, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    aput-object v8, p5, v11

    add-int/lit8 v10, p6, 0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v7, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    aput-object v7, p5, v10

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v10, p12, 0x0

    aget-object v10, p11, v10

    invoke-virtual {v9, v10, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v11, p12, 0x1

    aget-object v11, p11, v11

    invoke-virtual {v10, v11, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v11, p12, 0x2

    aget-object v11, p11, v11

    invoke-virtual {v10, v11, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v12, p12, 0x3

    aget-object v12, p11, v12

    invoke-virtual {v11, v12, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    add-int/lit8 v11, p8, 0x0

    aget-object v11, p7, v11

    add-int/lit8 v12, p8, 0x2

    aget-object v12, p7, v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v9, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v10, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v9, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    invoke-virtual {v14, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    add-int/lit8 v10, p8, 0x1

    aget-object v10, p7, v10

    add-int/lit8 v11, p8, 0x3

    aget-object v11, p7, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v8, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v7, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v15, v8, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v7, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {v14, v8, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v10, p10, 0x0

    aget-object v10, p9, v10

    invoke-virtual {v8, v13, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v11, p10, 0x1

    aget-object v11, p9, v11

    invoke-virtual {v10, v12, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v12, p10, 0x2

    aget-object v12, p9, v12

    invoke-virtual {v11, v9, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v12, p10, 0x3

    aget-object v12, p9, v12

    invoke-virtual {v11, v7, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v8, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v9, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v8, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v9, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v10, v8, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v13, v13, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v9, v10, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v10, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    add-int/lit8 v8, v6, 0x3

    aget-object v8, p7, v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v9, v8}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v13

    int-to-long v14, v13

    invoke-virtual {v10, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v8

    int-to-long v14, v8

    invoke-virtual {v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v9, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v13, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    add-int/lit8 v13, v6, 0x0

    aget-object v13, p7, v13

    add-int/lit8 v14, v6, 0x1

    aget-object v14, p7, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v17

    invoke-virtual/range {v15 .. v17}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v9, v14}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v14, v7, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, v16

    invoke-virtual {v0, v9, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v15, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v7, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    add-int/lit8 v6, v6, 0x2

    aget-object v6, p7, v6

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v9, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v9

    int-to-long v12, v9

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v11, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v10, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v12, v12, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v7, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v10, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v10, v10, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-virtual {v11, v8, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    add-int/lit8 v10, p4, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v9, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    aput-object v11, p3, v10

    add-int/lit8 v10, p4, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    aput-object v11, p3, v10

    add-int/lit8 v10, p4, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v9, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    aput-object v7, p3, v10

    add-int/lit8 v7, p4, 0x3

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aput-object v6, p3, v7

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x1

    move/from16 v0, p13

    if-ne v0, v6, :cond_1

    add-int/lit8 v6, p12, 0x0

    aget-object v6, p11, v6

    add-int/lit8 v7, p12, 0x1

    aget-object v7, p11, v7

    add-int/lit8 v8, p8, 0x3

    aget-object v8, p7, v8

    add-int/lit8 v9, p6, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v11

    int-to-long v12, v11

    invoke-virtual {v10, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    aput-object v10, p5, v9

    add-int/lit8 v9, p6, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v8

    int-to-long v12, v8

    invoke-virtual {v11, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    aput-object v8, p5, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v6, v10}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    add-int/lit8 v8, p8, 0x0

    aget-object v8, p7, v8

    add-int/lit8 v9, p8, 0x1

    aget-object v9, p7, v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v11, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v7, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v12, v6, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v9, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    invoke-virtual {v11, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v8, p10, 0x0

    aget-object v8, p9, v8

    invoke-virtual {v7, v10, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v9, p10, 0x1

    aget-object v9, p9, v9

    invoke-virtual {v8, v6, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    add-int/lit8 v8, p8, 0x2

    aget-object v8, p7, v8

    add-int/lit8 v9, p4, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v7, v8}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v7

    int-to-long v12, v7

    invoke-virtual {v10, v12, v13}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v7

    aput-object v7, p3, v9

    add-int/lit8 v7, p4, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v6

    int-to-long v10, v6

    invoke-virtual {v9, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aput-object v6, p3, v7

    goto/16 :goto_0

    :cond_1
    const/4 v6, 0x1

    shl-int v22, v6, p13

    shr-int/lit8 v23, v22, 0x1

    add-int v24, p8, v22

    add-int v6, p8, v22

    add-int/lit8 v7, p13, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffLDL_treesize(I)I

    move-result v7

    add-int v14, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v10, p6, v23

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p5

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v12, p15, v23

    add-int v18, p6, v23

    add-int/lit8 v19, p13, -0x1

    add-int v21, p15, v22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p14

    move/from16 v10, p15

    move-object/from16 v11, p14

    move-object/from16 v13, p7

    move-object/from16 v15, p5

    move/from16 v16, p6

    move-object/from16 v17, p5

    move-object/from16 v20, p14

    invoke-virtual/range {v6 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v12, p15, v23

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p14

    move/from16 v10, p15

    move-object/from16 v11, p14

    move/from16 v13, p13

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p11

    move/from16 v1, p12

    move-object/from16 v2, p14

    move/from16 v3, p15

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p14

    move/from16 v8, p15

    move-object/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p13

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p14

    move/from16 v8, p15

    move-object/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p13

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p14

    move/from16 v8, p15

    move-object/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p13

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v10, p4, v23

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p3

    move-object/from16 v11, p14

    move/from16 v12, p15

    move/from16 v13, p13

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v12, p15, v23

    add-int v18, p4, v23

    add-int/lit8 v19, p13, -0x1

    add-int v21, p15, v22

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p14

    move/from16 v10, p15

    move-object/from16 v11, p14

    move-object/from16 v13, p7

    move/from16 v14, v24

    move-object/from16 v15, p3

    move/from16 v16, p4

    move-object/from16 v17, p3

    move-object/from16 v20, p14

    invoke-virtual/range {v6 .. v21}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v12, p15, v23

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p14

    move/from16 v10, p15

    move-object/from16 v11, p14

    move/from16 v13, p13

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    goto/16 :goto_0
.end method

.method ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 28

    if-nez p14, :cond_0

    add-int/lit8 v6, p8, 0x0

    aget-object v6, p7, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    invoke-virtual {v8, v6}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sqrt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v8, v8, p13

    invoke-virtual {v7, v6, v8}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    add-int/lit8 v7, p4, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v9, p4, 0x0

    aget-object v9, p3, v9

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v9, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v9

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v8

    aput-object v8, p3, v7

    add-int/lit8 v7, p6, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int/lit8 v9, p6, 0x0

    aget-object v9, p5, v9

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v9, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;->sample(Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)I

    move-result v6

    int-to-long v10, v6

    invoke-virtual {v8, v10, v11}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v6

    aput-object v6, p5, v7

    :goto_0
    return-void

    :cond_0
    const/4 v6, 0x1

    shl-int v26, v6, p14

    shr-int/lit8 v27, v26, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p14

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_LDL_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v10, p16, v27

    move-object/from16 v7, p15

    move/from16 v8, p16

    move-object/from16 v9, p15

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p14

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p15

    move/from16 v1, p16

    move-object/from16 v2, p7

    move/from16 v3, p8

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v10, p16, v27

    move-object/from16 v7, p15

    move/from16 v8, p16

    move-object/from16 v9, p15

    move-object/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p14

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p15

    move/from16 v1, p16

    move-object/from16 v2, p11

    move/from16 v3, p12

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p9

    move/from16 v1, p10

    move-object/from16 v2, p15

    move/from16 v3, p16

    move/from16 v4, v26

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p9

    move/from16 v3, p10

    move/from16 v4, v27

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v6, p10, v27

    move-object/from16 v0, p11

    move/from16 v1, p12

    move-object/from16 v2, p9

    move/from16 v3, v27

    invoke-static {v0, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v8, p16, v26

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v10, v8, v27

    move-object/from16 v7, p15

    move-object/from16 v9, p15

    move-object/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p14

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v15, v8, v27

    add-int v19, p12, v27

    add-int v21, p10, v27

    add-int/lit8 v23, p14, -0x1

    add-int v25, v8, v26

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p15

    move v13, v8

    move-object/from16 v14, p15

    move-object/from16 v16, p11

    move/from16 v17, p12

    move-object/from16 v18, p11

    move-object/from16 v20, p9

    move/from16 v22, p13

    move-object/from16 v24, p15

    invoke-virtual/range {v9 .. v25}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    shl-int/lit8 v6, v26, 0x1

    add-int v11, p16, v6

    add-int v15, v8, v27

    move-object/from16 v10, p15

    move-object/from16 v12, p15

    move v13, v8

    move-object/from16 v14, p15

    move/from16 v16, p14

    invoke-virtual/range {v9 .. v16}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p5

    move/from16 v1, p6

    move-object/from16 v2, p15

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    shl-int/lit8 v7, v26, 0x1

    add-int v10, p16, v7

    move-object/from16 v7, p15

    move-object/from16 v9, p15

    move/from16 v11, p14

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_sub([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    shl-int/lit8 v6, v26, 0x1

    add-int v6, v6, p16

    move-object/from16 v0, p15

    move-object/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, v26

    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v10, p15

    move/from16 v11, p16

    move-object/from16 v12, p15

    move v13, v8

    move/from16 v14, p14

    invoke-virtual/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_mul_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p15

    move/from16 v10, p16

    move/from16 v11, p14

    invoke-virtual/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_add([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v10, p16, v27

    move-object/from16 v7, p15

    move/from16 v8, p16

    move-object/from16 v9, p15

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p14

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_split_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    add-int v12, p16, v27

    add-int v16, p8, v27

    add-int/lit8 v20, p14, -0x1

    add-int v22, p16, v26

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p15

    move/from16 v10, p16

    move-object/from16 v11, p15

    move-object/from16 v13, p7

    move/from16 v14, p8

    move-object/from16 v15, p7

    move-object/from16 v17, p9

    move/from16 v18, p10

    move/from16 v19, p13

    move-object/from16 v21, p15

    invoke-virtual/range {v6 .. v22}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->ffSampling_fft_dyntree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;III[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fft:Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;

    add-int v12, p16, v27

    move-object/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p15

    move/from16 v10, p16

    move-object/from16 v11, p15

    move/from16 v13, p14

    invoke-virtual/range {v6 .. v13}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFFT;->poly_merge_fft([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;II)V

    goto/16 :goto_0
.end method

.method sign_dyn([SILorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 19

    :cond_0
    new-instance v3, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;

    invoke-direct {v3}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;-><init>()V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v1, v1, p14

    iput-object v1, v3, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v1, v3, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_init(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)V

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p11

    move-object/from16 v14, p12

    move/from16 v15, p13

    move/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    invoke-virtual/range {v1 .. v18}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->do_sign_dyn(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[BI[BI[BI[BI[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method sign_tree([SILorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)V
    .locals 12

    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;

    invoke-direct {v2}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;-><init>()V

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    aget-object v0, v0, p8

    iput-object v0, v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->sigma_min:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;->p:Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_init(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)V

    move-object v0, p0

    move-object v3, p1

    move v4, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v0 .. v11}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->do_sign_tree(Lorg/bouncycastle/pqc/crypto/falcon/SamplerZ;Lorg/bouncycastle/pqc/crypto/falcon/SamplerCtx;[SI[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[SII[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I)I

    move-result v0

    if-eqz v0, :cond_0

    return-void
.end method

.method skoff_b00(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method skoff_b01(I)I
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    return v0
.end method

.method skoff_b10(I)I
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method skoff_b11(I)I
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method skoff_tree(I)I
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method

.method smallints_to_fpr([Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;I[BII)V
    .locals 6

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->MKN(I)I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    add-int v2, p2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconSign;->fpr:Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;

    add-int v4, p4, v0

    aget-byte v4, p3, v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
