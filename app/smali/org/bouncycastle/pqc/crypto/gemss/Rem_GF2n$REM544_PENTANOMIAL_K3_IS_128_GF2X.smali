.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM544_PENTANOMIAL_K3_IS_128_GF2X"
.end annotation


# instance fields
.field private final k1:I

.field private final k164:I

.field private final k2:I

.field private final k264:I


# direct methods
.method public constructor <init>(IIIIIIJ)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    iput-wide p7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->mask:J

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 18

    const/16 v2, 0xa

    aget-wide v2, p3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xb

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xb

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xd

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    add-int/lit8 v8, p2, 0x4

    const/4 v9, 0x4

    aget-wide v10, p3, v9

    xor-long/2addr v10, v6

    xor-long/2addr v10, v2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v12, v4, v9

    xor-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v12, v6, v9

    xor-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v12, v4, v9

    xor-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v12, v6, v9

    xor-long/2addr v10, v12

    aput-wide v10, p1, v8

    const/16 v8, 0xd

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0xe

    aget-wide v10, p3, v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v10, v12

    xor-long/2addr v8, v10

    add-int/lit8 v10, p2, 0x5

    const/4 v11, 0x5

    aget-wide v12, p3, v11

    xor-long/2addr v12, v8

    xor-long/2addr v12, v4

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v6, v11

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v8, v11

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v6, v11

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v8, v11

    xor-long/2addr v12, v14

    aput-wide v12, p1, v10

    const/16 v10, 0xe

    aget-wide v10, p3, v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xf

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    add-int/lit8 v12, p2, 0x6

    const/4 v13, 0x6

    aget-wide v14, p3, v13

    xor-long/2addr v14, v10

    xor-long/2addr v6, v14

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v8, v13

    xor-long/2addr v6, v14

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v10, v13

    xor-long/2addr v6, v14

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v8, v13

    xor-long/2addr v6, v14

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v10, v13

    xor-long/2addr v6, v14

    aput-wide v6, p1, v12

    const/16 v6, 0xf

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v12

    const/16 v12, 0x10

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v6, v12

    add-int/lit8 v12, p2, 0x7

    const/4 v13, 0x7

    aget-wide v14, p3, v13

    xor-long/2addr v14, v6

    xor-long/2addr v8, v14

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v10, v13

    xor-long/2addr v8, v14

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v6, v13

    xor-long/2addr v8, v14

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v10, v13

    xor-long/2addr v8, v14

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v6, v13

    xor-long/2addr v8, v14

    aput-wide v8, p1, v12

    const/16 v8, 0x10

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v12

    add-int/lit8 v12, p2, 0x8

    const/16 v13, 0x8

    aget-wide v14, p3, v13

    xor-long/2addr v14, v8

    xor-long/2addr v14, v10

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v16, v6, v13

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v16, v8, v13

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v16, v6, v13

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v16, v8, v13

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->mask:J

    move-wide/from16 v16, v0

    and-long v14, v14, v16

    aput-wide v14, p1, v12

    const/16 v12, 0x8

    aget-wide v12, p3, v12

    xor-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0x9

    aget-wide v12, p3, v12

    xor-long/2addr v12, v6

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/16 v12, 0x10

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/16 v12, 0x9

    aget-wide v12, p3, v12

    xor-long/2addr v6, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v12

    const/16 v12, 0xa

    aget-wide v12, p3, v12

    xor-long/2addr v8, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v8, v12

    xor-long/2addr v6, v8

    const/4 v8, 0x0

    aget-wide v8, p3, v8

    xor-long/2addr v8, v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v12, v10, v12

    xor-long/2addr v8, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v12, v10, v12

    xor-long/2addr v8, v12

    aput-wide v8, p1, p2

    add-int/lit8 v8, p2, 0x1

    const/4 v9, 0x1

    aget-wide v12, p3, v9

    xor-long/2addr v12, v6

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v10, v9

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v6, v9

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v10, v9

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v6, v9

    xor-long/2addr v12, v14

    aput-wide v12, p1, v8

    add-int/lit8 v8, p2, 0x2

    const/4 v9, 0x2

    aget-wide v12, p3, v9

    xor-long/2addr v12, v2

    xor-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v12, v6, v9

    xor-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v12, v2, v9

    xor-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v12, v6, v9

    xor-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v12, v2, v9

    xor-long/2addr v10, v12

    aput-wide v10, p1, v8

    add-int/lit8 v8, p2, 0x3

    const/4 v9, 0x3

    aget-wide v10, p3, v9

    xor-long/2addr v10, v4

    xor-long/2addr v6, v10

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v10, v2, v9

    xor-long/2addr v6, v10

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v10, v4, v9

    xor-long/2addr v6, v10

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long/2addr v2, v9

    xor-long/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p1, v8

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 20

    const/16 v2, 0xa

    aget-wide v2, p3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xb

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xb

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xd

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    add-int/lit8 v8, p2, 0x4

    aget-wide v10, p1, v8

    const/4 v9, 0x4

    aget-wide v12, p3, v9

    xor-long/2addr v12, v6

    xor-long/2addr v12, v2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v4, v9

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v6, v9

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v4, v9

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v6, v9

    xor-long/2addr v12, v14

    xor-long/2addr v10, v12

    aput-wide v10, p1, v8

    const/16 v8, 0xd

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0xe

    aget-wide v10, p3, v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v10, v12

    xor-long/2addr v8, v10

    add-int/lit8 v10, p2, 0x5

    aget-wide v12, p1, v10

    const/4 v11, 0x5

    aget-wide v14, p3, v11

    xor-long/2addr v14, v8

    xor-long/2addr v14, v4

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v16, v6, v11

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v16, v8, v11

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v16, v6, v11

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v16, v8, v11

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p1, v10

    const/16 v10, 0xe

    aget-wide v10, p3, v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xf

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    add-int/lit8 v12, p2, 0x6

    aget-wide v14, p1, v12

    const/4 v13, 0x6

    aget-wide v16, p3, v13

    xor-long v16, v16, v10

    xor-long v6, v6, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v16, v8, v13

    xor-long v6, v6, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v16, v10, v13

    xor-long v6, v6, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v16, v8, v13

    xor-long v6, v6, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v16, v10, v13

    xor-long v6, v6, v16

    xor-long/2addr v6, v14

    aput-wide v6, p1, v12

    const/16 v6, 0xf

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v12

    const/16 v12, 0x10

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v6, v12

    add-int/lit8 v12, p2, 0x7

    aget-wide v14, p1, v12

    const/4 v13, 0x7

    aget-wide v16, p3, v13

    xor-long v16, v16, v6

    xor-long v8, v8, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v16, v10, v13

    xor-long v8, v8, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v16, v6, v13

    xor-long v8, v8, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v16, v10, v13

    xor-long v8, v8, v16

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v16, v6, v13

    xor-long v8, v8, v16

    xor-long/2addr v8, v14

    aput-wide v8, p1, v12

    const/16 v8, 0x10

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v8, v12

    add-int/lit8 v12, p2, 0x8

    aget-wide v14, p1, v12

    const/16 v13, 0x8

    aget-wide v16, p3, v13

    xor-long v16, v16, v8

    xor-long v16, v16, v10

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v18, v6, v13

    xor-long v16, v16, v18

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v18, v8, v13

    xor-long v16, v16, v18

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v18, v6, v13

    xor-long v16, v16, v18

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v18, v8, v13

    xor-long v16, v16, v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->mask:J

    move-wide/from16 v18, v0

    and-long v16, v16, v18

    xor-long v14, v14, v16

    aput-wide v14, p1, v12

    const/16 v12, 0x8

    aget-wide v12, p3, v12

    xor-long/2addr v10, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0x9

    aget-wide v12, p3, v12

    xor-long/2addr v12, v6

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/16 v12, 0x10

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/16 v12, 0x9

    aget-wide v12, p3, v12

    xor-long/2addr v6, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki:I

    ushr-long/2addr v6, v12

    const/16 v12, 0xa

    aget-wide v12, p3, v12

    xor-long/2addr v8, v12

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->ki64:I

    shl-long/2addr v8, v12

    xor-long/2addr v6, v8

    aget-wide v8, p1, p2

    const/4 v12, 0x0

    aget-wide v12, p3, v12

    xor-long/2addr v12, v10

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v10, v14

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v10, v14

    xor-long/2addr v12, v14

    xor-long/2addr v8, v12

    aput-wide v8, p1, p2

    add-int/lit8 v8, p2, 0x1

    aget-wide v12, p1, v8

    const/4 v9, 0x1

    aget-wide v14, p3, v9

    xor-long/2addr v14, v6

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v16, v10, v9

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v16, v6, v9

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v16, v10, v9

    xor-long v14, v14, v16

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v16, v6, v9

    xor-long v14, v14, v16

    xor-long/2addr v12, v14

    aput-wide v12, p1, v8

    add-int/lit8 v8, p2, 0x2

    aget-wide v12, p1, v8

    const/4 v9, 0x2

    aget-wide v14, p3, v9

    xor-long/2addr v14, v2

    xor-long/2addr v10, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v14, v6, v9

    xor-long/2addr v10, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v14, v2, v9

    xor-long/2addr v10, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long v14, v6, v9

    xor-long/2addr v10, v14

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long v14, v2, v9

    xor-long/2addr v10, v14

    xor-long/2addr v10, v12

    aput-wide v10, p1, v8

    add-int/lit8 v8, p2, 0x3

    aget-wide v10, p1, v8

    const/4 v9, 0x3

    aget-wide v12, p3, v9

    xor-long/2addr v12, v4

    xor-long/2addr v6, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k164:I

    ushr-long v12, v2, v9

    xor-long/2addr v6, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k1:I

    shl-long v12, v4, v9

    xor-long/2addr v6, v12

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k264:I

    ushr-long/2addr v2, v9

    xor-long/2addr v2, v6

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_K3_IS_128_GF2X;->k2:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    xor-long/2addr v2, v10

    aput-wide v2, p1, v8

    return-void
.end method
