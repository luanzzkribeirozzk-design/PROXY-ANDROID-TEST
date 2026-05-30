.class public Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_256;
.super Ljava/lang/Object;


# static fields
.field public static final SIZE:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    aget-wide v0, p0, v4

    aget-wide v2, p1, v4

    xor-long/2addr v0, v2

    aput-wide v0, p2, v4

    aget-wide v0, p0, v5

    aget-wide v2, p1, v5

    xor-long/2addr v0, v2

    aput-wide v0, p2, v5

    aget-wide v0, p0, v6

    aget-wide v2, p1, v6

    xor-long/2addr v0, v2

    aput-wide v0, p2, v6

    aget-wide v0, p0, v7

    aget-wide v2, p1, v7

    xor-long/2addr v0, v2

    aput-wide v0, p2, v7

    return-void
.end method

.method public static copy([J[J)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-wide v0, p0, v2

    aput-wide v0, p1, v2

    aget-wide v0, p0, v3

    aput-wide v0, p1, v3

    aget-wide v0, p0, v4

    aput-wide v0, p1, v4

    aget-wide v0, p0, v5

    aput-wide v0, p1, v5

    return-void
.end method

.method public static equal([J[J)Z
    .locals 12

    const-wide/16 v10, 0x0

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    or-long/2addr v2, v10

    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    aget-wide v4, p0, v8

    aget-wide v6, p1, v8

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    aget-wide v4, p0, v9

    aget-wide v6, p1, v9

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    cmp-long v2, v2, v10

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static multiply([J[J[J)V
    .locals 34

    const/4 v2, 0x0

    aget-wide v30, p0, v2

    const/4 v2, 0x1

    aget-wide v28, p0, v2

    const/4 v2, 0x2

    aget-wide v24, p0, v2

    const/4 v2, 0x3

    aget-wide v22, p0, v2

    const/4 v2, 0x0

    aget-wide v26, p1, v2

    const/4 v2, 0x1

    aget-wide v16, p1, v2

    const/4 v2, 0x2

    aget-wide v14, p1, v2

    const/4 v2, 0x3

    aget-wide v18, p1, v2

    const-wide/16 v12, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-wide/from16 v20, v18

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    const-wide/16 v18, 0x1

    and-long v18, v18, v30

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    const/4 v3, 0x1

    ushr-long v30, v30, v3

    and-long v32, v26, v18

    xor-long v12, v12, v32

    and-long v32, v16, v18

    xor-long v10, v10, v32

    and-long v32, v14, v18

    xor-long v8, v8, v32

    and-long v18, v18, v20

    xor-long v6, v6, v18

    const-wide/16 v18, 0x1

    and-long v18, v18, v28

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    const/4 v3, 0x1

    ushr-long v28, v28, v3

    and-long v32, v26, v18

    xor-long v10, v10, v32

    and-long v32, v16, v18

    xor-long v8, v8, v32

    and-long v32, v14, v18

    xor-long v6, v6, v32

    and-long v18, v18, v20

    xor-long v4, v4, v18

    const/16 v3, 0x3f

    shr-long v32, v20, v3

    const/4 v3, 0x1

    shl-long v18, v20, v3

    const/16 v3, 0x3f

    ushr-long v20, v14, v3

    or-long v18, v18, v20

    const/4 v3, 0x1

    shl-long/2addr v14, v3

    const/16 v3, 0x3f

    ushr-long v20, v16, v3

    or-long v14, v14, v20

    const/4 v3, 0x1

    shl-long v16, v16, v3

    const/16 v3, 0x3f

    ushr-long v20, v26, v3

    or-long v16, v16, v20

    const/4 v3, 0x1

    shl-long v20, v26, v3

    const-wide/16 v26, 0x425

    and-long v26, v26, v32

    xor-long v26, v26, v20

    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v20, v18

    goto :goto_0

    :cond_0
    const/16 v2, 0x3e

    ushr-long v2, v20, v2

    xor-long v2, v2, v26

    const/16 v18, 0x3b

    ushr-long v18, v20, v18

    xor-long v2, v2, v18

    const/16 v18, 0x36

    ushr-long v18, v20, v18

    xor-long v18, v18, v2

    const/4 v2, 0x2

    shl-long v2, v20, v2

    xor-long v2, v2, v20

    const/16 v26, 0x5

    shl-long v26, v20, v26

    xor-long v2, v2, v26

    const/16 v26, 0xa

    shl-long v20, v20, v26

    xor-long v20, v20, v2

    const/4 v2, 0x0

    :goto_1
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    const-wide/16 v26, 0x1

    and-long v26, v26, v24

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    const/4 v3, 0x1

    ushr-long v24, v24, v3

    and-long v28, v20, v26

    xor-long v12, v12, v28

    and-long v28, v18, v26

    xor-long v10, v10, v28

    and-long v28, v16, v26

    xor-long v8, v8, v28

    and-long v26, v26, v14

    xor-long v6, v6, v26

    const-wide/16 v26, 0x1

    and-long v26, v26, v22

    move-wide/from16 v0, v26

    neg-long v0, v0

    move-wide/from16 v26, v0

    const/4 v3, 0x1

    ushr-long v22, v22, v3

    and-long v28, v20, v26

    xor-long v10, v10, v28

    and-long v28, v18, v26

    xor-long v8, v8, v28

    and-long v28, v16, v26

    xor-long v6, v6, v28

    and-long v26, v26, v14

    xor-long v4, v4, v26

    const/16 v3, 0x3f

    shr-long v26, v14, v3

    const/4 v3, 0x1

    shl-long/2addr v14, v3

    const/16 v3, 0x3f

    ushr-long v28, v16, v3

    or-long v14, v14, v28

    const/4 v3, 0x1

    shl-long v16, v16, v3

    const/16 v3, 0x3f

    ushr-long v28, v18, v3

    or-long v16, v16, v28

    const/4 v3, 0x1

    shl-long v18, v18, v3

    const/16 v3, 0x3f

    ushr-long v28, v20, v3

    or-long v18, v18, v28

    const/4 v3, 0x1

    shl-long v20, v20, v3

    const-wide/16 v28, 0x425

    and-long v26, v26, v28

    xor-long v20, v20, v26

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    shl-long v2, v4, v2

    xor-long/2addr v2, v4

    const/4 v14, 0x5

    shl-long v14, v4, v14

    xor-long/2addr v2, v14

    const/16 v14, 0xa

    shl-long v14, v4, v14

    xor-long/2addr v2, v14

    xor-long/2addr v2, v12

    const/16 v12, 0x3e

    ushr-long v12, v4, v12

    const/16 v14, 0x3b

    ushr-long v14, v4, v14

    xor-long/2addr v12, v14

    const/16 v14, 0x36

    ushr-long/2addr v4, v14

    xor-long/2addr v4, v12

    xor-long/2addr v4, v10

    const/4 v10, 0x0

    aput-wide v2, p2, v10

    const/4 v2, 0x1

    aput-wide v4, p2, v2

    const/4 v2, 0x2

    aput-wide v8, p2, v2

    const/4 v2, 0x3

    aput-wide v6, p2, v2

    return-void
.end method

.method public static multiplyX([J[J)V
    .locals 16

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    const/16 v8, 0x3f

    shr-long v8, v6, v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    shl-long v12, v0, v11

    const-wide/16 v14, 0x425

    and-long/2addr v8, v14

    xor-long/2addr v8, v12

    aput-wide v8, p1, v10

    const/4 v8, 0x1

    const/4 v9, 0x1

    shl-long v10, v2, v9

    const/16 v9, 0x3f

    ushr-long/2addr v0, v9

    or-long/2addr v0, v10

    aput-wide v0, p1, v8

    const/4 v0, 0x2

    const/4 v1, 0x1

    shl-long v8, v4, v1

    const/16 v1, 0x3f

    ushr-long/2addr v2, v1

    or-long/2addr v2, v8

    aput-wide v2, p1, v0

    const/4 v0, 0x3

    const/4 v1, 0x1

    shl-long v2, v6, v1

    const/16 v1, 0x3f

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static multiplyX8([J[J)V
    .locals 16

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v2, p0, v2

    const/4 v4, 0x2

    aget-wide v4, p0, v4

    const/4 v6, 0x3

    aget-wide v6, p0, v6

    const/16 v8, 0x38

    ushr-long v8, v6, v8

    const/4 v10, 0x0

    const/16 v11, 0x8

    shl-long v12, v0, v11

    xor-long/2addr v12, v8

    const/4 v11, 0x2

    shl-long v14, v8, v11

    xor-long/2addr v12, v14

    const/4 v11, 0x5

    shl-long v14, v8, v11

    xor-long/2addr v12, v14

    const/16 v11, 0xa

    shl-long/2addr v8, v11

    xor-long/2addr v8, v12

    aput-wide v8, p1, v10

    const/4 v8, 0x1

    const/16 v9, 0x8

    shl-long v10, v2, v9

    const/16 v9, 0x38

    ushr-long/2addr v0, v9

    or-long/2addr v0, v10

    aput-wide v0, p1, v8

    const/4 v0, 0x2

    const/16 v1, 0x8

    shl-long v8, v4, v1

    const/16 v1, 0x38

    ushr-long/2addr v2, v1

    or-long/2addr v2, v8

    aput-wide v2, p1, v0

    const/4 v0, 0x3

    const/16 v1, 0x8

    shl-long v2, v6, v1

    const/16 v1, 0x38

    ushr-long/2addr v4, v1

    or-long/2addr v2, v4

    aput-wide v2, p1, v0

    return-void
.end method

.method public static one([J)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aput-wide v4, p0, v0

    const/4 v0, 0x2

    aput-wide v4, p0, v0

    const/4 v0, 0x3

    aput-wide v4, p0, v0

    return-void
.end method

.method public static square([J[J)V
    .locals 13

    const/16 v0, 0x8

    const/4 v12, 0x4

    new-array v2, v0, [J

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v12, :cond_0

    aget-wide v4, p0, v1

    shl-int/lit8 v3, v1, 0x1

    invoke-static {v4, v5, v2, v3}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, -0x1

    if-lt v0, v12, :cond_1

    aget-wide v4, v2, v0

    add-int/lit8 v1, v0, -0x4

    aget-wide v6, v2, v1

    const/4 v3, 0x2

    shl-long v8, v4, v3

    xor-long/2addr v8, v4

    const/4 v3, 0x5

    shl-long v10, v4, v3

    xor-long/2addr v8, v10

    const/16 v3, 0xa

    shl-long v10, v4, v3

    xor-long/2addr v8, v10

    xor-long/2addr v6, v8

    aput-wide v6, v2, v1

    add-int/lit8 v1, v0, -0x4

    add-int/lit8 v1, v1, 0x1

    aget-wide v6, v2, v1

    const/16 v3, 0x3e

    ushr-long v8, v4, v3

    const/16 v3, 0x3b

    ushr-long v10, v4, v3

    xor-long/2addr v8, v10

    const/16 v3, 0x36

    ushr-long/2addr v4, v3

    xor-long/2addr v4, v8

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    goto :goto_1

    :cond_1
    invoke-static {v2, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_256;->copy([J[J)V

    return-void
.end method

.method public static x([J)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    const-wide/16 v2, 0x2

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aput-wide v4, p0, v0

    const/4 v0, 0x2

    aput-wide v4, p0, v0

    const/4 v0, 0x3

    aput-wide v4, p0, v0

    return-void
.end method

.method public static zero([J)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aput-wide v2, p0, v0

    const/4 v0, 0x2

    aput-wide v2, p0, v0

    const/4 v0, 0x3

    aput-wide v2, p0, v0

    return-void
.end method
