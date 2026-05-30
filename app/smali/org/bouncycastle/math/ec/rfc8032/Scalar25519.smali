.class abstract Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;
.super Ljava/lang/Object;


# static fields
.field private static final L:[I

.field private static final L0:I = -0x30a2c13

.field private static final L1:I = 0x12631a6

.field private static final L2:I = 0x79cd658

.field private static final L3:I = -0x6215d1

.field private static final L4:I = 0x14df

.field private static final LSq:[I

.field private static final M08L:J = 0xffL

.field private static final M28L:J = 0xfffffffL

.field private static final M32L:J = 0xffffffffL

.field private static final SCALAR_BYTES:I = 0x20

.field static final SIZE:I = 0x8

.field private static final TARGET_LENGTH:I = 0xfe


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->LSq:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5cf5d3ed
        0x5812631a
        -0x5d08632a
        0x14def9de
        0x0
        0x0
        0x0
        0x10000000
    .end array-data

    :array_1
    .array-data 4
        -0x54ed7697
        -0x1d12097b
        0x2298a31d
        0x68039276
        -0x2de80a42
        0x3dceec73
        0x1b7c309a
        -0x5e4c66bf
        0x4b9eba7d    # 2.0804858E7f
        -0x34fdb39d    # -8539235.0f
        -0x2ba10c66
        0x29bdf3b
        0x0
        0x0
        0x0
        0x1000000
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkVar([B[I)Z
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->gte([I[I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static decode([B[I)V
    .locals 2

    const/4 v1, 0x0

    const/16 v0, 0x8

    invoke-static {p0, v1, p1, v1, v0}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode32([BI[III)V

    return-void
.end method

.method static getOrderWnafVar(I[B)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {v0, p0, p1}, Lorg/bouncycastle/math/ec/rfc8032/Wnaf;->getSignedVar([II[B)V

    return-void
.end method

.method static multiply128Var([I[I[I)V
    .locals 5

    const/16 v4, 0xc

    const/4 v3, 0x4

    const/4 v2, 0x0

    new-array v0, v4, [I

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/raw/Nat256;->mul128([I[I[I)V

    const/4 v1, 0x3

    aget v1, p1, v1

    if-gez v1, :cond_0

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {v1, v2, v0, v3, v2}, Lorg/bouncycastle/math/raw/Nat256;->addTo([II[III)I

    invoke-static {p0, v2, v0, v3, v2}, Lorg/bouncycastle/math/raw/Nat256;->subFrom([II[III)I

    :cond_0
    const/16 v1, 0x30

    new-array v1, v1, [B

    invoke-static {v0, v2, v4, v1, v2}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32([III[BI)V

    invoke-static {v1}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->reduce384([B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->decode([B[I)V

    return-void
.end method

.method static reduce384([B)[B
    .locals 32

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

    invoke-static {v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->decode16([BI)I

    move-result v28

    shl-int/lit8 v28, v28, 0x4

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0xffffffffL

    and-long v28, v28, v30

    const/16 v30, 0x1c

    shr-long v30, v26, v30

    add-long v28, v28, v30

    const-wide/32 v30, 0xfffffff

    and-long v26, v26, v30

    const-wide/32 v30, -0x30a2c13

    mul-long v30, v30, v28

    sub-long v10, v10, v30

    const-wide/32 v30, 0x12631a6

    mul-long v30, v30, v28

    sub-long v12, v12, v30

    const-wide/32 v30, 0x79cd658

    mul-long v30, v30, v28

    sub-long v14, v14, v30

    const-wide/32 v30, -0x6215d1

    mul-long v30, v30, v28

    sub-long v16, v16, v30

    const-wide/16 v30, 0x14df

    mul-long v28, v28, v30

    sub-long v18, v18, v28

    const/16 v28, 0x1c

    shr-long v28, v24, v28

    add-long v26, v26, v28

    const-wide/32 v28, 0xfffffff

    and-long v24, v24, v28

    const-wide/32 v28, -0x30a2c13

    mul-long v28, v28, v26

    sub-long v8, v8, v28

    const-wide/32 v28, 0x12631a6

    mul-long v28, v28, v26

    sub-long v10, v10, v28

    const-wide/32 v28, 0x79cd658

    mul-long v28, v28, v26

    sub-long v12, v12, v28

    const-wide/32 v28, -0x6215d1

    mul-long v28, v28, v26

    sub-long v14, v14, v28

    const-wide/16 v28, 0x14df

    mul-long v26, v26, v28

    sub-long v16, v16, v26

    const/16 v26, 0x1c

    shr-long v26, v22, v26

    add-long v24, v24, v26

    const-wide/32 v26, 0xfffffff

    and-long v22, v22, v26

    const-wide/32 v26, -0x30a2c13

    mul-long v26, v26, v24

    sub-long v6, v6, v26

    const-wide/32 v26, 0x12631a6

    mul-long v26, v26, v24

    sub-long v8, v8, v26

    const-wide/32 v26, 0x79cd658

    mul-long v26, v26, v24

    sub-long v10, v10, v26

    const-wide/32 v26, -0x6215d1

    mul-long v26, v26, v24

    sub-long v12, v12, v26

    const-wide/16 v26, 0x14df

    mul-long v24, v24, v26

    sub-long v14, v14, v24

    const/16 v24, 0x1c

    shr-long v24, v20, v24

    add-long v22, v22, v24

    const-wide/32 v24, 0xfffffff

    and-long v20, v20, v24

    const-wide/32 v24, -0x30a2c13

    mul-long v24, v24, v22

    sub-long v4, v4, v24

    const-wide/32 v24, 0x12631a6

    mul-long v24, v24, v22

    sub-long v6, v6, v24

    const-wide/32 v24, 0x79cd658

    mul-long v24, v24, v22

    sub-long v8, v8, v24

    const-wide/32 v24, -0x6215d1

    mul-long v24, v24, v22

    sub-long v10, v10, v24

    const-wide/16 v24, 0x14df

    mul-long v22, v22, v24

    sub-long v12, v12, v22

    const/16 v22, 0x1c

    shr-long v22, v16, v22

    add-long v18, v18, v22

    const-wide/32 v22, 0xfffffff

    and-long v16, v16, v22

    const/16 v22, 0x1c

    shr-long v22, v18, v22

    add-long v20, v20, v22

    const-wide/32 v22, 0xfffffff

    and-long v18, v18, v22

    const/16 v22, 0x1b

    ushr-long v22, v18, v22

    add-long v20, v20, v22

    const-wide/32 v24, -0x30a2c13

    mul-long v24, v24, v20

    sub-long v2, v2, v24

    const-wide/32 v24, 0x12631a6

    mul-long v24, v24, v20

    sub-long v4, v4, v24

    const-wide/32 v24, 0x79cd658

    mul-long v24, v24, v20

    sub-long v6, v6, v24

    const-wide/32 v24, -0x6215d1

    mul-long v24, v24, v20

    sub-long v8, v8, v24

    const-wide/16 v24, 0x14df

    mul-long v20, v20, v24

    sub-long v10, v10, v20

    const/16 v20, 0x1c

    shr-long v20, v2, v20

    add-long v4, v4, v20

    const-wide/32 v20, 0xfffffff

    and-long v2, v2, v20

    const/16 v20, 0x1c

    shr-long v20, v4, v20

    add-long v6, v6, v20

    const-wide/32 v20, 0xfffffff

    and-long v4, v4, v20

    const/16 v20, 0x1c

    shr-long v20, v6, v20

    add-long v8, v8, v20

    const-wide/32 v20, 0xfffffff

    and-long v6, v6, v20

    const/16 v20, 0x1c

    shr-long v20, v8, v20

    add-long v10, v10, v20

    const-wide/32 v20, 0xfffffff

    and-long v8, v8, v20

    const/16 v20, 0x1c

    shr-long v20, v10, v20

    add-long v12, v12, v20

    const-wide/32 v20, 0xfffffff

    and-long v10, v10, v20

    const/16 v20, 0x1c

    shr-long v20, v12, v20

    add-long v14, v14, v20

    const-wide/32 v20, 0xfffffff

    and-long v12, v12, v20

    const/16 v20, 0x1c

    shr-long v20, v14, v20

    add-long v16, v16, v20

    const-wide/32 v20, 0xfffffff

    and-long v14, v14, v20

    const/16 v20, 0x1c

    shr-long v20, v16, v20

    add-long v18, v18, v20

    const-wide/32 v20, 0xfffffff

    and-long v16, v16, v20

    const/16 v20, 0x1c

    shr-long v20, v18, v20

    const-wide/32 v24, 0xfffffff

    and-long v18, v18, v24

    sub-long v20, v20, v22

    const-wide/32 v22, -0x30a2c13

    and-long v22, v22, v20

    add-long v2, v2, v22

    const-wide/32 v22, 0x12631a6

    and-long v22, v22, v20

    add-long v4, v4, v22

    const-wide/32 v22, 0x79cd658

    and-long v22, v22, v20

    add-long v6, v6, v22

    const-wide/32 v22, -0x6215d1

    and-long v22, v22, v20

    add-long v8, v8, v22

    const-wide/16 v22, 0x14df

    and-long v20, v20, v22

    add-long v10, v10, v20

    const/16 v20, 0x1c

    shr-long v20, v2, v20

    add-long v4, v4, v20

    const-wide/32 v20, 0xfffffff

    and-long v2, v2, v20

    const/16 v20, 0x1c

    shr-long v20, v4, v20

    add-long v6, v6, v20

    const-wide/32 v20, 0xfffffff

    and-long v4, v4, v20

    const/16 v20, 0x1c

    shr-long v20, v6, v20

    add-long v8, v8, v20

    const-wide/32 v20, 0xfffffff

    and-long v6, v6, v20

    const/16 v20, 0x1c

    shr-long v20, v8, v20

    add-long v10, v10, v20

    const-wide/32 v20, 0xfffffff

    and-long v8, v8, v20

    const/16 v20, 0x1c

    shr-long v20, v10, v20

    add-long v12, v12, v20

    const-wide/32 v20, 0xfffffff

    and-long v10, v10, v20

    const/16 v20, 0x1c

    shr-long v20, v12, v20

    add-long v14, v14, v20

    const-wide/32 v20, 0xfffffff

    and-long v12, v12, v20

    const/16 v20, 0x1c

    shr-long v20, v14, v20

    add-long v16, v16, v20

    const-wide/32 v20, 0xfffffff

    and-long v14, v14, v20

    const/16 v20, 0x1c

    shr-long v20, v16, v20

    add-long v18, v18, v20

    const-wide/32 v20, 0xfffffff

    and-long v16, v16, v20

    const/16 v20, 0x40

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/16 v21, 0x1c

    shl-long v4, v4, v21

    or-long/2addr v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v8, v2

    or-long/2addr v2, v6

    const/4 v4, 0x7

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v12, v2

    or-long/2addr v2, v10

    const/16 v4, 0xe

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v16, v2

    or-long/2addr v2, v14

    const/16 v4, 0x15

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    move-wide/from16 v0, v18

    long-to-int v2, v0

    const/16 v3, 0x1c

    move-object/from16 v0, v20

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32(I[BI)V

    return-object v20
.end method

.method static reduce512([B)[B
    .locals 42

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

    aget-byte v38, p0, v38

    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v38, v0

    const-wide/16 v40, 0xff

    and-long v38, v38, v40

    const-wide/32 v40, -0x30a2c13

    mul-long v40, v40, v38

    sub-long v20, v20, v40

    const-wide/32 v40, 0x12631a6

    mul-long v40, v40, v38

    sub-long v22, v22, v40

    const-wide/32 v40, 0x79cd658

    mul-long v40, v40, v38

    sub-long v24, v24, v40

    const-wide/32 v40, -0x6215d1

    mul-long v40, v40, v38

    sub-long v26, v26, v40

    const-wide/16 v40, 0x14df

    mul-long v38, v38, v40

    sub-long v28, v28, v38

    const/16 v38, 0x1c

    shr-long v38, v34, v38

    add-long v36, v36, v38

    const-wide/32 v38, 0xfffffff

    and-long v34, v34, v38

    const-wide/32 v38, -0x30a2c13

    mul-long v38, v38, v36

    sub-long v18, v18, v38

    const-wide/32 v38, 0x12631a6

    mul-long v38, v38, v36

    sub-long v20, v20, v38

    const-wide/32 v38, 0x79cd658

    mul-long v38, v38, v36

    sub-long v22, v22, v38

    const-wide/32 v38, -0x6215d1

    mul-long v38, v38, v36

    sub-long v24, v24, v38

    const-wide/16 v38, 0x14df

    mul-long v36, v36, v38

    sub-long v26, v26, v36

    const-wide/32 v36, -0x30a2c13

    mul-long v36, v36, v34

    sub-long v16, v16, v36

    const-wide/32 v36, 0x12631a6

    mul-long v36, v36, v34

    sub-long v18, v18, v36

    const-wide/32 v36, 0x79cd658

    mul-long v36, v36, v34

    sub-long v20, v20, v36

    const-wide/32 v36, -0x6215d1

    mul-long v36, v36, v34

    sub-long v22, v22, v36

    const-wide/16 v36, 0x14df

    mul-long v34, v34, v36

    sub-long v24, v24, v34

    const/16 v34, 0x1c

    shr-long v34, v30, v34

    add-long v32, v32, v34

    const-wide/32 v34, 0xfffffff

    and-long v30, v30, v34

    const-wide/32 v34, -0x30a2c13

    mul-long v34, v34, v32

    sub-long v14, v14, v34

    const-wide/32 v34, 0x12631a6

    mul-long v34, v34, v32

    sub-long v16, v16, v34

    const-wide/32 v34, 0x79cd658

    mul-long v34, v34, v32

    sub-long v18, v18, v34

    const-wide/32 v34, -0x6215d1

    mul-long v34, v34, v32

    sub-long v20, v20, v34

    const-wide/16 v34, 0x14df

    mul-long v32, v32, v34

    sub-long v22, v22, v32

    const-wide/32 v32, -0x30a2c13

    mul-long v32, v32, v30

    sub-long v12, v12, v32

    const-wide/32 v32, 0x12631a6

    mul-long v32, v32, v30

    sub-long v14, v14, v32

    const-wide/32 v32, 0x79cd658

    mul-long v32, v32, v30

    sub-long v16, v16, v32

    const-wide/32 v32, -0x6215d1

    mul-long v32, v32, v30

    sub-long v18, v18, v32

    const-wide/16 v32, 0x14df

    mul-long v30, v30, v32

    sub-long v20, v20, v30

    const/16 v30, 0x1c

    shr-long v30, v26, v30

    add-long v28, v28, v30

    const-wide/32 v30, 0xfffffff

    and-long v26, v26, v30

    const-wide/32 v30, -0x30a2c13

    mul-long v30, v30, v28

    sub-long v10, v10, v30

    const-wide/32 v30, 0x12631a6

    mul-long v30, v30, v28

    sub-long v12, v12, v30

    const-wide/32 v30, 0x79cd658

    mul-long v30, v30, v28

    sub-long v14, v14, v30

    const-wide/32 v30, -0x6215d1

    mul-long v30, v30, v28

    sub-long v16, v16, v30

    const-wide/16 v30, 0x14df

    mul-long v28, v28, v30

    sub-long v18, v18, v28

    const/16 v28, 0x1c

    shr-long v28, v24, v28

    add-long v26, v26, v28

    const-wide/32 v28, 0xfffffff

    and-long v24, v24, v28

    const-wide/32 v28, -0x30a2c13

    mul-long v28, v28, v26

    sub-long v8, v8, v28

    const-wide/32 v28, 0x12631a6

    mul-long v28, v28, v26

    sub-long v10, v10, v28

    const-wide/32 v28, 0x79cd658

    mul-long v28, v28, v26

    sub-long v12, v12, v28

    const-wide/32 v28, -0x6215d1

    mul-long v28, v28, v26

    sub-long v14, v14, v28

    const-wide/16 v28, 0x14df

    mul-long v26, v26, v28

    sub-long v16, v16, v26

    const/16 v26, 0x1c

    shr-long v26, v22, v26

    add-long v24, v24, v26

    const-wide/32 v26, 0xfffffff

    and-long v22, v22, v26

    const-wide/32 v26, -0x30a2c13

    mul-long v26, v26, v24

    sub-long v6, v6, v26

    const-wide/32 v26, 0x12631a6

    mul-long v26, v26, v24

    sub-long v8, v8, v26

    const-wide/32 v26, 0x79cd658

    mul-long v26, v26, v24

    sub-long v10, v10, v26

    const-wide/32 v26, -0x6215d1

    mul-long v26, v26, v24

    sub-long v12, v12, v26

    const-wide/16 v26, 0x14df

    mul-long v24, v24, v26

    sub-long v14, v14, v24

    const/16 v24, 0x1c

    shr-long v24, v20, v24

    add-long v22, v22, v24

    const-wide/32 v24, 0xfffffff

    and-long v20, v20, v24

    const-wide/32 v24, -0x30a2c13

    mul-long v24, v24, v22

    sub-long v4, v4, v24

    const-wide/32 v24, 0x12631a6

    mul-long v24, v24, v22

    sub-long v6, v6, v24

    const-wide/32 v24, 0x79cd658

    mul-long v24, v24, v22

    sub-long v8, v8, v24

    const-wide/32 v24, -0x6215d1

    mul-long v24, v24, v22

    sub-long v10, v10, v24

    const-wide/16 v24, 0x14df

    mul-long v22, v22, v24

    sub-long v12, v12, v22

    const/16 v22, 0x1c

    shr-long v22, v16, v22

    add-long v18, v18, v22

    const-wide/32 v22, 0xfffffff

    and-long v16, v16, v22

    const/16 v22, 0x1c

    shr-long v22, v18, v22

    add-long v20, v20, v22

    const-wide/32 v22, 0xfffffff

    and-long v18, v18, v22

    const/16 v22, 0x1b

    ushr-long v22, v18, v22

    add-long v20, v20, v22

    const-wide/32 v24, -0x30a2c13

    mul-long v24, v24, v20

    sub-long v2, v2, v24

    const-wide/32 v24, 0x12631a6

    mul-long v24, v24, v20

    sub-long v4, v4, v24

    const-wide/32 v24, 0x79cd658

    mul-long v24, v24, v20

    sub-long v6, v6, v24

    const-wide/32 v24, -0x6215d1

    mul-long v24, v24, v20

    sub-long v8, v8, v24

    const-wide/16 v24, 0x14df

    mul-long v20, v20, v24

    sub-long v10, v10, v20

    const/16 v20, 0x1c

    shr-long v20, v2, v20

    add-long v4, v4, v20

    const-wide/32 v20, 0xfffffff

    and-long v2, v2, v20

    const/16 v20, 0x1c

    shr-long v20, v4, v20

    add-long v6, v6, v20

    const-wide/32 v20, 0xfffffff

    and-long v4, v4, v20

    const/16 v20, 0x1c

    shr-long v20, v6, v20

    add-long v8, v8, v20

    const-wide/32 v20, 0xfffffff

    and-long v6, v6, v20

    const/16 v20, 0x1c

    shr-long v20, v8, v20

    add-long v10, v10, v20

    const-wide/32 v20, 0xfffffff

    and-long v8, v8, v20

    const/16 v20, 0x1c

    shr-long v20, v10, v20

    add-long v12, v12, v20

    const-wide/32 v20, 0xfffffff

    and-long v10, v10, v20

    const/16 v20, 0x1c

    shr-long v20, v12, v20

    add-long v14, v14, v20

    const-wide/32 v20, 0xfffffff

    and-long v12, v12, v20

    const/16 v20, 0x1c

    shr-long v20, v14, v20

    add-long v16, v16, v20

    const-wide/32 v20, 0xfffffff

    and-long v14, v14, v20

    const/16 v20, 0x1c

    shr-long v20, v16, v20

    add-long v18, v18, v20

    const-wide/32 v20, 0xfffffff

    and-long v16, v16, v20

    const/16 v20, 0x1c

    shr-long v20, v18, v20

    const-wide/32 v24, 0xfffffff

    and-long v18, v18, v24

    sub-long v20, v20, v22

    const-wide/32 v22, -0x30a2c13

    and-long v22, v22, v20

    add-long v2, v2, v22

    const-wide/32 v22, 0x12631a6

    and-long v22, v22, v20

    add-long v4, v4, v22

    const-wide/32 v22, 0x79cd658

    and-long v22, v22, v20

    add-long v6, v6, v22

    const-wide/32 v22, -0x6215d1

    and-long v22, v22, v20

    add-long v8, v8, v22

    const-wide/16 v22, 0x14df

    and-long v20, v20, v22

    add-long v10, v10, v20

    const/16 v20, 0x1c

    shr-long v20, v2, v20

    add-long v4, v4, v20

    const-wide/32 v20, 0xfffffff

    and-long v2, v2, v20

    const/16 v20, 0x1c

    shr-long v20, v4, v20

    add-long v6, v6, v20

    const-wide/32 v20, 0xfffffff

    and-long v4, v4, v20

    const/16 v20, 0x1c

    shr-long v20, v6, v20

    add-long v8, v8, v20

    const-wide/32 v20, 0xfffffff

    and-long v6, v6, v20

    const/16 v20, 0x1c

    shr-long v20, v8, v20

    add-long v10, v10, v20

    const-wide/32 v20, 0xfffffff

    and-long v8, v8, v20

    const/16 v20, 0x1c

    shr-long v20, v10, v20

    add-long v12, v12, v20

    const-wide/32 v20, 0xfffffff

    and-long v10, v10, v20

    const/16 v20, 0x1c

    shr-long v20, v12, v20

    add-long v14, v14, v20

    const-wide/32 v20, 0xfffffff

    and-long v12, v12, v20

    const/16 v20, 0x1c

    shr-long v20, v14, v20

    add-long v16, v16, v20

    const-wide/32 v20, 0xfffffff

    and-long v14, v14, v20

    const/16 v20, 0x1c

    shr-long v20, v16, v20

    add-long v18, v18, v20

    const-wide/32 v20, 0xfffffff

    and-long v16, v16, v20

    const/16 v20, 0x20

    move/from16 v0, v20

    new-array v0, v0, [B

    move-object/from16 v20, v0

    const/16 v21, 0x1c

    shl-long v4, v4, v21

    or-long/2addr v2, v4

    const/4 v4, 0x0

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v8, v2

    or-long/2addr v2, v6

    const/4 v4, 0x7

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v12, v2

    or-long/2addr v2, v10

    const/16 v4, 0xe

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    const/16 v2, 0x1c

    shl-long v2, v16, v2

    or-long/2addr v2, v14

    const/16 v4, 0x15

    move-object/from16 v0, v20

    invoke-static {v2, v3, v0, v4}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode56(J[BI)V

    move-wide/from16 v0, v18

    long-to-int v2, v0

    const/16 v3, 0x1c

    move-object/from16 v0, v20

    invoke-static {v2, v0, v3}, Lorg/bouncycastle/math/ec/rfc8032/Codec;->encode32(I[BI)V

    return-object v20
.end method

.method static reduceBasisVar([I[I[I)Z
    .locals 20

    const/16 v1, 0x10

    new-array v3, v1, [I

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->LSq:[I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x10

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x10

    new-array v4, v1, [I

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lorg/bouncycastle/math/raw/Nat256;->square([I[I)V

    const/4 v1, 0x0

    aget v2, v4, v1

    add-int/lit8 v2, v2, 0x1

    aput v2, v4, v1

    const/16 v1, 0x10

    new-array v5, v1, [I

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    move-object/from16 v0, p0

    invoke-static {v1, v0, v5}, Lorg/bouncycastle/math/raw/Nat256;->mul([I[I[I)V

    const/16 v1, 0x10

    new-array v6, v1, [I

    const/4 v1, 0x4

    new-array v9, v1, [I

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    const/4 v2, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    invoke-static {v1, v2, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x4

    new-array v10, v1, [I

    const/4 v1, 0x4

    new-array v11, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v1, v11, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x4

    new-array v12, v1, [I

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v2, v12, v1

    const/16 v2, 0x3f8

    const/16 v1, 0xf

    invoke-static {v1, v4}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->getBitLengthPositive(I[I)I

    move-result v13

    move/from16 v19, v2

    :goto_0
    const/16 v2, 0xfe

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

    const/4 v7, 0x3

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

    const/4 v7, 0x3

    move v8, v2

    invoke-static/range {v7 .. v12}, Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;->subShifted_UV(II[I[I[I[I)V

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

    move-object/from16 v0, p1

    invoke-static {v11, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x4

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

.method static toSignedDigits(I[I)V
    .locals 3

    const/16 v2, 0x8

    const/4 v0, 0x0

    aget v0, p1, v0

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x1

    sget-object v1, Lorg/bouncycastle/math/ec/rfc8032/Scalar25519;->L:[I

    invoke-static {v2, v0, v1, p1}, Lorg/bouncycastle/math/raw/Nat;->caddTo(II[I[I)I

    const/4 v0, 0x1

    invoke-static {v2, p1, v0}, Lorg/bouncycastle/math/raw/Nat;->shiftDownBit(I[II)I

    return-void
.end method
