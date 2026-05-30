.class abstract Lorg/bouncycastle/pqc/crypto/cmce/BENES;
.super Ljava/lang/Object;


# static fields
.field private static final TRANSPOSE_MASKS:[J


# instance fields
.field protected final GFBITS:I

.field protected final SYS_N:I

.field protected final SYS_T:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->TRANSPOSE_MASKS:[J

    return-void

    nop

    :array_0
    .array-data 8
        0x5555555555555555L    # 1.1945305291614955E103
        0x3333333333333333L    # 4.667261458395856E-62
        0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236
        0xff00ff00ff00ffL
        0xffff0000ffffL
        0xffffffffL
    .end array-data
.end method

.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_N:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->SYS_T:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->GFBITS:I

    return-void
.end method

.method static transpose_64x64([J[J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->transpose_64x64([J[JI)V

    return-void
.end method

.method static transpose_64x64([J[JI)V
    .locals 38

    const/16 v4, 0x40

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p2

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x5

    :cond_0
    sget-object v5, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->TRANSPOSE_MASKS:[J

    aget-wide v8, v5, v4

    const/4 v5, 0x1

    shl-int v7, v5, v4

    move/from16 v6, p2

    :goto_0
    add-int/lit8 v5, p2, 0x40

    if-ge v6, v5, :cond_2

    move v5, v6

    :goto_1
    add-int v10, v6, v7

    if-ge v5, v10, :cond_1

    add-int/lit8 v10, v5, 0x0

    aget-wide v10, p0, v10

    add-int/lit8 v12, v5, 0x1

    aget-wide v12, p0, v12

    add-int/lit8 v14, v5, 0x2

    aget-wide v14, p0, v14

    add-int/lit8 v16, v5, 0x3

    aget-wide v16, p0, v16

    add-int v18, v5, v7

    add-int/lit8 v18, v18, 0x0

    aget-wide v18, p0, v18

    add-int v20, v5, v7

    add-int/lit8 v20, v20, 0x1

    aget-wide v20, p0, v20

    add-int v22, v5, v7

    add-int/lit8 v22, v22, 0x2

    aget-wide v22, p0, v22

    add-int v24, v5, v7

    add-int/lit8 v24, v24, 0x3

    aget-wide v24, p0, v24

    ushr-long v26, v10, v7

    xor-long v26, v26, v18

    and-long v26, v26, v8

    ushr-long v28, v12, v7

    xor-long v28, v28, v20

    and-long v28, v28, v8

    ushr-long v30, v14, v7

    xor-long v30, v30, v22

    and-long v30, v30, v8

    ushr-long v32, v16, v7

    xor-long v32, v32, v24

    and-long v32, v32, v8

    add-int/lit8 v34, v5, 0x0

    shl-long v36, v26, v7

    xor-long v10, v10, v36

    aput-wide v10, p0, v34

    add-int/lit8 v10, v5, 0x1

    shl-long v34, v28, v7

    xor-long v12, v12, v34

    aput-wide v12, p0, v10

    add-int/lit8 v10, v5, 0x2

    shl-long v12, v30, v7

    xor-long/2addr v12, v14

    aput-wide v12, p0, v10

    add-int/lit8 v10, v5, 0x3

    shl-long v12, v32, v7

    xor-long v12, v12, v16

    aput-wide v12, p0, v10

    add-int v10, v5, v7

    add-int/lit8 v10, v10, 0x0

    xor-long v12, v18, v26

    aput-wide v12, p0, v10

    add-int v10, v5, v7

    add-int/lit8 v10, v10, 0x1

    xor-long v12, v20, v28

    aput-wide v12, p0, v10

    add-int v10, v5, v7

    add-int/lit8 v10, v10, 0x2

    xor-long v12, v22, v30

    aput-wide v12, p0, v10

    add-int v10, v5, v7

    add-int/lit8 v10, v10, 0x3

    xor-long v12, v24, v32

    aput-wide v12, p0, v10

    add-int/lit8 v5, v5, 0x4

    goto/16 :goto_1

    :cond_1
    mul-int/lit8 v5, v7, 0x2

    add-int/2addr v6, v5

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_0

    :cond_3
    sget-object v5, Lorg/bouncycastle/pqc/crypto/cmce/BENES;->TRANSPOSE_MASKS:[J

    aget-wide v8, v5, v4

    const/4 v5, 0x1

    shl-int v7, v5, v4

    move/from16 v6, p2

    :goto_2
    add-int/lit8 v5, p2, 0x40

    if-ge v6, v5, :cond_5

    move v5, v6

    :goto_3
    add-int v10, v6, v7

    if-ge v5, v10, :cond_4

    add-int/lit8 v10, v5, 0x0

    aget-wide v10, p0, v10

    add-int v12, v5, v7

    aget-wide v12, p0, v12

    ushr-long v14, v10, v7

    xor-long/2addr v14, v12

    and-long/2addr v14, v8

    add-int/lit8 v16, v5, 0x0

    shl-long v18, v14, v7

    xor-long v10, v10, v18

    aput-wide v10, p0, v16

    add-int v10, v5, v7

    xor-long/2addr v12, v14

    aput-wide v12, p0, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    mul-int/lit8 v5, v7, 0x2

    add-int/2addr v6, v5

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, -0x1

    if-gez v4, :cond_3

    return-void
.end method


# virtual methods
.method protected abstract support_gen([S[B)V
.end method
