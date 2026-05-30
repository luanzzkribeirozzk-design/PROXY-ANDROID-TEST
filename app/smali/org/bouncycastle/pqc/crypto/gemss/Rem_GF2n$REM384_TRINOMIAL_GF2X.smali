.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM384_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final ki_k3:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->mask:J

    sub-int v0, p2, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 19

    const/4 v2, 0x5

    aget-wide v2, p3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0x8

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    const/16 v8, 0x8

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x9

    aget-wide v10, p3, v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v10, v12

    xor-long/2addr v8, v10

    const/16 v10, 0x9

    aget-wide v10, p3, v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xa

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/16 v12, 0xa

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v12, v14

    const/16 v14, 0xb

    aget-wide v14, p3, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    move/from16 v16, v0

    shl-long v14, v14, v16

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v14, v12, v14

    xor-long/2addr v14, v2

    const/16 v16, 0x0

    aget-wide v16, p3, v16

    xor-long v16, v16, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    move/from16 v18, v0

    shl-long v14, v14, v18

    xor-long v14, v14, v16

    aput-wide v14, p1, p2

    add-int/lit8 v14, p2, 0x1

    const/4 v15, 0x1

    aget-wide v16, p3, v15

    xor-long v16, v16, v4

    move-object/from16 v0, p0

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v15

    xor-long v2, v2, v16

    move-object/from16 v0, p0

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v16, v4, v15

    xor-long v2, v2, v16

    aput-wide v2, p1, v14

    add-int/lit8 v2, p2, 0x2

    const/4 v3, 0x2

    aget-wide v14, p3, v3

    xor-long/2addr v14, v6

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v3

    xor-long/2addr v4, v14

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v14, v6, v3

    xor-long/2addr v4, v14

    aput-wide v4, p1, v2

    add-int/lit8 v2, p2, 0x3

    const/4 v3, 0x3

    aget-wide v4, p3, v3

    xor-long/2addr v4, v8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v6, v8, v3

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v2, p2, 0x4

    const/4 v3, 0x4

    aget-wide v4, p3, v3

    xor-long/2addr v4, v10

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v6, v8, v3

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v6, v10, v3

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v2, p2, 0x5

    const/4 v3, 0x5

    aget-wide v4, p3, v3

    xor-long/2addr v4, v12

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v6, v10, v3

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v6, v12, v3

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v4, v6

    aput-wide v4, p1, v2

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 21

    const/4 v2, 0x5

    aget-wide v2, p3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x6

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/4 v6, 0x7

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0x8

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    const/16 v8, 0x8

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x9

    aget-wide v10, p3, v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v10, v12

    xor-long/2addr v8, v10

    const/16 v10, 0x9

    aget-wide v10, p3, v10

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v10, v12

    const/16 v12, 0xa

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/16 v12, 0xa

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v12, v14

    const/16 v14, 0xb

    aget-wide v14, p3, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki64:I

    move/from16 v16, v0

    shl-long v14, v14, v16

    xor-long/2addr v12, v14

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v14, v12, v14

    xor-long/2addr v14, v2

    aget-wide v16, p1, p2

    const/16 v18, 0x0

    aget-wide v18, p3, v18

    xor-long v18, v18, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    move/from16 v20, v0

    shl-long v14, v14, v20

    xor-long v14, v14, v18

    xor-long v14, v14, v16

    aput-wide v14, p1, p2

    add-int/lit8 v14, p2, 0x1

    aget-wide v16, p1, v14

    const/4 v15, 0x1

    aget-wide v18, p3, v15

    xor-long v18, v18, v4

    move-object/from16 v0, p0

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v15

    xor-long v2, v2, v18

    move-object/from16 v0, p0

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v18, v4, v15

    xor-long v2, v2, v18

    xor-long v2, v2, v16

    aput-wide v2, p1, v14

    add-int/lit8 v2, p2, 0x2

    aget-wide v14, p1, v2

    const/4 v3, 0x2

    aget-wide v16, p3, v3

    xor-long v16, v16, v6

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v3

    xor-long v4, v4, v16

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v16, v6, v3

    xor-long v4, v4, v16

    xor-long/2addr v4, v14

    aput-wide v4, p1, v2

    add-int/lit8 v2, p2, 0x3

    aget-wide v4, p1, v2

    const/4 v3, 0x3

    aget-wide v14, p3, v3

    xor-long/2addr v14, v8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v6, v3

    xor-long/2addr v6, v14

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v14, v8, v3

    xor-long/2addr v6, v14

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v2, p2, 0x4

    aget-wide v4, p1, v2

    const/4 v3, 0x4

    aget-wide v6, p3, v3

    xor-long/2addr v6, v10

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v8, v3

    xor-long/2addr v6, v8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v8, v10, v3

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v2, p2, 0x5

    aget-wide v4, p1, v2

    const/4 v3, 0x5

    aget-wide v6, p3, v3

    xor-long/2addr v6, v12

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k364:I

    ushr-long v8, v10, v3

    xor-long/2addr v6, v8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->k3:I

    shl-long v8, v12, v3

    xor-long/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM384_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, p1, v2

    return-void
.end method
