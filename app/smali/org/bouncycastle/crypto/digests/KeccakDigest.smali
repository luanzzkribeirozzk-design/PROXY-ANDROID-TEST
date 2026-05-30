.class public Lorg/bouncycastle/crypto/digests/KeccakDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field protected bitsInQueue:I

.field protected dataQueue:[B

.field protected fixedOutputLength:I

.field protected final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field protected rate:I

.field protected squeezing:Z

.field protected state:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

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
    .locals 2

    const/16 v0, 0x120

    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iput-object p2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->init(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1

    const/16 v0, 0x120

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;-><init>(ILorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/KeccakDigest;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const/16 v0, 0xc0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget-object v2, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    iget-boolean v0, p1, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method private KeccakAbsorb([BI)V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    ushr-int/lit8 v1, v0, 0x6

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v4, v2, v0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    return-void
.end method

.method private KeccakExtract()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakPermutation()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    ushr-int/lit8 v1, v1, 0x6

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v0, v3, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    return-void
.end method

.method private KeccakPermutation()V
    .locals 74

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const/4 v2, 0x0

    aget-wide v52, v3, v2

    const/4 v2, 0x1

    aget-wide v50, v3, v2

    const/4 v2, 0x2

    aget-wide v48, v3, v2

    const/4 v2, 0x3

    aget-wide v46, v3, v2

    const/4 v2, 0x4

    aget-wide v44, v3, v2

    const/4 v2, 0x5

    aget-wide v42, v3, v2

    const/4 v2, 0x6

    aget-wide v40, v3, v2

    const/4 v2, 0x7

    aget-wide v38, v3, v2

    const/16 v2, 0x8

    aget-wide v36, v3, v2

    const/16 v2, 0x9

    aget-wide v34, v3, v2

    const/16 v2, 0xa

    aget-wide v32, v3, v2

    const/16 v2, 0xb

    aget-wide v30, v3, v2

    const/16 v2, 0xc

    aget-wide v28, v3, v2

    const/16 v2, 0xd

    aget-wide v26, v3, v2

    const/16 v2, 0xe

    aget-wide v24, v3, v2

    const/16 v2, 0xf

    aget-wide v22, v3, v2

    const/16 v2, 0x10

    aget-wide v20, v3, v2

    const/16 v2, 0x11

    aget-wide v18, v3, v2

    const/16 v2, 0x12

    aget-wide v16, v3, v2

    const/16 v2, 0x13

    aget-wide v14, v3, v2

    const/16 v2, 0x14

    aget-wide v12, v3, v2

    const/16 v2, 0x15

    aget-wide v10, v3, v2

    const/16 v2, 0x16

    aget-wide v8, v3, v2

    const/16 v2, 0x17

    aget-wide v6, v3, v2

    const/16 v2, 0x18

    aget-wide v4, v3, v2

    const/4 v2, 0x0

    :goto_0
    const/16 v54, 0x18

    move/from16 v0, v54

    if-ge v2, v0, :cond_0

    xor-long v54, v52, v42

    xor-long v54, v54, v32

    xor-long v54, v54, v22

    xor-long v54, v54, v12

    xor-long v56, v50, v40

    xor-long v56, v56, v30

    xor-long v56, v56, v20

    xor-long v56, v56, v10

    xor-long v58, v48, v38

    xor-long v58, v58, v28

    xor-long v58, v58, v18

    xor-long v58, v58, v8

    xor-long v60, v46, v36

    xor-long v60, v60, v26

    xor-long v60, v60, v16

    xor-long v60, v60, v6

    xor-long v62, v44, v34

    xor-long v62, v62, v24

    xor-long v62, v62, v14

    xor-long v62, v62, v4

    const/16 v64, 0x1

    shl-long v64, v56, v64

    const/16 v66, -0x1

    ushr-long v66, v56, v66

    or-long v64, v64, v66

    xor-long v64, v64, v62

    const/16 v66, 0x1

    shl-long v66, v58, v66

    const/16 v68, -0x1

    ushr-long v68, v58, v68

    or-long v66, v66, v68

    xor-long v66, v66, v54

    const/16 v68, 0x1

    shl-long v68, v60, v68

    const/16 v70, -0x1

    ushr-long v70, v60, v70

    or-long v68, v68, v70

    xor-long v56, v56, v68

    const/16 v68, 0x1

    shl-long v68, v62, v68

    const/16 v70, -0x1

    ushr-long v62, v62, v70

    or-long v62, v62, v68

    xor-long v58, v58, v62

    const/16 v62, 0x1

    shl-long v62, v54, v62

    const/16 v68, -0x1

    ushr-long v54, v54, v68

    or-long v54, v54, v62

    xor-long v54, v54, v60

    xor-long v52, v52, v64

    xor-long v42, v42, v64

    xor-long v32, v32, v64

    xor-long v22, v22, v64

    xor-long v12, v12, v64

    xor-long v50, v50, v66

    xor-long v40, v40, v66

    xor-long v30, v30, v66

    xor-long v20, v20, v66

    xor-long v10, v10, v66

    xor-long v48, v48, v56

    xor-long v38, v38, v56

    xor-long v28, v28, v56

    xor-long v18, v18, v56

    xor-long v8, v8, v56

    xor-long v46, v46, v58

    xor-long v36, v36, v58

    xor-long v26, v26, v58

    xor-long v16, v16, v58

    xor-long v6, v6, v58

    xor-long v44, v44, v54

    xor-long v34, v34, v54

    xor-long v24, v24, v54

    xor-long v14, v14, v54

    xor-long v4, v4, v54

    const/16 v54, 0x1

    shl-long v54, v50, v54

    const/16 v56, 0x3f

    ushr-long v50, v50, v56

    or-long v54, v54, v50

    const/16 v50, 0x2c

    shl-long v50, v40, v50

    const/16 v56, 0x14

    ushr-long v40, v40, v56

    or-long v40, v40, v50

    const/16 v50, 0x14

    shl-long v50, v34, v50

    const/16 v56, 0x2c

    ushr-long v34, v34, v56

    or-long v34, v34, v50

    const/16 v50, 0x3d

    shl-long v50, v8, v50

    const/16 v56, 0x3

    ushr-long v8, v8, v56

    or-long v8, v8, v50

    const/16 v50, 0x27

    shl-long v50, v24, v50

    const/16 v56, 0x19

    ushr-long v24, v24, v56

    or-long v56, v50, v24

    const/16 v24, 0x12

    shl-long v24, v12, v24

    const/16 v50, 0x2e

    ushr-long v12, v12, v50

    or-long v12, v12, v24

    const/16 v24, 0x3e

    shl-long v24, v48, v24

    const/16 v50, 0x2

    ushr-long v48, v48, v50

    or-long v58, v24, v48

    const/16 v24, 0x2b

    shl-long v24, v28, v24

    const/16 v48, 0x15

    ushr-long v28, v28, v48

    or-long v24, v24, v28

    const/16 v28, 0x19

    shl-long v28, v26, v28

    const/16 v48, 0x27

    ushr-long v26, v26, v48

    or-long v26, v26, v28

    const/16 v28, 0x8

    shl-long v28, v14, v28

    const/16 v48, 0x38

    ushr-long v14, v14, v48

    or-long v14, v14, v28

    const/16 v28, 0x38

    shl-long v28, v6, v28

    const/16 v48, 0x8

    ushr-long v6, v6, v48

    or-long v6, v6, v28

    const/16 v28, 0x29

    shl-long v28, v22, v28

    const/16 v48, 0x17

    ushr-long v22, v22, v48

    or-long v60, v28, v22

    const/16 v22, 0x1b

    shl-long v22, v44, v22

    const/16 v28, 0x25

    ushr-long v28, v44, v28

    or-long v62, v22, v28

    const/16 v22, 0xe

    shl-long v22, v4, v22

    const/16 v28, 0x32

    ushr-long v4, v4, v28

    or-long v4, v4, v22

    const/16 v22, 0x2

    shl-long v22, v10, v22

    const/16 v28, 0x3e

    ushr-long v10, v10, v28

    or-long v64, v22, v10

    const/16 v10, 0x37

    shl-long v10, v36, v10

    const/16 v22, 0x9

    ushr-long v22, v36, v22

    or-long v66, v10, v22

    const/16 v10, 0x2d

    shl-long v10, v20, v10

    const/16 v22, 0x13

    ushr-long v20, v20, v22

    or-long v10, v10, v20

    const/16 v20, 0x24

    shl-long v20, v42, v20

    const/16 v22, 0x1c

    ushr-long v22, v42, v22

    or-long v68, v20, v22

    const/16 v20, 0x1c

    shl-long v20, v46, v20

    const/16 v22, 0x24

    ushr-long v22, v46, v22

    or-long v20, v20, v22

    const/16 v22, 0x15

    shl-long v22, v16, v22

    const/16 v28, 0x2b

    ushr-long v16, v16, v28

    or-long v16, v16, v22

    const/16 v22, 0xf

    shl-long v22, v18, v22

    const/16 v28, 0x31

    ushr-long v18, v18, v28

    or-long v70, v22, v18

    const/16 v18, 0xa

    shl-long v18, v30, v18

    const/16 v22, 0x36

    ushr-long v22, v30, v22

    or-long v18, v18, v22

    const/16 v22, 0x6

    shl-long v22, v38, v22

    const/16 v28, 0x3a

    ushr-long v28, v38, v28

    or-long v22, v22, v28

    const/16 v28, 0x3

    shl-long v28, v32, v28

    const/16 v30, 0x3d

    ushr-long v30, v32, v30

    or-long v28, v28, v30

    const-wide/16 v30, -0x1

    xor-long v30, v30, v40

    and-long v30, v30, v24

    xor-long v72, v52, v30

    const-wide/16 v30, -0x1

    xor-long v30, v30, v24

    and-long v30, v30, v16

    xor-long v50, v40, v30

    const-wide/16 v30, -0x1

    xor-long v30, v30, v16

    and-long v30, v30, v4

    xor-long v48, v24, v30

    const-wide/16 v24, -0x1

    xor-long v24, v24, v4

    and-long v24, v24, v52

    xor-long v46, v16, v24

    const-wide/16 v16, -0x1

    xor-long v16, v16, v52

    and-long v16, v16, v40

    xor-long v44, v4, v16

    const-wide/16 v4, -0x1

    xor-long v4, v4, v34

    and-long v4, v4, v28

    xor-long v42, v20, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v28

    and-long/2addr v4, v10

    xor-long v40, v34, v4

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v10

    and-long/2addr v4, v8

    xor-long v38, v28, v4

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v8

    and-long v4, v4, v20

    xor-long v36, v10, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v20

    and-long v4, v4, v34

    xor-long v34, v8, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v22

    and-long v4, v4, v26

    xor-long v32, v54, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v26

    and-long/2addr v4, v14

    xor-long v30, v22, v4

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v14

    and-long/2addr v4, v12

    xor-long v28, v26, v4

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v12

    and-long v4, v4, v54

    xor-long v26, v14, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v54

    and-long v4, v4, v22

    xor-long v24, v12, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v68

    and-long v4, v4, v18

    xor-long v22, v62, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v18

    and-long v4, v4, v70

    xor-long v20, v68, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v70

    and-long/2addr v4, v6

    xor-long v18, v18, v4

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v6

    and-long v4, v4, v62

    xor-long v16, v70, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v62

    and-long v4, v4, v68

    xor-long v14, v6, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v66

    and-long v4, v4, v56

    xor-long v12, v58, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v56

    and-long v4, v4, v60

    xor-long v10, v66, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v60

    and-long v4, v4, v64

    xor-long v8, v56, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v64

    and-long v4, v4, v58

    xor-long v6, v60, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v58

    and-long v4, v4, v66

    xor-long v4, v4, v64

    sget-object v52, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakRoundConstants:[J

    aget-wide v52, v52, v2

    xor-long v52, v52, v72

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    aput-wide v52, v3, v2

    const/4 v2, 0x1

    aput-wide v50, v3, v2

    const/4 v2, 0x2

    aput-wide v48, v3, v2

    const/4 v2, 0x3

    aput-wide v46, v3, v2

    const/4 v2, 0x4

    aput-wide v44, v3, v2

    const/4 v2, 0x5

    aput-wide v42, v3, v2

    const/4 v2, 0x6

    aput-wide v40, v3, v2

    const/4 v2, 0x7

    aput-wide v38, v3, v2

    const/16 v2, 0x8

    aput-wide v36, v3, v2

    const/16 v2, 0x9

    aput-wide v34, v3, v2

    const/16 v2, 0xa

    aput-wide v32, v3, v2

    const/16 v2, 0xb

    aput-wide v30, v3, v2

    const/16 v2, 0xc

    aput-wide v28, v3, v2

    const/16 v2, 0xd

    aput-wide v26, v3, v2

    const/16 v2, 0xe

    aput-wide v24, v3, v2

    const/16 v2, 0xf

    aput-wide v22, v3, v2

    const/16 v2, 0x10

    aput-wide v20, v3, v2

    const/16 v2, 0x11

    aput-wide v18, v3, v2

    const/16 v2, 0x12

    aput-wide v16, v3, v2

    const/16 v2, 0x13

    aput-wide v14, v3, v2

    const/16 v2, 0x14

    aput-wide v12, v3, v2

    const/16 v2, 0x15

    aput-wide v10, v3, v2

    const/16 v2, 0x16

    aput-wide v8, v3, v2

    const/16 v2, 0x17

    aput-wide v6, v3, v2

    const/16 v2, 0x18

    aput-wide v4, v3, v2

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

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->initSponge(I)V

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
    .locals 6

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
    iput p1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    rsub-int v0, p1, 0x640

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    return-void
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 14

    const-wide/16 v12, 0x1

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v2, v2, 0x3

    aget-byte v3, v0, v2

    iget v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    and-int/lit8 v4, v4, 0x7

    shl-int v4, v10, v4

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    add-int/lit8 v2, v2, -0x1

    ushr-int/lit8 v2, v2, 0x6

    aget-wide v4, v0, v2

    const-wide/high16 v6, -0x8000000000000000L

    xor-long/2addr v4, v6

    aput-wide v4, v0, v2

    iput v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iput-boolean v10, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    return-void

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v3, v0, 0x6

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    and-int/lit8 v4, v0, 0x3f

    move v0, v1

    move v2, v1

    :goto_1
    if-ge v0, v3, :cond_2

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v6, v5, v0

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v8, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v8

    xor-long/2addr v6, v8

    aput-wide v6, v5, v0

    add-int/lit8 v2, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-lez v4, :cond_0

    shl-long v4, v12, v4

    sub-long/2addr v4, v12

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->state:[J

    aget-wide v6, v0, v3

    iget-object v8, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {v8, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v8

    and-long/2addr v4, v8

    xor-long/2addr v4, v6

    aput-wide v4, v0, v3

    goto :goto_0
.end method


# virtual methods
.method protected absorb(B)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb with odd length queue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v1, v1, 0x3

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    iput v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    :cond_2
    return-void
.end method

.method protected absorb([BII)V
    .locals 5

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb with odd length queue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v0, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    ushr-int/lit8 v2, v2, 0x3

    sub-int v3, v2, v0

    if-ge p3, v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, p2, v1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    shl-int/lit8 v1, p3, 0x3

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    :goto_0
    return-void

    :cond_2
    if-lez v0, :cond_4

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, p2, v4, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, v1, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-direct {p0, v3, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    :goto_1
    sub-int v3, p3, v0

    if-lt v3, v2, :cond_3

    add-int v3, p2, v0

    invoke-direct {p0, p1, v3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakAbsorb([BI)V

    add-int/2addr v0, v2

    goto :goto_1

    :cond_3
    add-int/2addr v0, p2

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    invoke-static {p1, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    shl-int/lit8 v0, v3, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected absorbBits(II)V
    .locals 3

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    const/4 v0, 0x7

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'bits\' must be in the range 1 to 7"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb with odd length queue"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    shl-int v0, v1, p2

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    ushr-int/lit8 v2, v2, 0x3

    and-int/2addr v0, p1

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    add-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    return-void
.end method

.method protected cryptoServiceProperties()Lorg/bouncycastle/crypto/CryptoServiceProperties;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method protected doFinal([BIBI)I
    .locals 2

    if-lez p4, :cond_0

    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorbBits(II)V

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeeze([BIJ)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->reset()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Keccak-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->fixedOutputLength:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->init(I)V

    return-void
.end method

.method protected squeeze([BIJ)V
    .locals 11

    const-wide/16 v8, 0x8

    const-wide/16 v0, 0x0

    iget-boolean v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->squeezing:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->padAndSwitchToSqueezingPhase()V

    :cond_0
    rem-long v2, p3, v8

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "outputLength not a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    cmp-long v2, v0, p3

    if-gez v2, :cond_3

    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    if-nez v2, :cond_2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->KeccakExtract()V

    :cond_2
    iget v2, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v2, v2

    sub-long v4, p3, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v2, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->dataQueue:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->rate:I

    iget v5, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x8

    div-long v6, v0, v8

    long-to-int v5, v6

    add-int/2addr v5, p2

    div-int/lit8 v6, v2, 0x8

    invoke-static {v3, v4, p1, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    sub-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/digests/KeccakDigest;->bitsInQueue:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0

    :cond_3
    return-void
.end method

.method public update(B)V
    .locals 0

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorb(B)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/KeccakDigest;->absorb([BII)V

    return-void
.end method
