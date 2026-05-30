.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM402_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I


# direct methods
.method public constructor <init>(IIIIJ)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 22

    const/16 v2, 0x9

    aget-wide v2, p3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xa

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xa

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xc

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    const/16 v8, 0xc

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x27

    ushr-long v10, v2, v10

    const/16 v12, 0x19

    shl-long v12, v4, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x6

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/16 v12, 0x27

    ushr-long v12, v4, v12

    const/16 v14, 0x19

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    const/4 v14, 0x7

    aget-wide v14, p3, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    move/from16 v16, v0

    ushr-long v14, v14, v16

    xor-long/2addr v12, v14

    const/16 v14, 0x8

    aget-wide v14, p3, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    move/from16 v16, v0

    shl-long v14, v14, v16

    xor-long/2addr v12, v14

    const/16 v14, 0x27

    ushr-long v14, v6, v14

    const/16 v16, 0x19

    shl-long v16, v8, v16

    xor-long v14, v14, v16

    const/16 v16, 0x8

    aget-wide v16, p3, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    move/from16 v18, v0

    ushr-long v16, v16, v18

    xor-long v14, v14, v16

    const/16 v16, 0x9

    aget-wide v16, p3, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    move/from16 v18, v0

    shl-long v16, v16, v18

    xor-long v14, v14, v16

    const/16 v16, 0x0

    aget-wide v16, p3, v16

    xor-long v16, v16, v10

    aput-wide v16, p1, p2

    add-int/lit8 v16, p2, 0x1

    const/16 v17, 0x1

    aget-wide v18, p3, v17

    xor-long v18, v18, v12

    aput-wide v18, p1, v16

    add-int/lit8 v16, p2, 0x2

    const/16 v17, 0x2

    aget-wide v18, p3, v17

    xor-long v18, v18, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    move/from16 v17, v0

    shl-long v20, v10, v17

    xor-long v18, v18, v20

    aput-wide v18, p1, v16

    add-int/lit8 v16, p2, 0x3

    const/16 v17, 0x3

    aget-wide v18, p3, v17

    xor-long v18, v18, v2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    move/from16 v17, v0

    ushr-long v10, v10, v17

    xor-long v10, v10, v18

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    move/from16 v17, v0

    shl-long v18, v12, v17

    xor-long v10, v10, v18

    aput-wide v10, p1, v16

    add-int/lit8 v10, p2, 0x4

    const/4 v11, 0x4

    aget-wide v16, p3, v11

    xor-long v4, v4, v16

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v12, v11

    xor-long/2addr v4, v12

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v14, v11

    xor-long/2addr v4, v12

    aput-wide v4, p1, v10

    add-int/lit8 v4, p2, 0x5

    const/4 v5, 0x5

    aget-wide v10, p3, v5

    xor-long/2addr v6, v10

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v10, v14, v5

    xor-long/2addr v6, v10

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v10, v2, v5

    xor-long/2addr v6, v10

    aput-wide v6, p1, v4

    add-int/lit8 v4, p2, 0x6

    const/4 v5, 0x6

    aget-wide v6, p3, v5

    xor-long/2addr v6, v8

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v5

    xor-long/2addr v2, v6

    move-object/from16 v0, p0

    iget-wide v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v2, v6

    aput-wide v2, p1, v4

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 24

    const/16 v2, 0x9

    aget-wide v2, p3, v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0xa

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xa

    aget-wide v4, p3, v4

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    const/16 v6, 0xb

    aget-wide v6, p3, v6

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v6, v8

    const/16 v8, 0xc

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v8, v10

    xor-long/2addr v6, v8

    const/16 v8, 0xc

    aget-wide v8, p3, v8

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v8, v10

    const/16 v10, 0x27

    ushr-long v10, v2, v10

    const/16 v12, 0x19

    shl-long v12, v4, v12

    xor-long/2addr v10, v12

    const/4 v12, 0x6

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/4 v12, 0x7

    aget-wide v12, p3, v12

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v12, v14

    xor-long/2addr v10, v12

    const/16 v12, 0x27

    ushr-long v12, v4, v12

    const/16 v14, 0x19

    shl-long v14, v6, v14

    xor-long/2addr v12, v14

    const/4 v14, 0x7

    aget-wide v14, p3, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    move/from16 v16, v0

    ushr-long v14, v14, v16

    xor-long/2addr v12, v14

    const/16 v14, 0x8

    aget-wide v14, p3, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    move/from16 v16, v0

    shl-long v14, v14, v16

    xor-long/2addr v12, v14

    const/16 v14, 0x27

    ushr-long v14, v6, v14

    const/16 v16, 0x19

    shl-long v16, v8, v16

    xor-long v14, v14, v16

    const/16 v16, 0x8

    aget-wide v16, p3, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    move/from16 v18, v0

    ushr-long v16, v16, v18

    xor-long v14, v14, v16

    const/16 v16, 0x9

    aget-wide v16, p3, v16

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    move/from16 v18, v0

    shl-long v16, v16, v18

    xor-long v14, v14, v16

    aget-wide v16, p1, p2

    const/16 v18, 0x0

    aget-wide v18, p3, v18

    xor-long v18, v18, v10

    xor-long v16, v16, v18

    aput-wide v16, p1, p2

    add-int/lit8 v16, p2, 0x1

    aget-wide v18, p1, v16

    const/16 v17, 0x1

    aget-wide v20, p3, v17

    xor-long v20, v20, v12

    xor-long v18, v18, v20

    aput-wide v18, p1, v16

    add-int/lit8 v16, p2, 0x2

    aget-wide v18, p1, v16

    const/16 v17, 0x2

    aget-wide v20, p3, v17

    xor-long v20, v20, v14

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    move/from16 v17, v0

    shl-long v22, v10, v17

    xor-long v20, v20, v22

    xor-long v18, v18, v20

    aput-wide v18, p1, v16

    add-int/lit8 v16, p2, 0x3

    aget-wide v18, p1, v16

    const/16 v17, 0x3

    aget-wide v20, p3, v17

    xor-long v20, v20, v2

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    move/from16 v17, v0

    ushr-long v10, v10, v17

    xor-long v10, v10, v20

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    move/from16 v17, v0

    shl-long v20, v12, v17

    xor-long v10, v10, v20

    xor-long v10, v10, v18

    aput-wide v10, p1, v16

    add-int/lit8 v10, p2, 0x4

    aget-wide v16, p1, v10

    const/4 v11, 0x4

    aget-wide v18, p3, v11

    xor-long v4, v4, v18

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v12, v11

    xor-long/2addr v4, v12

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v14, v11

    xor-long/2addr v4, v12

    xor-long v4, v4, v16

    aput-wide v4, p1, v10

    add-int/lit8 v4, p2, 0x5

    aget-wide v10, p1, v4

    const/4 v5, 0x5

    aget-wide v12, p3, v5

    xor-long/2addr v6, v12

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v12, v14, v5

    xor-long/2addr v6, v12

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v2, v5

    xor-long/2addr v6, v12

    xor-long/2addr v6, v10

    aput-wide v6, p1, v4

    add-int/lit8 v4, p2, 0x6

    aget-wide v6, p1, v4

    const/4 v5, 0x6

    aget-wide v10, p3, v5

    xor-long/2addr v8, v10

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v5

    xor-long/2addr v2, v8

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM402_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v2, v8

    xor-long/2addr v2, v6

    aput-wide v2, p1, v4

    return-void
.end method
