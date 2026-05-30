.class Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Kangaroo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KangarooSponge"
.end annotation


# static fields
.field private static KeccakRoundConstants:[J


# instance fields
.field private bytesInQueue:I

.field private squeezing:Z

.field private final theQueue:[B

.field private final theRateBytes:I

.field private final theRounds:I

.field private final theState:[J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

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

.method constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    shl-int/lit8 v0, p1, 0x1

    rsub-int v0, v0, 0x640

    shr-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput p2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->initSponge()V

    return-void
.end method

.method private KangarooAbsorb([BI)V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    shr-int/lit8 v1, v0, 0x3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    aget-wide v4, v2, v0

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v6

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    add-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooPermutation()V

    return-void
.end method

.method private KangarooExtract()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    shr-int/lit8 v1, v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-static {v0, v3, v1, v2, v3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([JII[BI)V

    return-void
.end method

.method private KangarooPermutation()V
    .locals 76

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

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

    sget-object v2, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    array-length v2, v2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    move/from16 v54, v0

    sub-int v54, v2, v54

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRounds:I

    move/from16 v55, v0

    move/from16 v0, v55

    if-ge v2, v0, :cond_0

    xor-long v56, v52, v42

    xor-long v56, v56, v32

    xor-long v56, v56, v22

    xor-long v56, v56, v12

    xor-long v58, v50, v40

    xor-long v58, v58, v30

    xor-long v58, v58, v20

    xor-long v58, v58, v10

    xor-long v60, v48, v38

    xor-long v60, v60, v28

    xor-long v60, v60, v18

    xor-long v60, v60, v8

    xor-long v62, v46, v36

    xor-long v62, v62, v26

    xor-long v62, v62, v16

    xor-long v62, v62, v6

    xor-long v64, v44, v34

    xor-long v64, v64, v24

    xor-long v64, v64, v14

    xor-long v64, v64, v4

    const/16 v55, 0x1

    shl-long v66, v58, v55

    const/16 v55, -0x1

    ushr-long v68, v58, v55

    or-long v66, v66, v68

    xor-long v66, v66, v64

    const/16 v55, 0x1

    shl-long v68, v60, v55

    const/16 v55, -0x1

    ushr-long v70, v60, v55

    or-long v68, v68, v70

    xor-long v68, v68, v56

    const/16 v55, 0x1

    shl-long v70, v62, v55

    const/16 v55, -0x1

    ushr-long v72, v62, v55

    or-long v70, v70, v72

    xor-long v58, v58, v70

    const/16 v55, 0x1

    shl-long v70, v64, v55

    const/16 v55, -0x1

    ushr-long v64, v64, v55

    or-long v64, v64, v70

    xor-long v60, v60, v64

    const/16 v55, 0x1

    shl-long v64, v56, v55

    const/16 v55, -0x1

    ushr-long v56, v56, v55

    or-long v56, v56, v64

    xor-long v56, v56, v62

    xor-long v52, v52, v66

    xor-long v42, v42, v66

    xor-long v32, v32, v66

    xor-long v22, v22, v66

    xor-long v12, v12, v66

    xor-long v50, v50, v68

    xor-long v40, v40, v68

    xor-long v30, v30, v68

    xor-long v20, v20, v68

    xor-long v10, v10, v68

    xor-long v48, v48, v58

    xor-long v38, v38, v58

    xor-long v28, v28, v58

    xor-long v18, v18, v58

    xor-long v8, v8, v58

    xor-long v46, v46, v60

    xor-long v36, v36, v60

    xor-long v26, v26, v60

    xor-long v16, v16, v60

    xor-long v6, v6, v60

    xor-long v44, v44, v56

    xor-long v34, v34, v56

    xor-long v24, v24, v56

    xor-long v14, v14, v56

    xor-long v4, v4, v56

    const/16 v55, 0x1

    shl-long v56, v50, v55

    const/16 v55, 0x3f

    ushr-long v50, v50, v55

    or-long v56, v56, v50

    const/16 v50, 0x2c

    shl-long v50, v40, v50

    const/16 v55, 0x14

    ushr-long v40, v40, v55

    or-long v40, v40, v50

    const/16 v50, 0x14

    shl-long v50, v34, v50

    const/16 v55, 0x2c

    ushr-long v34, v34, v55

    or-long v34, v34, v50

    const/16 v50, 0x3d

    shl-long v50, v8, v50

    const/16 v55, 0x3

    ushr-long v8, v8, v55

    or-long v8, v8, v50

    const/16 v50, 0x27

    shl-long v50, v24, v50

    const/16 v55, 0x19

    ushr-long v24, v24, v55

    or-long v58, v50, v24

    const/16 v24, 0x12

    shl-long v24, v12, v24

    const/16 v50, 0x2e

    ushr-long v12, v12, v50

    or-long v12, v12, v24

    const/16 v24, 0x3e

    shl-long v24, v48, v24

    const/16 v50, 0x2

    ushr-long v48, v48, v50

    or-long v60, v24, v48

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

    or-long v62, v28, v22

    const/16 v22, 0x1b

    shl-long v22, v44, v22

    const/16 v28, 0x25

    ushr-long v28, v44, v28

    or-long v64, v22, v28

    const/16 v22, 0xe

    shl-long v22, v4, v22

    const/16 v28, 0x32

    ushr-long v4, v4, v28

    or-long v4, v4, v22

    const/16 v22, 0x2

    shl-long v22, v10, v22

    const/16 v28, 0x3e

    ushr-long v10, v10, v28

    or-long v66, v22, v10

    const/16 v10, 0x37

    shl-long v10, v36, v10

    const/16 v22, 0x9

    ushr-long v22, v36, v22

    or-long v68, v10, v22

    const/16 v10, 0x2d

    shl-long v10, v20, v10

    const/16 v22, 0x13

    ushr-long v20, v20, v22

    or-long v10, v10, v20

    const/16 v20, 0x24

    shl-long v20, v42, v20

    const/16 v22, 0x1c

    ushr-long v22, v42, v22

    or-long v70, v20, v22

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

    or-long v72, v22, v18

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

    xor-long v74, v52, v30

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

    xor-long v32, v56, v4

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

    and-long v4, v4, v56

    xor-long v26, v14, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v56

    and-long v4, v4, v22

    xor-long v24, v12, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v70

    and-long v4, v4, v18

    xor-long v22, v64, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v18

    and-long v4, v4, v72

    xor-long v20, v70, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v72

    and-long/2addr v4, v6

    xor-long v18, v18, v4

    const-wide/16 v4, -0x1

    xor-long/2addr v4, v6

    and-long v4, v4, v64

    xor-long v16, v72, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v64

    and-long v4, v4, v70

    xor-long v14, v6, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v68

    and-long v4, v4, v58

    xor-long v12, v60, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v58

    and-long v4, v4, v62

    xor-long v10, v68, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v62

    and-long v4, v4, v66

    xor-long v8, v58, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v66

    and-long v4, v4, v60

    xor-long v6, v62, v4

    const-wide/16 v4, -0x1

    xor-long v4, v4, v60

    and-long v4, v4, v68

    xor-long v4, v4, v66

    sget-object v52, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KeccakRoundConstants:[J

    add-int v53, v54, v2

    aget-wide v52, v52, v53

    xor-long v52, v52, v74

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

.method private absorb([BII)V
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    if-ge v0, p3, :cond_4

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    if-nez v2, :cond_3

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    sub-int v2, p3, v2

    if-gt v0, v2, :cond_3

    :cond_2
    add-int v2, p2, v0

    invoke-direct {p0, p1, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    sub-int v2, p3, v2

    if-le v0, v2, :cond_2

    goto :goto_0

    :cond_3
    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v2, v3

    sub-int v3, p3, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    add-int v3, p2, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    invoke-static {p1, v3, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v3, v2

    iput v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    goto :goto_0

    :cond_4
    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    return v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeeze([BII)V

    return-void
.end method

.method static synthetic access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->absorb([BII)V

    return-void
.end method

.method static synthetic access$400(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->initSponge()V

    return-void
.end method

.method static synthetic access$500(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->padAndSwitchToSqueezingPhase()V

    return-void
.end method

.method private initSponge()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theState:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    return-void
.end method

.method private padAndSwitchToSqueezingPhase()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    xor-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooAbsorb([BI)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooExtract()V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    return-void
.end method

.method private squeeze([BII)V
    .locals 5

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->squeezing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->padAndSwitchToSqueezingPhase()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    if-nez v1, :cond_1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooPermutation()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->KangarooExtract()V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    :cond_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int v2, p3, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theQueue:[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->theRateBytes:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v3, v4

    add-int v4, p2, v0

    invoke-static {v2, v3, p1, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    sub-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->bytesInQueue:I

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return-void
.end method
