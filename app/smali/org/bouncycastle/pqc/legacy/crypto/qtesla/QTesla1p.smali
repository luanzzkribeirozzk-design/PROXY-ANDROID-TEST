.class Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;,
        Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;
    }
.end annotation


# static fields
.field private static BPLUS1BYTES:I = 0x0

.field static final CRYPTO_BYTES:I = 0xa20

.field private static final CRYPTO_C_BYTES:I = 0x20

.field static final CRYPTO_PUBLICKEYBYTES:I = 0x3a20

.field private static final CRYPTO_RANDOMBYTES:I = 0x20

.field static final CRYPTO_SECRETKEYBYTES:I = 0x1468

.field private static final CRYPTO_SEEDBYTES:I = 0x20

.field private static final HM_BYTES:I = 0x28

.field private static NBLOCKS_SHAKE:I = 0x0

.field private static final PARAM_B:I = 0x7ffff

.field private static final PARAM_BARR_DIV:I = 0x1e

.field private static final PARAM_BARR_MULT:I = 0x3

.field private static final PARAM_B_BITS:I = 0x13

.field private static final PARAM_D:I = 0x16

.field private static final PARAM_E:I = 0x22a

.field private static final PARAM_GEN_A:I = 0x6c

.field private static final PARAM_H:I = 0x19

.field private static final PARAM_K:I = 0x4

.field private static final PARAM_KEYGEN_BOUND_E:I = 0x22a

.field private static final PARAM_KEYGEN_BOUND_S:I = 0x22a

.field private static final PARAM_N:I = 0x400

.field private static final PARAM_Q:I = 0x147a9001

.field private static final PARAM_QINV:J = 0x837a8fffL

.field private static final PARAM_Q_LOG:I = 0x1d

.field private static final PARAM_R2_INVN:I = 0xd00399

.field private static final PARAM_S:I = 0x22a

.field private static final PARAM_S_BITS:I = 0x8

.field private static final RADIX32:I = 0x20

.field private static final maskb1:I = 0xfffff


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x38

    sput v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->NBLOCKS_SHAKE:I

    const/4 v0, 0x3

    sput v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->BPLUS1BYTES:I

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

    xor-int v1, v0, p0

    sub-int v0, v1, v0

    return v0
.end method

.method static synthetic access$000([BII)I
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v0

    return v0
.end method

.method private static at([BII)I
    .locals 1

    add-int v0, p1, p2

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v0

    return v0
.end method

.method private static at([BIII)V
    .locals 1

    add-int v0, p1, p2

    shl-int/lit8 v0, v0, 0x2

    invoke-static {p3, p0, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    return-void
.end method

.method private static checkPolynomial([III)Z
    .locals 11

    const/16 v1, 0x400

    const/4 v0, 0x0

    new-array v5, v1, [I

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    add-int v3, p1, v2

    aget v3, p0, v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v3

    aput v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v0

    move v4, v0

    :goto_1
    const/16 v1, 0x19

    if-ge v4, v1, :cond_2

    move v1, v0

    :goto_2
    add-int/lit8 v6, v2, -0x1

    if-ge v1, v6, :cond_1

    aget v6, v5, v1

    add-int/lit8 v7, v1, 0x1

    aget v7, v5, v7

    sub-int v8, v7, v6

    shr-int/lit8 v8, v8, 0x1f

    and-int v9, v7, v8

    xor-int/lit8 v10, v8, -0x1

    and-int/2addr v10, v6

    or-int/2addr v9, v10

    add-int/lit8 v10, v1, 0x1

    and-int/2addr v6, v8

    xor-int/lit8 v8, v8, -0x1

    and-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v5, v10

    aput v9, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v2, -0x1

    aget v1, v5, v1

    add-int/2addr v3, v1

    add-int/lit8 v1, v2, -0x1

    add-int/lit8 v4, v4, 0x1

    move v2, v1

    goto :goto_1

    :cond_2
    if-le v3, p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method static decodePublicKey([I[BI[B)V
    .locals 11

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/16 v8, 0x13

    const/16 v7, 0x9

    const/4 v1, 0x0

    const v3, 0x1fffffff

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v4, 0x1000

    if-ge v0, v4, :cond_0

    invoke-static {p3, v2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v4

    and-int/2addr v4, v3

    aput v4, p0, v0

    add-int/lit8 v4, v0, 0x1

    invoke-static {p3, v2, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1d

    invoke-static {p3, v2, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x3

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x2

    invoke-static {p3, v2, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1a

    invoke-static {p3, v2, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x6

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x3

    invoke-static {p3, v2, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x17

    const/4 v6, 0x3

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x9

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x4

    const/4 v5, 0x3

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x14

    const/4 v6, 0x4

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0xc

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x5

    const/4 v5, 0x4

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x11

    const/4 v6, 0x5

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0xf

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x6

    const/4 v5, 0x5

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xe

    const/4 v6, 0x6

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x12

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x7

    const/4 v5, 0x6

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xb

    const/4 v6, 0x7

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x15

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x8

    const/4 v5, 0x7

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x18

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x9

    const/16 v5, 0x8

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x5

    invoke-static {p3, v2, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1b

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xa

    invoke-static {p3, v2, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x2

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xb

    invoke-static {p3, v2, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1f

    const/16 v6, 0xa

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xc

    const/16 v5, 0xa

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1c

    const/16 v6, 0xb

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x4

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xd

    const/16 v5, 0xb

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x19

    const/16 v6, 0xc

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x7

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xe

    const/16 v5, 0xc

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x16

    const/16 v6, 0xd

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0xa

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0xf

    const/16 v5, 0xd

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x13

    const/16 v6, 0xe

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0xd

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x10

    const/16 v5, 0xe

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x10

    const/16 v6, 0xf

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x11

    const/16 v5, 0xf

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xd

    const/16 v6, 0x10

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x13

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x12

    const/16 v5, 0x10

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xa

    const/16 v6, 0x11

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x16

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x13

    const/16 v5, 0x11

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x7

    const/16 v6, 0x12

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x19

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x14

    const/16 v5, 0x12

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x4

    invoke-static {p3, v2, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1c

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x15

    invoke-static {p3, v2, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x16

    invoke-static {p3, v2, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1e

    const/16 v6, 0x14

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x2

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x17

    const/16 v5, 0x14

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1b

    const/16 v6, 0x15

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x18

    const/16 v5, 0x15

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x18

    const/16 v6, 0x16

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x8

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x19

    const/16 v5, 0x16

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x15

    const/16 v6, 0x17

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0xb

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x1a

    const/16 v5, 0x17

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x12

    const/16 v6, 0x18

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0xe

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x1b

    const/16 v5, 0x18

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xf

    const/16 v6, 0x19

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x11

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x1c

    const/16 v5, 0x19

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0xc

    const/16 v6, 0x1a

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x14

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x1d

    const/16 v5, 0x1a

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x9

    const/16 v6, 0x1b

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x17

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x1e

    const/16 v5, 0x1b

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x6

    const/16 v6, 0x1c

    invoke-static {p3, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    shl-int/lit8 v6, v6, 0x1a

    or-int/2addr v5, v6

    and-int/2addr v5, v3

    aput v5, p0, v4

    add-int/lit8 v4, v0, 0x1f

    const/16 v5, 0x1c

    invoke-static {p3, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    ushr-int/lit8 v5, v5, 0x3

    aput v5, p0, v4

    add-int/lit8 v2, v2, 0x1d

    add-int/lit8 v0, v0, 0x20

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x3a00

    const/16 v1, 0x20

    invoke-static {p3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static decodeSignature([B[I[BI)V
    .locals 15

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x400

    if-ge v1, v3, :cond_0

    const/4 v3, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v4

    const/4 v5, 0x2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v5

    const/4 v6, 0x3

    move-object/from16 v0, p2

    invoke-static {v0, v2, v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v6

    const/4 v7, 0x4

    move-object/from16 v0, p2

    invoke-static {v0, v2, v7}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v7

    const/4 v8, 0x5

    move-object/from16 v0, p2

    invoke-static {v0, v2, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v8

    const/4 v9, 0x6

    move-object/from16 v0, p2

    invoke-static {v0, v2, v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v9

    const/4 v10, 0x7

    move-object/from16 v0, p2

    invoke-static {v0, v2, v10}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v10

    const/16 v11, 0x8

    move-object/from16 v0, p2

    invoke-static {v0, v2, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v11

    const/16 v12, 0x9

    move-object/from16 v0, p2

    invoke-static {v0, v2, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BII)I

    move-result v12

    shl-int/lit8 v13, v3, 0xc

    shr-int/lit8 v13, v13, 0xc

    aput v13, p1, v1

    add-int/lit8 v13, v1, 0x1

    ushr-int/lit8 v3, v3, 0x14

    shl-int/lit8 v14, v4, 0x18

    shr-int/lit8 v14, v14, 0xc

    or-int/2addr v3, v14

    aput v3, p1, v13

    add-int/lit8 v3, v1, 0x2

    shl-int/lit8 v13, v4, 0x4

    shr-int/lit8 v13, v13, 0xc

    aput v13, p1, v3

    add-int/lit8 v3, v1, 0x3

    ushr-int/lit8 v4, v4, 0x1c

    shl-int/lit8 v13, v5, 0x10

    shr-int/lit8 v13, v13, 0xc

    or-int/2addr v4, v13

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0x4

    ushr-int/lit8 v4, v5, 0x10

    shl-int/lit8 v5, v6, 0x1c

    shr-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0x5

    shl-int/lit8 v4, v6, 0x8

    shr-int/lit8 v4, v4, 0xc

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0x6

    ushr-int/lit8 v4, v6, 0x18

    shl-int/lit8 v5, v7, 0x14

    shr-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0x7

    shr-int/lit8 v4, v7, 0xc

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0x8

    shl-int/lit8 v4, v8, 0xc

    shr-int/lit8 v4, v4, 0xc

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0x9

    ushr-int/lit8 v4, v8, 0x14

    shl-int/lit8 v5, v9, 0x18

    shr-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0xa

    shl-int/lit8 v4, v9, 0x4

    shr-int/lit8 v4, v4, 0xc

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0xb

    ushr-int/lit8 v4, v9, 0x1c

    shl-int/lit8 v5, v10, 0x10

    shr-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0xc

    ushr-int/lit8 v4, v10, 0x10

    shl-int/lit8 v5, v11, 0x1c

    shr-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0xd

    shl-int/lit8 v4, v11, 0x8

    shr-int/lit8 v4, v4, 0xc

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0xe

    ushr-int/lit8 v4, v11, 0x18

    shl-int/lit8 v5, v12, 0x14

    shr-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    aput v4, p1, v3

    add-int/lit8 v3, v1, 0xf

    shr-int/lit8 v4, v12, 0xc

    aput v4, p1, v3

    add-int/lit8 v2, v2, 0xa

    add-int/lit8 v1, v1, 0x10

    goto/16 :goto_0

    :cond_0
    move/from16 v0, p3

    add-int/lit16 v1, v0, 0xa00

    const/4 v2, 0x0

    const/16 v3, 0x20

    move-object/from16 v0, p2

    invoke-static {v0, v1, p0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static encodeC([I[S[BI)V
    .locals 11

    const/16 v6, 0x20

    const/16 v2, 0xa8

    const/4 v10, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x400

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
    const/16 v5, 0x19

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

    and-int/lit16 v5, v5, 0x3ff

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

.method static encodePrivateKey([B[I[I[BI[B)V
    .locals 6

    const/16 v5, 0x400

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    if-ge v0, v5, :cond_0

    add-int v1, v4, v0

    aget v2, p1, v0

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_1
    const/4 v0, 0x4

    if-ge v1, v0, :cond_2

    move v0, v4

    :goto_2
    if-ge v0, v5, :cond_1

    mul-int/lit16 v2, v1, 0x400

    add-int/2addr v2, v0

    add-int/lit16 v2, v2, 0x400

    mul-int/lit16 v3, v1, 0x400

    add-int/2addr v3, v0

    aget v3, p2, v3

    int-to-byte v3, v3

    aput-byte v3, p0, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    const/16 v0, 0x1400

    const/16 v1, 0x40

    invoke-static {p3, p4, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x1440

    const/16 v2, 0x28

    const/16 v5, 0x3a00

    move-object v0, p0

    move-object v3, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    return-void
.end method

.method static encodePublicKey([B[I[BI)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v3, 0xe80

    if-ge v0, v3, :cond_0

    aget v3, p1, v2

    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    shl-int/lit8 v4, v4, 0x1d

    or-int/2addr v3, v4

    invoke-static {p0, v0, v1, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x1

    add-int/lit8 v4, v2, 0x1

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x3

    add-int/lit8 v5, v2, 0x2

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x1a

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x2

    add-int/lit8 v4, v2, 0x2

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x6

    add-int/lit8 v5, v2, 0x3

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x17

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x3

    add-int/lit8 v4, v2, 0x3

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x9

    add-int/lit8 v5, v2, 0x4

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x4

    add-int/lit8 v4, v2, 0x4

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0xc

    add-int/lit8 v5, v2, 0x5

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x11

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x5

    add-int/lit8 v4, v2, 0x5

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v2, 0x6

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0xe

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x6

    add-int/lit8 v4, v2, 0x6

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x12

    add-int/lit8 v5, v2, 0x7

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0xb

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x7

    add-int/lit8 v4, v2, 0x7

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x15

    add-int/lit8 v5, v2, 0x8

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x8

    add-int/lit8 v4, v2, 0x8

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x18

    add-int/lit8 v5, v2, 0x9

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x5

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x9

    add-int/lit8 v4, v2, 0x9

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x1b

    add-int/lit8 v5, v2, 0xa

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x2

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0xb

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x1f

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0xa

    add-int/lit8 v4, v2, 0xb

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v2, 0xc

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x1c

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0xb

    add-int/lit8 v4, v2, 0xc

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v2, 0xd

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x19

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0xc

    add-int/lit8 v4, v2, 0xd

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x7

    add-int/lit8 v5, v2, 0xe

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x16

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0xd

    add-int/lit8 v4, v2, 0xe

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0xa

    add-int/lit8 v5, v2, 0xf

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x13

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0xe

    add-int/lit8 v4, v2, 0xf

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0xd

    add-int/lit8 v5, v2, 0x10

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0xf

    add-int/lit8 v4, v2, 0x10

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v5, v2, 0x11

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0xd

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x10

    add-int/lit8 v4, v2, 0x11

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x13

    add-int/lit8 v5, v2, 0x12

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0xa

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x11

    add-int/lit8 v4, v2, 0x12

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x16

    add-int/lit8 v5, v2, 0x13

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x12

    add-int/lit8 v4, v2, 0x13

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x19

    add-int/lit8 v5, v2, 0x14

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x13

    add-int/lit8 v4, v2, 0x14

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x1c

    add-int/lit8 v5, v2, 0x15

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x1

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x16

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x1e

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x14

    add-int/lit8 v4, v2, 0x16

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x2

    add-int/lit8 v5, v2, 0x17

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x1b

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x15

    add-int/lit8 v4, v2, 0x17

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x5

    add-int/lit8 v5, v2, 0x18

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x16

    add-int/lit8 v4, v2, 0x18

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, v2, 0x19

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x15

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x17

    add-int/lit8 v4, v2, 0x19

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0xb

    add-int/lit8 v5, v2, 0x1a

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x12

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x18

    add-int/lit8 v4, v2, 0x1a

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0xe

    add-int/lit8 v5, v2, 0x1b

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0xf

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x19

    add-int/lit8 v4, v2, 0x1b

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x11

    add-int/lit8 v5, v2, 0x1c

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x1a

    add-int/lit8 v4, v2, 0x1c

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x14

    add-int/lit8 v5, v2, 0x1d

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x9

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x1b

    add-int/lit8 v4, v2, 0x1d

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x17

    add-int/lit8 v5, v2, 0x1e

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x6

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x1c

    add-int/lit8 v4, v2, 0x1e

    aget v4, p1, v4

    shr-int/lit8 v4, v4, 0x1a

    add-int/lit8 v5, v2, 0x1f

    aget v5, p1, v5

    shl-int/lit8 v5, v5, 0x3

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    add-int/lit8 v2, v2, 0x20

    add-int/lit8 v0, v0, 0x1d

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x3a00

    const/16 v1, 0x20

    invoke-static {p2, p3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static encodeSignature([BI[BI[I)V
    .locals 8

    const v7, 0xffff

    const/4 v1, 0x0

    const v6, 0xfffff

    move v0, v1

    move v2, v1

    :goto_0
    const/16 v3, 0x280

    if-ge v0, v3, :cond_0

    aget v3, p4, v2

    and-int/2addr v3, v6

    add-int/lit8 v4, v2, 0x1

    aget v4, p4, v4

    shl-int/lit8 v4, v4, 0x14

    or-int/2addr v3, v4

    invoke-static {p0, v0, v1, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x1

    add-int/lit8 v4, v2, 0x1

    aget v4, p4, v4

    ushr-int/lit8 v4, v4, 0xc

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0x2

    aget v5, p4, v5

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x3

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0x1c

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x2

    add-int/lit8 v4, v2, 0x3

    aget v4, p4, v4

    ushr-int/lit8 v4, v4, 0x4

    and-int/2addr v4, v7

    add-int/lit8 v5, v2, 0x4

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x3

    add-int/lit8 v4, v2, 0x4

    aget v4, p4, v4

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v2, 0x5

    aget v5, p4, v5

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0x6

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x4

    add-int/lit8 v4, v2, 0x6

    aget v4, p4, v4

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xfff

    add-int/lit8 v5, v2, 0x7

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x5

    add-int/lit8 v4, v2, 0x8

    aget v4, p4, v4

    and-int/2addr v4, v6

    add-int/lit8 v5, v2, 0x9

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0x14

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x6

    add-int/lit8 v4, v2, 0x9

    aget v4, p4, v4

    ushr-int/lit8 v4, v4, 0xc

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v5, v2, 0xa

    aget v5, p4, v5

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0xb

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0x1c

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/4 v3, 0x7

    add-int/lit8 v4, v2, 0xb

    aget v4, p4, v4

    ushr-int/lit8 v4, v4, 0x4

    and-int/2addr v4, v7

    add-int/lit8 v5, v2, 0xc

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x8

    add-int/lit8 v4, v2, 0xc

    aget v4, p4, v4

    ushr-int/lit8 v4, v4, 0x10

    and-int/lit8 v4, v4, 0xf

    add-int/lit8 v5, v2, 0xd

    aget v5, p4, v5

    and-int/2addr v5, v6

    shl-int/lit8 v5, v5, 0x4

    or-int/2addr v4, v5

    add-int/lit8 v5, v2, 0xe

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    const/16 v3, 0x9

    add-int/lit8 v4, v2, 0xe

    aget v4, p4, v4

    ushr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xfff

    add-int/lit8 v5, v2, 0xf

    aget v5, p4, v5

    shl-int/lit8 v5, v5, 0xc

    or-int/2addr v4, v5

    invoke-static {p0, v0, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->at([BIII)V

    add-int/lit8 v2, v2, 0x10

    add-int/lit8 v0, v0, 0xa

    goto/16 :goto_0

    :cond_0
    add-int/lit16 v0, p1, 0xa00

    const/16 v1, 0x20

    invoke-static {p2, p3, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static generateKeyPair([B[BLjava/security/SecureRandom;)I
    .locals 13

    const/4 v6, 0x0

    const/16 v0, 0x20

    new-array v3, v0, [B

    const/16 v0, 0xe0

    new-array v0, v0, [B

    const/16 v1, 0x400

    new-array v8, v1, [I

    const/16 v1, 0x1000

    new-array v9, v1, [I

    const/16 v1, 0x1000

    new-array v10, v1, [I

    const/16 v1, 0x1000

    new-array v11, v1, [I

    const/16 v1, 0x400

    new-array v12, v1, [I

    invoke-virtual {p2, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    const/16 v2, 0xe0

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/4 v2, 0x0

    move v1, v6

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v3, v2, 0x20

    mul-int/lit16 v4, v2, 0x400

    invoke-static {v1, v0, v3, v9, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;->sample_gauss_poly(I[BI[II)V

    mul-int/lit16 v3, v2, 0x400

    const/16 v4, 0x22a

    invoke-static {v9, v3, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->checkPolynomial([III)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x80

    const/4 v3, 0x0

    invoke-static {v1, v0, v2, v8, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$Gaussian;->sample_gauss_poly(I[BI[II)V

    const/4 v2, 0x0

    const/16 v3, 0x22a

    invoke-static {v8, v2, v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->checkPolynomial([III)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v1, 0xa0

    invoke-static {v10, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    invoke-static {v12, v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    const/4 v1, 0x0

    move v7, v1

    :goto_1
    const/4 v1, 0x4

    if-ge v7, v1, :cond_2

    mul-int/lit16 v1, v7, 0x400

    mul-int/lit16 v2, v7, 0x400

    invoke-static {v11, v1, v10, v2, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    mul-int/lit16 v2, v7, 0x400

    mul-int/lit16 v4, v7, 0x400

    mul-int/lit16 v6, v7, 0x400

    move-object v1, v11

    move-object v3, v11

    move-object v5, v9

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_add_correct([II[II[II)V

    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_1

    :cond_2
    const/16 v1, 0xa0

    invoke-static {p0, v11, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodePublicKey([B[I[BI)V

    const/16 v5, 0xa0

    move-object v1, p1

    move-object v2, v8

    move-object v3, v9

    move-object v4, v0

    move-object v6, p0

    invoke-static/range {v1 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodePrivateKey([B[I[I[BI[B)V

    const/4 v0, 0x0

    return v0
.end method

.method static generateSignature([B[BII[BLjava/security/SecureRandom;)I
    .locals 24

    const/16 v3, 0x20

    new-array v13, v3, [B

    const/16 v3, 0x20

    new-array v14, v3, [B

    const/16 v3, 0x90

    new-array v3, v3, [B

    const/16 v4, 0x19

    new-array v15, v4, [I

    const/16 v4, 0x19

    new-array v0, v4, [S

    move-object/from16 v16, v0

    const/16 v4, 0x400

    new-array v0, v4, [I

    move-object/from16 v17, v0

    const/16 v4, 0x400

    new-array v0, v4, [I

    move-object/from16 v18, v0

    const/16 v4, 0x400

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/16 v4, 0x400

    new-array v0, v4, [I

    move-object/from16 v20, v0

    const/16 v4, 0x1000

    new-array v0, v4, [I

    move-object/from16 v21, v0

    const/16 v4, 0x1000

    new-array v0, v4, [I

    move-object/from16 v22, v0

    const/16 v4, 0x1000

    new-array v0, v4, [I

    move-object/from16 v23, v0

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/16 v4, 0x1420

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

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/4 v5, 0x0

    const/16 v6, 0x20

    const/4 v8, 0x0

    array-length v4, v3

    add-int/lit8 v9, v4, -0x28

    move-object v4, v14

    move-object v7, v3

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/16 v4, 0x1440

    array-length v5, v3

    add-int/lit8 v5, v5, -0x28

    const/16 v6, 0x28

    move-object/from16 v0, p4

    invoke-static {v0, v4, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v4, 0x1400

    move-object/from16 v0, v23

    move-object/from16 v1, p4

    invoke-static {v0, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    move v5, v11

    :goto_0
    const/4 v4, 0x0

    add-int/lit8 v11, v5, 0x1

    move-object/from16 v0, v17

    invoke-static {v0, v14, v4, v11}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->sample_y([I[BII)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    const/4 v4, 0x0

    :goto_1
    const/4 v5, 0x4

    if-ge v4, v5, :cond_0

    mul-int/lit16 v5, v4, 0x400

    mul-int/lit16 v6, v4, 0x400

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-static {v0, v5, v1, v6, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    const/16 v5, 0x40

    move-object/from16 v0, v21

    invoke-static {v13, v4, v0, v3, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->hashFunction([BI[I[BI)V

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-static {v15, v0, v13, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodeC([I[S[BI)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v4, v19

    move-object/from16 v6, p4

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul8([II[BI[I[S)V

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_add([I[I[I)V

    invoke-static/range {v20 .. v20}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->testRejection([I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v5, v11

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    move v4, v10

    move v12, v5

    :goto_2
    const/4 v5, 0x4

    if-ge v12, v5, :cond_2

    mul-int/lit16 v5, v12, 0x400

    add-int/lit8 v4, v12, 0x1

    mul-int/lit16 v7, v4, 0x400

    move-object/from16 v4, v22

    move-object/from16 v6, p4

    move-object v8, v15

    move-object/from16 v9, v16

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul8([II[BI[I[S)V

    mul-int/lit16 v5, v12, 0x400

    mul-int/lit16 v7, v12, 0x400

    mul-int/lit16 v9, v12, 0x400

    move-object/from16 v4, v21

    move-object/from16 v6, v21

    move-object/from16 v8, v22

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_sub([II[II[II)V

    mul-int/lit16 v4, v12, 0x400

    move-object/from16 v0, v21

    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->test_correctness([II)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eqz v4, :cond_4

    move v10, v4

    move v5, v11

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-static {v0, v3, v13, v4, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodeSignature([BI[BI[I)V

    const/4 v3, 0x0

    return v3
.end method

.method private static hashFunction([BI[I[BI)V
    .locals 9

    const/4 v4, 0x0

    const/16 v0, 0x1050

    new-array v3, v0, [B

    move v5, v4

    :goto_0
    const/4 v0, 0x4

    if-ge v5, v0, :cond_1

    mul-int/lit16 v1, v5, 0x400

    move v0, v4

    :goto_1
    const/16 v2, 0x400

    if-ge v0, v2, :cond_0

    aget v2, p2, v1

    const v6, 0xa3d4800

    sub-int/2addr v6, v2

    shr-int/lit8 v6, v6, 0x1f

    const v7, 0x147a9001

    sub-int v7, v2, v7

    and-int/2addr v7, v6

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v2, v6

    or-int v6, v7, v2

    const v2, 0x3fffff

    and-int/2addr v2, v6

    const/high16 v7, 0x200000

    sub-int/2addr v7, v2

    shr-int/lit8 v7, v7, 0x1f

    const/high16 v8, 0x400000

    sub-int v8, v2, v8

    and-int/2addr v8, v7

    xor-int/lit8 v7, v7, -0x1

    and-int/2addr v2, v7

    or-int v7, v8, v2

    add-int/lit8 v2, v1, 0x1

    sub-int/2addr v6, v7

    shr-int/lit8 v6, v6, 0x16

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
    const/16 v0, 0x1000

    const/16 v1, 0x50

    invoke-static {p3, p4, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0x20

    array-length v5, v3

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    return-void
.end method

.method static littleEndianToInt24([BI)I
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

.method static sample_y([I[BII)V
    .locals 12

    const/16 v10, 0x400

    const/16 v6, 0x20

    const/4 v1, 0x0

    sget v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->BPLUS1BYTES:I

    mul-int/lit16 v0, v0, 0x400

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    sget v11, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->BPLUS1BYTES:I

    shl-int/lit8 v2, p3, 0x8

    int-to-short v3, v2

    mul-int/lit16 v2, v11, 0x400

    add-int/lit8 v4, v3, 0x1

    int-to-short v7, v4

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v3, v7

    move v2, v10

    move v4, v1

    move v9, v1

    :goto_0
    if-ge v9, v10, :cond_1

    mul-int v5, v2, v11

    if-lt v4, v5, :cond_0

    sget v8, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->NBLOCKS_SHAKE:I

    mul-int/lit16 v2, v11, 0x400

    add-int/lit8 v4, v3, 0x1

    int-to-short v7, v4

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->customizableSecureHashAlgorithmKECCAK128Simple([BIIS[BII)V

    move v3, v7

    move v2, v8

    move v4, v1

    :cond_0
    invoke-static {v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->littleEndianToInt24([BI)I

    move-result v5

    const v7, 0xfffff

    and-int/2addr v5, v7

    aput v5, p0, v9

    aget v5, p0, v9

    const v7, 0x7ffff

    sub-int/2addr v5, v7

    aput v5, p0, v9

    aget v5, p0, v9

    const/high16 v7, 0x80000

    if-eq v5, v7, :cond_2

    add-int/lit8 v5, v9, 0x1

    :goto_1
    add-int/2addr v4, v11

    move v9, v5

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    move v5, v9

    goto :goto_1
.end method

.method private static testRejection([I)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v0

    :goto_0
    const/16 v3, 0x400

    if-ge v1, v3, :cond_0

    const v3, 0x7fdd5

    aget v4, p0, v1

    invoke-static {v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v4

    sub-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v1, v2, 0x1f

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private static testZ([I)Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v2, 0x400

    if-ge v1, v2, :cond_1

    aget v2, p0, v1

    const v3, -0x7fdd5

    if-lt v2, v3, :cond_0

    aget v2, p0, v1

    const v3, 0x7fdd5

    if-le v2, v3, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method static test_correctness([II)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x400

    if-ge v2, v3, :cond_1

    add-int v3, p1, v2

    aget v3, p0, v3

    const v4, 0xa3d4800

    sub-int/2addr v4, v3

    shr-int/lit8 v4, v4, 0x1f

    const v5, 0x147a9001

    sub-int v5, v3, v5

    and-int/2addr v5, v4

    xor-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    or-int/2addr v3, v5

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v4

    const v5, 0xa3d45d6

    sub-int/2addr v4, v5

    xor-int/lit8 v4, v4, -0x1

    ushr-int/lit8 v4, v4, 0x1f

    const/high16 v5, 0x200000

    add-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x1

    shr-int/lit8 v5, v5, 0x16

    shl-int/lit8 v5, v5, 0x16

    sub-int/2addr v3, v5

    invoke-static {v3}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->absolute(I)I

    move-result v3

    const v5, 0x1ffdd6

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

    const/16 v4, 0x19

    new-array v0, v4, [I

    move-object/from16 v19, v0

    const/16 v4, 0x19

    new-array v9, v4, [S

    const/16 v4, 0x1000

    new-array v0, v4, [I

    move-object/from16 v20, v0

    const/16 v4, 0x1000

    new-array v10, v4, [I

    const/16 v4, 0x1000

    new-array v0, v4, [I

    move-object/from16 v21, v0

    const/16 v4, 0x1000

    new-array v14, v4, [I

    const/16 v4, 0x400

    new-array v12, v4, [I

    const/16 v4, 0x400

    new-array v0, v4, [I

    move-object/from16 v22, v0

    const/16 v4, 0xa20

    move/from16 v0, p3

    if-eq v0, v4, :cond_0

    const/4 v3, -0x1

    :goto_0
    return v3

    :cond_0
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-static {v0, v12, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->decodeSignature([B[I[BI)V

    invoke-static {v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->testZ([I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, -0x2

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p4

    invoke-static {v0, v11, v4, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->decodePublicKey([I[BI[B)V

    const/4 v4, 0x0

    const/16 v5, 0x28

    const/4 v7, 0x0

    move-object/from16 v0, p0

    array-length v8, v0

    move-object/from16 v6, p0

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/16 v4, 0x28

    const/16 v5, 0x28

    const/4 v7, 0x0

    const/16 v8, 0x3a00

    move-object/from16 v6, p4

    invoke-static/range {v3 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/HashUtils;->secureHashAlgorithmKECCAK128([BII[BII)V

    const/4 v4, 0x0

    move-object/from16 v0, v21

    invoke-static {v0, v11, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_uniform([I[BI)V

    const/4 v4, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v9, v1, v4}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->encodeC([I[S[BI)V

    move-object/from16 v0, v22

    invoke-static {v0, v12}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_ntt([I[I)V

    const/4 v4, 0x0

    move/from16 v16, v4

    :goto_1
    const/4 v4, 0x4

    move/from16 v0, v16

    if-ge v0, v4, :cond_2

    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x400

    move/from16 v0, v16

    mul-int/lit16 v7, v0, 0x400

    move-object v4, v14

    move-object/from16 v6, v20

    move-object/from16 v8, v19

    invoke-static/range {v4 .. v9}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->sparse_mul32([II[II[I[S)V

    move/from16 v0, v16

    mul-int/lit16 v4, v0, 0x400

    move/from16 v0, v16

    mul-int/lit16 v5, v0, 0x400

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v10, v4, v0, v5, v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_mul([II[II[I)V

    move/from16 v0, v16

    mul-int/lit16 v11, v0, 0x400

    move/from16 v0, v16

    mul-int/lit16 v13, v0, 0x400

    move/from16 v0, v16

    mul-int/lit16 v15, v0, 0x400

    move-object v12, v10

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p$QTesla1PPolynomial;->poly_sub_reduce([II[II[II)V

    add-int/lit8 v4, v16, 0x1

    move/from16 v16, v4

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, v18

    invoke-static {v0, v4, v10, v3, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->hashFunction([BI[I[BI)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x20

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v3, v1, v4, v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->memoryEqual([BI[BII)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, -0x3

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0
.end method
