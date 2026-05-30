.class Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;
.super Ljava/lang/Object;


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected rate:I

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->KeccakRoundConstants:[J

    return-void

    :array_0
    .array-data 8
        0x1
        0x8082
        -0x7fffffffffff7f76L    # -1.62577E-319
        -0x7fffffff7fff8000L    # -1.061014085E-314
        0x808b
        0x80000001L
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7ff7L    # -1.6194E-319
        0x8a
        0x88
        0x80008009L
        0x8000000aL
        0x8000808bL
        -0x7fffffffffffff75L    # -6.87E-322
        -0x7fffffffffff7f77L    # -1.6257E-319
        -0x7fffffffffff7ffdL    # -1.6191E-319
        -0x7fffffffffff7ffeL    # -1.61905E-319
        -0x7fffffffffffff80L    # -6.32E-322
        0x800a
        -0x7fffffff7ffffff6L    # -1.0609979004E-314
        -0x7fffffff7fff7f7fL    # -1.061014149E-314
        -0x7fffffffffff7f80L    # -1.6253E-319
        0x80000001L
        -0x7fffffff7fff7ff8L    # -1.061014089E-314
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x120

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1a

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->dataQueue:[B

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->init(I)V

    return-void
.end method

.method private init(I)V
    .locals 2

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength must be one of 128, 224, 256, 288, 384, or 512."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    shl-int/lit8 v0, p1, 0x1

    rsub-int v0, v0, 0x640

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->initSponge(I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_0
        0xe0 -> :sswitch_0
        0x100 -> :sswitch_0
        0x120 -> :sswitch_0
        0x180 -> :sswitch_0
        0x200 -> :sswitch_0
    .end sparse-switch
.end method

.method private initSponge(I)V
    .locals 4

    const/4 v1, 0x0

    if-lez p1, :cond_0

    const/16 v0, 0x640

    if-ge p1, v0, :cond_0

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid rate value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->dataQueue:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->bitsInQueue:I

    rsub-int v0, p1, 0x640

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->fixedOutputLength:I

    return-void
.end method

.method private keccakIncAbsorb([BI)V
    .locals 18

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    shr-int/lit8 v4, v3, 0x3

    :goto_0
    move/from16 v0, p2

    int-to-long v6, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v5, 0x19

    aget-wide v8, v3, v5

    add-long/2addr v6, v8

    int-to-long v8, v4

    cmp-long v3, v6, v8

    if-ltz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    int-to-long v6, v3

    int-to-long v8, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v10, 0x19

    aget-wide v10, v5, v10

    sub-long/2addr v8, v10

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v6, 0x19

    aget-wide v6, v5, v6

    int-to-long v8, v3

    add-long/2addr v6, v8

    long-to-int v5, v6

    shr-int/lit8 v5, v5, 0x3

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v8, v6, v5

    add-int v7, v3, v2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v10

    const-wide/16 v12, 0x8

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v14, 0x19

    aget-wide v14, v7, v14

    int-to-long v0, v3

    move-wide/from16 v16, v0

    add-long v14, v14, v16

    const-wide/16 v16, 0x7

    and-long v14, v14, v16

    mul-long/2addr v12, v14

    long-to-int v7, v12

    shl-long/2addr v10, v7

    xor-long/2addr v8, v10

    aput-wide v8, v6, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    move/from16 v0, p2

    int-to-long v6, v0

    int-to-long v8, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v5, 0x19

    aget-wide v10, v3, v5

    sub-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v0, v6

    move/from16 p2, v0

    int-to-long v2, v2

    int-to-long v6, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v8, 0x19

    aget-wide v8, v5, v8

    sub-long/2addr v6, v8

    add-long/2addr v2, v6

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v5, 0x19

    const-wide/16 v6, 0x0

    aput-wide v6, v3, v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakPermutation([J)V

    goto/16 :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_2
    move/from16 v0, p2

    if-ge v3, v0, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v5, 0x19

    aget-wide v4, v4, v5

    int-to-long v6, v3

    add-long/2addr v4, v6

    long-to-int v4, v4

    shr-int/lit8 v4, v4, 0x3

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v6, v5, v4

    add-int v8, v3, v2

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v8

    const-wide/16 v10, 0x8

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v13, 0x19

    aget-wide v12, v12, v13

    int-to-long v14, v3

    add-long/2addr v12, v14

    const-wide/16 v14, 0x7

    and-long/2addr v12, v14

    mul-long/2addr v10, v12

    long-to-int v10, v10

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v3, 0x19

    aget-wide v4, v2, v3

    move/from16 v0, p2

    int-to-long v6, v0

    add-long/2addr v4, v6

    aput-wide v4, v2, v3

    return-void
.end method

.method private keccakIncFinalize(I)V
    .locals 14

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    shr-int/lit8 v0, v0, 0x3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v3, 0x19

    aget-wide v2, v2, v3

    long-to-int v2, v2

    shr-int/lit8 v2, v2, 0x3

    aget-wide v4, v1, v2

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v6

    const-wide/16 v8, 0x8

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v10, 0x19

    aget-wide v10, v3, v10

    const-wide/16 v12, 0x7

    and-long/2addr v10, v12

    mul-long/2addr v8, v10

    long-to-int v3, v8

    shl-long/2addr v6, v3

    xor-long/2addr v4, v6

    aput-wide v4, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    add-int/lit8 v2, v0, -0x1

    shr-int/lit8 v2, v2, 0x3

    aget-wide v4, v1, v2

    const/16 v3, 0x80

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->toUnsignedLong(I)J

    move-result-wide v6

    add-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0x8

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    aput-wide v4, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const/16 v1, 0x19

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    return-void
.end method

.method private keccakIncSqueeze([BI)V
    .locals 13

    const/4 v1, 0x0

    const/16 v12, 0x19

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->rate:I

    shr-int/lit8 v4, v0, 0x3

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    int-to-long v2, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v6, v5, v12

    cmp-long v2, v2, v6

    if-gez v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    int-to-long v6, v4

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v8, v3, v12

    sub-long/2addr v6, v8

    int-to-long v8, v0

    add-long/2addr v6, v8

    const/4 v3, 0x3

    shr-long/2addr v6, v3

    long-to-int v3, v6

    aget-wide v2, v2, v3

    const-wide/16 v6, 0x8

    int-to-long v8, v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v10, v5, v12

    sub-long/2addr v8, v10

    int-to-long v10, v0

    add-long/2addr v8, v10

    const-wide/16 v10, 0x7

    and-long/2addr v8, v10

    mul-long/2addr v6, v8

    long-to-int v5, v6

    shr-long/2addr v2, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int v3, p2, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    aget-wide v6, v2, v12

    int-to-long v8, v0

    sub-long/2addr v6, v8

    aput-wide v6, v2, v12

    move v2, v0

    :goto_1
    if-lez v3, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakPermutation([J)V

    move v0, v1

    :goto_2
    if-ge v0, v3, :cond_1

    if-ge v0, v4, :cond_1

    add-int v5, v2, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    shr-int/lit8 v7, v0, 0x3

    aget-wide v6, v6, v7

    and-int/lit8 v8, v0, 0x7

    mul-int/lit8 v8, v8, 0x8

    shr-long/2addr v6, v8

    long-to-int v6, v6

    int-to-byte v6, v6

    aput-byte v6, p1, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/2addr v2, v0

    sub-int/2addr v3, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    sub-int v0, v4, v0

    int-to-long v6, v0

    aput-wide v6, v5, v12

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static keccakPermutation([J)V
    .locals 72

    const/4 v0, 0x0

    aget-wide v50, p0, v0

    const/4 v0, 0x1

    aget-wide v48, p0, v0

    const/4 v0, 0x2

    aget-wide v46, p0, v0

    const/4 v0, 0x3

    aget-wide v44, p0, v0

    const/4 v0, 0x4

    aget-wide v42, p0, v0

    const/4 v0, 0x5

    aget-wide v40, p0, v0

    const/4 v0, 0x6

    aget-wide v38, p0, v0

    const/4 v0, 0x7

    aget-wide v36, p0, v0

    const/16 v0, 0x8

    aget-wide v34, p0, v0

    const/16 v0, 0x9

    aget-wide v32, p0, v0

    const/16 v0, 0xa

    aget-wide v30, p0, v0

    const/16 v0, 0xb

    aget-wide v28, p0, v0

    const/16 v0, 0xc

    aget-wide v26, p0, v0

    const/16 v0, 0xd

    aget-wide v24, p0, v0

    const/16 v0, 0xe

    aget-wide v22, p0, v0

    const/16 v0, 0xf

    aget-wide v20, p0, v0

    const/16 v0, 0x10

    aget-wide v18, p0, v0

    const/16 v0, 0x11

    aget-wide v16, p0, v0

    const/16 v0, 0x12

    aget-wide v14, p0, v0

    const/16 v0, 0x13

    aget-wide v12, p0, v0

    const/16 v0, 0x14

    aget-wide v10, p0, v0

    const/16 v0, 0x15

    aget-wide v8, p0, v0

    const/16 v0, 0x16

    aget-wide v6, p0, v0

    const/16 v0, 0x17

    aget-wide v4, p0, v0

    const/16 v0, 0x18

    aget-wide v2, p0, v0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    xor-long v52, v50, v40

    xor-long v52, v52, v30

    xor-long v52, v52, v20

    xor-long v52, v52, v10

    xor-long v54, v48, v38

    xor-long v54, v54, v28

    xor-long v54, v54, v18

    xor-long v54, v54, v8

    xor-long v56, v46, v36

    xor-long v56, v56, v26

    xor-long v56, v56, v16

    xor-long v56, v56, v6

    xor-long v58, v44, v34

    xor-long v58, v58, v24

    xor-long v58, v58, v14

    xor-long v58, v58, v4

    xor-long v60, v42, v32

    xor-long v60, v60, v22

    xor-long v60, v60, v12

    xor-long v60, v60, v2

    const/4 v1, 0x1

    shl-long v62, v54, v1

    const/4 v1, -0x1

    ushr-long v64, v54, v1

    or-long v62, v62, v64

    xor-long v62, v62, v60

    const/4 v1, 0x1

    shl-long v64, v56, v1

    const/4 v1, -0x1

    ushr-long v66, v56, v1

    or-long v64, v64, v66

    xor-long v64, v64, v52

    const/4 v1, 0x1

    shl-long v66, v58, v1

    const/4 v1, -0x1

    ushr-long v68, v58, v1

    or-long v66, v66, v68

    xor-long v54, v54, v66

    const/4 v1, 0x1

    shl-long v66, v60, v1

    const/4 v1, -0x1

    ushr-long v60, v60, v1

    or-long v60, v60, v66

    xor-long v56, v56, v60

    const/4 v1, 0x1

    shl-long v60, v52, v1

    const/4 v1, -0x1

    ushr-long v52, v52, v1

    or-long v52, v52, v60

    xor-long v52, v52, v58

    xor-long v50, v50, v62

    xor-long v40, v40, v62

    xor-long v30, v30, v62

    xor-long v20, v20, v62

    xor-long v10, v10, v62

    xor-long v48, v48, v64

    xor-long v38, v38, v64

    xor-long v28, v28, v64

    xor-long v18, v18, v64

    xor-long v8, v8, v64

    xor-long v46, v46, v54

    xor-long v36, v36, v54

    xor-long v26, v26, v54

    xor-long v16, v16, v54

    xor-long v6, v6, v54

    xor-long v44, v44, v56

    xor-long v34, v34, v56

    xor-long v24, v24, v56

    xor-long v14, v14, v56

    xor-long v4, v4, v56

    xor-long v42, v42, v52

    xor-long v32, v32, v52

    xor-long v22, v22, v52

    xor-long v12, v12, v52

    xor-long v2, v2, v52

    const/4 v1, 0x1

    shl-long v52, v48, v1

    const/16 v1, 0x3f

    ushr-long v48, v48, v1

    or-long v52, v52, v48

    const/16 v1, 0x2c

    shl-long v48, v38, v1

    const/16 v1, 0x14

    ushr-long v38, v38, v1

    or-long v38, v38, v48

    const/16 v1, 0x14

    shl-long v48, v32, v1

    const/16 v1, 0x2c

    ushr-long v32, v32, v1

    or-long v32, v32, v48

    const/16 v1, 0x3d

    shl-long v48, v6, v1

    const/4 v1, 0x3

    ushr-long/2addr v6, v1

    or-long v6, v6, v48

    const/16 v1, 0x27

    shl-long v48, v22, v1

    const/16 v1, 0x19

    ushr-long v22, v22, v1

    or-long v54, v48, v22

    const/16 v1, 0x12

    shl-long v22, v10, v1

    const/16 v1, 0x2e

    ushr-long/2addr v10, v1

    or-long v10, v10, v22

    const/16 v1, 0x3e

    shl-long v22, v46, v1

    const/4 v1, 0x2

    ushr-long v46, v46, v1

    or-long v56, v22, v46

    const/16 v1, 0x2b

    shl-long v22, v26, v1

    const/16 v1, 0x15

    ushr-long v26, v26, v1

    or-long v22, v22, v26

    const/16 v1, 0x19

    shl-long v26, v24, v1

    const/16 v1, 0x27

    ushr-long v24, v24, v1

    or-long v24, v24, v26

    const/16 v1, 0x8

    shl-long v26, v12, v1

    const/16 v1, 0x38

    ushr-long/2addr v12, v1

    or-long v12, v12, v26

    const/16 v1, 0x38

    shl-long v26, v4, v1

    const/16 v1, 0x8

    ushr-long/2addr v4, v1

    or-long v4, v4, v26

    const/16 v1, 0x29

    shl-long v26, v20, v1

    const/16 v1, 0x17

    ushr-long v20, v20, v1

    or-long v58, v26, v20

    const/16 v1, 0x1b

    shl-long v20, v42, v1

    const/16 v1, 0x25

    ushr-long v26, v42, v1

    or-long v60, v20, v26

    const/16 v1, 0xe

    shl-long v20, v2, v1

    const/16 v1, 0x32

    ushr-long/2addr v2, v1

    or-long v2, v2, v20

    const/4 v1, 0x2

    shl-long v20, v8, v1

    const/16 v1, 0x3e

    ushr-long/2addr v8, v1

    or-long v62, v20, v8

    const/16 v1, 0x37

    shl-long v8, v34, v1

    const/16 v1, 0x9

    ushr-long v20, v34, v1

    or-long v64, v8, v20

    const/16 v1, 0x2d

    shl-long v8, v18, v1

    const/16 v1, 0x13

    ushr-long v18, v18, v1

    or-long v8, v8, v18

    const/16 v1, 0x24

    shl-long v18, v40, v1

    const/16 v1, 0x1c

    ushr-long v20, v40, v1

    or-long v66, v18, v20

    const/16 v1, 0x1c

    shl-long v18, v44, v1

    const/16 v1, 0x24

    ushr-long v20, v44, v1

    or-long v18, v18, v20

    const/16 v1, 0x15

    shl-long v20, v14, v1

    const/16 v1, 0x2b

    ushr-long/2addr v14, v1

    or-long v14, v14, v20

    const/16 v1, 0xf

    shl-long v20, v16, v1

    const/16 v1, 0x31

    ushr-long v16, v16, v1

    or-long v68, v20, v16

    const/16 v1, 0xa

    shl-long v16, v28, v1

    const/16 v1, 0x36

    ushr-long v20, v28, v1

    or-long v16, v16, v20

    const/4 v1, 0x6

    shl-long v20, v36, v1

    const/16 v1, 0x3a

    ushr-long v26, v36, v1

    or-long v20, v20, v26

    const/4 v1, 0x3

    shl-long v26, v30, v1

    const/16 v1, 0x3d

    ushr-long v28, v30, v1

    or-long v26, v26, v28

    const-wide/16 v28, -0x1

    xor-long v28, v28, v38

    and-long v28, v28, v22

    xor-long v70, v50, v28

    const-wide/16 v28, -0x1

    xor-long v28, v28, v22

    and-long v28, v28, v14

    xor-long v48, v38, v28

    const-wide/16 v28, -0x1

    xor-long v28, v28, v14

    and-long v28, v28, v2

    xor-long v46, v22, v28

    const-wide/16 v22, -0x1

    xor-long v22, v22, v2

    and-long v22, v22, v50

    xor-long v44, v14, v22

    const-wide/16 v14, -0x1

    xor-long v14, v14, v50

    and-long v14, v14, v38

    xor-long v42, v2, v14

    const-wide/16 v2, -0x1

    xor-long v2, v2, v32

    and-long v2, v2, v26

    xor-long v40, v18, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v26

    and-long/2addr v2, v8

    xor-long v38, v32, v2

    const-wide/16 v2, -0x1

    xor-long/2addr v2, v8

    and-long/2addr v2, v6

    xor-long v36, v26, v2

    const-wide/16 v2, -0x1

    xor-long/2addr v2, v6

    and-long v2, v2, v18

    xor-long v34, v8, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v18

    and-long v2, v2, v32

    xor-long v32, v6, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v20

    and-long v2, v2, v24

    xor-long v30, v52, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v24

    and-long/2addr v2, v12

    xor-long v28, v20, v2

    const-wide/16 v2, -0x1

    xor-long/2addr v2, v12

    and-long/2addr v2, v10

    xor-long v26, v24, v2

    const-wide/16 v2, -0x1

    xor-long/2addr v2, v10

    and-long v2, v2, v52

    xor-long v24, v12, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v52

    and-long v2, v2, v20

    xor-long v22, v10, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v66

    and-long v2, v2, v16

    xor-long v20, v60, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v16

    and-long v2, v2, v68

    xor-long v18, v66, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v68

    and-long/2addr v2, v4

    xor-long v16, v16, v2

    const-wide/16 v2, -0x1

    xor-long/2addr v2, v4

    and-long v2, v2, v60

    xor-long v14, v68, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v60

    and-long v2, v2, v66

    xor-long v12, v4, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v64

    and-long v2, v2, v54

    xor-long v10, v56, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v54

    and-long v2, v2, v58

    xor-long v8, v64, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v58

    and-long v2, v2, v62

    xor-long v6, v54, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v62

    and-long v2, v2, v56

    xor-long v4, v58, v2

    const-wide/16 v2, -0x1

    xor-long v2, v2, v56

    and-long v2, v2, v64

    xor-long v2, v2, v62

    sget-object v1, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->KeccakRoundConstants:[J

    aget-wide v50, v1, v0

    xor-long v50, v50, v70

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    aput-wide v50, p0, v0

    const/4 v0, 0x1

    aput-wide v48, p0, v0

    const/4 v0, 0x2

    aput-wide v46, p0, v0

    const/4 v0, 0x3

    aput-wide v44, p0, v0

    const/4 v0, 0x4

    aput-wide v42, p0, v0

    const/4 v0, 0x5

    aput-wide v40, p0, v0

    const/4 v0, 0x6

    aput-wide v38, p0, v0

    const/4 v0, 0x7

    aput-wide v36, p0, v0

    const/16 v0, 0x8

    aput-wide v34, p0, v0

    const/16 v0, 0x9

    aput-wide v32, p0, v0

    const/16 v0, 0xa

    aput-wide v30, p0, v0

    const/16 v0, 0xb

    aput-wide v28, p0, v0

    const/16 v0, 0xc

    aput-wide v26, p0, v0

    const/16 v0, 0xd

    aput-wide v24, p0, v0

    const/16 v0, 0xe

    aput-wide v22, p0, v0

    const/16 v0, 0xf

    aput-wide v20, p0, v0

    const/16 v0, 0x10

    aput-wide v18, p0, v0

    const/16 v0, 0x11

    aput-wide v16, p0, v0

    const/16 v0, 0x12

    aput-wide v14, p0, v0

    const/16 v0, 0x13

    aput-wide v12, p0, v0

    const/16 v0, 0x14

    aput-wide v10, p0, v0

    const/16 v0, 0x15

    aput-wide v8, p0, v0

    const/16 v0, 0x16

    aput-wide v6, p0, v0

    const/16 v0, 0x17

    aput-wide v4, p0, v0

    const/16 v0, 0x18

    aput-wide v2, p0, v0

    return-void
.end method

.method private static toUnsignedLong(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public SHAKE256_512_ds([B[BI[B)V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->state:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    array-length v0, p4

    invoke-direct {p0, p4, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    const/16 v0, 0x40

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    return-void
.end method

.method public expandSeed([BI)V
    .locals 4

    const/16 v2, 0x8

    and-int/lit8 v0, p2, 0x7

    sub-int v1, p2, v0

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    if-eqz v0, :cond_0

    new-array v1, v2, [B

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-static {v1, v2, p1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public randomGeneratorInit([B[BII)V
    .locals 3

    const/4 v2, 0x1

    new-array v0, v2, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    invoke-direct {p0, p1, p3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    invoke-direct {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    array-length v1, v0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    return-void
.end method

.method public seedExpanderInit([BI)V
    .locals 4

    const/4 v3, 0x1

    new-array v0, v3, [B

    const/4 v1, 0x0

    const/4 v2, 0x2

    aput-byte v2, v0, v1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncAbsorb([BI)V

    const/16 v0, 0x1f

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncFinalize(I)V

    return-void
.end method

.method public squeeze([BI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/hqc/KeccakRandomGenerator;->keccakIncSqueeze([BI)V

    return-void
.end method
