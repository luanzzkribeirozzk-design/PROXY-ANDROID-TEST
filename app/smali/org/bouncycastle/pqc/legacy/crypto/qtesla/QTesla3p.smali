.class Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$Gaussian;,
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;
    }
.end annotation


# static fields
.field private static BPLUS1BYTES:I = 0x0

.field static final CRYPTO_BYTES:I = 0x1620

.field private static final CRYPTO_C_BYTES:I = 0x20

.field static final CRYPTO_PUBLICKEYBYTES:I = 0x9620

.field private static final CRYPTO_RANDOMBYTES:I = 0x20

.field static final CRYPTO_SECRETKEYBYTES:I = 0x3068

.field private static final CRYPTO_SEEDBYTES:I = 0x20

.field private static final HM_BYTES:I = 0x28

.field private static NBLOCKS_SHAKE:I = 0x0

.field private static final PARAM_B:I = 0x1fffff

.field private static final PARAM_BARR_DIV:I = 0x20

.field private static final PARAM_BARR_MULT:J = 0x5L

.field private static final PARAM_B_BITS:I = 0x15

.field private static final PARAM_D:I = 0x18

.field private static final PARAM_E:I = 0x385

.field private static final PARAM_GEN_A:I = 0xb4

.field private static final PARAM_H:I = 0x28

.field private static final PARAM_K:I = 0x5

.field private static final PARAM_KEYGEN_BOUND_E:I = 0x385

.field private static final PARAM_KEYGEN_BOUND_S:I = 0x385

.field private static final PARAM_N:I = 0x800

.field private static final PARAM_Q:I = 0x3307c001

.field private static final PARAM_QINV:J = 0x2307bfffL

.field private static final PARAM_Q_LOG:I = 0x1e

.field private static final PARAM_R2_INVN:I = 0x1e9637c5

.field private static final PARAM_S:I = 0x385

.field private static final RADIX32:I = 0x20

.field private static final maskb1:I = 0x3fffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x38

    sput v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->NBLOCKS_SHAKE:I

    const/4 v0, 0x3

    sput v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->BPLUS1BYTES:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static absolute(I)I
    .locals 2

    shr-int/lit8 v0, p0, 0x1f

    xor-int/2addr v0, p0

    shr-int/lit8 v1, p0, 0x1f

    sub-int/2addr v0, v1

    return v0
.end method

.method private static absolute(J)J
    .locals 4

    const/16 v2, 0x3f

    shr-long v0, p0, v2

    xor-long/2addr v0, p0

    shr-long v2, p0, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static synthetic access$000([BII)I
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v0

    return v0
.end method

.method private static at([BII)I
    .locals 3

    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v0, v1

    aget-byte v1, p0, v0

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, p0, v0

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static at([BIII)V
    .locals 2

    mul-int/lit8 v0, p1, 0x4

    mul-int/lit8 v1, p2, 0x4

    add-int/2addr v0, v1

    invoke-static {p3, p0, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method private static checkPolynomial([JII)Z
    .locals 18

    const/4 v4, 0x0

    const/16 v2, 0x800

    const/16 v3, 0x800

    new-array v6, v3, [J

    const/4 v3, 0x0

    :goto_0
    const/16 v5, 0x800

    if-ge v3, v5, :cond_0

    add-int v5, p1, v3

    aget-wide v8, p0, v5

    long-to-int v5, v8

    invoke-static {v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->absolute(I)I

    move-result v5

    int-to-long v8, v5

    aput-wide v8, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    move v3, v2

    :goto_1
    const/16 v2, 0x28

    if-ge v5, v2, :cond_2

    const/4 v2, 0x0

    :goto_2
    add-int/lit8 v7, v3, -0x1

    if-ge v2, v7, :cond_1

    add-int/lit8 v7, v2, 0x1

    aget-wide v8, v6, v7

    aget-wide v10, v6, v2

    sub-long/2addr v8, v10

    const/16 v7, 0x1f

    shr-long/2addr v8, v7

    add-int/lit8 v7, v2, 0x1

    aget-wide v10, v6, v7

    and-long/2addr v10, v8

    aget-wide v12, v6, v2

    const-wide/16 v14, -0x1

    xor-long/2addr v14, v8

    and-long/2addr v12, v14

    or-long/2addr v10, v12

    add-int/lit8 v7, v2, 0x1

    aget-wide v12, v6, v2

    and-long/2addr v12, v8

    add-int/lit8 v14, v2, 0x1

    aget-wide v14, v6, v14

    const-wide/16 v16, -0x1

    xor-long v8, v8, v16

    and-long/2addr v8, v14

    or-long/2addr v8, v12

    aput-wide v8, v6, v7

    aput-wide v10, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v3, -0x1

    aget-wide v8, v6, v2

    long-to-int v2, v8

    add-int/2addr v4, v2

    add-int/lit8 v2, v3, -0x1

    add-int/lit8 v5, v5, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    move/from16 v0, p2

    if-le v4, v0, :cond_3

    const/4 v2, 0x1

    :goto_3
    return v2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3
.end method

.method static decodePublicKey([I[BI[B)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    const v3, 0x3fffffff    # 1.9999999f

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v4, 0x2800

    if-ge v0, v4, :cond_0

    invoke-static {p3, v2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v4

    and-int/2addr v4, v3

    aput v4, p0, v0

    add-int/lit8 v4, v0, 0x1

    invoke-static {p3, v2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1e

    invoke-static {p3, v2, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x2

    invoke-static {p3, v2, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1c

    invoke-static {p3, v2, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x3

    invoke-static {p3, v2, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1a

    invoke-static {p3, v2, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x4

    invoke-static {p3, v2, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    invoke-static {p3, v2, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x5

    invoke-static {p3, v2, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x16

    const/4 v6, 0x5

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x6

    const/4 v5, 0x5

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x14

    const/4 v6, 0x6

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x7

    const/4 v5, 0x6

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x12

    const/4 v6, 0x7

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0xe

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x8

    const/4 v5, 0x7

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x10

    const/16 v6, 0x8

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x9

    const/16 v5, 0x8

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xe

    const/16 v6, 0x9

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x12

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xa

    const/16 v5, 0x9

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xc

    const/16 v6, 0xa

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xb

    const/16 v5, 0xa

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xa

    const/16 v6, 0xb

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x16

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xc

    const/16 v5, 0xb

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x8

    const/16 v6, 0xc

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xd

    const/16 v5, 0xc

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x6

    const/16 v6, 0xd

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1a

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xe

    const/16 v5, 0xd

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x4

    const/16 v6, 0xe

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1c

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xf

    const/16 v5, 0xe

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x2

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v2, v2, 0xf

    add-int/lit8 v0, v0, 0x10

    goto/16 :goto_0

    :cond_0
    const v0, 0x9600

    const/16 v1, 0x20

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static decodeSignature([B[J[BI)V
    .locals 18

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v4, 0x800

    if-ge v2, v4, :cond_0

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v3, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v5

    const/4 v6, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v3, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v6

    const/4 v7, 0x3

    move-object/from16 v0, p2

    invoke-static {v0, v3, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v7

    const/4 v8, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v3, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v8

    const/4 v9, 0x5

    move-object/from16 v0, p2

    invoke-static {v0, v3, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v9

    const/4 v10, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v3, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v10

    const/4 v11, 0x7

    move-object/from16 v0, p2

    invoke-static {v0, v3, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v11

    const/16 v12, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v3, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v12

    const/16 v13, 0x9

    move-object/from16 v0, p2

    invoke-static {v0, v3, v13}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v13

    const/16 v14, 0xa

    move-object/from16 v0, p2

    invoke-static {v0, v3, v14}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BII)I

    move-result v14

    shl-int/lit8 v15, v4, 0xa

    shr-int/lit8 v15, v15, 0xa

    int-to-long v0, v15

    move-wide/from16 v16, v0

    aput-wide v16, p1, v2

    add-int/lit8 v15, v2, 0x1

    ushr-int/lit8 v4, v4, 0x16

    shl-int/lit8 v16, v5, 0x14

    shr-int/lit8 v16, v16, 0xa

    or-int v4, v4, v16

    int-to-long v0, v4

    move-wide/from16 v16, v0

    aput-wide v16, p1, v15

    add-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v5, 0xc

    shl-int/lit8 v15, v6, 0x1e

    shr-int/lit8 v15, v15, 0xa

    or-int/2addr v5, v15

    int-to-long v0, v5

    move-wide/from16 v16, v0

    aput-wide v16, p1, v4

    add-int/lit8 v4, v2, 0x3

    shl-int/lit8 v5, v6, 0x8

    shr-int/lit8 v5, v5, 0xa

    int-to-long v0, v5

    move-wide/from16 v16, v0

    aput-wide v16, p1, v4

    add-int/lit8 v4, v2, 0x4

    ushr-int/lit8 v5, v6, 0x18

    shl-int/lit8 v6, v7, 0x12

    shr-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-long v0, v5

    move-wide/from16 v16, v0

    aput-wide v16, p1, v4

    add-int/lit8 v4, v2, 0x5

    ushr-int/lit8 v5, v7, 0xe

    shl-int/lit8 v6, v8, 0x1c

    shr-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0x6

    shl-int/lit8 v5, v8, 0x6

    shr-int/lit8 v5, v5, 0xa

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0x7

    ushr-int/lit8 v5, v8, 0x1a

    shl-int/lit8 v6, v9, 0x10

    shr-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0x8

    ushr-int/lit8 v5, v9, 0x10

    shl-int/lit8 v6, v10, 0x1a

    shr-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0x9

    shl-int/lit8 v5, v10, 0x4

    shr-int/lit8 v5, v5, 0xa

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0xa

    ushr-int/lit8 v5, v10, 0x1c

    shl-int/lit8 v6, v11, 0xe

    shr-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0xb

    ushr-int/lit8 v5, v11, 0x12

    shl-int/lit8 v6, v12, 0x18

    shr-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0xc

    shl-int/lit8 v5, v12, 0x2

    shr-int/lit8 v5, v5, 0xa

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0xd

    ushr-int/lit8 v5, v12, 0x1e

    shl-int/lit8 v6, v13, 0xc

    shr-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0xe

    ushr-int/lit8 v5, v13, 0x14

    shl-int/lit8 v6, v14, 0x16

    shr-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v4, v2, 0xf

    shr-int/lit8 v5, v14, 0xa

    int-to-long v6, v5

    aput-wide v6, p1, v4

    add-int/lit8 v3, v3, 0xb

    add-int/lit8 v2, v2, 0x10

    goto/16 :goto_0

    :cond_0
    move/from16 v0, p3

    add-int/lit16 v2, v0, 0x1600

    const/4 v3, 0x0

    const/16 v4, 0x20

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static encodeC([I[S[BI)V
    .locals 11

    const/16 v6, 0x20

    const/16 v2, 0xa8

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x800

    new-array v9, v0, [S

    new-array v0, v2, [B

    int-to-short v7, v10

    move v3, v1

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    invoke-static {v9, v1}, Lorg/bouncycastle/util/Arrays;->fill([SS)V

    move v8, v1

    move v3, v7

    move v4, v1

    :goto_0
    const/16 v5, 0x28

    if-ge v8, v5, :cond_2

    const/16 v5, 0xa5

    if-le v4, v5, :cond_0

    add-int/lit8 v4, v3, 0x1

    int-to-short v7, v4

    move-object v4, p2

    move v5, p3

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v3, v7

    move v4, v1

    :cond_0
    aget-byte v5, v0, v4

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v7, v4, 0x1

    aget-byte v7, v0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v5, v7

    and-int/lit16 v5, v5, 0x7ff

    aget-short v7, v9, v5

    if-nez v7, :cond_3

    add-int/lit8 v7, v4, 0x2

    aget-byte v7, v0, v7

    and-int/lit8 v7, v7, 0x1

    if-ne v7, v10, :cond_1

    const/4 v7, -0x1

    aput-short v7, v9, v5

    :goto_1
    aput v5, p0, v8

    aget-short v5, v9, v5

    aput-short v5, p1, v8

    add-int/lit8 v5, v8, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x3

    move v8, v5

    goto :goto_0

    :cond_1
    aput-short v10, v9, v5

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    move v5, v8

    goto :goto_2
.end method

.method static encodePrivateKey([B[J[J[BI[B)V
    .locals 8

    const/16 v5, 0x800

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    if-ge v0, v5, :cond_0

    add-int v1, v4, v0

    aget-wide v2, p1, v0

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_1
    const/4 v0, 0x5

    if-ge v1, v0, :cond_2

    move v0, v4

    :goto_2
    if-ge v0, v5, :cond_1

    mul-int/lit16 v2, v1, 0x800

    add-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x800

    mul-int/lit16 v3, v1, 0x800

    add-int/2addr v3, v0

    aget-wide v6, p2, v3

    long-to-int v3, v6

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x3000

    const/16 v1, 0x40

    invoke-static {p3, p4, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x3040

    const/16 v2, 0x28

    const v5, 0x9600

    move-object v0, p0

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    return-void
.end method

.method static encodePublicKey([B[J[BI)V
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x2580

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aget-wide v4, p1, v1

    add-int/lit8 v3, v1, 0x1

    aget-wide v6, p1, v3

    const/16 v3, 0x1e

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-wide v4, p1, v3

    const/4 v3, 0x2

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0x2

    aget-wide v6, p1, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x2

    add-int/lit8 v3, v1, 0x2

    aget-wide v4, p1, v3

    const/4 v3, 0x4

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0x3

    aget-wide v6, p1, v3

    const/16 v3, 0x1a

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x3

    add-int/lit8 v3, v1, 0x3

    aget-wide v4, p1, v3

    const/4 v3, 0x6

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0x4

    aget-wide v6, p1, v3

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x4

    add-int/lit8 v3, v1, 0x4

    aget-wide v4, p1, v3

    const/16 v3, 0x8

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0x5

    aget-wide v6, p1, v3

    const/16 v3, 0x16

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x5

    add-int/lit8 v3, v1, 0x5

    aget-wide v4, p1, v3

    const/16 v3, 0xa

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0x6

    aget-wide v6, p1, v3

    const/16 v3, 0x14

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x6

    add-int/lit8 v3, v1, 0x6

    aget-wide v4, p1, v3

    const/16 v3, 0xc

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0x7

    aget-wide v6, p1, v3

    const/16 v3, 0x12

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x7

    add-int/lit8 v3, v1, 0x7

    aget-wide v4, p1, v3

    const/16 v3, 0xe

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0x8

    aget-wide v6, p1, v3

    const/16 v3, 0x10

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0x8

    add-int/lit8 v3, v1, 0x8

    aget-wide v4, p1, v3

    const/16 v3, 0x10

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0x9

    aget-wide v6, p1, v3

    const/16 v3, 0xe

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0x9

    add-int/lit8 v3, v1, 0x9

    aget-wide v4, p1, v3

    const/16 v3, 0x12

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0xa

    aget-wide v6, p1, v3

    const/16 v3, 0xc

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0xa

    add-int/lit8 v3, v1, 0xa

    aget-wide v4, p1, v3

    const/16 v3, 0x14

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0xb

    aget-wide v6, p1, v3

    const/16 v3, 0xa

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0xb

    add-int/lit8 v3, v1, 0xb

    aget-wide v4, p1, v3

    const/16 v3, 0x16

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0xc

    aget-wide v6, p1, v3

    const/16 v3, 0x8

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0xc

    add-int/lit8 v3, v1, 0xc

    aget-wide v4, p1, v3

    const/16 v3, 0x18

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0xd

    aget-wide v6, p1, v3

    const/4 v3, 0x6

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0xd

    add-int/lit8 v3, v1, 0xd

    aget-wide v4, p1, v3

    const/16 v3, 0x1a

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0xe

    aget-wide v6, p1, v3

    const/4 v3, 0x4

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0xe

    add-int/lit8 v3, v1, 0xe

    aget-wide v4, p1, v3

    const/16 v3, 0x1c

    shr-long/2addr v4, v3

    add-int/lit8 v3, v1, 0xf

    aget-wide v6, p1, v3

    const/4 v3, 0x2

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xf

    goto/16 :goto_0

    :cond_0
    const v0, 0x9600

    const/16 v1, 0x20

    invoke-static {p2, p3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static encodeSignature([BI[BI[J)V
    .locals 10

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x580

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    add-int/lit8 v3, v1, 0x0

    aget-wide v4, p4, v3

    const-wide/32 v6, 0x3fffff

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0x1

    aget-wide v6, p4, v3

    const/16 v3, 0x16

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x1

    add-int/lit8 v3, v1, 0x1

    aget-wide v4, p4, v3

    const/16 v3, 0xa

    ushr-long/2addr v4, v3

    const-wide/16 v6, 0xfff

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0x2

    aget-wide v6, p4, v3

    const/16 v3, 0xc

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x2

    add-int/lit8 v3, v1, 0x2

    aget-wide v4, p4, v3

    const/16 v3, 0x14

    ushr-long/2addr v4, v3

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0x3

    aget-wide v6, p4, v3

    const-wide/32 v8, 0x3fffff

    and-long/2addr v6, v8

    const/4 v3, 0x2

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    add-int/lit8 v3, v1, 0x4

    aget-wide v6, p4, v3

    const/16 v3, 0x18

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x3

    add-int/lit8 v3, v1, 0x4

    aget-wide v4, p4, v3

    const/16 v3, 0x8

    ushr-long/2addr v4, v3

    const-wide/16 v6, 0x3fff

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0x5

    aget-wide v6, p4, v3

    const/16 v3, 0xe

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x4

    add-int/lit8 v3, v1, 0x5

    aget-wide v4, p4, v3

    const/16 v3, 0x12

    ushr-long/2addr v4, v3

    const-wide/16 v6, 0xf

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0x6

    aget-wide v6, p4, v3

    const-wide/32 v8, 0x3fffff

    and-long/2addr v6, v8

    const/4 v3, 0x4

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    add-int/lit8 v3, v1, 0x7

    aget-wide v6, p4, v3

    const/16 v3, 0x1a

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x5

    add-int/lit8 v3, v1, 0x7

    aget-wide v4, p4, v3

    const/4 v3, 0x6

    ushr-long/2addr v4, v3

    const-wide/32 v6, 0xffff

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0x8

    aget-wide v6, p4, v3

    const/16 v3, 0x10

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x6

    add-int/lit8 v3, v1, 0x8

    aget-wide v4, p4, v3

    const/16 v3, 0x10

    ushr-long/2addr v4, v3

    const-wide/16 v6, 0x3f

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0x9

    aget-wide v6, p4, v3

    const-wide/32 v8, 0x3fffff

    and-long/2addr v6, v8

    const/4 v3, 0x6

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    add-int/lit8 v3, v1, 0xa

    aget-wide v6, p4, v3

    const/16 v3, 0x1c

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/4 v2, 0x7

    add-int/lit8 v3, v1, 0xa

    aget-wide v4, p4, v3

    const/4 v3, 0x4

    ushr-long/2addr v4, v3

    const-wide/32 v6, 0x3ffff

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0xb

    aget-wide v6, p4, v3

    const/16 v3, 0x12

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0x8

    add-int/lit8 v3, v1, 0xb

    aget-wide v4, p4, v3

    const/16 v3, 0xe

    ushr-long/2addr v4, v3

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0xc

    aget-wide v6, p4, v3

    const-wide/32 v8, 0x3fffff

    and-long/2addr v6, v8

    const/16 v3, 0x8

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    add-int/lit8 v3, v1, 0xd

    aget-wide v6, p4, v3

    const/16 v3, 0x1e

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0x9

    add-int/lit8 v3, v1, 0xd

    aget-wide v4, p4, v3

    const/4 v3, 0x2

    ushr-long/2addr v4, v3

    const-wide/32 v6, 0xfffff

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0xe

    aget-wide v6, p4, v3

    const/16 v3, 0x14

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    const/16 v2, 0xa

    add-int/lit8 v3, v1, 0xe

    aget-wide v4, p4, v3

    const/16 v3, 0xc

    ushr-long/2addr v4, v3

    const-wide/16 v6, 0x3ff

    and-long/2addr v4, v6

    add-int/lit8 v3, v1, 0xf

    aget-wide v6, p4, v3

    const/16 v3, 0xa

    shl-long/2addr v6, v3

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->at([BIII)V

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, 0xb

    goto/16 :goto_0

    :cond_0
    add-int/lit16 v0, p1, 0x1600

    const/16 v1, 0x20

    invoke-static {p2, p3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static generateKeyPair([B[BLjava/security/SecureRandom;)I
    .locals 13

    const/4 v6, 0x0

    const/16 v0, 0x20

    new-array v3, v0, [B

    const/16 v0, 0x100

    new-array v0, v0, [B

    const/16 v1, 0x800

    new-array v8, v1, [J

    const/16 v1, 0x2800

    new-array v9, v1, [J

    const/16 v1, 0x2800

    new-array v10, v1, [J

    const/16 v1, 0x2800

    new-array v11, v1, [J

    const/16 v1, 0x800

    new-array v12, v1, [J

    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0x100

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    const/4 v2, 0x0

    move v1, v6

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v3, v2, 0x20

    mul-int/lit16 v4, v2, 0x800

    invoke-static {v1, v0, v3, v9, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$Gaussian;->sample_gauss_poly(I[BI[JI)V

    mul-int/lit16 v3, v2, 0x800

    const/16 v4, 0x385

    invoke-static {v9, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->checkPolynomial([JII)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0xa0

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$Gaussian;->sample_gauss_poly(I[BI[JI)V

    const/4 v2, 0x0

    const/16 v3, 0x385

    invoke-static {v8, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->checkPolynomial([JII)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, 0xc0

    invoke-static {v10, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_uniform([J[BI)V

    invoke-static {v12, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_ntt([J[J)V

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    const/4 v1, 0x5

    if-ge v7, v1, :cond_2

    mul-int/lit16 v1, v7, 0x800

    mul-int/lit16 v2, v7, 0x800

    invoke-static {v11, v1, v10, v2, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_mul([JI[JI[J)V

    mul-int/lit16 v2, v7, 0x800

    mul-int/lit16 v4, v7, 0x800

    mul-int/lit16 v6, v7, 0x800

    move-object v1, v11

    move-object v3, v11

    move-object v5, v9

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_add_correct([JI[JI[JI)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0xc0

    invoke-static {p0, v11, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodePublicKey([B[J[BI)V

    const/16 v5, 0xc0

    move-object v1, p1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodePrivateKey([B[J[J[BI[B)V

    const/4 v0, 0x0

    return v0
.end method

.method static generateSignature([B[BII[BLjava/security/SecureRandom;)I
    .locals 23

    const/16 v3, 0x20

    new-array v12, v3, [B

    const/16 v3, 0x20

    new-array v13, v3, [B

    const/16 v3, 0x90

    new-array v3, v3, [B

    const/16 v4, 0x28

    new-array v14, v4, [I

    const/16 v4, 0x28

    new-array v15, v4, [S

    const/16 v4, 0x800

    new-array v0, v4, [J

    move-object/from16 v16, v0

    const/16 v4, 0x800

    new-array v0, v4, [J

    move-object/from16 v17, v0

    const/16 v4, 0x800

    new-array v0, v4, [J

    move-object/from16 v18, v0

    const/16 v4, 0x800

    new-array v0, v4, [J

    move-object/from16 v19, v0

    const/16 v4, 0x2800

    new-array v0, v4, [J

    move-object/from16 v20, v0

    const/16 v4, 0x2800

    new-array v0, v4, [J

    move-object/from16 v21, v0

    const/16 v4, 0x2800

    new-array v0, v4, [J

    move-object/from16 v22, v0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x3020

    const/4 v5, 0x0

    const/16 v6, 0x20

    move-object/from16 v0, p4

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x20

    new-array v4, v4, [B

    move-object/from16 v0, p5

    invoke-virtual {v0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/16 v7, 0x20

    invoke-static {v4, v5, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x40

    const/16 v5, 0x28

    const/4 v7, 0x0

    move-object/from16 v6, p1

    move/from16 v8, p3

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v8, 0x0

    array-length v4, v3

    add-int/lit8 v9, v4, -0x28

    move-object v4, v13

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    const/16 v4, 0x3040

    array-length v5, v3

    add-int/lit8 v5, v5, -0x28

    const/16 v6, 0x28

    move-object/from16 v0, p4

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x3000

    move-object/from16 v0, v22

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_uniform([J[BI)V

    move v4, v10

    move v5, v11

    :goto_0
    const/4 v6, 0x0

    add-int/lit8 v10, v5, 0x1

    move-object/from16 v0, v16

    invoke-static {v0, v13, v6, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->sample_y([J[BII)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_ntt([J[J)V

    const/4 v5, 0x0

    :goto_1
    const/4 v6, 0x5

    if-ge v5, v6, :cond_0

    mul-int/lit16 v6, v5, 0x800

    mul-int/lit16 v7, v5, 0x800

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v17

    invoke-static {v0, v6, v1, v7, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_mul([JI[JI[J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    const/16 v6, 0x40

    move-object/from16 v0, v20

    invoke-static {v12, v5, v0, v3, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->hashFunction([BI[J[BI)V

    const/4 v5, 0x0

    invoke-static {v14, v15, v12, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodeC([I[S[BI)V

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-static {v0, v1, v14, v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->sparse_mul8([J[B[I[S)V

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_add([J[J[J)V

    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->testRejection([J)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v10

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move v11, v5

    :goto_2
    const/4 v5, 0x5

    if-ge v11, v5, :cond_2

    mul-int/lit16 v5, v11, 0x800

    add-int/lit8 v4, v11, 0x1

    mul-int/lit16 v7, v4, 0x800

    move-object/from16 v4, v21

    move-object/from16 v6, p4

    move-object v8, v14

    move-object v9, v15

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->sparse_mul8([JI[BI[I[S)V

    mul-int/lit16 v5, v11, 0x800

    mul-int/lit16 v7, v11, 0x800

    mul-int/lit16 v9, v11, 0x800

    move-object/from16 v4, v20

    move-object/from16 v6, v20

    move-object/from16 v8, v21

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_sub([JI[JI[JI)V

    mul-int/lit16 v4, v11, 0x800

    move-object/from16 v0, v20

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->test_correctness([JI)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    move v5, v10

    goto :goto_0

    :cond_3
    add-int/lit8 v5, v11, 0x1

    move v11, v5

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-static {v0, v3, v12, v4, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodeSignature([BI[BI[J)V

    const/4 v3, 0x0

    return v3
.end method

.method private static hashFunction([BI[J[BI)V
    .locals 9

    const/4 v4, 0x0

    const/16 v0, 0x2850

    new-array v3, v0, [B

    move v5, v4

    :goto_0
    const/4 v0, 0x5

    if-ge v5, v0, :cond_1

    mul-int/lit16 v1, v5, 0x800

    move v0, v4

    :goto_1
    const/16 v2, 0x800

    if-ge v0, v2, :cond_0

    aget-wide v6, p2, v1

    long-to-int v2, v6

    const v6, 0x1983e000

    sub-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x1f

    const v7, 0x3307c001

    sub-int v7, v2, v7

    and-int/2addr v7, v6

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v2, v6

    or-int v6, v7, v2

    const v2, 0xffffff

    and-int/2addr v2, v6

    const/high16 v7, 0x800000

    sub-int/2addr v7, v2

    shr-int/lit8 v7, v7, 0x1f

    const/high16 v8, 0x1000000

    sub-int v8, v2, v8

    and-int/2addr v8, v7

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v2, v7

    or-int v7, v8, v2

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v3, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v5, 0x1

    move v5, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x2800

    const/16 v1, 0x50

    invoke-static {p3, p4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    array-length v5, v3

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    return-void
.end method

.method static lE24BitToInt([BI)I
    .locals 3

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    return v0
.end method

.method static memoryEqual([BI[BII)Z
    .locals 4

    const/4 v0, 0x0

    add-int v1, p1, p4

    array-length v2, p0

    if-gt v1, v2, :cond_0

    add-int v1, p3, p4

    array-length v2, p2

    if-gt v1, v2, :cond_0

    move v1, v0

    :goto_0
    if-ge v1, p4, :cond_2

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    add-int v3, p3, v1

    aget-byte v3, p2, v3

    if-eq v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method static sample_y([J[BII)V
    .locals 12

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v8, 0x800

    sget v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->BPLUS1BYTES:I

    mul-int/lit16 v0, v0, 0x800

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    sget v11, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->BPLUS1BYTES:I

    shl-int/lit8 v1, p3, 0x8

    int-to-short v3, v1

    const/4 v1, 0x0

    mul-int/lit16 v2, v11, 0x800

    add-int/lit8 v4, v3, 0x1

    int-to-short v7, v4

    const/16 v6, 0x20

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK256Simple([BIIS[BII)V

    move v3, v7

    move v1, v8

    move v2, v10

    :goto_0
    const/16 v4, 0x800

    if-ge v9, v4, :cond_1

    mul-int v4, v1, v11

    if-lt v2, v4, :cond_0

    sget v8, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->NBLOCKS_SHAKE:I

    const/4 v1, 0x0

    mul-int/lit16 v2, v11, 0x800

    add-int/lit8 v4, v3, 0x1

    int-to-short v7, v4

    const/16 v6, 0x20

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK256Simple([BIIS[BII)V

    const/4 v2, 0x0

    move v3, v7

    move v1, v8

    :cond_0
    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->lE24BitToInt([BI)I

    move-result v4

    const v5, 0x3fffff

    and-int/2addr v4, v5

    int-to-long v4, v4

    aput-wide v4, p0, v9

    aget-wide v4, p0, v9

    const-wide/32 v6, 0x1fffff

    sub-long/2addr v4, v6

    aput-wide v4, p0, v9

    aget-wide v4, p0, v9

    const-wide/32 v6, 0x200000

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    add-int/lit8 v4, v9, 0x1

    :goto_1
    add-int/2addr v2, v11

    move v9, v4

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v4, v9

    goto :goto_1
.end method

.method private static testRejection([J)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    const/16 v3, 0x800

    if-ge v1, v3, :cond_0

    int-to-long v2, v2

    const-wide/32 v4, 0x1ffc7a

    aget-wide v6, p0, v1

    invoke-static {v6, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->absolute(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    or-long/2addr v2, v4

    long-to-int v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v2, 0x1f

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static testZ([J)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x800

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    const-wide/32 v4, -0x1ffc7a

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    aget-wide v2, p0, v1

    const-wide/32 v4, 0x1ffc7a

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static test_correctness([JI)Z
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x800

    if-ge v2, v3, :cond_1

    const-wide/32 v4, 0x1983e000

    add-int v3, p1, v2

    aget-wide v6, p0, v3

    sub-long/2addr v4, v6

    long-to-int v3, v4

    shr-int/lit8 v3, v3, 0x1f

    add-int v4, p1, v2

    aget-wide v4, p0, v4

    const-wide/32 v6, 0x3307c001

    sub-long/2addr v4, v6

    int-to-long v6, v3

    and-long/2addr v4, v6

    add-int v6, p1, v2

    aget-wide v6, p0, v6

    xor-int/lit8 v3, v3, -0x1

    int-to-long v8, v3

    and-long/2addr v6, v8

    or-long/2addr v4, v6

    long-to-int v3, v4

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->absolute(I)I

    move-result v4

    const v5, 0x1983dc7b

    sub-int/2addr v4, v5

    xor-int/lit8 v4, v4, -0x1

    ushr-int/lit8 v4, v4, 0x1f

    const/high16 v5, 0x800000

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x18

    shl-int/lit8 v5, v5, 0x18

    sub-int/2addr v3, v5

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->absolute(I)I

    move-result v3

    const v5, 0x7ffc7b

    sub-int/2addr v3, v5

    xor-int/lit8 v3, v3, -0x1

    ushr-int/lit8 v3, v3, 0x1f

    or-int/2addr v3, v4

    if-ne v3, v0, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method static verifying([B[BII[B)I
    .locals 23

    const/16 v3, 0x20

    new-array v0, v3, [B

    move-object/from16 v17, v0

    const/16 v3, 0x20

    new-array v0, v3, [B

    move-object/from16 v18, v0

    const/16 v3, 0x20

    new-array v11, v3, [B

    const/16 v3, 0x50

    new-array v3, v3, [B

    const/16 v4, 0x28

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/16 v4, 0x28

    new-array v9, v4, [S

    const/16 v4, 0x2800

    new-array v0, v4, [I

    move-object/from16 v20, v0

    const/16 v4, 0x2800

    new-array v10, v4, [J

    const/16 v4, 0x2800

    new-array v0, v4, [J

    move-object/from16 v21, v0

    const/16 v4, 0x2800

    new-array v14, v4, [J

    const/16 v4, 0x800

    new-array v12, v4, [J

    const/16 v4, 0x800

    new-array v0, v4, [J

    move-object/from16 v22, v0

    const/16 v4, 0x1620

    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v12, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->decodeSignature([B[J[BI)V

    invoke-static {v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->testZ([J)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-static {v0, v11, v4, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->decodePublicKey([I[BI[B)V

    const/4 v4, 0x0

    const/16 v5, 0x28

    const/4 v7, 0x0

    move-object/from16 v0, p0

    array-length v8, v0

    move-object/from16 v6, p0

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    const/16 v4, 0x28

    const/16 v5, 0x28

    const/4 v7, 0x0

    const v8, 0x9600

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK256([BII[BII)V

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v11, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_uniform([J[BI)V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v9, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->encodeC([I[S[BI)V

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_ntt([J[J)V

    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_1
    const/4 v4, 0x5

    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x800

    move/from16 v0, v16

    mul-int/lit16 v7, v0, 0x800

    move-object v4, v14

    move-object/from16 v6, v20

    move-object/from16 v8, v19

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->sparse_mul32([JI[II[I[S)V

    move/from16 v0, v16

    mul-int/lit16 v4, v0, 0x800

    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x800

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v10, v4, v0, v5, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_mul([JI[JI[J)V

    move/from16 v0, v16

    mul-int/lit16 v11, v0, 0x800

    move/from16 v0, v16

    mul-int/lit16 v13, v0, 0x800

    move/from16 v0, v16

    mul-int/lit16 v15, v0, 0x800

    move-object v12, v10

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p$QTesla3PPolynomial;->poly_sub([JI[JI[JI)V

    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v10, v3, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->hashFunction([BI[J[BI)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1, v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->memoryEqual([BI[BII)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, -0x3

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
