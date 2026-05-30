.class public Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_128;
.super Ljava/lang/Object;


# static fields
.field public static final SIZE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add([J[J[J)V
    .locals 6

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

    return-void
.end method

.method public static copy([J[J)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-wide v0, p0, v2

    aput-wide v0, p1, v2

    aget-wide v0, p0, v3

    aput-wide v0, p1, v3

    return-void
.end method

.method public static equal([J[J)Z
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    or-long/2addr v2, v8

    aget-wide v4, p0, v0

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    or-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public static multiply([J[J[J)V
    .locals 22

    const/4 v2, 0x0

    aget-wide v16, p0, v2

    const/4 v2, 0x1

    aget-wide v14, p0, v2

    const/4 v2, 0x0

    aget-wide v12, p1, v2

    const/4 v2, 0x1

    aget-wide v10, p1, v2

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_0

    const-wide/16 v18, 0x1

    and-long v18, v18, v16

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    const/4 v3, 0x1

    ushr-long v16, v16, v3

    and-long v20, v12, v18

    xor-long v8, v8, v20

    and-long v18, v18, v10

    xor-long v6, v6, v18

    const-wide/16 v18, 0x1

    and-long v18, v18, v14

    move-wide/from16 v0, v18

    neg-long v0, v0

    move-wide/from16 v18, v0

    const/4 v3, 0x1

    ushr-long/2addr v14, v3

    and-long v20, v12, v18

    xor-long v6, v6, v20

    and-long v18, v18, v10

    xor-long v4, v4, v18

    const/16 v3, 0x3f

    shr-long v18, v10, v3

    const/4 v3, 0x1

    shl-long/2addr v10, v3

    const/16 v3, 0x3f

    ushr-long v20, v12, v3

    or-long v10, v10, v20

    const/4 v3, 0x1

    shl-long/2addr v12, v3

    const-wide/16 v20, 0x87

    and-long v18, v18, v20

    xor-long v12, v12, v18

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    shl-long v2, v4, v2

    xor-long/2addr v2, v4

    const/4 v10, 0x2

    shl-long v10, v4, v10

    xor-long/2addr v2, v10

    const/4 v10, 0x7

    shl-long v10, v4, v10

    xor-long/2addr v2, v10

    xor-long/2addr v2, v8

    const/16 v8, 0x3f

    ushr-long v8, v4, v8

    const/16 v10, 0x3e

    ushr-long v10, v4, v10

    xor-long/2addr v8, v10

    const/16 v10, 0x39

    ushr-long/2addr v4, v10

    xor-long/2addr v4, v8

    xor-long/2addr v4, v6

    const/4 v6, 0x0

    aput-wide v2, p2, v6

    const/4 v2, 0x1

    aput-wide v4, p2, v2

    return-void
.end method

.method public static multiplyX([J[J)V
    .locals 13

    const/16 v12, 0x3f

    const/4 v11, 0x0

    const/4 v10, 0x1

    aget-wide v0, p0, v11

    aget-wide v2, p0, v10

    shr-long v4, v2, v12

    shl-long v6, v0, v10

    const-wide/16 v8, 0x87

    and-long/2addr v4, v8

    xor-long/2addr v4, v6

    aput-wide v4, p1, v11

    shl-long/2addr v2, v10

    ushr-long/2addr v0, v12

    or-long/2addr v0, v2

    aput-wide v0, p1, v10

    return-void
.end method

.method public static multiplyX8([J[J)V
    .locals 14

    const/16 v13, 0x38

    const/16 v12, 0x8

    const/4 v11, 0x0

    const/4 v10, 0x1

    aget-wide v0, p0, v11

    aget-wide v2, p0, v10

    ushr-long v4, v2, v13

    shl-long v6, v0, v12

    xor-long/2addr v6, v4

    shl-long v8, v4, v10

    xor-long/2addr v6, v8

    const/4 v8, 0x2

    shl-long v8, v4, v8

    xor-long/2addr v6, v8

    const/4 v8, 0x7

    shl-long/2addr v4, v8

    xor-long/2addr v4, v6

    aput-wide v4, p1, v11

    shl-long/2addr v2, v12

    ushr-long/2addr v0, v13

    or-long/2addr v0, v2

    aput-wide v0, p1, v10

    return-void
.end method

.method public static one([J)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x1

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, p0, v0

    return-void
.end method

.method public static square([J[J)V
    .locals 12

    const/4 v0, 0x4

    new-array v0, v0, [J

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v1, 0x1

    aget-wide v2, p0, v1

    const/4 v1, 0x2

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/math/raw/Interleave;->expand64To128(J[JI)V

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const/4 v1, 0x1

    aget-wide v4, v0, v1

    const/4 v1, 0x2

    aget-wide v6, v0, v1

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    const/4 v8, 0x1

    shl-long v8, v0, v8

    xor-long/2addr v8, v0

    const/4 v10, 0x2

    shl-long v10, v0, v10

    xor-long/2addr v8, v10

    const/4 v10, 0x7

    shl-long v10, v0, v10

    xor-long/2addr v8, v10

    xor-long/2addr v4, v8

    const/16 v8, 0x3f

    ushr-long v8, v0, v8

    const/16 v10, 0x3e

    ushr-long v10, v0, v10

    xor-long/2addr v8, v10

    const/16 v10, 0x39

    ushr-long/2addr v0, v10

    xor-long/2addr v0, v8

    xor-long/2addr v0, v6

    const/4 v6, 0x1

    shl-long v6, v0, v6

    xor-long/2addr v6, v0

    const/4 v8, 0x2

    shl-long v8, v0, v8

    xor-long/2addr v6, v8

    const/4 v8, 0x7

    shl-long v8, v0, v8

    xor-long/2addr v6, v8

    xor-long/2addr v2, v6

    const/16 v6, 0x3f

    ushr-long v6, v0, v6

    const/16 v8, 0x3e

    ushr-long v8, v0, v8

    xor-long/2addr v6, v8

    const/16 v8, 0x39

    ushr-long/2addr v0, v8

    xor-long/2addr v0, v6

    xor-long/2addr v0, v4

    const/4 v4, 0x0

    aput-wide v2, p1, v4

    const/4 v2, 0x1

    aput-wide v0, p1, v2

    return-void
.end method

.method public static x([J)V
    .locals 4

    const/4 v0, 0x0

    const-wide/16 v2, 0x2

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    aput-wide v2, p0, v0

    return-void
.end method

.method public static zero([J)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aput-wide v2, p0, v0

    return-void
.end method
