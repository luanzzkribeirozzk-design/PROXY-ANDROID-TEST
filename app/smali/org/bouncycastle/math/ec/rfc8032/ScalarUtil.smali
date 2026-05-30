.class abstract Lorg/bouncycastle/math/ec/rfc8032/ScalarUtil;
.super Ljava/lang/Object;


# static fields
.field private static final M:J = 0xffffffffL


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addShifted_NP(II[I[I[I[I)V
    .locals 22

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p0

    if-gt v4, v0, :cond_3

    aget v5, p4, v4

    aget v6, p2, v4

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v12

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v8, v14

    aget v5, p3, v4

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v5, v8

    const/16 v10, 0x20

    ushr-long v14, v8, v10

    aput v5, p4, v4

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v5, v6

    aput v5, p2, v4

    const/16 v5, 0x20

    ushr-long v12, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x20

    move/from16 v0, p1

    if-ge v0, v4, :cond_1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v7, v6

    move v9, v8

    :goto_1
    move/from16 v0, p0

    if-gt v4, v0, :cond_3

    aget v10, p4, v4

    shl-int v6, v10, p1

    move/from16 v0, p1

    neg-int v8, v0

    ushr-int v8, v9, v8

    or-int/2addr v6, v8

    aget v8, p2, v4

    int-to-long v8, v8

    const-wide v16, 0xffffffffL

    and-long v8, v8, v16

    add-long/2addr v8, v12

    int-to-long v12, v6

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    add-long/2addr v12, v8

    aget v6, p3, v4

    shl-int v8, v6, p1

    move/from16 v0, p1

    neg-int v9, v0

    ushr-int/2addr v5, v9

    or-int/2addr v5, v8

    int-to-long v8, v10

    const-wide v16, 0xffffffffL

    and-long v8, v8, v16

    add-long/2addr v8, v14

    int-to-long v14, v5

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v14, v8

    long-to-int v8, v14

    const/16 v5, 0x20

    ushr-long/2addr v14, v5

    aput v8, p4, v4

    shl-int v5, v8, p1

    move/from16 v0, p1

    neg-int v9, v0

    ushr-int/2addr v7, v9

    or-int/2addr v5, v7

    int-to-long v0, v5

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    add-long v12, v12, v16

    long-to-int v5, v12

    aput v5, p2, v4

    const/16 v5, 0x20

    ushr-long/2addr v12, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    move v7, v8

    move v9, v10

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    ushr-int/lit8 v5, p1, 0x5

    and-int/lit8 v16, p1, 0x1f

    if-nez v16, :cond_2

    move v4, v5

    :goto_2
    move/from16 v0, p0

    if-gt v4, v0, :cond_3

    aget v6, p2, v4

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v12

    sub-int v8, v4, v5

    aget v8, p5, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    aget v8, p4, v4

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v8, v14

    sub-int v10, v4, v5

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    add-long/2addr v8, v10

    long-to-int v10, v8

    aput v10, p4, v4

    const/16 v10, 0x20

    ushr-long v14, v8, v10

    sub-int v8, v4, v5

    aget v8, p4, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v8, v6

    aput v8, p2, v4

    const/16 v8, 0x20

    ushr-long v12, v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move v4, v5

    move v8, v7

    move v10, v9

    :goto_3
    move/from16 v0, p0

    if-gt v4, v0, :cond_3

    sub-int v7, v4, v5

    aget v11, p5, v7

    shl-int v7, v11, v16

    move/from16 v0, v16

    neg-int v9, v0

    ushr-int v9, v10, v9

    or-int/2addr v7, v9

    aget v9, p2, v4

    int-to-long v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v12, v12, v18

    int-to-long v0, v7

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v12, v12, v18

    sub-int v7, v4, v5

    aget v7, p3, v7

    shl-int v9, v7, v16

    move/from16 v0, v16

    neg-int v10, v0

    ushr-int/2addr v6, v10

    or-int/2addr v6, v9

    aget v9, p4, v4

    int-to-long v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v14, v14, v18

    int-to-long v0, v6

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v14, v14, v18

    long-to-int v6, v14

    aput v6, p4, v4

    const/16 v6, 0x20

    ushr-long/2addr v14, v6

    sub-int v6, v4, v5

    aget v9, p4, v6

    shl-int v6, v9, v16

    move/from16 v0, v16

    neg-int v10, v0

    ushr-int/2addr v8, v10

    or-int/2addr v6, v8

    int-to-long v0, v6

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v12, v12, v18

    long-to-int v6, v12

    aput v6, p2, v4

    const/16 v6, 0x20

    ushr-long/2addr v12, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    move v8, v9

    move v10, v11

    goto :goto_3

    :cond_3
    return-void
.end method

.method static addShifted_UV(II[I[I[I[I)V
    .locals 18

    ushr-int/lit8 v3, p1, 0x5

    and-int/lit8 v12, p1, 0x1f

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    if-nez v12, :cond_0

    move v2, v3

    :goto_0
    move/from16 v0, p0

    if-gt v2, v0, :cond_1

    aget v4, p2, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v4, v10

    aget v6, p3, v2

    int-to-long v6, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    add-long/2addr v6, v8

    sub-int v8, v2, v3

    aget v8, p4, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v4, v8

    sub-int v8, v2, v3

    aget v8, p5, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v6, v8

    long-to-int v8, v4

    aput v8, p2, v2

    const/16 v8, 0x20

    ushr-long v10, v4, v8

    long-to-int v4, v6

    aput v4, p3, v2

    const/16 v4, 0x20

    ushr-long v8, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v2, v3

    move v6, v5

    :goto_1
    move/from16 v0, p0

    if-gt v2, v0, :cond_1

    sub-int v5, v2, v3

    aget v7, p4, v5

    sub-int v5, v2, v3

    aget v5, p5, v5

    shl-int v13, v7, v12

    neg-int v14, v12

    ushr-int/2addr v6, v14

    or-int/2addr v6, v13

    shl-int v13, v5, v12

    neg-int v14, v12

    ushr-int/2addr v4, v14

    or-int/2addr v4, v13

    aget v13, p2, v2

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v10, v14

    aget v13, p3, v2

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v8, v14

    int-to-long v14, v6

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v10, v14

    int-to-long v14, v4

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v8, v14

    long-to-int v4, v10

    aput v4, p2, v2

    const/16 v4, 0x20

    ushr-long/2addr v10, v4

    long-to-int v4, v8

    aput v4, p3, v2

    const/16 v4, 0x20

    ushr-long/2addr v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v6, v7

    goto :goto_1

    :cond_1
    return-void
.end method

.method static getBitLength(I[I)I
    .locals 3

    aget v0, p1, p0

    shr-int/lit8 v0, v0, 0x1f

    :goto_0
    if-lez p0, :cond_0

    aget v1, p1, p0

    if-ne v1, v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, p0, 0x20

    add-int/lit8 v1, v1, 0x20

    aget v2, p1, p0

    xor-int/2addr v0, v2

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method static getBitLengthPositive(I[I)I
    .locals 2

    :goto_0
    if-lez p0, :cond_0

    aget v0, p1, p0

    if-nez v0, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, p0, 0x20

    add-int/lit8 v0, v0, 0x20

    aget v1, p1, p0

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->numberOfLeadingZeros(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method static lessThan(I[I[I)Z
    .locals 4

    const/4 v0, 0x0

    const/high16 v3, -0x80000000

    :cond_0
    aget v1, p1, p0

    add-int/2addr v1, v3

    aget v2, p2, p0

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-gt v1, v2, :cond_1

    add-int/lit8 p0, p0, -0x1

    if-gez p0, :cond_0

    goto :goto_0
.end method

.method static subShifted_NP(II[I[I[I[I)V
    .locals 22

    const-wide/16 v14, 0x0

    const-wide/16 v12, 0x0

    if-nez p1, :cond_0

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p0

    if-gt v4, v0, :cond_3

    aget v5, p4, v4

    aget v6, p2, v4

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v12

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    sub-long/2addr v6, v8

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v8, v14

    aget v5, p3, v4

    int-to-long v10, v5

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    sub-long/2addr v8, v10

    long-to-int v5, v8

    const/16 v10, 0x20

    shr-long v14, v8, v10

    aput v5, p4, v4

    int-to-long v8, v5

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v5, v6

    aput v5, p2, v4

    const/16 v5, 0x20

    shr-long v12, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v4, 0x20

    move/from16 v0, p1

    if-ge v0, v4, :cond_1

    const/4 v8, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    move v7, v6

    move v9, v8

    :goto_1
    move/from16 v0, p0

    if-gt v4, v0, :cond_3

    aget v10, p4, v4

    shl-int v6, v10, p1

    move/from16 v0, p1

    neg-int v8, v0

    ushr-int v8, v9, v8

    or-int/2addr v6, v8

    aget v8, p2, v4

    int-to-long v8, v8

    const-wide v16, 0xffffffffL

    and-long v8, v8, v16

    add-long/2addr v8, v12

    int-to-long v12, v6

    const-wide v16, 0xffffffffL

    and-long v12, v12, v16

    sub-long v12, v8, v12

    aget v6, p3, v4

    shl-int v8, v6, p1

    move/from16 v0, p1

    neg-int v9, v0

    ushr-int/2addr v5, v9

    or-int/2addr v5, v8

    int-to-long v8, v10

    const-wide v16, 0xffffffffL

    and-long v8, v8, v16

    add-long/2addr v8, v14

    int-to-long v14, v5

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    sub-long v14, v8, v14

    long-to-int v8, v14

    const/16 v5, 0x20

    shr-long/2addr v14, v5

    aput v8, p4, v4

    shl-int v5, v8, p1

    move/from16 v0, p1

    neg-int v9, v0

    ushr-int/2addr v7, v9

    or-int/2addr v5, v7

    int-to-long v0, v5

    move-wide/from16 v16, v0

    const-wide v18, 0xffffffffL

    and-long v16, v16, v18

    sub-long v12, v12, v16

    long-to-int v5, v12

    aput v5, p2, v4

    const/16 v5, 0x20

    shr-long/2addr v12, v5

    add-int/lit8 v4, v4, 0x1

    move v5, v6

    move v7, v8

    move v9, v10

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    move/from16 v2, p0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    ushr-int/lit8 v5, p1, 0x5

    and-int/lit8 v16, p1, 0x1f

    if-nez v16, :cond_2

    move v4, v5

    :goto_2
    move/from16 v0, p0

    if-gt v4, v0, :cond_3

    aget v6, p2, v4

    int-to-long v6, v6

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    add-long/2addr v6, v12

    sub-int v8, v4, v5

    aget v8, p5, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    sub-long/2addr v6, v8

    aget v8, p4, v4

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    add-long/2addr v8, v14

    sub-int v10, v4, v5

    aget v10, p3, v10

    int-to-long v10, v10

    const-wide v12, 0xffffffffL

    and-long/2addr v10, v12

    sub-long/2addr v8, v10

    long-to-int v10, v8

    aput v10, p4, v4

    const/16 v10, 0x20

    shr-long v14, v8, v10

    sub-int v8, v4, v5

    aget v8, p4, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v8, v6

    aput v8, p2, v4

    const/16 v8, 0x20

    shr-long v12, v6, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    move v4, v5

    move v8, v7

    move v10, v9

    :goto_3
    move/from16 v0, p0

    if-gt v4, v0, :cond_3

    sub-int v7, v4, v5

    aget v11, p5, v7

    shl-int v7, v11, v16

    move/from16 v0, v16

    neg-int v9, v0

    ushr-int v9, v10, v9

    or-int/2addr v7, v9

    aget v9, p2, v4

    int-to-long v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v12, v12, v18

    int-to-long v0, v7

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    sub-long v12, v12, v18

    sub-int v7, v4, v5

    aget v7, p3, v7

    shl-int v9, v7, v16

    move/from16 v0, v16

    neg-int v10, v0

    ushr-int/2addr v6, v10

    or-int/2addr v6, v9

    aget v9, p4, v4

    int-to-long v0, v9

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    add-long v14, v14, v18

    int-to-long v0, v6

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    sub-long v14, v14, v18

    long-to-int v6, v14

    aput v6, p4, v4

    const/16 v6, 0x20

    shr-long/2addr v14, v6

    sub-int v6, v4, v5

    aget v9, p4, v6

    shl-int v6, v9, v16

    move/from16 v0, v16

    neg-int v10, v0

    ushr-int/2addr v8, v10

    or-int/2addr v6, v8

    int-to-long v0, v6

    move-wide/from16 v18, v0

    const-wide v20, 0xffffffffL

    and-long v18, v18, v20

    sub-long v12, v12, v18

    long-to-int v6, v12

    aput v6, p2, v4

    const/16 v6, 0x20

    shr-long/2addr v12, v6

    add-int/lit8 v4, v4, 0x1

    move v6, v7

    move v8, v9

    move v10, v11

    goto :goto_3

    :cond_3
    return-void
.end method

.method static subShifted_UV(II[I[I[I[I)V
    .locals 18

    ushr-int/lit8 v3, p1, 0x5

    and-int/lit8 v12, p1, 0x1f

    const-wide/16 v10, 0x0

    const-wide/16 v8, 0x0

    if-nez v12, :cond_0

    move v2, v3

    :goto_0
    move/from16 v0, p0

    if-gt v2, v0, :cond_1

    aget v4, p2, v2

    int-to-long v4, v4

    const-wide v6, 0xffffffffL

    and-long/2addr v4, v6

    add-long/2addr v4, v10

    aget v6, p3, v2

    int-to-long v6, v6

    const-wide v10, 0xffffffffL

    and-long/2addr v6, v10

    add-long/2addr v6, v8

    sub-int v8, v2, v3

    aget v8, p4, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    sub-long/2addr v4, v8

    sub-int v8, v2, v3

    aget v8, p5, v8

    int-to-long v8, v8

    const-wide v10, 0xffffffffL

    and-long/2addr v8, v10

    sub-long/2addr v6, v8

    long-to-int v8, v4

    aput v8, p2, v2

    const/16 v8, 0x20

    shr-long v10, v4, v8

    long-to-int v4, v6

    aput v4, p3, v2

    const/16 v4, 0x20

    shr-long v8, v6, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    move v2, v3

    move v6, v5

    :goto_1
    move/from16 v0, p0

    if-gt v2, v0, :cond_1

    sub-int v5, v2, v3

    aget v7, p4, v5

    sub-int v5, v2, v3

    aget v5, p5, v5

    shl-int v13, v7, v12

    neg-int v14, v12

    ushr-int/2addr v6, v14

    or-int/2addr v6, v13

    shl-int v13, v5, v12

    neg-int v14, v12

    ushr-int/2addr v4, v14

    or-int/2addr v4, v13

    aget v13, p2, v2

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v10, v14

    aget v13, p3, v2

    int-to-long v14, v13

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    add-long/2addr v8, v14

    int-to-long v14, v6

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    sub-long/2addr v10, v14

    int-to-long v14, v4

    const-wide v16, 0xffffffffL

    and-long v14, v14, v16

    sub-long/2addr v8, v14

    long-to-int v4, v10

    aput v4, p2, v2

    const/16 v4, 0x20

    shr-long/2addr v10, v4

    long-to-int v4, v8

    aput v4, p3, v2

    const/16 v4, 0x20

    shr-long/2addr v8, v4

    add-int/lit8 v2, v2, 0x1

    move v4, v5

    move v6, v7

    goto :goto_1

    :cond_1
    return-void
.end method
