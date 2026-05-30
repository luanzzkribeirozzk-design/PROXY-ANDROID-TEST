.class public Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;
.super Ljava/lang/Object;


# static fields
.field public static final SIZE:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    aget-wide v0, p0, v6

    aget-wide v2, p1, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v6

    aget-wide v0, p0, v7

    aget-wide v2, p1, v7

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    aget-wide v0, p0, v8

    aget-wide v2, p1, v8

    xor-long/2addr v0, v2

    aput-wide v0, p2, v8

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    const/4 v1, 0x5

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-wide v2, p0, v1

    const/4 v1, 0x6

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    const/4 v0, 0x7

    const/4 v1, 0x7

    aget-wide v2, p0, v1

    const/4 v1, 0x7

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p2, v0

    return-void
.end method

.method public static copy([J[J)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-wide v0, p0, v2

    aput-wide v0, p1, v2

    aget-wide v0, p0, v3

    aput-wide v0, p1, v3

    aget-wide v0, p0, v4

    aput-wide v0, p1, v4

    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    aget-wide v0, p0, v6

    aput-wide v0, p1, v6

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    aput-wide v2, p1, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-wide v2, p0, v1

    aput-wide v2, p1, v0

    const/4 v0, 0x7

    const/4 v1, 0x7

    aget-wide v2, p0, v1

    aput-wide v2, p1, v0

    return-void
.end method

.method public static equal([J[J)Z
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aget-wide v4, p0, v1

    aget-wide v6, p1, v1

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    aget-wide v4, p0, v8

    aget-wide v6, p1, v8

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    aget-wide v4, p0, v9

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    aget-wide v4, p0, v10

    aget-wide v6, p1, v10

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x5

    aget-wide v4, p0, v4

    const/4 v6, 0x5

    aget-wide v6, p1, v6

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v4, p0, v4

    const/4 v6, 0x6

    aget-wide v6, p1, v6

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    const/4 v4, 0x7

    aget-wide v4, p0, v4

    const/4 v6, 0x7

    aget-wide v6, p1, v6

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static multiply([J[J[J)V
    .locals 54

    const/4 v2, 0x0

    aget-wide v52, p1, v2

    const/4 v2, 0x1

    aget-wide v50, p1, v2

    const/4 v2, 0x2

    aget-wide v46, p1, v2

    const/4 v2, 0x3

    aget-wide v42, p1, v2

    const/4 v2, 0x4

    aget-wide v38, p1, v2

    const/4 v2, 0x5

    aget-wide v34, p1, v2

    const/4 v2, 0x6

    aget-wide v30, p1, v2

    const/4 v2, 0x7

    aget-wide v26, p1, v2

    const-wide/16 v24, 0x0

    const-wide/16 v22, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v2, 0x8

    if-ge v3, v2, :cond_1

    aget-wide v6, p0, v3

    add-int/lit8 v2, v3, 0x1

    aget-wide v4, p0, v2

    const/4 v2, 0x0

    move-wide/from16 v28, v30

    move-wide/from16 v32, v34

    move-wide/from16 v36, v38

    move-wide/from16 v40, v42

    move-wide/from16 v44, v46

    move-wide/from16 v48, v50

    :goto_1
    const/16 v30, 0x40

    move/from16 v0, v30

    if-ge v2, v0, :cond_0

    const-wide/16 v30, 0x1

    and-long v30, v30, v6

    move-wide/from16 v0, v30

    neg-long v0, v0

    move-wide/from16 v30, v0

    const/16 v34, 0x1

    ushr-long v6, v6, v34

    and-long v34, v52, v30

    xor-long v24, v24, v34

    and-long v34, v48, v30

    xor-long v22, v22, v34

    and-long v34, v44, v30

    xor-long v20, v20, v34

    and-long v34, v40, v30

    xor-long v18, v18, v34

    and-long v34, v36, v30

    xor-long v16, v16, v34

    and-long v34, v32, v30

    xor-long v14, v14, v34

    and-long v34, v28, v30

    xor-long v12, v12, v34

    and-long v30, v30, v26

    xor-long v10, v10, v30

    const-wide/16 v30, 0x1

    and-long v30, v30, v4

    move-wide/from16 v0, v30

    neg-long v0, v0

    move-wide/from16 v30, v0

    const/16 v34, 0x1

    ushr-long v4, v4, v34

    and-long v34, v52, v30

    xor-long v22, v22, v34

    and-long v34, v48, v30

    xor-long v20, v20, v34

    and-long v34, v44, v30

    xor-long v18, v18, v34

    and-long v34, v40, v30

    xor-long v16, v16, v34

    and-long v34, v36, v30

    xor-long v14, v14, v34

    and-long v34, v32, v30

    xor-long v12, v12, v34

    and-long v34, v28, v30

    xor-long v10, v10, v34

    and-long v30, v30, v26

    xor-long v8, v8, v30

    const/16 v30, 0x3f

    shr-long v50, v26, v30

    const/16 v30, 0x1

    shl-long v26, v26, v30

    const/16 v30, 0x3f

    ushr-long v30, v28, v30

    or-long v26, v26, v30

    const/16 v30, 0x1

    shl-long v28, v28, v30

    const/16 v30, 0x3f

    ushr-long v30, v32, v30

    or-long v28, v28, v30

    const/16 v30, 0x1

    shl-long v30, v32, v30

    const/16 v32, 0x3f

    ushr-long v32, v36, v32

    or-long v30, v30, v32

    const/16 v32, 0x1

    shl-long v32, v36, v32

    const/16 v34, 0x3f

    ushr-long v34, v40, v34

    or-long v34, v34, v32

    const/16 v32, 0x1

    shl-long v32, v40, v32

    const/16 v36, 0x3f

    ushr-long v36, v44, v36

    or-long v38, v32, v36

    const/16 v32, 0x1

    shl-long v32, v44, v32

    const/16 v36, 0x3f

    ushr-long v36, v48, v36

    or-long v42, v32, v36

    const/16 v32, 0x1

    shl-long v32, v48, v32

    const/16 v36, 0x3f

    ushr-long v36, v52, v36

    or-long v46, v32, v36

    const/16 v32, 0x1

    shl-long v32, v52, v32

    const-wide/16 v36, 0x125

    and-long v36, v36, v50

    xor-long v50, v32, v36

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v32, v30

    move-wide/from16 v36, v34

    move-wide/from16 v40, v38

    move-wide/from16 v44, v42

    move-wide/from16 v48, v46

    move-wide/from16 v52, v50

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0x3e

    ushr-long v4, v26, v2

    xor-long v4, v4, v52

    const/16 v2, 0x3b

    ushr-long v6, v26, v2

    xor-long/2addr v4, v6

    const/16 v2, 0x38

    ushr-long v6, v26, v2

    xor-long v50, v4, v6

    const/4 v2, 0x2

    shl-long v4, v26, v2

    xor-long v4, v4, v26

    const/4 v2, 0x5

    shl-long v6, v26, v2

    xor-long/2addr v4, v6

    const/16 v2, 0x8

    shl-long v6, v26, v2

    xor-long v52, v4, v6

    add-int/lit8 v2, v3, 0x2

    move v3, v2

    move-wide/from16 v26, v28

    move-wide/from16 v30, v32

    move-wide/from16 v34, v36

    move-wide/from16 v38, v40

    move-wide/from16 v42, v44

    move-wide/from16 v46, v48

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x2

    shl-long v2, v8, v2

    xor-long/2addr v2, v8

    const/4 v4, 0x5

    shl-long v4, v8, v4

    xor-long/2addr v2, v4

    const/16 v4, 0x8

    shl-long v4, v8, v4

    xor-long/2addr v2, v4

    xor-long v2, v2, v24

    const/16 v4, 0x3e

    ushr-long v4, v8, v4

    const/16 v6, 0x3b

    ushr-long v6, v8, v6

    xor-long/2addr v4, v6

    const/16 v6, 0x38

    ushr-long v6, v8, v6

    xor-long/2addr v4, v6

    xor-long v4, v4, v22

    const/4 v6, 0x0

    aput-wide v2, p2, v6

    const/4 v2, 0x1

    aput-wide v4, p2, v2

    const/4 v2, 0x2

    aput-wide v20, p2, v2

    const/4 v2, 0x3

    aput-wide v18, p2, v2

    const/4 v2, 0x4

    aput-wide v16, p2, v2

    const/4 v2, 0x5

    aput-wide v14, p2, v2

    const/4 v2, 0x6

    aput-wide v12, p2, v2

    const/4 v2, 0x7

    aput-wide v10, p2, v2

    return-void
.end method

.method public static multiplyX([J[J)V
    .locals 24

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    const/4 v8, 0x4

    aget-wide v8, p0, v8

    const/4 v10, 0x5

    aget-wide v10, p0, v10

    const/4 v12, 0x6

    aget-wide v12, p0, v12

    const/4 v14, 0x7

    aget-wide v14, p0, v14

    const/16 v16, 0x3f

    shr-long v16, v14, v16

    const/16 v18, 0x0

    const/16 v19, 0x1

    shl-long v20, v0, v19

    const-wide/16 v22, 0x125

    and-long v16, v16, v22

    xor-long v16, v16, v20

    aput-wide v16, p1, v18

    const/16 v16, 0x1

    const/16 v17, 0x1

    shl-long v18, v2, v17

    const/16 v17, 0x3f

    ushr-long v0, v0, v17

    or-long v0, v0, v18

    aput-wide v0, p1, v16

    const/4 v0, 0x2

    const/4 v1, 0x1

    shl-long v16, v4, v1

    const/16 v1, 0x3f

    ushr-long/2addr v2, v1

    or-long v2, v2, v16

    aput-wide v2, p1, v0

    const/4 v0, 0x3

    const/4 v1, 0x1

    shl-long v2, v6, v1

    const/16 v1, 0x3f

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x4

    const/4 v1, 0x1

    shl-long v2, v8, v1

    const/16 v1, 0x3f

    ushr-long v4, v6, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x5

    const/4 v1, 0x1

    shl-long v2, v10, v1

    const/16 v1, 0x3f

    ushr-long v4, v8, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x6

    const/4 v1, 0x1

    shl-long v2, v12, v1

    const/16 v1, 0x3f

    ushr-long v4, v10, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x7

    const/4 v1, 0x1

    shl-long v2, v14, v1

    const/16 v1, 0x3f

    ushr-long v4, v12, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static multiplyX8([J[J)V
    .locals 24

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    const/4 v8, 0x4

    aget-wide v8, p0, v8

    const/4 v10, 0x5

    aget-wide v10, p0, v10

    const/4 v12, 0x6

    aget-wide v12, p0, v12

    const/4 v14, 0x7

    aget-wide v14, p0, v14

    const/16 v16, 0x38

    ushr-long v16, v14, v16

    const/16 v18, 0x0

    const/16 v19, 0x8

    shl-long v20, v0, v19

    xor-long v20, v20, v16

    const/16 v19, 0x2

    shl-long v22, v16, v19

    xor-long v20, v20, v22

    const/16 v19, 0x5

    shl-long v22, v16, v19

    xor-long v20, v20, v22

    const/16 v19, 0x8

    shl-long v16, v16, v19

    xor-long v16, v16, v20

    aput-wide v16, p1, v18

    const/16 v16, 0x1

    const/16 v17, 0x8

    shl-long v18, v2, v17

    const/16 v17, 0x38

    ushr-long v0, v0, v17

    or-long v0, v0, v18

    aput-wide v0, p1, v16

    const/4 v0, 0x2

    const/16 v1, 0x8

    shl-long v16, v4, v1

    const/16 v1, 0x38

    ushr-long/2addr v2, v1

    or-long v2, v2, v16

    aput-wide v2, p1, v0

    const/4 v0, 0x3

    const/16 v1, 0x8

    shl-long v2, v6, v1

    const/16 v1, 0x38

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x4

    const/16 v1, 0x8

    shl-long v2, v8, v1

    const/16 v1, 0x38

    ushr-long v4, v6, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x5

    const/16 v1, 0x8

    shl-long v2, v10, v1

    const/16 v1, 0x38

    ushr-long v4, v8, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x6

    const/16 v1, 0x8

    shl-long v2, v12, v1

    const/16 v1, 0x38

    ushr-long v4, v10, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    const/4 v0, 0x7

    const/16 v1, 0x8

    shl-long v2, v14, v1

    const/16 v1, 0x38

    ushr-long v4, v12, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static one([J)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aput-wide v4, p0, v0

    const/4 v0, 0x2

    aput-wide v4, p0, v0

    const/4 v0, 0x3

    aput-wide v4, p0, v0

    const/4 v0, 0x4

    aput-wide v4, p0, v0

    const/4 v0, 0x5

    aput-wide v4, p0, v0

    const/4 v0, 0x6

    aput-wide v4, p0, v0

    const/4 v0, 0x7

    aput-wide v4, p0, v0

    return-void
.end method

.method public static square([J[J)V
    .locals 13

    const/16 v0, 0x10

    const/16 v12, 0x8

    new-array v2, v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v12, :cond_0

    aget-wide v4, p0, v1

    shl-int/lit8 v3, v1, 0x1

    invoke-static {v4, v5, v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v12, :cond_1

    aget-wide v4, v2, v0

    add-int/lit8 v1, v0, -0x8

    aget-wide v6, v2, v1

    const/4 v3, 0x2

    shl-long v8, v4, v3

    xor-long/2addr v8, v4

    const/4 v3, 0x5

    shl-long v10, v4, v3

    xor-long/2addr v8, v10

    shl-long v10, v4, v12

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v2, v1

    add-int/lit8 v1, v0, -0x8

    add-int/lit8 v1, v1, 0x1

    aget-wide v6, v2, v1

    const/16 v3, 0x3e

    ushr-long v8, v4, v3

    const/16 v3, 0x3b

    ushr-long v10, v4, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x38

    ushr-long/2addr v4, v3

    xor-long/2addr v4, v8

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    goto :goto_1

    :cond_1
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->copy([J[J)V

    return-void
.end method

.method public static x([J)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x2

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aput-wide v4, p0, v0

    const/4 v0, 0x2

    aput-wide v4, p0, v0

    const/4 v0, 0x3

    aput-wide v4, p0, v0

    const/4 v0, 0x4

    aput-wide v4, p0, v0

    const/4 v0, 0x5

    aput-wide v4, p0, v0

    const/4 v0, 0x6

    aput-wide v4, p0, v0

    const/4 v0, 0x7

    aput-wide v4, p0, v0

    return-void
.end method

.method public static zero([J)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aput-wide v2, p0, v0

    const/4 v0, 0x2

    aput-wide v2, p0, v0

    const/4 v0, 0x3

    aput-wide v2, p0, v0

    const/4 v0, 0x4

    aput-wide v2, p0, v0

    const/4 v0, 0x5

    aput-wide v2, p0, v0

    const/4 v0, 0x6

    aput-wide v2, p0, v0

    const/4 v0, 0x7

    aput-wide v2, p0, v0

    return-void
.end method
