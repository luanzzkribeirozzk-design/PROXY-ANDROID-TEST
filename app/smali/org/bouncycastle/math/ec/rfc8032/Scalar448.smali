.class abstract Lorg/bouncycastle/math/ec/rfc8032/Scalar448;
.super Ljava/lang/Object;


# static fields
.field private static final L:[I

.field private static final L4_0:I = 0x29eec34

.field private static final L4_1:I = 0x1cf5b55

.field private static final L4_2:I = 0x9c2ab72

.field private static final L4_3:I = 0xf635c8e

.field private static final L4_4:I = 0x5bf7a4c

.field private static final L4_5:I = 0xd944a72

.field private static final L4_6:I = 0x8eec492

.field private static final L4_7:I = 0x20cd7705

.field private static final LSq:[I

.field private static final L_0:I = 0x4a7bb0d

.field private static final L_1:I = 0x873d6d5

.field private static final L_2:I = 0xa70aadc

.field private static final L_3:I = 0x3d8d723

.field private static final L_4:I = 0x96fde93

.field private static final L_5:I = 0xb65129c

.field private static final L_6:I = 0x63bb124

.field private static final L_7:I = 0x8335dc1

.field private static final M26L:J = 0x3ffffffL

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final SCALAR_BYTES:I = 0x39

.field static final SIZE:I = 0xe

.field private static final TARGET_LENGTH:I = 0x1bf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    const/16 v0, 0x1c

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->LSq:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x54a7bb0d
        0x2378c292
        -0x723a70ab
        0x216cc272
        -0x5129c970
        -0x3bb124b7
        0x7cca23e9
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x3fffffff    # 1.9999999f
    .end array-data

    :array_1
    .array-data 4
        0x1ba1fea9
        -0x3e520448
        0x49e0a8b2    # 1840406.2f
        -0x46e40ac9
        -0x189b27eb
        0x4525492b
        -0x5d478e93    # -4.9993394E-18f
        0x4ae17cf6    # 7388795.0f
        -0x45c3b83c
        -0xe5633ec
        0x7e4d070a
        -0x6dfad435
        -0x607dc48e
        -0x3cbfd56d
        0x55ac2279
        -0x6e439eb7
        0x46e2c7aa
        0x10b66139
        -0x2894e4b8
        -0x1dd8925c
        -0x419aee0c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0xfffffff
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkVar([B[I)Z
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x38

    aget-byte v1, p0, v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    const/16 v1, 0xe

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v1, p1, v2}, Lorg/bouncycastle/math/raw/Nat;->gte(I[I[I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static decode([B[I)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0xe

    invoke-static {p0, v1, p1, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    return-void
.end method

.method static getOrderWnafVar(I[B)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    return-void
.end method

.method static multiply225Var([I[I[I)V
    .locals 9

    const/16 v8, 0x16

    const/16 v5, 0xe

    const/16 v2, 0x8

    const/4 v1, 0x0

    new-array v6, v8, [I

    move-object v0, p1

    move-object v3, p0

    move v4, v1

    move v7, v1

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/math/raw/Nat;->mul([III[III[II)V

    const/4 v0, 0x7

    aget v0, p1, v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v5, v0, v1, v6, v2}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    invoke-static {v5, p0, v1, v6, v2}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    :cond_0
    const/16 v0, 0x58

    new-array v0, v0, [B

    invoke-static {v6, v1, v8, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->reduce704([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->decode([B[I)V

    return-void
.end method

.method static reduce704([B)[B
    .locals 56

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/4 v6, 0x7

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v10, 0xe

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    const/16 v12, 0x12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    const/16 v14, 0x15

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    const/16 v16, 0x19

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v16

    shl-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    const/16 v18, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    const/16 v20, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v20

    shl-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const/16 v22, 0x23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    const/16 v24, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v24

    shl-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    const/16 v26, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    const/16 v28, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v28

    shl-int/lit8 v28, v28, 0x4

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    const/16 v30, 0x31

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0xffffffffL

    and-long v30, v30, v32

    const/16 v32, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v32

    shl-int/lit8 v32, v32, 0x4

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v32, v32, v34

    const/16 v34, 0x38

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    const/16 v36, 0x3c

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v36

    shl-int/lit8 v36, v36, 0x4

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    const/16 v38, 0x3f

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v40, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v40

    shl-int/lit8 v40, v40, 0x4

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0xffffffffL

    and-long v40, v40, v42

    const/16 v42, 0x46

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    const-wide v44, 0xffffffffL

    and-long v42, v42, v44

    const/16 v44, 0x4a

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v44

    shl-int/lit8 v44, v44, 0x4

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v46, 0x4d

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    const-wide v48, 0xffffffffL

    and-long v46, v46, v48

    const/16 v48, 0x51

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v48

    shl-int/lit8 v48, v48, 0x4

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    const-wide v50, 0xffffffffL

    and-long v48, v48, v50

    const/16 v50, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v50

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v50, v50, v52

    const-wide/16 v52, 0x0

    const/16 v54, 0x1c

    ushr-long v54, v50, v54

    add-long v52, v52, v54

    const-wide/32 v54, 0xfffffff

    and-long v50, v50, v54

    const-wide/32 v54, 0x29eec34

    mul-long v54, v54, v52

    add-long v20, v20, v54

    const-wide/32 v54, 0x1cf5b55

    mul-long v54, v54, v52

    add-long v22, v22, v54

    const-wide/32 v54, 0x9c2ab72

    mul-long v54, v54, v52

    add-long v24, v24, v54

    const-wide/32 v54, 0xf635c8e

    mul-long v54, v54, v52

    add-long v26, v26, v54

    const-wide/32 v54, 0x5bf7a4c

    mul-long v54, v54, v52

    add-long v28, v28, v54

    const-wide/32 v54, 0xd944a72

    mul-long v54, v54, v52

    add-long v30, v30, v54

    const-wide/32 v54, 0x8eec492

    mul-long v54, v54, v52

    add-long v32, v32, v54

    const-wide/32 v54, 0x20cd7705

    mul-long v52, v52, v54

    add-long v34, v34, v52

    const/16 v52, 0x1c

    ushr-long v52, v42, v52

    add-long v44, v44, v52

    const-wide/32 v52, 0xfffffff

    and-long v42, v42, v52

    const/16 v52, 0x1c

    ushr-long v52, v44, v52

    add-long v46, v46, v52

    const-wide/32 v52, 0xfffffff

    and-long v44, v44, v52

    const/16 v52, 0x1c

    ushr-long v52, v46, v52

    add-long v48, v48, v52

    const-wide/32 v52, 0xfffffff

    and-long v46, v46, v52

    const/16 v52, 0x1c

    ushr-long v52, v48, v52

    add-long v50, v50, v52

    const-wide/32 v52, 0xfffffff

    and-long v48, v48, v52

    const-wide/32 v52, 0x29eec34

    mul-long v52, v52, v50

    add-long v18, v18, v52

    const-wide/32 v52, 0x1cf5b55

    mul-long v52, v52, v50

    add-long v20, v20, v52

    const-wide/32 v52, 0x9c2ab72

    mul-long v52, v52, v50

    add-long v22, v22, v52

    const-wide/32 v52, 0xf635c8e

    mul-long v52, v52, v50

    add-long v24, v24, v52

    const-wide/32 v52, 0x5bf7a4c

    mul-long v52, v52, v50

    add-long v26, v26, v52

    const-wide/32 v52, 0xd944a72

    mul-long v52, v52, v50

    add-long v28, v28, v52

    const-wide/32 v52, 0x8eec492

    mul-long v52, v52, v50

    add-long v30, v30, v52

    const-wide/32 v52, 0x20cd7705

    mul-long v50, v50, v52

    add-long v32, v32, v50

    const-wide/32 v50, 0x29eec34

    mul-long v50, v50, v48

    add-long v16, v16, v50

    const-wide/32 v50, 0x1cf5b55

    mul-long v50, v50, v48

    add-long v18, v18, v50

    const-wide/32 v50, 0x9c2ab72

    mul-long v50, v50, v48

    add-long v20, v20, v50

    const-wide/32 v50, 0xf635c8e

    mul-long v50, v50, v48

    add-long v22, v22, v50

    const-wide/32 v50, 0x5bf7a4c

    mul-long v50, v50, v48

    add-long v24, v24, v50

    const-wide/32 v50, 0xd944a72

    mul-long v50, v50, v48

    add-long v26, v26, v50

    const-wide/32 v50, 0x8eec492

    mul-long v50, v50, v48

    add-long v28, v28, v50

    const-wide/32 v50, 0x20cd7705

    mul-long v48, v48, v50

    add-long v30, v30, v48

    const-wide/32 v48, 0x29eec34

    mul-long v48, v48, v46

    add-long v14, v14, v48

    const-wide/32 v48, 0x1cf5b55

    mul-long v48, v48, v46

    add-long v16, v16, v48

    const-wide/32 v48, 0x9c2ab72

    mul-long v48, v48, v46

    add-long v18, v18, v48

    const-wide/32 v48, 0xf635c8e

    mul-long v48, v48, v46

    add-long v20, v20, v48

    const-wide/32 v48, 0x5bf7a4c

    mul-long v48, v48, v46

    add-long v22, v22, v48

    const-wide/32 v48, 0xd944a72

    mul-long v48, v48, v46

    add-long v24, v24, v48

    const-wide/32 v48, 0x8eec492

    mul-long v48, v48, v46

    add-long v26, v26, v48

    const-wide/32 v48, 0x20cd7705

    mul-long v46, v46, v48

    add-long v28, v28, v46

    const/16 v46, 0x1c

    ushr-long v46, v36, v46

    add-long v38, v38, v46

    const-wide/32 v46, 0xfffffff

    and-long v36, v36, v46

    const/16 v46, 0x1c

    ushr-long v46, v38, v46

    add-long v40, v40, v46

    const-wide/32 v46, 0xfffffff

    and-long v38, v38, v46

    const/16 v46, 0x1c

    ushr-long v46, v40, v46

    add-long v42, v42, v46

    const-wide/32 v46, 0xfffffff

    and-long v40, v40, v46

    const/16 v46, 0x1c

    ushr-long v46, v42, v46

    add-long v44, v44, v46

    const-wide/32 v46, 0xfffffff

    and-long v42, v42, v46

    const-wide/32 v46, 0x29eec34

    mul-long v46, v46, v44

    add-long v12, v12, v46

    const-wide/32 v46, 0x1cf5b55

    mul-long v46, v46, v44

    add-long v14, v14, v46

    const-wide/32 v46, 0x9c2ab72

    mul-long v46, v46, v44

    add-long v16, v16, v46

    const-wide/32 v46, 0xf635c8e

    mul-long v46, v46, v44

    add-long v18, v18, v46

    const-wide/32 v46, 0x5bf7a4c

    mul-long v46, v46, v44

    add-long v20, v20, v46

    const-wide/32 v46, 0xd944a72

    mul-long v46, v46, v44

    add-long v22, v22, v46

    const-wide/32 v46, 0x8eec492

    mul-long v46, v46, v44

    add-long v24, v24, v46

    const-wide/32 v46, 0x20cd7705

    mul-long v44, v44, v46

    add-long v26, v26, v44

    const-wide/32 v44, 0x29eec34

    mul-long v44, v44, v42

    add-long v10, v10, v44

    const-wide/32 v44, 0x1cf5b55

    mul-long v44, v44, v42

    add-long v12, v12, v44

    const-wide/32 v44, 0x9c2ab72

    mul-long v44, v44, v42

    add-long v14, v14, v44

    const-wide/32 v44, 0xf635c8e

    mul-long v44, v44, v42

    add-long v16, v16, v44

    const-wide/32 v44, 0x5bf7a4c

    mul-long v44, v44, v42

    add-long v18, v18, v44

    const-wide/32 v44, 0xd944a72

    mul-long v44, v44, v42

    add-long v20, v20, v44

    const-wide/32 v44, 0x8eec492

    mul-long v44, v44, v42

    add-long v22, v22, v44

    const-wide/32 v44, 0x20cd7705

    mul-long v42, v42, v44

    add-long v24, v24, v42

    const-wide/32 v42, 0x29eec34

    mul-long v42, v42, v40

    add-long v8, v8, v42

    const-wide/32 v42, 0x1cf5b55

    mul-long v42, v42, v40

    add-long v10, v10, v42

    const-wide/32 v42, 0x9c2ab72

    mul-long v42, v42, v40

    add-long v12, v12, v42

    const-wide/32 v42, 0xf635c8e

    mul-long v42, v42, v40

    add-long v14, v14, v42

    const-wide/32 v42, 0x5bf7a4c

    mul-long v42, v42, v40

    add-long v16, v16, v42

    const-wide/32 v42, 0xd944a72

    mul-long v42, v42, v40

    add-long v18, v18, v42

    const-wide/32 v42, 0x8eec492

    mul-long v42, v42, v40

    add-long v20, v20, v42

    const-wide/32 v42, 0x20cd7705

    mul-long v40, v40, v42

    add-long v22, v22, v40

    const/16 v40, 0x1c

    ushr-long v40, v30, v40

    add-long v32, v32, v40

    const-wide/32 v40, 0xfffffff

    and-long v30, v30, v40

    const/16 v40, 0x1c

    ushr-long v40, v32, v40

    add-long v34, v34, v40

    const-wide/32 v40, 0xfffffff

    and-long v32, v32, v40

    const/16 v40, 0x1c

    ushr-long v40, v34, v40

    add-long v36, v36, v40

    const-wide/32 v40, 0xfffffff

    and-long v34, v34, v40

    const/16 v40, 0x1c

    ushr-long v40, v36, v40

    add-long v38, v38, v40

    const-wide/32 v40, 0xfffffff

    and-long v36, v36, v40

    const-wide/32 v40, 0x29eec34

    mul-long v40, v40, v38

    add-long v6, v6, v40

    const-wide/32 v40, 0x1cf5b55

    mul-long v40, v40, v38

    add-long v8, v8, v40

    const-wide/32 v40, 0x9c2ab72

    mul-long v40, v40, v38

    add-long v10, v10, v40

    const-wide/32 v40, 0xf635c8e

    mul-long v40, v40, v38

    add-long v12, v12, v40

    const-wide/32 v40, 0x5bf7a4c

    mul-long v40, v40, v38

    add-long v14, v14, v40

    const-wide/32 v40, 0xd944a72

    mul-long v40, v40, v38

    add-long v16, v16, v40

    const-wide/32 v40, 0x8eec492

    mul-long v40, v40, v38

    add-long v18, v18, v40

    const-wide/32 v40, 0x20cd7705

    mul-long v38, v38, v40

    add-long v20, v20, v38

    const-wide/32 v38, 0x29eec34

    mul-long v38, v38, v36

    add-long v4, v4, v38

    const-wide/32 v38, 0x1cf5b55

    mul-long v38, v38, v36

    add-long v6, v6, v38

    const-wide/32 v38, 0x9c2ab72

    mul-long v38, v38, v36

    add-long v8, v8, v38

    const-wide/32 v38, 0xf635c8e

    mul-long v38, v38, v36

    add-long v10, v10, v38

    const-wide/32 v38, 0x5bf7a4c

    mul-long v38, v38, v36

    add-long v12, v12, v38

    const-wide/32 v38, 0xd944a72

    mul-long v38, v38, v36

    add-long v14, v14, v38

    const-wide/32 v38, 0x8eec492

    mul-long v38, v38, v36

    add-long v16, v16, v38

    const-wide/32 v38, 0x20cd7705

    mul-long v36, v36, v38

    add-long v18, v18, v36

    const-wide/16 v36, 0x4

    mul-long v34, v34, v36

    const/16 v36, 0x1a

    ushr-long v36, v32, v36

    add-long v34, v34, v36

    const-wide/32 v36, 0x3ffffff

    and-long v32, v32, v36

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    const-wide/32 v36, 0x4a7bb0d

    mul-long v36, v36, v34

    add-long v2, v2, v36

    const-wide/32 v36, 0x873d6d5

    mul-long v36, v36, v34

    add-long v4, v4, v36

    const-wide/32 v36, 0xa70aadc

    mul-long v36, v36, v34

    add-long v6, v6, v36

    const-wide/32 v36, 0x3d8d723

    mul-long v36, v36, v34

    add-long v8, v8, v36

    const-wide/32 v36, 0x96fde93

    mul-long v36, v36, v34

    add-long v10, v10, v36

    const-wide/32 v36, 0xb65129c

    mul-long v36, v36, v34

    add-long v12, v12, v36

    const-wide/32 v36, 0x63bb124

    mul-long v36, v36, v34

    add-long v14, v14, v36

    const-wide/32 v36, 0x8335dc1

    mul-long v34, v34, v36

    add-long v16, v16, v34

    const/16 v34, 0x1c

    ushr-long v34, v2, v34

    add-long v4, v4, v34

    const-wide/32 v34, 0xfffffff

    and-long v2, v2, v34

    const/16 v34, 0x1c

    ushr-long v34, v4, v34

    add-long v6, v6, v34

    const-wide/32 v34, 0xfffffff

    and-long v4, v4, v34

    const/16 v34, 0x1c

    ushr-long v34, v6, v34

    add-long v8, v8, v34

    const-wide/32 v34, 0xfffffff

    and-long v6, v6, v34

    const/16 v34, 0x1c

    ushr-long v34, v8, v34

    add-long v10, v10, v34

    const-wide/32 v34, 0xfffffff

    and-long v8, v8, v34

    const/16 v34, 0x1c

    ushr-long v34, v10, v34

    add-long v12, v12, v34

    const-wide/32 v34, 0xfffffff

    and-long v10, v10, v34

    const/16 v34, 0x1c

    ushr-long v34, v12, v34

    add-long v14, v14, v34

    const-wide/32 v34, 0xfffffff

    and-long v12, v12, v34

    const/16 v34, 0x1c

    ushr-long v34, v14, v34

    add-long v16, v16, v34

    const-wide/32 v34, 0xfffffff

    and-long v14, v14, v34

    const/16 v34, 0x1c

    ushr-long v34, v16, v34

    add-long v18, v18, v34

    const-wide/32 v34, 0xfffffff

    and-long v16, v16, v34

    const/16 v34, 0x1c

    ushr-long v34, v18, v34

    add-long v20, v20, v34

    const-wide/32 v34, 0xfffffff

    and-long v18, v18, v34

    const/16 v34, 0x1c

    ushr-long v34, v20, v34

    add-long v22, v22, v34

    const-wide/32 v34, 0xfffffff

    and-long v20, v20, v34

    const/16 v34, 0x1c

    ushr-long v34, v22, v34

    add-long v24, v24, v34

    const-wide/32 v34, 0xfffffff

    and-long v22, v22, v34

    const/16 v34, 0x1c

    ushr-long v34, v24, v34

    add-long v26, v26, v34

    const-wide/32 v34, 0xfffffff

    and-long v24, v24, v34

    const/16 v34, 0x1c

    ushr-long v34, v26, v34

    add-long v28, v28, v34

    const-wide/32 v34, 0xfffffff

    and-long v26, v26, v34

    const/16 v34, 0x1c

    ushr-long v34, v28, v34

    add-long v30, v30, v34

    const-wide/32 v34, 0xfffffff

    and-long v28, v28, v34

    const/16 v34, 0x1c

    ushr-long v34, v30, v34

    add-long v32, v32, v34

    const-wide/32 v34, 0xfffffff

    and-long v30, v30, v34

    const/16 v34, 0x1a

    ushr-long v34, v32, v34

    const-wide/32 v36, 0x3ffffff

    and-long v32, v32, v36

    const-wide/16 v36, 0x1

    sub-long v34, v34, v36

    const-wide/32 v36, 0x4a7bb0d

    and-long v36, v36, v34

    sub-long v2, v2, v36

    const-wide/32 v36, 0x873d6d5

    and-long v36, v36, v34

    sub-long v4, v4, v36

    const-wide/32 v36, 0xa70aadc

    and-long v36, v36, v34

    sub-long v6, v6, v36

    const-wide/32 v36, 0x3d8d723

    and-long v36, v36, v34

    sub-long v8, v8, v36

    const-wide/32 v36, 0x96fde93

    and-long v36, v36, v34

    sub-long v10, v10, v36

    const-wide/32 v36, 0xb65129c

    and-long v36, v36, v34

    sub-long v12, v12, v36

    const-wide/32 v36, 0x63bb124

    and-long v36, v36, v34

    sub-long v14, v14, v36

    const-wide/32 v36, 0x8335dc1

    and-long v34, v34, v36

    sub-long v16, v16, v34

    const/16 v34, 0x1c

    shr-long v34, v2, v34

    add-long v4, v4, v34

    const-wide/32 v34, 0xfffffff

    and-long v2, v2, v34

    const/16 v34, 0x1c

    shr-long v34, v4, v34

    add-long v6, v6, v34

    const-wide/32 v34, 0xfffffff

    and-long v4, v4, v34

    const/16 v34, 0x1c

    shr-long v34, v6, v34

    add-long v8, v8, v34

    const-wide/32 v34, 0xfffffff

    and-long v6, v6, v34

    const/16 v34, 0x1c

    shr-long v34, v8, v34

    add-long v10, v10, v34

    const-wide/32 v34, 0xfffffff

    and-long v8, v8, v34

    const/16 v34, 0x1c

    shr-long v34, v10, v34

    add-long v12, v12, v34

    const-wide/32 v34, 0xfffffff

    and-long v10, v10, v34

    const/16 v34, 0x1c

    shr-long v34, v12, v34

    add-long v14, v14, v34

    const-wide/32 v34, 0xfffffff

    and-long v12, v12, v34

    const/16 v34, 0x1c

    shr-long v34, v14, v34

    add-long v16, v16, v34

    const-wide/32 v34, 0xfffffff

    and-long v14, v14, v34

    const/16 v34, 0x1c

    shr-long v34, v16, v34

    add-long v18, v18, v34

    const-wide/32 v34, 0xfffffff

    and-long v16, v16, v34

    const/16 v34, 0x1c

    shr-long v34, v18, v34

    add-long v20, v20, v34

    const-wide/32 v34, 0xfffffff

    and-long v18, v18, v34

    const/16 v34, 0x1c

    shr-long v34, v20, v34

    add-long v22, v22, v34

    const-wide/32 v34, 0xfffffff

    and-long v20, v20, v34

    const/16 v34, 0x1c

    shr-long v34, v22, v34

    add-long v24, v24, v34

    const-wide/32 v34, 0xfffffff

    and-long v22, v22, v34

    const/16 v34, 0x1c

    shr-long v34, v24, v34

    add-long v26, v26, v34

    const-wide/32 v34, 0xfffffff

    and-long v24, v24, v34

    const/16 v34, 0x1c

    shr-long v34, v26, v34

    add-long v28, v28, v34

    const-wide/32 v34, 0xfffffff

    and-long v26, v26, v34

    const/16 v34, 0x1c

    shr-long v34, v28, v34

    add-long v30, v30, v34

    const-wide/32 v34, 0xfffffff

    and-long v28, v28, v34

    const/16 v34, 0x1c

    shr-long v34, v30, v34

    add-long v32, v32, v34

    const-wide/32 v34, 0xfffffff

    and-long v30, v30, v34

    const/16 v34, 0x39

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v34, v0

    const/16 v35, 0x1c

    shl-long v4, v4, v35

    or-long/2addr v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v8, v2

    or-long/2addr v2, v6

    const/4 v4, 0x7

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v12, v2

    or-long/2addr v2, v10

    const/16 v4, 0xe

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v16, v2

    or-long/2addr v2, v14

    const/16 v4, 0x15

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v20, v2

    or-long v2, v2, v18

    const/16 v4, 0x1c

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v24, v2

    or-long v2, v2, v22

    const/16 v4, 0x23

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v28, v2

    or-long v2, v2, v26

    const/16 v4, 0x2a

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v32, v2

    or-long v2, v2, v30

    const/16 v4, 0x31

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    return-object v34
.end method

.method static reduce912([B)[B
    .locals 70

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v2

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    const/4 v4, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    const/4 v6, 0x7

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v6

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0xb

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v8

    shl-int/lit8 v8, v8, 0x4

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    const/16 v10, 0xe

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    const/16 v12, 0x12

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v12

    shl-int/lit8 v12, v12, 0x4

    int-to-long v12, v12

    const-wide v14, 0xffffffffL

    and-long/2addr v12, v14

    const/16 v14, 0x15

    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v14

    int-to-long v14, v14

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    const/16 v16, 0x19

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v16

    shl-int/lit8 v16, v16, 0x4

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    const/16 v18, 0x1c

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    const/16 v20, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v20

    shl-int/lit8 v20, v20, 0x4

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0xffffffffL

    and-long v20, v20, v22

    const/16 v22, 0x23

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0xffffffffL

    and-long v22, v22, v24

    const/16 v24, 0x27

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v24

    shl-int/lit8 v24, v24, 0x4

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0xffffffffL

    and-long v24, v24, v26

    const/16 v26, 0x2a

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v26

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0xffffffffL

    and-long v26, v26, v28

    const/16 v28, 0x2e

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v28

    shl-int/lit8 v28, v28, 0x4

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    const/16 v30, 0x31

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v30

    move/from16 v0, v30

    int-to-long v0, v0

    move-wide/from16 v30, v0

    const-wide v32, 0xffffffffL

    and-long v30, v30, v32

    const/16 v32, 0x35

    move-object/from16 v0, p0

    move/from16 v1, v32

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v32

    shl-int/lit8 v32, v32, 0x4

    move/from16 v0, v32

    int-to-long v0, v0

    move-wide/from16 v32, v0

    const-wide v34, 0xffffffffL

    and-long v32, v32, v34

    const/16 v34, 0x38

    move-object/from16 v0, p0

    move/from16 v1, v34

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v34

    move/from16 v0, v34

    int-to-long v0, v0

    move-wide/from16 v34, v0

    const-wide v36, 0xffffffffL

    and-long v34, v34, v36

    const/16 v36, 0x3c

    move-object/from16 v0, p0

    move/from16 v1, v36

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v36

    shl-int/lit8 v36, v36, 0x4

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    const-wide v38, 0xffffffffL

    and-long v36, v36, v38

    const/16 v38, 0x3f

    move-object/from16 v0, p0

    move/from16 v1, v38

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide v40, 0xffffffffL

    and-long v38, v38, v40

    const/16 v40, 0x43

    move-object/from16 v0, p0

    move/from16 v1, v40

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v40

    shl-int/lit8 v40, v40, 0x4

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const-wide v42, 0xffffffffL

    and-long v40, v40, v42

    const/16 v42, 0x46

    move-object/from16 v0, p0

    move/from16 v1, v42

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v42

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    const-wide v44, 0xffffffffL

    and-long v42, v42, v44

    const/16 v44, 0x4a

    move-object/from16 v0, p0

    move/from16 v1, v44

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v44

    shl-int/lit8 v44, v44, 0x4

    move/from16 v0, v44

    int-to-long v0, v0

    move-wide/from16 v44, v0

    const-wide v46, 0xffffffffL

    and-long v44, v44, v46

    const/16 v46, 0x4d

    move-object/from16 v0, p0

    move/from16 v1, v46

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v46

    move/from16 v0, v46

    int-to-long v0, v0

    move-wide/from16 v46, v0

    const-wide v48, 0xffffffffL

    and-long v46, v46, v48

    const/16 v48, 0x51

    move-object/from16 v0, p0

    move/from16 v1, v48

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v48

    shl-int/lit8 v48, v48, 0x4

    move/from16 v0, v48

    int-to-long v0, v0

    move-wide/from16 v48, v0

    const-wide v50, 0xffffffffL

    and-long v48, v48, v50

    const/16 v50, 0x54

    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v50

    move/from16 v0, v50

    int-to-long v0, v0

    move-wide/from16 v50, v0

    const-wide v52, 0xffffffffL

    and-long v50, v50, v52

    const/16 v52, 0x58

    move-object/from16 v0, p0

    move/from16 v1, v52

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v52

    shl-int/lit8 v52, v52, 0x4

    move/from16 v0, v52

    int-to-long v0, v0

    move-wide/from16 v52, v0

    const-wide v54, 0xffffffffL

    and-long v52, v52, v54

    const/16 v54, 0x5b

    move-object/from16 v0, p0

    move/from16 v1, v54

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v54

    move/from16 v0, v54

    int-to-long v0, v0

    move-wide/from16 v54, v0

    const-wide v56, 0xffffffffL

    and-long v54, v54, v56

    const/16 v56, 0x5f

    move-object/from16 v0, p0

    move/from16 v1, v56

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v56

    shl-int/lit8 v56, v56, 0x4

    move/from16 v0, v56

    int-to-long v0, v0

    move-wide/from16 v56, v0

    const-wide v58, 0xffffffffL

    and-long v56, v56, v58

    const/16 v58, 0x62

    move-object/from16 v0, p0

    move/from16 v1, v58

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v58

    move/from16 v0, v58

    int-to-long v0, v0

    move-wide/from16 v58, v0

    const-wide v60, 0xffffffffL

    and-long v58, v58, v60

    const/16 v60, 0x66

    move-object/from16 v0, p0

    move/from16 v1, v60

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v60

    shl-int/lit8 v60, v60, 0x4

    move/from16 v0, v60

    int-to-long v0, v0

    move-wide/from16 v60, v0

    const-wide v62, 0xffffffffL

    and-long v60, v60, v62

    const/16 v62, 0x69

    move-object/from16 v0, p0

    move/from16 v1, v62

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI)I

    move-result v62

    move/from16 v0, v62

    int-to-long v0, v0

    move-wide/from16 v62, v0

    const-wide v64, 0xffffffffL

    and-long v62, v62, v64

    const/16 v64, 0x6d

    move-object/from16 v0, p0

    move/from16 v1, v64

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode24([BI)I

    move-result v64

    shl-int/lit8 v64, v64, 0x4

    move/from16 v0, v64

    int-to-long v0, v0

    move-wide/from16 v64, v0

    const-wide v66, 0xffffffffL

    and-long v64, v64, v66

    const/16 v66, 0x70

    move-object/from16 v0, p0

    move/from16 v1, v66

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode16([BI)I

    move-result v66

    move/from16 v0, v66

    int-to-long v0, v0

    move-wide/from16 v66, v0

    const-wide v68, 0xffffffffL

    and-long v66, v66, v68

    const-wide/32 v68, 0x29eec34

    mul-long v68, v68, v66

    add-long v34, v34, v68

    const-wide/32 v68, 0x1cf5b55

    mul-long v68, v68, v66

    add-long v36, v36, v68

    const-wide/32 v68, 0x9c2ab72

    mul-long v68, v68, v66

    add-long v38, v38, v68

    const-wide/32 v68, 0xf635c8e

    mul-long v68, v68, v66

    add-long v40, v40, v68

    const-wide/32 v68, 0x5bf7a4c

    mul-long v68, v68, v66

    add-long v42, v42, v68

    const-wide/32 v68, 0xd944a72

    mul-long v68, v68, v66

    add-long v44, v44, v68

    const-wide/32 v68, 0x8eec492

    mul-long v68, v68, v66

    add-long v46, v46, v68

    const-wide/32 v68, 0x20cd7705

    mul-long v66, v66, v68

    add-long v48, v48, v66

    const/16 v66, 0x1c

    ushr-long v66, v62, v66

    add-long v64, v64, v66

    const-wide/32 v66, 0xfffffff

    and-long v62, v62, v66

    const-wide/32 v66, 0x29eec34

    mul-long v66, v66, v64

    add-long v32, v32, v66

    const-wide/32 v66, 0x1cf5b55

    mul-long v66, v66, v64

    add-long v34, v34, v66

    const-wide/32 v66, 0x9c2ab72

    mul-long v66, v66, v64

    add-long v36, v36, v66

    const-wide/32 v66, 0xf635c8e

    mul-long v66, v66, v64

    add-long v38, v38, v66

    const-wide/32 v66, 0x5bf7a4c

    mul-long v66, v66, v64

    add-long v40, v40, v66

    const-wide/32 v66, 0xd944a72

    mul-long v66, v66, v64

    add-long v42, v42, v66

    const-wide/32 v66, 0x8eec492

    mul-long v66, v66, v64

    add-long v44, v44, v66

    const-wide/32 v66, 0x20cd7705

    mul-long v64, v64, v66

    add-long v46, v46, v64

    const-wide/32 v64, 0x29eec34

    mul-long v64, v64, v62

    add-long v30, v30, v64

    const-wide/32 v64, 0x1cf5b55

    mul-long v64, v64, v62

    add-long v32, v32, v64

    const-wide/32 v64, 0x9c2ab72

    mul-long v64, v64, v62

    add-long v34, v34, v64

    const-wide/32 v64, 0xf635c8e

    mul-long v64, v64, v62

    add-long v36, v36, v64

    const-wide/32 v64, 0x5bf7a4c

    mul-long v64, v64, v62

    add-long v38, v38, v64

    const-wide/32 v64, 0xd944a72

    mul-long v64, v64, v62

    add-long v40, v40, v64

    const-wide/32 v64, 0x8eec492

    mul-long v64, v64, v62

    add-long v42, v42, v64

    const-wide/32 v64, 0x20cd7705

    mul-long v62, v62, v64

    add-long v44, v44, v62

    const/16 v62, 0x1c

    ushr-long v62, v58, v62

    add-long v60, v60, v62

    const-wide/32 v62, 0xfffffff

    and-long v58, v58, v62

    const-wide/32 v62, 0x29eec34

    mul-long v62, v62, v60

    add-long v28, v28, v62

    const-wide/32 v62, 0x1cf5b55

    mul-long v62, v62, v60

    add-long v30, v30, v62

    const-wide/32 v62, 0x9c2ab72

    mul-long v62, v62, v60

    add-long v32, v32, v62

    const-wide/32 v62, 0xf635c8e

    mul-long v62, v62, v60

    add-long v34, v34, v62

    const-wide/32 v62, 0x5bf7a4c

    mul-long v62, v62, v60

    add-long v36, v36, v62

    const-wide/32 v62, 0xd944a72

    mul-long v62, v62, v60

    add-long v38, v38, v62

    const-wide/32 v62, 0x8eec492

    mul-long v62, v62, v60

    add-long v40, v40, v62

    const-wide/32 v62, 0x20cd7705

    mul-long v60, v60, v62

    add-long v42, v42, v60

    const-wide/32 v60, 0x29eec34

    mul-long v60, v60, v58

    add-long v26, v26, v60

    const-wide/32 v60, 0x1cf5b55

    mul-long v60, v60, v58

    add-long v28, v28, v60

    const-wide/32 v60, 0x9c2ab72

    mul-long v60, v60, v58

    add-long v30, v30, v60

    const-wide/32 v60, 0xf635c8e

    mul-long v60, v60, v58

    add-long v32, v32, v60

    const-wide/32 v60, 0x5bf7a4c

    mul-long v60, v60, v58

    add-long v34, v34, v60

    const-wide/32 v60, 0xd944a72

    mul-long v60, v60, v58

    add-long v36, v36, v60

    const-wide/32 v60, 0x8eec492

    mul-long v60, v60, v58

    add-long v38, v38, v60

    const-wide/32 v60, 0x20cd7705

    mul-long v58, v58, v60

    add-long v40, v40, v58

    const/16 v58, 0x1c

    ushr-long v58, v54, v58

    add-long v56, v56, v58

    const-wide/32 v58, 0xfffffff

    and-long v54, v54, v58

    const-wide/32 v58, 0x29eec34

    mul-long v58, v58, v56

    add-long v24, v24, v58

    const-wide/32 v58, 0x1cf5b55

    mul-long v58, v58, v56

    add-long v26, v26, v58

    const-wide/32 v58, 0x9c2ab72

    mul-long v58, v58, v56

    add-long v28, v28, v58

    const-wide/32 v58, 0xf635c8e

    mul-long v58, v58, v56

    add-long v30, v30, v58

    const-wide/32 v58, 0x5bf7a4c

    mul-long v58, v58, v56

    add-long v32, v32, v58

    const-wide/32 v58, 0xd944a72

    mul-long v58, v58, v56

    add-long v34, v34, v58

    const-wide/32 v58, 0x8eec492

    mul-long v58, v58, v56

    add-long v36, v36, v58

    const-wide/32 v58, 0x20cd7705

    mul-long v56, v56, v58

    add-long v38, v38, v56

    const-wide/32 v56, 0x29eec34

    mul-long v56, v56, v54

    add-long v22, v22, v56

    const-wide/32 v56, 0x1cf5b55

    mul-long v56, v56, v54

    add-long v24, v24, v56

    const-wide/32 v56, 0x9c2ab72

    mul-long v56, v56, v54

    add-long v26, v26, v56

    const-wide/32 v56, 0xf635c8e

    mul-long v56, v56, v54

    add-long v28, v28, v56

    const-wide/32 v56, 0x5bf7a4c

    mul-long v56, v56, v54

    add-long v30, v30, v56

    const-wide/32 v56, 0xd944a72

    mul-long v56, v56, v54

    add-long v32, v32, v56

    const-wide/32 v56, 0x8eec492

    mul-long v56, v56, v54

    add-long v34, v34, v56

    const-wide/32 v56, 0x20cd7705

    mul-long v54, v54, v56

    add-long v36, v36, v54

    const/16 v54, 0x1c

    ushr-long v54, v50, v54

    add-long v52, v52, v54

    const-wide/32 v54, 0xfffffff

    and-long v50, v50, v54

    const-wide/32 v54, 0x29eec34

    mul-long v54, v54, v52

    add-long v20, v20, v54

    const-wide/32 v54, 0x1cf5b55

    mul-long v54, v54, v52

    add-long v22, v22, v54

    const-wide/32 v54, 0x9c2ab72

    mul-long v54, v54, v52

    add-long v24, v24, v54

    const-wide/32 v54, 0xf635c8e

    mul-long v54, v54, v52

    add-long v26, v26, v54

    const-wide/32 v54, 0x5bf7a4c

    mul-long v54, v54, v52

    add-long v28, v28, v54

    const-wide/32 v54, 0xd944a72

    mul-long v54, v54, v52

    add-long v30, v30, v54

    const-wide/32 v54, 0x8eec492

    mul-long v54, v54, v52

    add-long v32, v32, v54

    const-wide/32 v54, 0x20cd7705

    mul-long v52, v52, v54

    add-long v34, v34, v52

    const/16 v52, 0x1c

    ushr-long v52, v42, v52

    add-long v44, v44, v52

    const-wide/32 v52, 0xfffffff

    and-long v42, v42, v52

    const/16 v52, 0x1c

    ushr-long v52, v44, v52

    add-long v46, v46, v52

    const-wide/32 v52, 0xfffffff

    and-long v44, v44, v52

    const/16 v52, 0x1c

    ushr-long v52, v46, v52

    add-long v48, v48, v52

    const-wide/32 v52, 0xfffffff

    and-long v46, v46, v52

    const/16 v52, 0x1c

    ushr-long v52, v48, v52

    add-long v50, v50, v52

    const-wide/32 v52, 0xfffffff

    and-long v48, v48, v52

    const-wide/32 v52, 0x29eec34

    mul-long v52, v52, v50

    add-long v18, v18, v52

    const-wide/32 v52, 0x1cf5b55

    mul-long v52, v52, v50

    add-long v20, v20, v52

    const-wide/32 v52, 0x9c2ab72

    mul-long v52, v52, v50

    add-long v22, v22, v52

    const-wide/32 v52, 0xf635c8e

    mul-long v52, v52, v50

    add-long v24, v24, v52

    const-wide/32 v52, 0x5bf7a4c

    mul-long v52, v52, v50

    add-long v26, v26, v52

    const-wide/32 v52, 0xd944a72

    mul-long v52, v52, v50

    add-long v28, v28, v52

    const-wide/32 v52, 0x8eec492

    mul-long v52, v52, v50

    add-long v30, v30, v52

    const-wide/32 v52, 0x20cd7705

    mul-long v50, v50, v52

    add-long v32, v32, v50

    const-wide/32 v50, 0x29eec34

    mul-long v50, v50, v48

    add-long v16, v16, v50

    const-wide/32 v50, 0x1cf5b55

    mul-long v50, v50, v48

    add-long v18, v18, v50

    const-wide/32 v50, 0x9c2ab72

    mul-long v50, v50, v48

    add-long v20, v20, v50

    const-wide/32 v50, 0xf635c8e

    mul-long v50, v50, v48

    add-long v22, v22, v50

    const-wide/32 v50, 0x5bf7a4c

    mul-long v50, v50, v48

    add-long v24, v24, v50

    const-wide/32 v50, 0xd944a72

    mul-long v50, v50, v48

    add-long v26, v26, v50

    const-wide/32 v50, 0x8eec492

    mul-long v50, v50, v48

    add-long v28, v28, v50

    const-wide/32 v50, 0x20cd7705

    mul-long v48, v48, v50

    add-long v30, v30, v48

    const-wide/32 v48, 0x29eec34

    mul-long v48, v48, v46

    add-long v14, v14, v48

    const-wide/32 v48, 0x1cf5b55

    mul-long v48, v48, v46

    add-long v16, v16, v48

    const-wide/32 v48, 0x9c2ab72

    mul-long v48, v48, v46

    add-long v18, v18, v48

    const-wide/32 v48, 0xf635c8e

    mul-long v48, v48, v46

    add-long v20, v20, v48

    const-wide/32 v48, 0x5bf7a4c

    mul-long v48, v48, v46

    add-long v22, v22, v48

    const-wide/32 v48, 0xd944a72

    mul-long v48, v48, v46

    add-long v24, v24, v48

    const-wide/32 v48, 0x8eec492

    mul-long v48, v48, v46

    add-long v26, v26, v48

    const-wide/32 v48, 0x20cd7705

    mul-long v46, v46, v48

    add-long v28, v28, v46

    const/16 v46, 0x1c

    ushr-long v46, v36, v46

    add-long v38, v38, v46

    const-wide/32 v46, 0xfffffff

    and-long v36, v36, v46

    const/16 v46, 0x1c

    ushr-long v46, v38, v46

    add-long v40, v40, v46

    const-wide/32 v46, 0xfffffff

    and-long v38, v38, v46

    const/16 v46, 0x1c

    ushr-long v46, v40, v46

    add-long v42, v42, v46

    const-wide/32 v46, 0xfffffff

    and-long v40, v40, v46

    const/16 v46, 0x1c

    ushr-long v46, v42, v46

    add-long v44, v44, v46

    const-wide/32 v46, 0xfffffff

    and-long v42, v42, v46

    const-wide/32 v46, 0x29eec34

    mul-long v46, v46, v44

    add-long v12, v12, v46

    const-wide/32 v46, 0x1cf5b55

    mul-long v46, v46, v44

    add-long v14, v14, v46

    const-wide/32 v46, 0x9c2ab72

    mul-long v46, v46, v44

    add-long v16, v16, v46

    const-wide/32 v46, 0xf635c8e

    mul-long v46, v46, v44

    add-long v18, v18, v46

    const-wide/32 v46, 0x5bf7a4c

    mul-long v46, v46, v44

    add-long v20, v20, v46

    const-wide/32 v46, 0xd944a72

    mul-long v46, v46, v44

    add-long v22, v22, v46

    const-wide/32 v46, 0x8eec492

    mul-long v46, v46, v44

    add-long v24, v24, v46

    const-wide/32 v46, 0x20cd7705

    mul-long v44, v44, v46

    add-long v26, v26, v44

    const-wide/32 v44, 0x29eec34

    mul-long v44, v44, v42

    add-long v10, v10, v44

    const-wide/32 v44, 0x1cf5b55

    mul-long v44, v44, v42

    add-long v12, v12, v44

    const-wide/32 v44, 0x9c2ab72

    mul-long v44, v44, v42

    add-long v14, v14, v44

    const-wide/32 v44, 0xf635c8e

    mul-long v44, v44, v42

    add-long v16, v16, v44

    const-wide/32 v44, 0x5bf7a4c

    mul-long v44, v44, v42

    add-long v18, v18, v44

    const-wide/32 v44, 0xd944a72

    mul-long v44, v44, v42

    add-long v20, v20, v44

    const-wide/32 v44, 0x8eec492

    mul-long v44, v44, v42

    add-long v22, v22, v44

    const-wide/32 v44, 0x20cd7705

    mul-long v42, v42, v44

    add-long v24, v24, v42

    const-wide/32 v42, 0x29eec34

    mul-long v42, v42, v40

    add-long v8, v8, v42

    const-wide/32 v42, 0x1cf5b55

    mul-long v42, v42, v40

    add-long v10, v10, v42

    const-wide/32 v42, 0x9c2ab72

    mul-long v42, v42, v40

    add-long v12, v12, v42

    const-wide/32 v42, 0xf635c8e

    mul-long v42, v42, v40

    add-long v14, v14, v42

    const-wide/32 v42, 0x5bf7a4c

    mul-long v42, v42, v40

    add-long v16, v16, v42

    const-wide/32 v42, 0xd944a72

    mul-long v42, v42, v40

    add-long v18, v18, v42

    const-wide/32 v42, 0x8eec492

    mul-long v42, v42, v40

    add-long v20, v20, v42

    const-wide/32 v42, 0x20cd7705

    mul-long v40, v40, v42

    add-long v22, v22, v40

    const/16 v40, 0x1c

    ushr-long v40, v30, v40

    add-long v32, v32, v40

    const-wide/32 v40, 0xfffffff

    and-long v30, v30, v40

    const/16 v40, 0x1c

    ushr-long v40, v32, v40

    add-long v34, v34, v40

    const-wide/32 v40, 0xfffffff

    and-long v32, v32, v40

    const/16 v40, 0x1c

    ushr-long v40, v34, v40

    add-long v36, v36, v40

    const-wide/32 v40, 0xfffffff

    and-long v34, v34, v40

    const/16 v40, 0x1c

    ushr-long v40, v36, v40

    add-long v38, v38, v40

    const-wide/32 v40, 0xfffffff

    and-long v36, v36, v40

    const-wide/32 v40, 0x29eec34

    mul-long v40, v40, v38

    add-long v6, v6, v40

    const-wide/32 v40, 0x1cf5b55

    mul-long v40, v40, v38

    add-long v8, v8, v40

    const-wide/32 v40, 0x9c2ab72

    mul-long v40, v40, v38

    add-long v10, v10, v40

    const-wide/32 v40, 0xf635c8e

    mul-long v40, v40, v38

    add-long v12, v12, v40

    const-wide/32 v40, 0x5bf7a4c

    mul-long v40, v40, v38

    add-long v14, v14, v40

    const-wide/32 v40, 0xd944a72

    mul-long v40, v40, v38

    add-long v16, v16, v40

    const-wide/32 v40, 0x8eec492

    mul-long v40, v40, v38

    add-long v18, v18, v40

    const-wide/32 v40, 0x20cd7705

    mul-long v38, v38, v40

    add-long v20, v20, v38

    const-wide/32 v38, 0x29eec34

    mul-long v38, v38, v36

    add-long v4, v4, v38

    const-wide/32 v38, 0x1cf5b55

    mul-long v38, v38, v36

    add-long v6, v6, v38

    const-wide/32 v38, 0x9c2ab72

    mul-long v38, v38, v36

    add-long v8, v8, v38

    const-wide/32 v38, 0xf635c8e

    mul-long v38, v38, v36

    add-long v10, v10, v38

    const-wide/32 v38, 0x5bf7a4c

    mul-long v38, v38, v36

    add-long v12, v12, v38

    const-wide/32 v38, 0xd944a72

    mul-long v38, v38, v36

    add-long v14, v14, v38

    const-wide/32 v38, 0x8eec492

    mul-long v38, v38, v36

    add-long v16, v16, v38

    const-wide/32 v38, 0x20cd7705

    mul-long v36, v36, v38

    add-long v18, v18, v36

    const-wide/16 v36, 0x4

    mul-long v34, v34, v36

    const/16 v36, 0x1a

    ushr-long v36, v32, v36

    add-long v34, v34, v36

    const-wide/32 v36, 0x3ffffff

    and-long v32, v32, v36

    const-wide/16 v36, 0x1

    add-long v34, v34, v36

    const-wide/32 v36, 0x4a7bb0d

    mul-long v36, v36, v34

    add-long v2, v2, v36

    const-wide/32 v36, 0x873d6d5

    mul-long v36, v36, v34

    add-long v4, v4, v36

    const-wide/32 v36, 0xa70aadc

    mul-long v36, v36, v34

    add-long v6, v6, v36

    const-wide/32 v36, 0x3d8d723

    mul-long v36, v36, v34

    add-long v8, v8, v36

    const-wide/32 v36, 0x96fde93

    mul-long v36, v36, v34

    add-long v10, v10, v36

    const-wide/32 v36, 0xb65129c

    mul-long v36, v36, v34

    add-long v12, v12, v36

    const-wide/32 v36, 0x63bb124

    mul-long v36, v36, v34

    add-long v14, v14, v36

    const-wide/32 v36, 0x8335dc1

    mul-long v34, v34, v36

    add-long v16, v16, v34

    const/16 v34, 0x1c

    ushr-long v34, v2, v34

    add-long v4, v4, v34

    const-wide/32 v34, 0xfffffff

    and-long v2, v2, v34

    const/16 v34, 0x1c

    ushr-long v34, v4, v34

    add-long v6, v6, v34

    const-wide/32 v34, 0xfffffff

    and-long v4, v4, v34

    const/16 v34, 0x1c

    ushr-long v34, v6, v34

    add-long v8, v8, v34

    const-wide/32 v34, 0xfffffff

    and-long v6, v6, v34

    const/16 v34, 0x1c

    ushr-long v34, v8, v34

    add-long v10, v10, v34

    const-wide/32 v34, 0xfffffff

    and-long v8, v8, v34

    const/16 v34, 0x1c

    ushr-long v34, v10, v34

    add-long v12, v12, v34

    const-wide/32 v34, 0xfffffff

    and-long v10, v10, v34

    const/16 v34, 0x1c

    ushr-long v34, v12, v34

    add-long v14, v14, v34

    const-wide/32 v34, 0xfffffff

    and-long v12, v12, v34

    const/16 v34, 0x1c

    ushr-long v34, v14, v34

    add-long v16, v16, v34

    const-wide/32 v34, 0xfffffff

    and-long v14, v14, v34

    const/16 v34, 0x1c

    ushr-long v34, v16, v34

    add-long v18, v18, v34

    const-wide/32 v34, 0xfffffff

    and-long v16, v16, v34

    const/16 v34, 0x1c

    ushr-long v34, v18, v34

    add-long v20, v20, v34

    const-wide/32 v34, 0xfffffff

    and-long v18, v18, v34

    const/16 v34, 0x1c

    ushr-long v34, v20, v34

    add-long v22, v22, v34

    const-wide/32 v34, 0xfffffff

    and-long v20, v20, v34

    const/16 v34, 0x1c

    ushr-long v34, v22, v34

    add-long v24, v24, v34

    const-wide/32 v34, 0xfffffff

    and-long v22, v22, v34

    const/16 v34, 0x1c

    ushr-long v34, v24, v34

    add-long v26, v26, v34

    const-wide/32 v34, 0xfffffff

    and-long v24, v24, v34

    const/16 v34, 0x1c

    ushr-long v34, v26, v34

    add-long v28, v28, v34

    const-wide/32 v34, 0xfffffff

    and-long v26, v26, v34

    const/16 v34, 0x1c

    ushr-long v34, v28, v34

    add-long v30, v30, v34

    const-wide/32 v34, 0xfffffff

    and-long v28, v28, v34

    const/16 v34, 0x1c

    ushr-long v34, v30, v34

    add-long v32, v32, v34

    const-wide/32 v34, 0xfffffff

    and-long v30, v30, v34

    const/16 v34, 0x1a

    ushr-long v34, v32, v34

    const-wide/32 v36, 0x3ffffff

    and-long v32, v32, v36

    const-wide/16 v36, 0x1

    sub-long v34, v34, v36

    const-wide/32 v36, 0x4a7bb0d

    and-long v36, v36, v34

    sub-long v2, v2, v36

    const-wide/32 v36, 0x873d6d5

    and-long v36, v36, v34

    sub-long v4, v4, v36

    const-wide/32 v36, 0xa70aadc

    and-long v36, v36, v34

    sub-long v6, v6, v36

    const-wide/32 v36, 0x3d8d723

    and-long v36, v36, v34

    sub-long v8, v8, v36

    const-wide/32 v36, 0x96fde93

    and-long v36, v36, v34

    sub-long v10, v10, v36

    const-wide/32 v36, 0xb65129c

    and-long v36, v36, v34

    sub-long v12, v12, v36

    const-wide/32 v36, 0x63bb124

    and-long v36, v36, v34

    sub-long v14, v14, v36

    const-wide/32 v36, 0x8335dc1

    and-long v34, v34, v36

    sub-long v16, v16, v34

    const/16 v34, 0x1c

    shr-long v34, v2, v34

    add-long v4, v4, v34

    const-wide/32 v34, 0xfffffff

    and-long v2, v2, v34

    const/16 v34, 0x1c

    shr-long v34, v4, v34

    add-long v6, v6, v34

    const-wide/32 v34, 0xfffffff

    and-long v4, v4, v34

    const/16 v34, 0x1c

    shr-long v34, v6, v34

    add-long v8, v8, v34

    const-wide/32 v34, 0xfffffff

    and-long v6, v6, v34

    const/16 v34, 0x1c

    shr-long v34, v8, v34

    add-long v10, v10, v34

    const-wide/32 v34, 0xfffffff

    and-long v8, v8, v34

    const/16 v34, 0x1c

    shr-long v34, v10, v34

    add-long v12, v12, v34

    const-wide/32 v34, 0xfffffff

    and-long v10, v10, v34

    const/16 v34, 0x1c

    shr-long v34, v12, v34

    add-long v14, v14, v34

    const-wide/32 v34, 0xfffffff

    and-long v12, v12, v34

    const/16 v34, 0x1c

    shr-long v34, v14, v34

    add-long v16, v16, v34

    const-wide/32 v34, 0xfffffff

    and-long v14, v14, v34

    const/16 v34, 0x1c

    shr-long v34, v16, v34

    add-long v18, v18, v34

    const-wide/32 v34, 0xfffffff

    and-long v16, v16, v34

    const/16 v34, 0x1c

    shr-long v34, v18, v34

    add-long v20, v20, v34

    const-wide/32 v34, 0xfffffff

    and-long v18, v18, v34

    const/16 v34, 0x1c

    shr-long v34, v20, v34

    add-long v22, v22, v34

    const-wide/32 v34, 0xfffffff

    and-long v20, v20, v34

    const/16 v34, 0x1c

    shr-long v34, v22, v34

    add-long v24, v24, v34

    const-wide/32 v34, 0xfffffff

    and-long v22, v22, v34

    const/16 v34, 0x1c

    shr-long v34, v24, v34

    add-long v26, v26, v34

    const-wide/32 v34, 0xfffffff

    and-long v24, v24, v34

    const/16 v34, 0x1c

    shr-long v34, v26, v34

    add-long v28, v28, v34

    const-wide/32 v34, 0xfffffff

    and-long v26, v26, v34

    const/16 v34, 0x1c

    shr-long v34, v28, v34

    add-long v30, v30, v34

    const-wide/32 v34, 0xfffffff

    and-long v28, v28, v34

    const/16 v34, 0x1c

    shr-long v34, v30, v34

    add-long v32, v32, v34

    const-wide/32 v34, 0xfffffff

    and-long v30, v30, v34

    const/16 v34, 0x39

    move/from16 v0, v34

    new-array v0, v0, [B

    move-object/from16 v34, v0

    const/16 v35, 0x1c

    shl-long v4, v4, v35

    or-long/2addr v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v8, v2

    or-long/2addr v2, v6

    const/4 v4, 0x7

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v12, v2

    or-long/2addr v2, v10

    const/16 v4, 0xe

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v16, v2

    or-long/2addr v2, v14

    const/16 v4, 0x15

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v20, v2

    or-long v2, v2, v18

    const/16 v4, 0x1c

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v24, v2

    or-long v2, v2, v22

    const/16 v4, 0x23

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v28, v2

    or-long v2, v2, v26

    const/16 v4, 0x2a

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v32, v2

    or-long v2, v2, v30

    const/16 v4, 0x31

    move-object/from16 v0, v34

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    return-object v34
.end method

.method static reduceBasisVar([I[I[I)Z
    .locals 20

    const/16 v1, 0x1c

    new-array v3, v1, [I

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->LSq:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x1c

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x1c

    new-array v4, v1, [I

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/bouncycastle/math/raw/Nat448;->square([I[I)V

    const/4 v1, 0x0

    aget v2, v4, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v4, v1

    const/16 v1, 0x1c

    new-array v5, v1, [I

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    move-object/from16 v0, p0

    invoke-static {v1, v0, v5}, Lorg/bouncycastle/math/raw/Nat448;->mul([I[I[I)V

    const/16 v1, 0x1c

    new-array v6, v1, [I

    const/16 v1, 0x8

    new-array v9, v1, [I

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x8

    invoke-static {v1, v2, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    new-array v10, v1, [I

    const/16 v1, 0x8

    new-array v11, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-static {v0, v1, v11, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x8

    new-array v12, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v12, v1

    const/16 v2, 0x6fc

    const/16 v1, 0x1b

    invoke-static {v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v13

    move/from16 v19, v2

    :goto_0
    const/16 v2, 0x1bf

    if-le v13, v2, :cond_2

    add-int/lit8 v19, v19, -0x1

    if-gez v19, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    invoke-static {v1, v5}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLength(I[I)I

    move-result v2

    sub-int/2addr v2, v13

    shr-int/lit8 v7, v2, 0x1f

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v2, v7

    aget v7, v5, v1

    if-gez v7, :cond_1

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_NP(II[I[I[I[I)V

    const/4 v7, 0x7

    move v8, v2

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->addShifted_UV(II[I[I[I[I)V

    :goto_2
    invoke-static {v1, v3, v4}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->lessThan(I[I[I)Z

    move-result v2

    if-eqz v2, :cond_3

    ushr-int/lit8 v7, v13, 0x5

    invoke-static {v7, v3}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v1

    move v2, v1

    move-object v8, v10

    move-object v14, v9

    move-object v15, v12

    move-object/from16 v16, v11

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    :goto_3
    move v13, v2

    move v1, v7

    move-object v12, v8

    move-object v11, v14

    move-object v10, v15

    move-object/from16 v9, v16

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    goto :goto_0

    :cond_1
    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_NP(II[I[I[I[I)V

    const/4 v7, 0x7

    move v8, v2

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_UV(II[I[I[I[I)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-static {v11, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x8

    move-object/from16 v0, p2

    invoke-static {v12, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    move v2, v13

    move v7, v1

    move-object v8, v12

    move-object v14, v11

    move-object v15, v10

    move-object/from16 v16, v9

    move-object/from16 v17, v4

    move-object/from16 v18, v3

    goto :goto_3
.end method

.method static toSignedDigits(I[I[I)V
    .locals 5

    const/16 v4, 0xe

    const/4 v3, 0x0

    const/4 v0, 0x1

    add-int/lit16 v1, p0, -0x1c0

    shl-int/2addr v0, v1

    aget v1, p1, v3

    xor-int/lit8 v1, v1, -0x1

    and-int/lit8 v1, v1, 0x1

    sget-object v2, Lorg/bouncycastle/math/ec/rfc8032/Scalar448;->L:[I

    invoke-static {v4, v1, p1, v2, p2}, Lorg/bouncycastle/math/raw/Nat;->cadd(II[I[I[I)I

    move-result v1

    add-int/2addr v0, v1

    aput v0, p2, v4

    const/16 v0, 0xf

    invoke-static {v0, p2, v3}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    return-void
.end method
