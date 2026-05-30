.class public abstract Lorg/bouncycastle/math/ec/rfc7748/X448;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/math/ec/rfc7748/X448$F;,
        Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;
    }
.end annotation


# static fields
.field private static final C_A:I = 0x262a6

.field private static final C_A24:I = 0x98aa

.field public static final POINT_SIZE:I = 0x38

.field public static final SCALAR_SIZE:I = 0x38


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateAgreement([BI[BI[BI)Z
    .locals 1

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/math/ec/rfc7748/X448;->scalarMult([BI[BI[BI)V

    const/16 v0, 0x38

    invoke-static {p4, p5, v0}, Lorg/bouncycastle/util/Arrays;->areAllZeroes([BII)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static decode32([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static decodeScalar([BI[I)V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x4

    add-int/2addr v2, p1

    invoke-static {p0, v2}, Lorg/bouncycastle/math/ec/rfc7748/X448;->decode32([BI)I

    move-result v2

    aput v2, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget v0, p2, v1

    and-int/lit8 v0, v0, -0x4

    aput v0, p2, v1

    const/16 v0, 0xd

    aget v1, p2, v0

    const/high16 v2, -0x80000000

    or-int/2addr v1, v2

    aput v1, p2, v0

    return-void
.end method

.method public static generatePrivateKey(Ljava/security/SecureRandom;[B)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x38

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "k"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xfc

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    const/16 v0, 0x37

    aget-byte v1, p1, v0

    or-int/lit16 v1, v1, 0x80

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    return-void
.end method

.method public static generatePublicKey([BI[BI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448;->scalarMultBase([BI[BI)V

    return-void
.end method

.method private static pointDouble([I[I)V
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v1

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->add([I[I[I)V

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sub([I[I[I)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sqr([I[I)V

    invoke-static {v1, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sqr([I[I)V

    invoke-static {v0, v1, p0}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([I[I[I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sub([I[I[I)V

    const v2, 0x98aa

    invoke-static {v0, v2, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([II[I)V

    invoke-static {p1, v1, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->add([I[I[I)V

    invoke-static {p1, v0, p1}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([I[I[I)V

    return-void
.end method

.method public static precompute()V
    .locals 0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->precompute()V

    return-void
.end method

.method public static scalarMult([BI[BI[BI)V
    .locals 14

    const/16 v2, 0xe

    new-array v5, v2, [I

    invoke-static {p0, p1, v5}, Lorg/bouncycastle/math/ec/rfc7748/X448;->decodeScalar([BI[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v6

    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->decode([BI[I)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v6, v2, v7, v3}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->copy([II[II)V

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v8

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v8, v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, v9, v2

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v10

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v11

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v12

    const/16 v3, 0x1bf

    const/4 v2, 0x1

    move v4, v3

    :goto_0
    invoke-static {v9, v10, v11}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->add([I[I[I)V

    invoke-static {v9, v10, v9}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sub([I[I[I)V

    invoke-static {v7, v8, v10}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->add([I[I[I)V

    invoke-static {v7, v8, v7}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sub([I[I[I)V

    invoke-static {v11, v7, v11}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([I[I[I)V

    invoke-static {v9, v10, v9}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([I[I[I)V

    invoke-static {v10, v10}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sqr([I[I)V

    invoke-static {v7, v7}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sqr([I[I)V

    invoke-static {v10, v7, v12}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sub([I[I[I)V

    const v3, 0x98aa

    invoke-static {v12, v3, v8}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([II[I)V

    invoke-static {v8, v7, v8}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->add([I[I[I)V

    invoke-static {v8, v12, v8}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([I[I[I)V

    invoke-static {v7, v10, v7}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([I[I[I)V

    invoke-static {v11, v9, v10}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sub([I[I[I)V

    invoke-static {v11, v9, v9}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->add([I[I[I)V

    invoke-static {v9, v9}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sqr([I[I)V

    invoke-static {v10, v10}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sqr([I[I)V

    invoke-static {v10, v6, v10}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([I[I[I)V

    add-int/lit8 v4, v4, -0x1

    ushr-int/lit8 v3, v4, 0x5

    and-int/lit8 v13, v4, 0x1f

    aget v3, v5, v3

    ushr-int/2addr v3, v13

    and-int/lit8 v3, v3, 0x1

    xor-int/2addr v2, v3

    invoke-static {v2, v7, v9}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->cswap(I[I[I)V

    invoke-static {v2, v8, v10}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->cswap(I[I[I)V

    const/4 v2, 0x2

    if-ge v4, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    invoke-static {v7, v8}, Lorg/bouncycastle/math/ec/rfc7748/X448;->pointDouble([I[I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v8, v8}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->inv([I[I)V

    invoke-static {v7, v8, v7}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([I[I[I)V

    invoke-static {v7}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->normalize([I)V

    move-object/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v7, v0, v1}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->encode([I[BI)V

    return-void

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public static scalarMultBase([BI[BI)V
    .locals 3

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v0

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->create()[I

    move-result-object v1

    invoke-static {}, Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;->access$000()Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;

    move-result-object v2

    invoke-static {v2, p0, p1, v0, v1}, Lorg/bouncycastle/math/ec/rfc8032/Ed448;->scalarMultBaseXY(Lorg/bouncycastle/math/ec/rfc7748/X448$Friend;[BI[I[I)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->inv([I[I)V

    invoke-static {v0, v1, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->mul([I[I[I)V

    invoke-static {v0, v0}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->sqr([I[I)V

    invoke-static {v0}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->normalize([I)V

    invoke-static {v0, p2, p3}, Lorg/bouncycastle/math/ec/rfc7748/X448$F;->encode([I[BI)V

    return-void
.end method
