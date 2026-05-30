.class public Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 10

    const/16 v9, 0x100

    const/4 v1, 0x2

    const/16 v8, 0x10

    const/4 v7, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    if-nez v0, :cond_1

    filled-new-array {v8, v9, v1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    :cond_0
    new-array v0, v8, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([B[B)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v8, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    aget-object v3, v0, v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    aget-object v4, v3, v7

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    aget-object v0, v3, v7

    aget-object v4, v3, v7

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP7([J[J)V

    :goto_1
    move v0, v1

    :goto_2
    if-ge v0, v9, :cond_4

    shr-int/lit8 v4, v0, 0x1

    aget-object v4, v3, v4

    aget-object v5, v3, v0

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    aget-object v4, v3, v0

    aget-object v5, v3, v7

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([B[B)B

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    add-int/lit8 v4, v2, -0x1

    aget-object v0, v0, v4

    aget-object v0, v0, v7

    aget-object v4, v3, v7

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([J[J)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public multiplyH([B)V
    .locals 24

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/4 v5, 0x0

    aget-object v4, v4, v5

    const/4 v5, 0x0

    aget-byte v5, p1, v5

    and-int/lit16 v5, v5, 0xff

    aget-object v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/4 v6, 0x1

    aget-object v5, v5, v6

    const/4 v6, 0x1

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    aget-object v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/4 v7, 0x2

    aget-object v6, v6, v7

    const/4 v7, 0x2

    aget-byte v7, p1, v7

    and-int/lit16 v7, v7, 0xff

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/4 v8, 0x3

    aget-object v7, v7, v8

    const/4 v8, 0x3

    aget-byte v8, p1, v8

    and-int/lit16 v8, v8, 0xff

    aget-object v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const/4 v9, 0x4

    aget-byte v9, p1, v9

    and-int/lit16 v9, v9, 0xff

    aget-object v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/4 v10, 0x5

    aget-object v9, v9, v10

    const/4 v10, 0x5

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget-object v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/4 v11, 0x6

    aget-object v10, v10, v11

    const/4 v11, 0x6

    aget-byte v11, p1, v11

    and-int/lit16 v11, v11, 0xff

    aget-object v10, v10, v11

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/4 v12, 0x7

    aget-object v11, v11, v12

    const/4 v12, 0x7

    aget-byte v12, p1, v12

    and-int/lit16 v12, v12, 0xff

    aget-object v11, v11, v12

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/16 v13, 0x8

    aget-object v12, v12, v13

    const/16 v13, 0x8

    aget-byte v13, p1, v13

    and-int/lit16 v13, v13, 0xff

    aget-object v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/16 v14, 0x9

    aget-object v13, v13, v14

    const/16 v14, 0x9

    aget-byte v14, p1, v14

    and-int/lit16 v14, v14, 0xff

    aget-object v13, v13, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/16 v15, 0xa

    aget-object v14, v14, v15

    const/16 v15, 0xa

    aget-byte v15, p1, v15

    and-int/lit16 v15, v15, 0xff

    aget-object v14, v14, v15

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    const/16 v16, 0xb

    aget-object v15, v15, v16

    const/16 v16, 0xb

    aget-byte v16, p1, v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    move-object/from16 v16, v0

    const/16 v17, 0xc

    aget-object v16, v16, v17

    const/16 v17, 0xc

    aget-byte v17, p1, v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    aget-object v16, v16, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    move-object/from16 v17, v0

    const/16 v18, 0xd

    aget-object v17, v17, v18

    const/16 v18, 0xd

    aget-byte v18, p1, v18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    aget-object v17, v17, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    move-object/from16 v18, v0

    const/16 v19, 0xe

    aget-object v18, v18, v19

    const/16 v19, 0xe

    aget-byte v19, p1, v19

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    aget-object v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables64kGCMMultiplier;->T:[[[J

    move-object/from16 v19, v0

    const/16 v20, 0xf

    aget-object v19, v19, v20

    const/16 v20, 0xf

    aget-byte v20, p1, v20

    move/from16 v0, v20

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    aget-object v19, v19, v20

    const/16 v20, 0x0

    aget-wide v20, v4, v20

    const/16 v22, 0x0

    aget-wide v22, v5, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v6, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v7, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v8, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v9, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v10, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v11, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v12, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v13, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v14, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v15, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v16, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v17, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v18, v22

    xor-long v20, v20, v22

    const/16 v22, 0x0

    aget-wide v22, v19, v22

    xor-long v20, v20, v22

    const/16 v22, 0x1

    aget-wide v22, v4, v22

    const/4 v4, 0x1

    aget-wide v4, v5, v4

    xor-long v4, v4, v22

    const/16 v22, 0x1

    aget-wide v22, v6, v22

    xor-long v4, v4, v22

    const/4 v6, 0x1

    aget-wide v6, v7, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v8, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v9, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v10, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v11, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v12, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v13, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v14, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v15, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v16, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v17, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v18, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x1

    aget-wide v6, v19, v6

    xor-long/2addr v4, v6

    const/4 v6, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2, v6}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    const/16 v6, 0x8

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0, v6}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
