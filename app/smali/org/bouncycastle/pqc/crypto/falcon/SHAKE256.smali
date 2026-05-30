.class Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;
.super Ljava/lang/Object;


# instance fields
.field A:[J

.field private RC:[J

.field dbuf:[B

.field dptr:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    const/16 v0, 0x19

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    const/16 v0, 0xc8

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dbuf:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void

    nop

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


# virtual methods
.method i_shake256_flip()V
    .locals 8

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    long-to-int v0, v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    shr-int/lit8 v2, v0, 0x3

    aget-wide v4, v1, v2

    const-wide/16 v6, 0x1f

    and-int/lit8 v0, v0, 0x7

    shl-int/lit8 v0, v0, 0x3

    shl-long/2addr v6, v0

    xor-long/2addr v4, v6

    aput-wide v4, v1, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    const/16 v1, 0x10

    aget-wide v2, v0, v1

    const-wide/high16 v4, -0x8000000000000000L

    xor-long/2addr v2, v4

    aput-wide v2, v0, v1

    const-wide/16 v0, 0x88

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void
.end method

.method inner_shake256_extract([BII)V
    .locals 8

    iget-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    long-to-int v3, v0

    move v2, p2

    move v1, p3

    :goto_0
    if-lez v1, :cond_3

    const/16 v0, 0x88

    if-ne v3, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    invoke-virtual {p0, v0}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->process_block([J)V

    const/4 v3, 0x0

    :cond_0
    rsub-int v0, v3, 0x88

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    sub-int p3, v1, v0

    move v4, v3

    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    shr-int/lit8 v5, v4, 0x3

    aget-wide v6, v0, v5

    and-int/lit8 v0, v4, 0x7

    shl-int/lit8 v0, v0, 0x3

    ushr-long/2addr v6, v0

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    add-int/lit8 v4, v4, 0x1

    move v0, v1

    move v2, v3

    goto :goto_1

    :cond_2
    move v3, v4

    move v1, p3

    goto :goto_0

    :cond_3
    int-to-long v0, v3

    iput-wide v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void
.end method

.method inner_shake256_init()V
    .locals 4

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method inner_shake256_inject([BII)V
    .locals 18

    move-object/from16 v0, p0

    iget-wide v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    move-wide v6, v2

    :goto_0
    if-lez p3, :cond_2

    const-wide/16 v2, 0x88

    sub-long/2addr v2, v6

    move/from16 v0, p3

    int-to-long v4, v0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    move/from16 v0, p3

    int-to-long v2, v0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_1
    cmp-long v8, v4, v2

    if-gez v8, :cond_1

    add-long v8, v4, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    const/4 v11, 0x3

    shr-long v12, v8, v11

    long-to-int v11, v12

    aget-wide v12, v10, v11

    long-to-int v14, v4

    add-int v14, v14, p2

    aget-byte v14, p1, v14

    int-to-long v14, v14

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    const-wide/16 v16, 0x7

    and-long v8, v8, v16

    const/16 v16, 0x3

    shl-long v8, v8, v16

    long-to-int v8, v8

    shl-long v8, v14, v8

    xor-long/2addr v8, v12

    aput-wide v8, v10, v11

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    goto :goto_1

    :cond_1
    add-long v4, v6, v2

    move/from16 v0, p2

    int-to-long v6, v0

    add-long/2addr v6, v2

    long-to-int v0, v6

    move/from16 p2, v0

    move/from16 v0, p3

    int-to-long v6, v0

    sub-long v2, v6, v2

    long-to-int v0, v2

    move/from16 p3, v0

    const-wide/16 v2, 0x88

    cmp-long v2, v4, v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->A:[J

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->process_block([J)V

    const-wide/16 v2, 0x0

    :goto_2
    move-wide v6, v2

    goto :goto_0

    :cond_2
    move-object/from16 v0, p0

    iput-wide v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->dptr:J

    return-void

    :cond_3
    move-wide v2, v4

    goto :goto_2
.end method

.method process_block([J)V
    .locals 20

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/16 v2, 0x8

    const/16 v3, 0x8

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/16 v2, 0xc

    const/16 v3, 0xc

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/16 v2, 0x11

    const/16 v3, 0x11

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/16 v2, 0x14

    const/16 v3, 0x14

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x18

    if-ge v2, v3, :cond_0

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    const/4 v3, 0x6

    aget-wide v6, p1, v3

    xor-long/2addr v4, v6

    const/16 v3, 0xb

    aget-wide v6, p1, v3

    const/16 v3, 0x10

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0x15

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/4 v3, 0x1

    shl-long v6, v4, v3

    const/16 v3, 0x3f

    ushr-long/2addr v4, v3

    or-long/2addr v4, v6

    const/4 v3, 0x4

    aget-wide v6, p1, v3

    const/16 v3, 0x9

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0xe

    aget-wide v8, p1, v3

    const/16 v3, 0x13

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x18

    aget-wide v10, p1, v3

    xor-long/2addr v4, v10

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/4 v3, 0x2

    aget-wide v6, p1, v3

    const/4 v3, 0x7

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0xc

    aget-wide v8, p1, v3

    const/16 v3, 0x11

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x16

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    const/4 v3, 0x1

    shl-long v8, v6, v3

    const/16 v3, 0x3f

    ushr-long/2addr v6, v3

    or-long/2addr v6, v8

    const/4 v3, 0x0

    aget-wide v8, p1, v3

    const/4 v3, 0x5

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0xa

    aget-wide v10, p1, v3

    const/16 v3, 0xf

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0x14

    aget-wide v12, p1, v3

    xor-long/2addr v6, v12

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    const/4 v3, 0x3

    aget-wide v8, p1, v3

    const/16 v3, 0x8

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0xd

    aget-wide v10, p1, v3

    const/16 v3, 0x12

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0x17

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    const/4 v3, 0x1

    shl-long v10, v8, v3

    const/16 v3, 0x3f

    ushr-long/2addr v8, v3

    or-long/2addr v8, v10

    const/4 v3, 0x1

    aget-wide v10, p1, v3

    const/4 v3, 0x6

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0xb

    aget-wide v12, p1, v3

    const/16 v3, 0x10

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0x15

    aget-wide v14, p1, v3

    xor-long/2addr v8, v14

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    const/4 v3, 0x4

    aget-wide v10, p1, v3

    const/16 v3, 0x9

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0xe

    aget-wide v12, p1, v3

    const/16 v3, 0x13

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0x18

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/4 v3, 0x1

    shl-long v12, v10, v3

    const/16 v3, 0x3f

    ushr-long/2addr v10, v3

    or-long/2addr v10, v12

    const/4 v3, 0x2

    aget-wide v12, p1, v3

    const/4 v3, 0x7

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0xc

    aget-wide v14, p1, v3

    const/16 v3, 0x11

    aget-wide v16, p1, v3

    xor-long v14, v14, v16

    const/16 v3, 0x16

    aget-wide v16, p1, v3

    xor-long v10, v10, v16

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/4 v3, 0x0

    aget-wide v12, p1, v3

    const/4 v3, 0x5

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0xa

    aget-wide v14, p1, v3

    const/16 v3, 0xf

    aget-wide v16, p1, v3

    xor-long v14, v14, v16

    const/16 v3, 0x14

    aget-wide v16, p1, v3

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    const/4 v3, 0x1

    shl-long v14, v12, v3

    const/16 v3, 0x3f

    ushr-long/2addr v12, v3

    or-long/2addr v12, v14

    const/4 v3, 0x3

    aget-wide v14, p1, v3

    const/16 v3, 0x8

    aget-wide v16, p1, v3

    xor-long v14, v14, v16

    const/16 v3, 0xd

    aget-wide v16, p1, v3

    const/16 v3, 0x12

    aget-wide v18, p1, v3

    xor-long v16, v16, v18

    const/16 v3, 0x17

    aget-wide v18, p1, v3

    xor-long v12, v12, v18

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    const/4 v3, 0x0

    const/4 v14, 0x0

    aget-wide v14, p1, v14

    xor-long/2addr v14, v4

    aput-wide v14, p1, v3

    const/4 v3, 0x5

    const/4 v14, 0x5

    aget-wide v14, p1, v14

    xor-long/2addr v14, v4

    aput-wide v14, p1, v3

    const/16 v3, 0xa

    const/16 v14, 0xa

    aget-wide v14, p1, v14

    xor-long/2addr v14, v4

    aput-wide v14, p1, v3

    const/16 v3, 0xf

    const/16 v14, 0xf

    aget-wide v14, p1, v14

    xor-long/2addr v14, v4

    aput-wide v14, p1, v3

    const/16 v3, 0x14

    const/16 v14, 0x14

    aget-wide v14, p1, v14

    xor-long/2addr v4, v14

    aput-wide v4, p1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x10

    const/16 v4, 0x10

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x15

    const/16 v4, 0x15

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/16 v3, 0x11

    const/16 v4, 0x11

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/16 v3, 0x16

    const/16 v4, 0x16

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/16 v3, 0x12

    const/16 v4, 0x12

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/16 v3, 0x17

    const/16 v4, 0x17

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/16 v3, 0x13

    const/16 v4, 0x13

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/16 v3, 0x18

    const/16 v4, 0x18

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-wide v4, p1, v4

    const/16 v6, 0x24

    shl-long/2addr v4, v6

    const/4 v6, 0x5

    aget-wide v6, p1, v6

    const/16 v8, 0x1c

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xa

    const/16 v4, 0xa

    aget-wide v4, p1, v4

    const/4 v6, 0x3

    shl-long/2addr v4, v6

    const/16 v6, 0xa

    aget-wide v6, p1, v6

    const/16 v8, 0x3d

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xf

    const/16 v4, 0xf

    aget-wide v4, p1, v4

    const/16 v6, 0x29

    shl-long/2addr v4, v6

    const/16 v6, 0xf

    aget-wide v6, p1, v6

    const/16 v8, 0x17

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x14

    const/16 v4, 0x14

    aget-wide v4, p1, v4

    const/16 v6, 0x12

    shl-long/2addr v4, v6

    const/16 v6, 0x14

    aget-wide v6, p1, v6

    const/16 v8, 0x2e

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, p1, v6

    const/16 v8, 0x3f

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aget-wide v4, p1, v4

    const/16 v6, 0x2c

    shl-long/2addr v4, v6

    const/4 v6, 0x6

    aget-wide v6, p1, v6

    const/16 v8, 0x14

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    aget-wide v4, p1, v4

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v6, p1, v6

    const/16 v8, 0x36

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x10

    const/16 v4, 0x10

    aget-wide v4, p1, v4

    const/16 v6, 0x2d

    shl-long/2addr v4, v6

    const/16 v6, 0x10

    aget-wide v6, p1, v6

    const/16 v8, 0x13

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x15

    const/16 v4, 0x15

    aget-wide v4, p1, v4

    const/4 v6, 0x2

    shl-long/2addr v4, v6

    const/16 v6, 0x15

    aget-wide v6, p1, v6

    const/16 v8, 0x3e

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    const/16 v6, 0x3e

    shl-long/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v6, p1, v6

    const/4 v8, 0x2

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    aget-wide v4, p1, v4

    const/4 v6, 0x6

    shl-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v6, p1, v6

    const/16 v8, 0x3a

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aget-wide v4, p1, v4

    const/16 v6, 0x2b

    shl-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v6, p1, v6

    const/16 v8, 0x15

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x11

    const/16 v4, 0x11

    aget-wide v4, p1, v4

    const/16 v6, 0xf

    shl-long/2addr v4, v6

    const/16 v6, 0x11

    aget-wide v6, p1, v6

    const/16 v8, 0x31

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x16

    const/16 v4, 0x16

    aget-wide v4, p1, v4

    const/16 v6, 0x3d

    shl-long/2addr v4, v6

    const/16 v6, 0x16

    aget-wide v6, p1, v6

    const/4 v8, 0x3

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v4, p1, v4

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    const/4 v6, 0x3

    aget-wide v6, p1, v6

    const/16 v8, 0x24

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aget-wide v4, p1, v4

    const/16 v6, 0x37

    shl-long/2addr v4, v6

    const/16 v6, 0x8

    aget-wide v6, p1, v6

    const/16 v8, 0x9

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aget-wide v4, p1, v4

    const/16 v6, 0x19

    shl-long/2addr v4, v6

    const/16 v6, 0xd

    aget-wide v6, p1, v6

    const/16 v8, 0x27

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x12

    const/16 v4, 0x12

    aget-wide v4, p1, v4

    const/16 v6, 0x15

    shl-long/2addr v4, v6

    const/16 v6, 0x12

    aget-wide v6, p1, v6

    const/16 v8, 0x2b

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x17

    const/16 v4, 0x17

    aget-wide v4, p1, v4

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    const/16 v6, 0x17

    aget-wide v6, p1, v6

    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v4, p1, v4

    const/16 v6, 0x1b

    shl-long/2addr v4, v6

    const/4 v6, 0x4

    aget-wide v6, p1, v6

    const/16 v8, 0x25

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    aget-wide v4, p1, v4

    const/16 v6, 0x14

    shl-long/2addr v4, v6

    const/16 v6, 0x9

    aget-wide v6, p1, v6

    const/16 v8, 0x2c

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    aget-wide v4, p1, v4

    const/16 v6, 0x27

    shl-long/2addr v4, v6

    const/16 v6, 0xe

    aget-wide v6, p1, v6

    const/16 v8, 0x19

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x13

    const/16 v4, 0x13

    aget-wide v4, p1, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    const/16 v6, 0x13

    aget-wide v6, p1, v6

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x18

    const/16 v4, 0x18

    aget-wide v4, p1, v4

    const/16 v6, 0xe

    shl-long/2addr v4, v6

    const/16 v6, 0x18

    aget-wide v6, p1, v6

    const/16 v8, 0x32

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xc

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/4 v3, 0x6

    aget-wide v6, p1, v3

    const/16 v3, 0xc

    aget-wide v8, p1, v3

    or-long/2addr v6, v8

    const/4 v3, 0x0

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0x12

    aget-wide v8, p1, v3

    or-long/2addr v4, v8

    const/4 v3, 0x6

    aget-wide v8, p1, v3

    xor-long/2addr v4, v8

    const/16 v3, 0x12

    aget-wide v8, p1, v3

    const/16 v3, 0x18

    aget-wide v10, p1, v3

    and-long/2addr v8, v10

    const/16 v3, 0xc

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x18

    aget-wide v10, p1, v3

    const/4 v3, 0x0

    aget-wide v12, p1, v3

    or-long/2addr v10, v12

    const/16 v3, 0x12

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/4 v3, 0x0

    aget-wide v12, p1, v3

    const/4 v3, 0x6

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    const/16 v3, 0x18

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/4 v3, 0x0

    aput-wide v6, p1, v3

    const/4 v3, 0x6

    aput-wide v4, p1, v3

    const/16 v3, 0xc

    aput-wide v8, p1, v3

    const/16 v3, 0x12

    aput-wide v10, p1, v3

    const/16 v3, 0x18

    aput-wide v12, p1, v3

    const/16 v3, 0x16

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/16 v3, 0x9

    aget-wide v6, p1, v3

    const/16 v3, 0xa

    aget-wide v8, p1, v3

    or-long/2addr v6, v8

    const/4 v3, 0x3

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0xa

    aget-wide v8, p1, v3

    const/16 v3, 0x10

    aget-wide v10, p1, v3

    and-long/2addr v8, v10

    const/16 v3, 0x9

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x10

    aget-wide v10, p1, v3

    or-long/2addr v4, v10

    const/16 v3, 0xa

    aget-wide v10, p1, v3

    xor-long/2addr v4, v10

    const/16 v3, 0x16

    aget-wide v10, p1, v3

    const/4 v3, 0x3

    aget-wide v12, p1, v3

    or-long/2addr v10, v12

    const/16 v3, 0x10

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/4 v3, 0x3

    aget-wide v12, p1, v3

    const/16 v3, 0x9

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    const/16 v3, 0x16

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/4 v3, 0x3

    aput-wide v6, p1, v3

    const/16 v3, 0x9

    aput-wide v8, p1, v3

    const/16 v3, 0xa

    aput-wide v4, p1, v3

    const/16 v3, 0x10

    aput-wide v10, p1, v3

    const/16 v3, 0x16

    aput-wide v12, p1, v3

    const/16 v3, 0x13

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/4 v3, 0x7

    aget-wide v6, p1, v3

    const/16 v3, 0xd

    aget-wide v8, p1, v3

    or-long/2addr v6, v8

    const/4 v3, 0x1

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0xd

    aget-wide v8, p1, v3

    const/16 v3, 0x13

    aget-wide v10, p1, v3

    and-long/2addr v8, v10

    const/4 v3, 0x7

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x14

    aget-wide v10, p1, v3

    and-long/2addr v10, v4

    const/16 v3, 0xd

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0x14

    aget-wide v12, p1, v3

    const/4 v3, 0x1

    aget-wide v14, p1, v3

    or-long/2addr v12, v14

    xor-long/2addr v4, v12

    const/4 v3, 0x1

    aget-wide v12, p1, v3

    const/4 v3, 0x7

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    const/16 v3, 0x14

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/4 v3, 0x1

    aput-wide v6, p1, v3

    const/4 v3, 0x7

    aput-wide v8, p1, v3

    const/16 v3, 0xd

    aput-wide v10, p1, v3

    const/16 v3, 0x13

    aput-wide v4, p1, v3

    const/16 v3, 0x14

    aput-wide v12, p1, v3

    const/16 v3, 0x11

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/4 v3, 0x5

    aget-wide v6, p1, v3

    const/16 v3, 0xb

    aget-wide v8, p1, v3

    and-long/2addr v6, v8

    const/4 v3, 0x4

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0xb

    aget-wide v8, p1, v3

    const/16 v3, 0x11

    aget-wide v10, p1, v3

    or-long/2addr v8, v10

    const/4 v3, 0x5

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x17

    aget-wide v10, p1, v3

    or-long/2addr v10, v4

    const/16 v3, 0xb

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0x17

    aget-wide v12, p1, v3

    const/4 v3, 0x4

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    xor-long/2addr v4, v12

    const/4 v3, 0x4

    aget-wide v12, p1, v3

    const/4 v3, 0x5

    aget-wide v14, p1, v3

    or-long/2addr v12, v14

    const/16 v3, 0x17

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/4 v3, 0x4

    aput-wide v6, p1, v3

    const/4 v3, 0x5

    aput-wide v8, p1, v3

    const/16 v3, 0xb

    aput-wide v10, p1, v3

    const/16 v3, 0x11

    aput-wide v4, p1, v3

    const/16 v3, 0x17

    aput-wide v12, p1, v3

    const/16 v3, 0x8

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/16 v3, 0xe

    aget-wide v6, p1, v3

    and-long/2addr v6, v4

    const/4 v3, 0x2

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0xe

    aget-wide v8, p1, v3

    const/16 v3, 0xf

    aget-wide v10, p1, v3

    or-long/2addr v8, v10

    xor-long/2addr v4, v8

    const/16 v3, 0xf

    aget-wide v8, p1, v3

    const/16 v3, 0x15

    aget-wide v10, p1, v3

    and-long/2addr v8, v10

    const/16 v3, 0xe

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x15

    aget-wide v10, p1, v3

    const/4 v3, 0x2

    aget-wide v12, p1, v3

    or-long/2addr v10, v12

    const/16 v3, 0xf

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/4 v3, 0x2

    aget-wide v12, p1, v3

    const/16 v3, 0x8

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    const/16 v3, 0x15

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/4 v3, 0x2

    aput-wide v6, p1, v3

    const/16 v3, 0x8

    aput-wide v4, p1, v3

    const/16 v3, 0xe

    aput-wide v8, p1, v3

    const/16 v3, 0xf

    aput-wide v10, p1, v3

    const/16 v3, 0x15

    aput-wide v12, p1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-wide v4, p1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    add-int/lit8 v7, v2, 0x0

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x6

    aget-wide v4, p1, v3

    const/16 v3, 0x9

    aget-wide v6, p1, v3

    xor-long/2addr v4, v6

    const/4 v3, 0x7

    aget-wide v6, p1, v3

    const/4 v3, 0x5

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0x8

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/4 v3, 0x1

    shl-long v6, v4, v3

    const/16 v3, 0x3f

    ushr-long/2addr v4, v3

    or-long/2addr v4, v6

    const/16 v3, 0x18

    aget-wide v6, p1, v3

    const/16 v3, 0x16

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0x14

    aget-wide v8, p1, v3

    const/16 v3, 0x17

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x15

    aget-wide v10, p1, v3

    xor-long/2addr v4, v10

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/16 v3, 0xc

    aget-wide v6, p1, v3

    const/16 v3, 0xa

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0xd

    aget-wide v8, p1, v3

    const/16 v3, 0xb

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0xe

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    const/4 v3, 0x1

    shl-long v8, v6, v3

    const/16 v3, 0x3f

    ushr-long/2addr v6, v3

    or-long/2addr v6, v8

    const/4 v3, 0x0

    aget-wide v8, p1, v3

    const/4 v3, 0x3

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/4 v3, 0x1

    aget-wide v10, p1, v3

    const/4 v3, 0x4

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/4 v3, 0x2

    aget-wide v12, p1, v3

    xor-long/2addr v6, v12

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    const/16 v3, 0x12

    aget-wide v8, p1, v3

    const/16 v3, 0x10

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x13

    aget-wide v10, p1, v3

    const/16 v3, 0x11

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0xf

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    const/4 v3, 0x1

    shl-long v10, v8, v3

    const/16 v3, 0x3f

    ushr-long/2addr v8, v3

    or-long/2addr v8, v10

    const/4 v3, 0x6

    aget-wide v10, p1, v3

    const/16 v3, 0x9

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/4 v3, 0x7

    aget-wide v12, p1, v3

    const/4 v3, 0x5

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0x8

    aget-wide v14, p1, v3

    xor-long/2addr v8, v14

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    const/16 v3, 0x18

    aget-wide v10, p1, v3

    const/16 v3, 0x16

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0x14

    aget-wide v12, p1, v3

    const/16 v3, 0x17

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0x15

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/4 v3, 0x1

    shl-long v12, v10, v3

    const/16 v3, 0x3f

    ushr-long/2addr v10, v3

    or-long/2addr v10, v12

    const/16 v3, 0xc

    aget-wide v12, p1, v3

    const/16 v3, 0xa

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0xd

    aget-wide v14, p1, v3

    const/16 v3, 0xb

    aget-wide v16, p1, v3

    xor-long v14, v14, v16

    const/16 v3, 0xe

    aget-wide v16, p1, v3

    xor-long v10, v10, v16

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/4 v3, 0x0

    aget-wide v12, p1, v3

    const/4 v3, 0x3

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/4 v3, 0x1

    aget-wide v14, p1, v3

    const/4 v3, 0x4

    aget-wide v16, p1, v3

    xor-long v14, v14, v16

    const/4 v3, 0x2

    aget-wide v16, p1, v3

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    const/4 v3, 0x1

    shl-long v14, v12, v3

    const/16 v3, 0x3f

    ushr-long/2addr v12, v3

    or-long/2addr v12, v14

    const/16 v3, 0x12

    aget-wide v14, p1, v3

    const/16 v3, 0x10

    aget-wide v16, p1, v3

    xor-long v14, v14, v16

    const/16 v3, 0x13

    aget-wide v16, p1, v3

    const/16 v3, 0x11

    aget-wide v18, p1, v3

    xor-long v16, v16, v18

    const/16 v3, 0xf

    aget-wide v18, p1, v3

    xor-long v12, v12, v18

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    const/4 v3, 0x0

    const/4 v14, 0x0

    aget-wide v14, p1, v14

    xor-long/2addr v14, v4

    aput-wide v14, p1, v3

    const/4 v3, 0x3

    const/4 v14, 0x3

    aget-wide v14, p1, v14

    xor-long/2addr v14, v4

    aput-wide v14, p1, v3

    const/4 v3, 0x1

    const/4 v14, 0x1

    aget-wide v14, p1, v14

    xor-long/2addr v14, v4

    aput-wide v14, p1, v3

    const/4 v3, 0x4

    const/4 v14, 0x4

    aget-wide v14, p1, v14

    xor-long/2addr v14, v4

    aput-wide v14, p1, v3

    const/4 v3, 0x2

    const/4 v14, 0x2

    aget-wide v14, p1, v14

    xor-long/2addr v4, v14

    aput-wide v4, p1, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aget-wide v4, p1, v4

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/16 v3, 0xa

    const/16 v4, 0xa

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    aget-wide v4, p1, v4

    xor-long/2addr v4, v8

    aput-wide v4, p1, v3

    const/16 v3, 0x12

    const/16 v4, 0x12

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/16 v3, 0x10

    const/16 v4, 0x10

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/16 v3, 0x13

    const/16 v4, 0x13

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/16 v3, 0x11

    const/16 v4, 0x11

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/16 v3, 0xf

    const/16 v4, 0xf

    aget-wide v4, p1, v4

    xor-long/2addr v4, v10

    aput-wide v4, p1, v3

    const/16 v3, 0x18

    const/16 v4, 0x18

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/16 v3, 0x16

    const/16 v4, 0x16

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/16 v3, 0x14

    const/16 v4, 0x14

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/16 v3, 0x17

    const/16 v4, 0x17

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/16 v3, 0x15

    const/16 v4, 0x15

    aget-wide v4, p1, v4

    xor-long/2addr v4, v12

    aput-wide v4, p1, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aget-wide v4, p1, v4

    const/16 v6, 0x24

    shl-long/2addr v4, v6

    const/4 v6, 0x3

    aget-wide v6, p1, v6

    const/16 v8, 0x1c

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-wide v4, p1, v4

    const/4 v6, 0x3

    shl-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, p1, v6

    const/16 v8, 0x3d

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x4

    const/4 v4, 0x4

    aget-wide v4, p1, v4

    const/16 v6, 0x29

    shl-long/2addr v4, v6

    const/4 v6, 0x4

    aget-wide v6, p1, v6

    const/16 v8, 0x17

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x2

    const/4 v4, 0x2

    aget-wide v4, p1, v4

    const/16 v6, 0x12

    shl-long/2addr v4, v6

    const/4 v6, 0x2

    aget-wide v6, p1, v6

    const/16 v8, 0x2e

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x6

    const/4 v4, 0x6

    aget-wide v4, p1, v4

    const/4 v6, 0x1

    shl-long/2addr v4, v6

    const/4 v6, 0x6

    aget-wide v6, p1, v6

    const/16 v8, 0x3f

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x9

    const/16 v4, 0x9

    aget-wide v4, p1, v4

    const/16 v6, 0x2c

    shl-long/2addr v4, v6

    const/16 v6, 0x9

    aget-wide v6, p1, v6

    const/16 v8, 0x14

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x7

    const/4 v4, 0x7

    aget-wide v4, p1, v4

    const/16 v6, 0xa

    shl-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v6, p1, v6

    const/16 v8, 0x36

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x5

    const/4 v4, 0x5

    aget-wide v4, p1, v4

    const/16 v6, 0x2d

    shl-long/2addr v4, v6

    const/4 v6, 0x5

    aget-wide v6, p1, v6

    const/16 v8, 0x13

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x8

    const/16 v4, 0x8

    aget-wide v4, p1, v4

    const/4 v6, 0x2

    shl-long/2addr v4, v6

    const/16 v6, 0x8

    aget-wide v6, p1, v6

    const/16 v8, 0x3e

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xc

    const/16 v4, 0xc

    aget-wide v4, p1, v4

    const/16 v6, 0x3e

    shl-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v6, p1, v6

    const/4 v8, 0x2

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xa

    const/16 v4, 0xa

    aget-wide v4, p1, v4

    const/4 v6, 0x6

    shl-long/2addr v4, v6

    const/16 v6, 0xa

    aget-wide v6, p1, v6

    const/16 v8, 0x3a

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xd

    const/16 v4, 0xd

    aget-wide v4, p1, v4

    const/16 v6, 0x2b

    shl-long/2addr v4, v6

    const/16 v6, 0xd

    aget-wide v6, p1, v6

    const/16 v8, 0x15

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xb

    const/16 v4, 0xb

    aget-wide v4, p1, v4

    const/16 v6, 0xf

    shl-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v6, p1, v6

    const/16 v8, 0x31

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xe

    const/16 v4, 0xe

    aget-wide v4, p1, v4

    const/16 v6, 0x3d

    shl-long/2addr v4, v6

    const/16 v6, 0xe

    aget-wide v6, p1, v6

    const/4 v8, 0x3

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x12

    const/16 v4, 0x12

    aget-wide v4, p1, v4

    const/16 v6, 0x1c

    shl-long/2addr v4, v6

    const/16 v6, 0x12

    aget-wide v6, p1, v6

    const/16 v8, 0x24

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x10

    const/16 v4, 0x10

    aget-wide v4, p1, v4

    const/16 v6, 0x37

    shl-long/2addr v4, v6

    const/16 v6, 0x10

    aget-wide v6, p1, v6

    const/16 v8, 0x9

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x13

    const/16 v4, 0x13

    aget-wide v4, p1, v4

    const/16 v6, 0x19

    shl-long/2addr v4, v6

    const/16 v6, 0x13

    aget-wide v6, p1, v6

    const/16 v8, 0x27

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x11

    const/16 v4, 0x11

    aget-wide v4, p1, v4

    const/16 v6, 0x15

    shl-long/2addr v4, v6

    const/16 v6, 0x11

    aget-wide v6, p1, v6

    const/16 v8, 0x2b

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xf

    const/16 v4, 0xf

    aget-wide v4, p1, v4

    const/16 v6, 0x38

    shl-long/2addr v4, v6

    const/16 v6, 0xf

    aget-wide v6, p1, v6

    const/16 v8, 0x8

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x18

    const/16 v4, 0x18

    aget-wide v4, p1, v4

    const/16 v6, 0x1b

    shl-long/2addr v4, v6

    const/16 v6, 0x18

    aget-wide v6, p1, v6

    const/16 v8, 0x25

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x16

    const/16 v4, 0x16

    aget-wide v4, p1, v4

    const/16 v6, 0x14

    shl-long/2addr v4, v6

    const/16 v6, 0x16

    aget-wide v6, p1, v6

    const/16 v8, 0x2c

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x14

    const/16 v4, 0x14

    aget-wide v4, p1, v4

    const/16 v6, 0x27

    shl-long/2addr v4, v6

    const/16 v6, 0x14

    aget-wide v6, p1, v6

    const/16 v8, 0x19

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x17

    const/16 v4, 0x17

    aget-wide v4, p1, v4

    const/16 v6, 0x8

    shl-long/2addr v4, v6

    const/16 v6, 0x17

    aget-wide v6, p1, v6

    const/16 v8, 0x38

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0x15

    const/16 v4, 0x15

    aget-wide v4, p1, v4

    const/16 v6, 0xe

    shl-long/2addr v4, v6

    const/16 v6, 0x15

    aget-wide v6, p1, v6

    const/16 v8, 0x32

    ushr-long/2addr v6, v8

    or-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/16 v3, 0xd

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/16 v3, 0x9

    aget-wide v6, p1, v3

    const/16 v3, 0xd

    aget-wide v8, p1, v3

    or-long/2addr v6, v8

    const/4 v3, 0x0

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0x11

    aget-wide v8, p1, v3

    or-long/2addr v4, v8

    const/16 v3, 0x9

    aget-wide v8, p1, v3

    xor-long/2addr v4, v8

    const/16 v3, 0x11

    aget-wide v8, p1, v3

    const/16 v3, 0x15

    aget-wide v10, p1, v3

    and-long/2addr v8, v10

    const/16 v3, 0xd

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x15

    aget-wide v10, p1, v3

    const/4 v3, 0x0

    aget-wide v12, p1, v3

    or-long/2addr v10, v12

    const/16 v3, 0x11

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/4 v3, 0x0

    aget-wide v12, p1, v3

    const/16 v3, 0x9

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    const/16 v3, 0x15

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/4 v3, 0x0

    aput-wide v6, p1, v3

    const/16 v3, 0x9

    aput-wide v4, p1, v3

    const/16 v3, 0xd

    aput-wide v8, p1, v3

    const/16 v3, 0x11

    aput-wide v10, p1, v3

    const/16 v3, 0x15

    aput-wide v12, p1, v3

    const/16 v3, 0xe

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/16 v3, 0x16

    aget-wide v6, p1, v3

    const/4 v3, 0x1

    aget-wide v8, p1, v3

    or-long/2addr v6, v8

    const/16 v3, 0x12

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/4 v3, 0x1

    aget-wide v8, p1, v3

    const/4 v3, 0x5

    aget-wide v10, p1, v3

    and-long/2addr v8, v10

    const/16 v3, 0x16

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/4 v3, 0x5

    aget-wide v10, p1, v3

    or-long/2addr v4, v10

    const/4 v3, 0x1

    aget-wide v10, p1, v3

    xor-long/2addr v4, v10

    const/16 v3, 0xe

    aget-wide v10, p1, v3

    const/16 v3, 0x12

    aget-wide v12, p1, v3

    or-long/2addr v10, v12

    const/4 v3, 0x5

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0x12

    aget-wide v12, p1, v3

    const/16 v3, 0x16

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    const/16 v3, 0xe

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0x12

    aput-wide v6, p1, v3

    const/16 v3, 0x16

    aput-wide v8, p1, v3

    const/4 v3, 0x1

    aput-wide v4, p1, v3

    const/4 v3, 0x5

    aput-wide v10, p1, v3

    const/16 v3, 0xe

    aput-wide v12, p1, v3

    const/16 v3, 0x17

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/16 v3, 0xa

    aget-wide v6, p1, v3

    const/16 v3, 0x13

    aget-wide v8, p1, v3

    or-long/2addr v6, v8

    const/4 v3, 0x6

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0x13

    aget-wide v8, p1, v3

    const/16 v3, 0x17

    aget-wide v10, p1, v3

    and-long/2addr v8, v10

    const/16 v3, 0xa

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/4 v3, 0x2

    aget-wide v10, p1, v3

    and-long/2addr v10, v4

    const/16 v3, 0x13

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/4 v3, 0x2

    aget-wide v12, p1, v3

    const/4 v3, 0x6

    aget-wide v14, p1, v3

    or-long/2addr v12, v14

    xor-long/2addr v4, v12

    const/4 v3, 0x6

    aget-wide v12, p1, v3

    const/16 v3, 0xa

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    const/4 v3, 0x2

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/4 v3, 0x6

    aput-wide v6, p1, v3

    const/16 v3, 0xa

    aput-wide v8, p1, v3

    const/16 v3, 0x13

    aput-wide v10, p1, v3

    const/16 v3, 0x17

    aput-wide v4, p1, v3

    const/4 v3, 0x2

    aput-wide v12, p1, v3

    const/16 v3, 0xb

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/4 v3, 0x3

    aget-wide v6, p1, v3

    const/4 v3, 0x7

    aget-wide v8, p1, v3

    and-long/2addr v6, v8

    const/16 v3, 0x18

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/4 v3, 0x7

    aget-wide v8, p1, v3

    const/16 v3, 0xb

    aget-wide v10, p1, v3

    or-long/2addr v8, v10

    const/4 v3, 0x3

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0xf

    aget-wide v10, p1, v3

    or-long/2addr v10, v4

    const/4 v3, 0x7

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0xf

    aget-wide v12, p1, v3

    const/16 v3, 0x18

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    xor-long/2addr v4, v12

    const/16 v3, 0x18

    aget-wide v12, p1, v3

    const/4 v3, 0x3

    aget-wide v14, p1, v3

    or-long/2addr v12, v14

    const/16 v3, 0xf

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0x18

    aput-wide v6, p1, v3

    const/4 v3, 0x3

    aput-wide v8, p1, v3

    const/4 v3, 0x7

    aput-wide v10, p1, v3

    const/16 v3, 0xb

    aput-wide v4, p1, v3

    const/16 v3, 0xf

    aput-wide v12, p1, v3

    const/16 v3, 0x10

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    const/16 v3, 0x14

    aget-wide v6, p1, v3

    and-long/2addr v6, v4

    const/16 v3, 0xc

    aget-wide v8, p1, v3

    xor-long/2addr v6, v8

    const/16 v3, 0x14

    aget-wide v8, p1, v3

    const/4 v3, 0x4

    aget-wide v10, p1, v3

    or-long/2addr v8, v10

    xor-long/2addr v4, v8

    const/4 v3, 0x4

    aget-wide v8, p1, v3

    const/16 v3, 0x8

    aget-wide v10, p1, v3

    and-long/2addr v8, v10

    const/16 v3, 0x14

    aget-wide v10, p1, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x8

    aget-wide v10, p1, v3

    const/16 v3, 0xc

    aget-wide v12, p1, v3

    or-long/2addr v10, v12

    const/4 v3, 0x4

    aget-wide v12, p1, v3

    xor-long/2addr v10, v12

    const/16 v3, 0xc

    aget-wide v12, p1, v3

    const/16 v3, 0x10

    aget-wide v14, p1, v3

    and-long/2addr v12, v14

    const/16 v3, 0x8

    aget-wide v14, p1, v3

    xor-long/2addr v12, v14

    const/16 v3, 0xc

    aput-wide v6, p1, v3

    const/16 v3, 0x10

    aput-wide v4, p1, v3

    const/16 v3, 0x14

    aput-wide v8, p1, v3

    const/4 v3, 0x4

    aput-wide v10, p1, v3

    const/16 v3, 0x8

    aput-wide v12, p1, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-wide v4, p1, v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->RC:[J

    add-int/lit8 v7, v2, 0x1

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, p1, v3

    const/4 v3, 0x5

    aget-wide v4, p1, v3

    const/4 v3, 0x5

    const/16 v6, 0x12

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x12

    const/16 v6, 0xb

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0xb

    const/16 v6, 0xa

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0xa

    const/4 v6, 0x6

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/4 v3, 0x6

    const/16 v6, 0x16

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x16

    const/16 v6, 0x14

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x14

    const/16 v6, 0xc

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0xc

    const/16 v6, 0x13

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x13

    const/16 v6, 0xf

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0xf

    const/16 v6, 0x18

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x18

    const/16 v6, 0x8

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x8

    aput-wide v4, p1, v3

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    const/4 v3, 0x1

    const/16 v6, 0x9

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x9

    const/16 v6, 0xe

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0xe

    const/4 v6, 0x2

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/4 v3, 0x2

    const/16 v6, 0xd

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0xd

    const/16 v6, 0x17

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x17

    const/4 v6, 0x4

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/4 v3, 0x4

    const/16 v6, 0x15

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x15

    const/16 v6, 0x10

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x10

    const/4 v6, 0x3

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/4 v3, 0x3

    const/16 v6, 0x11

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/16 v3, 0x11

    const/4 v6, 0x7

    aget-wide v6, p1, v6

    aput-wide v6, p1, v3

    const/4 v3, 0x7

    aput-wide v4, p1, v3

    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/16 v2, 0x8

    const/16 v3, 0x8

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/16 v2, 0xc

    const/16 v3, 0xc

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/16 v2, 0x11

    const/16 v3, 0x11

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    const/16 v2, 0x14

    const/16 v3, 0x14

    aget-wide v4, p1, v3

    const-wide/16 v6, -0x1

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    return-void
.end method
