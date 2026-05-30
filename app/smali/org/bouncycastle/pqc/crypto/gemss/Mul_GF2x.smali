.class abstract Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul12;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul13;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul17;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul6;,
        Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x$Mul9;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static MUL32_NO_SIMD_GF2X(JJ)J
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const-wide/16 v6, 0x1

    and-long v0, p2, v6

    neg-long v0, v0

    and-long/2addr v0, p0

    ushr-long v2, p2, v4

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    ushr-long v2, p2, v5

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    shl-long/2addr v2, v5

    xor-long/2addr v0, v2

    ushr-long v2, p2, v8

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    shl-long/2addr v2, v8

    xor-long/2addr v0, v2

    ushr-long v2, p2, v9

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    shl-long/2addr v2, v9

    xor-long/2addr v0, v2

    const/4 v2, 0x5

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/4 v4, 0x5

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x6

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/4 v4, 0x6

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x7

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/4 v4, 0x7

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x8

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x9

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x9

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0xa

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0xa

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0xb

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0xb

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0xc

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0xc

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0xd

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0xd

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0xe

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0xe

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0xf

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0xf

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x10

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x11

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x11

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x12

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x12

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x13

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x13

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x14

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x14

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x15

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x15

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x16

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x16

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x17

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x17

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x18

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x19

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x19

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x1a

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x1a

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x1b

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x1b

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x1c

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x1c

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x1d

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x1d

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x1e

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x1e

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/16 v2, 0x1f

    ushr-long v2, p2, v2

    and-long/2addr v2, v6

    neg-long v2, v2

    and-long/2addr v2, p0

    const/16 v4, 0x1f

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static MUL64_NO_SIMD_GF2X([JIJJ)V
    .locals 8

    const-wide/16 v0, 0x1

    and-long/2addr v0, p4

    neg-long v0, v0

    and-long/2addr v0, p2

    const/16 v2, 0x3f

    ushr-long v2, p4, v2

    neg-long v2, v2

    and-long/2addr v2, p2

    const/16 v4, 0x3f

    shl-long v4, v2, v4

    xor-long/2addr v0, v4

    const/4 v4, 0x1

    ushr-long/2addr v2, v4

    const/4 v4, 0x1

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x1

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3f

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x2

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x2

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3e

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x3

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x3

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3d

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x4

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x4

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3c

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x5

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x5

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3b

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x6

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x6

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3a

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x7

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x7

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x39

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x8

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x8

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x38

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x9

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x9

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x37

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xa

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xa

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x36

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xb

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xb

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x35

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xc

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xc

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x34

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xd

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xd

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x33

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xe

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xe

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x32

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xf

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xf

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x31

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x10

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x10

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x30

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x11

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x11

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2f

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x12

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x12

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2e

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x13

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x13

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2d

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x14

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x14

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2c

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x15

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x15

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2b

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x16

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x16

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2a

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x17

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x17

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x29

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x18

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x18

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x28

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x19

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x19

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x27

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1a

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1a

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x26

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1b

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1b

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x25

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1c

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1c

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x24

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1d

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1d

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x23

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1e

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1e

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x22

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1f

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1f

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x21

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x20

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x20

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x21

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x21

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1f

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x22

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x22

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1e

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x23

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x23

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1d

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x24

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x24

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1c

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x25

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x25

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1b

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x26

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x26

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1a

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x27

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x27

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x19

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x28

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x28

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x29

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x29

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x17

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2a

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2a

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x16

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2b

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2b

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x15

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2c

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2c

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x14

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2d

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2d

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x13

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2e

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2e

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x12

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2f

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2f

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x11

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x30

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x30

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x31

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x31

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xf

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x32

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x32

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xe

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x33

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x33

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xd

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x34

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x34

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xc

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x35

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x35

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xb

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x36

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x36

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xa

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x37

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x37

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x9

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x38

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x38

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x39

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x39

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x7

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3a

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x3a

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x6

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3b

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x3b

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x5

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3c

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x3c

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3d

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x3d

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x3

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3e

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x3e

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    aput-wide v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    const/4 v1, 0x2

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    return-void
.end method

.method private static MUL64_NO_SIMD_GF2X_XOR([JIJJ)V
    .locals 10

    const-wide/16 v0, 0x1

    and-long/2addr v0, p4

    neg-long v0, v0

    and-long/2addr v0, p2

    const/16 v2, 0x3f

    ushr-long v2, p4, v2

    neg-long v2, v2

    and-long/2addr v2, p2

    const/16 v4, 0x3f

    shl-long v4, v2, v4

    xor-long/2addr v0, v4

    const/4 v4, 0x1

    ushr-long/2addr v2, v4

    const/4 v4, 0x1

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x1

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3f

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x2

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x2

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3e

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x3

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x3

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3d

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x4

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x4

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3c

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x5

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x5

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3b

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x6

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x6

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x3a

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x7

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/4 v6, 0x7

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x39

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x8

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x8

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x38

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x9

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x9

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x37

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xa

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xa

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x36

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xb

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xb

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x35

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xc

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xc

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x34

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xd

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xd

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x33

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xe

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xe

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x32

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0xf

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0xf

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x31

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x10

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x10

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x30

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x11

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x11

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2f

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x12

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x12

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2e

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x13

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x13

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2d

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x14

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x14

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2c

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x15

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x15

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2b

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x16

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x16

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x2a

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x17

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x17

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x29

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x18

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x18

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x28

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x19

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x19

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x27

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1a

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1a

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x26

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1b

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1b

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x25

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1c

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1c

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x24

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1d

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1d

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x23

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1e

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1e

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x22

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x1f

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x1f

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x21

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x20

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x20

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x21

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x21

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1f

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x22

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x22

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1e

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x23

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x23

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1d

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x24

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x24

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1c

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x25

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x25

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1b

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x26

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x26

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x1a

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x27

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x27

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x19

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x28

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x28

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x18

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x29

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x29

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x17

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2a

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2a

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x16

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2b

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2b

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x15

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2c

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2c

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x14

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2d

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2d

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x13

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2e

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2e

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x12

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x2f

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x2f

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x11

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x30

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x30

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x10

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x31

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x31

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xf

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x32

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x32

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xe

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x33

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x33

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xd

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x34

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x34

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xc

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x35

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x35

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xb

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x36

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x36

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0xa

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x37

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x37

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x9

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x38

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x38

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/16 v6, 0x8

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x39

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x39

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x7

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3a

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x3a

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x6

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3b

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x3b

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x5

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3c

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x3c

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x4

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3d

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    const/16 v6, 0x3d

    shl-long v6, v4, v6

    xor-long/2addr v0, v6

    const/4 v6, 0x3

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x3e

    ushr-long v4, p4, v4

    const-wide/16 v6, 0x1

    and-long/2addr v4, v6

    neg-long v4, v4

    and-long/2addr v4, p2

    aget-wide v6, p0, p1

    const/16 v8, 0x3e

    shl-long v8, v4, v8

    xor-long/2addr v0, v8

    xor-long/2addr v0, v6

    aput-wide v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    aget-wide v6, p0, v0

    const/4 v1, 0x2

    ushr-long/2addr v4, v1

    xor-long/2addr v2, v4

    xor-long/2addr v2, v6

    aput-wide v2, p0, v0

    return-void
.end method

.method private static SQR128_NO_SIMD_GF2X([JI[JI)V
    .locals 4

    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p3, 0x1

    aget-wide v2, p2, v1

    invoke-static {p0, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64_NO_SIMD_GF2X([JIJ)V

    aget-wide v0, p2, p3

    invoke-static {p0, p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64_NO_SIMD_GF2X([JIJ)V

    return-void
.end method

.method private static SQR256_NO_SIMD_GF2X([JI[JI)V
    .locals 2

    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v1, p3, 0x2

    invoke-static {p0, v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V

    return-void
.end method

.method private static SQR32_NO_SIMD_GF2X(J)J
    .locals 4

    const/16 v0, 0x10

    shl-long v0, p0, v0

    xor-long/2addr v0, p0

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v0, v2

    const/4 v2, 0x2

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v0, v2

    const/4 v2, 0x1

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static SQR64LOW_NO_SIMD_GF2X(J)J
    .locals 4

    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    const/16 v2, 0x10

    shl-long v2, p0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0xffff0000ffffL

    and-long/2addr v0, v2

    const/16 v2, 0x8

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0xff00ff00ff00ffL

    and-long/2addr v0, v2

    const/4 v2, 0x4

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v0, v2

    const/4 v2, 0x2

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v0, v2

    const/4 v2, 0x1

    shl-long v2, v0, v2

    xor-long/2addr v0, v2

    const-wide v2, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, v2

    return-wide v0
.end method

.method private static SQR64_NO_SIMD_GF2X([JIJ)V
    .locals 4

    add-int/lit8 v0, p1, 0x1

    const/16 v1, 0x20

    ushr-long v2, p2, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR32_NO_SIMD_GF2X(J)J

    move-result-wide v2

    aput-wide v2, p0, v0

    invoke-static {p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64LOW_NO_SIMD_GF2X(J)J

    move-result-wide v0

    aput-wide v0, p0, p1

    return-void
.end method

.method static synthetic access$000([JIJ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR64_NO_SIMD_GF2X([JIJ)V

    return-void
.end method

.method static synthetic access$100([JI[JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR128_NO_SIMD_GF2X([JI[JI)V

    return-void
.end method

.method static synthetic access$1000([J[JI[JI[J[J[J)V
    .locals 0

    invoke-static/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul544_no_simd_gf2x([J[JI[JI[J[J[J)V

    return-void
.end method

.method static synthetic access$1100([J[JI[JI[J[J[J[J)V
    .locals 0

    invoke-static/range {p0 .. p8}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul544_no_simd_gf2x_xor([J[JI[JI[J[J[J[J)V

    return-void
.end method

.method static synthetic access$200([JI[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V

    return-void
.end method

.method static synthetic access$300(J)J
    .locals 2

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR32_NO_SIMD_GF2X(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400([JI[JI)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->SQR256_NO_SIMD_GF2X([JI[JI)V

    return-void
.end method

.method static synthetic access$500([JI[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V

    return-void
.end method

.method static synthetic access$600([J[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul384_no_simd_gf2x([J[JI[JI[J)V

    return-void
.end method

.method static synthetic access$700([J[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul384_no_simd_gf2x_xor([J[JI[JI[J)V

    return-void
.end method

.method static synthetic access$800([J[JI[JI[J)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul416_no_simd_gf2x([J[JI[JI[J)V

    return-void
.end method

.method static synthetic access$900([J[JI[JI[J[J)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul416_no_simd_gf2x_xor([J[JI[JI[J[J)V

    return-void
.end method

.method private static mul128_no_simd_gf2x([JIJJJJ)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v1, p1, 0x2

    move-object v0, p0

    move-wide v2, p4

    move-wide v4, p8

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v0, p1, 0x2

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v2, p0, p1

    add-int/lit8 v1, p1, 0x2

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x3

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x1

    xor-long v2, p2, p4

    xor-long v4, p6, p8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul128_no_simd_gf2x([JI[JI[JI)V
    .locals 8

    aget-wide v2, p2, p3

    aget-wide v4, p4, p5

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, p3, 0x1

    aget-wide v2, p2, v0

    add-int/lit8 v0, p5, 0x1

    aget-wide v4, p4, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v0, p1, 0x2

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v2, p0, p1

    add-int/lit8 v1, p1, 0x2

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x3

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget-wide v2, p2, p3

    add-int/lit8 v0, p3, 0x1

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    aget-wide v4, p4, p5

    add-int/lit8 v0, p5, 0x1

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul128_no_simd_gf2x_xor([JIJJJJ[J)V
    .locals 8

    const/4 v1, 0x0

    move-object/from16 v0, p10

    move-wide v2, p2

    move-wide v4, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v1, 0x2

    move-object/from16 v0, p10

    move-wide v2, p4

    move-wide/from16 v4, p8

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    aget-wide v0, p0, p1

    const/4 v2, 0x0

    aget-wide v2, p10, v2

    xor-long/2addr v0, v2

    aput-wide v0, p0, p1

    const/4 v0, 0x2

    aget-wide v2, p10, v0

    const/4 v1, 0x1

    aget-wide v4, p10, v1

    xor-long/2addr v2, v4

    aput-wide v2, p10, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v2, p0, v0

    const/4 v1, 0x0

    aget-wide v4, p10, v1

    const/4 v1, 0x2

    aget-wide v6, p10, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v2, p0, v0

    const/4 v1, 0x2

    aget-wide v4, p10, v1

    const/4 v1, 0x3

    aget-wide v6, p10, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget-wide v2, p0, v0

    const/4 v1, 0x3

    aget-wide v4, p10, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x1

    xor-long v2, p2, p4

    xor-long v4, p6, p8

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method public static mul192_no_simd_gf2x([JI[JI[JI)V
    .locals 8

    aget-wide v2, p2, p3

    aget-wide v4, p4, p5

    move-object v0, p0

    move v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v1, p1, 0x4

    add-int/lit8 v0, p3, 0x2

    aget-wide v2, p2, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v4, p4, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v1, p1, 0x2

    add-int/lit8 v0, p3, 0x1

    aget-wide v2, p2, v0

    add-int/lit8 v0, p5, 0x1

    aget-wide v4, p4, v0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v0, p1, 0x1

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x4

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x4

    add-int/lit8 v1, p1, 0x3

    aget-wide v2, p0, v1

    add-int/lit8 v1, p1, 0x5

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p1, 0x3

    aget-wide v2, p0, v1

    add-int/lit8 v1, p1, 0x1

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aget-wide v4, p0, p1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x3

    add-int/lit8 v1, p1, 0x1

    aget-wide v2, p0, v1

    add-int/lit8 v1, p1, 0x4

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v2, p0, v0

    aget-wide v4, p0, p1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget-wide v2, p2, p3

    add-int/lit8 v0, p3, 0x1

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    aget-wide v4, p4, p5

    add-int/lit8 v0, p5, 0x1

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v0, p3, 0x1

    aget-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x2

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p5, 0x1

    aget-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v1, p1, 0x2

    aget-wide v2, p2, p3

    add-int/lit8 v0, p3, 0x2

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    aget-wide v4, p4, p5

    add-int/lit8 v0, p5, 0x2

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method public static mul192_no_simd_gf2x_xor([JI[JI[JI[J)V
    .locals 8

    const/4 v1, 0x0

    aget-wide v2, p2, p3

    aget-wide v4, p4, p5

    move-object v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v1, 0x4

    add-int/lit8 v0, p3, 0x2

    aget-wide v2, p2, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v4, p4, v0

    move-object v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v1, 0x2

    add-int/lit8 v0, p3, 0x1

    aget-wide v2, p2, v0

    add-int/lit8 v0, p5, 0x1

    aget-wide v4, p4, v0

    move-object v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    aget-wide v0, p0, p1

    const/4 v2, 0x0

    aget-wide v2, p6, v2

    xor-long/2addr v0, v2

    aput-wide v0, p0, p1

    const/4 v0, 0x1

    aget-wide v2, p6, v0

    const/4 v1, 0x2

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x3

    aget-wide v2, p6, v0

    const/4 v1, 0x4

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x4

    const/4 v1, 0x3

    aget-wide v2, p6, v1

    const/4 v1, 0x5

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x0

    aget-wide v2, p6, v0

    const/4 v1, 0x1

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    add-int/lit8 v0, p1, 0x1

    aget-wide v2, p0, v0

    const/4 v1, 0x0

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v2, p0, v0

    const/4 v1, 0x3

    aget-wide v4, p6, v1

    const/4 v1, 0x0

    aget-wide v6, p6, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget-wide v2, p0, v0

    const/4 v1, 0x1

    aget-wide v4, p6, v1

    const/4 v1, 0x4

    aget-wide v6, p6, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v2, p0, v0

    const/4 v1, 0x4

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget-wide v2, p0, v0

    const/4 v1, 0x5

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x1

    aget-wide v2, p2, p3

    add-int/lit8 v0, p3, 0x1

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    aget-wide v4, p4, p5

    add-int/lit8 v0, p5, 0x1

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v1, p1, 0x3

    add-int/lit8 v0, p3, 0x1

    aget-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x2

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p5, 0x1

    aget-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v1, p1, 0x2

    aget-wide v2, p2, p3

    add-int/lit8 v0, p3, 0x2

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    aget-wide v4, p4, p5

    add-int/lit8 v0, p5, 0x2

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul288_no_simd_gf2x([JI[JI[JI[J)V
    .locals 18

    aget-wide v2, p2, p3

    add-int/lit8 v0, p3, 0x1

    aget-wide v4, p2, v0

    aget-wide v6, p4, p5

    add-int/lit8 v0, p5, 0x1

    aget-wide v8, p4, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    add-int/lit8 v1, p1, 0x4

    add-int/lit8 v0, p3, 0x2

    aget-wide v2, p2, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v4, p4, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v1, p1, 0x7

    add-int/lit8 v0, p3, 0x3

    aget-wide v2, p2, v0

    add-int/lit8 v0, p5, 0x3

    aget-wide v4, p4, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    add-int/lit8 v0, p1, 0x7

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x5

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x8

    aget-wide v2, p0, v0

    add-int/lit8 v1, p3, 0x4

    aget-wide v4, p2, v1

    add-int/lit8 v1, p5, 0x4

    aget-wide v6, p4, v1

    invoke-static {v4, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x5

    add-int/lit8 v1, p1, 0x7

    aget-wide v2, p0, v1

    add-int/lit8 v1, p1, 0x4

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x7

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x8

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x6

    add-int/lit8 v1, p1, 0x7

    aget-wide v2, p0, v1

    add-int/lit8 v1, p1, 0x4

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x5

    add-int/lit8 v0, p3, 0x2

    aget-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x3

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p5, 0x2

    aget-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x3

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v1, p1, 0x7

    add-int/lit8 v0, p3, 0x3

    aget-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x4

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p5, 0x3

    aget-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x4

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v1, p1, 0x6

    add-int/lit8 v0, p3, 0x2

    aget-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x4

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p5, 0x2

    aget-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x4

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v0, p1, 0x4

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x2

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget-wide v2, p0, v0

    add-int/lit8 v1, p1, 0x3

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    aget-wide v0, p2, p3

    add-int/lit8 v2, p3, 0x2

    aget-wide v2, p2, v2

    xor-long/2addr v2, v0

    add-int/lit8 v0, p3, 0x1

    aget-wide v0, p2, v0

    add-int/lit8 v4, p3, 0x3

    aget-wide v4, p2, v4

    xor-long v8, v0, v4

    aget-wide v0, p4, p5

    add-int/lit8 v4, p5, 0x2

    aget-wide v4, p4, v4

    xor-long/2addr v4, v0

    add-int/lit8 v0, p5, 0x1

    aget-wide v0, p4, v0

    add-int/lit8 v6, p5, 0x3

    aget-wide v6, p4, v6

    xor-long v10, v0, v6

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v7, 0x2

    move-object/from16 v6, p6

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v0, 0x2

    aget-wide v6, p6, v0

    const/4 v1, 0x1

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p6, v0

    const/4 v0, 0x3

    aget-wide v6, p6, v0

    add-int/lit8 v1, p3, 0x4

    aget-wide v12, p2, v1

    add-int/lit8 v1, p5, 0x4

    aget-wide v14, p4, v1

    invoke-static {v12, v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v12

    xor-long/2addr v6, v12

    aput-wide v6, p6, v0

    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p1, 0x4

    aget-wide v6, p0, v1

    aget-wide v12, p0, p1

    xor-long/2addr v6, v12

    const/4 v1, 0x0

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    add-int/lit8 v0, p1, 0x3

    add-int/lit8 v1, p1, 0x5

    aget-wide v6, p0, v1

    add-int/lit8 v1, p1, 0x1

    aget-wide v12, p0, v1

    xor-long/2addr v6, v12

    const/4 v1, 0x2

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    const/4 v1, 0x0

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x2

    aget-wide v6, p6, v0

    const/4 v1, 0x3

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p6, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v6, p0, v0

    add-int/lit8 v1, p1, 0x6

    aget-wide v12, p0, v1

    const/4 v1, 0x2

    aget-wide v14, p6, v1

    xor-long/2addr v12, v14

    const/4 v1, 0x0

    aget-wide v14, p6, v1

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget-wide v6, p0, v0

    add-int/lit8 v1, p1, 0x7

    aget-wide v12, p0, v1

    const/4 v1, 0x2

    aget-wide v14, p6, v1

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    add-int/lit8 v0, p1, 0x6

    aget-wide v6, p0, v0

    add-int/lit8 v1, p1, 0x8

    aget-wide v12, p0, v1

    const/4 v1, 0x3

    aget-wide v14, p6, v1

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    add-int/lit8 v13, p1, 0x3

    xor-long v14, v2, v8

    xor-long v16, v4, v10

    move-object/from16 v12, p0

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v7, p1, 0x5

    add-int/lit8 v0, p3, 0x4

    aget-wide v0, p2, v0

    xor-long/2addr v8, v0

    add-int/lit8 v0, p5, 0x4

    aget-wide v0, p4, v0

    xor-long/2addr v10, v0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v1, p1, 0x4

    add-int/lit8 v0, p3, 0x4

    aget-wide v6, p2, v0

    xor-long/2addr v2, v6

    add-int/lit8 v0, p5, 0x4

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul288_no_simd_gf2x_xor([JI[JI[JI[J)V
    .locals 18

    const/4 v1, 0x0

    aget-wide v2, p2, p3

    add-int/lit8 v0, p3, 0x1

    aget-wide v4, p2, v0

    aget-wide v6, p4, p5

    add-int/lit8 v0, p5, 0x1

    aget-wide v8, p4, v0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/4 v1, 0x4

    add-int/lit8 v0, p3, 0x2

    aget-wide v2, p2, v0

    add-int/lit8 v0, p5, 0x2

    aget-wide v4, p4, v0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v1, 0x7

    add-int/lit8 v0, p3, 0x3

    aget-wide v2, p2, v0

    add-int/lit8 v0, p5, 0x3

    aget-wide v4, p4, v0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v0, 0x7

    aget-wide v2, p6, v0

    const/4 v1, 0x5

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/16 v0, 0x8

    aget-wide v2, p6, v0

    add-int/lit8 v1, p3, 0x4

    aget-wide v4, p2, v1

    add-int/lit8 v1, p5, 0x4

    aget-wide v6, p4, v1

    invoke-static {v4, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v4

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x5

    const/4 v1, 0x7

    aget-wide v2, p6, v1

    const/4 v1, 0x4

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x7

    aget-wide v2, p6, v0

    const/16 v1, 0x8

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x6

    const/4 v1, 0x7

    aget-wide v2, p6, v1

    const/4 v1, 0x4

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x4

    aget-wide v2, p6, v0

    const/4 v1, 0x2

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x5

    aget-wide v2, p6, v0

    const/4 v1, 0x3

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    aget-wide v0, p0, p1

    const/4 v2, 0x0

    aget-wide v2, p6, v2

    xor-long/2addr v0, v2

    aput-wide v0, p0, p1

    add-int/lit8 v0, p1, 0x1

    aget-wide v2, p0, v0

    const/4 v1, 0x1

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v2, p0, v0

    const/4 v1, 0x4

    aget-wide v4, p6, v1

    const/4 v1, 0x0

    aget-wide v6, p6, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v1, 0x5

    add-int/lit8 v0, p3, 0x2

    aget-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x3

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p5, 0x2

    aget-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x3

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/4 v1, 0x7

    add-int/lit8 v0, p3, 0x3

    aget-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x4

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p5, 0x3

    aget-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x4

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/4 v1, 0x6

    add-int/lit8 v0, p3, 0x2

    aget-wide v2, p2, v0

    add-int/lit8 v0, p3, 0x4

    aget-wide v4, p2, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p5, 0x2

    aget-wide v4, p4, v0

    add-int/lit8 v0, p5, 0x4

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v0, p1, 0x3

    aget-wide v2, p0, v0

    const/4 v1, 0x5

    aget-wide v4, p6, v1

    const/4 v1, 0x1

    aget-wide v6, p6, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v2, p0, v0

    const/4 v1, 0x4

    aget-wide v4, p6, v1

    const/4 v1, 0x6

    aget-wide v6, p6, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget-wide v2, p0, v0

    const/4 v1, 0x5

    aget-wide v4, p6, v1

    const/4 v1, 0x7

    aget-wide v6, p6, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x6

    aget-wide v2, p0, v0

    const/4 v1, 0x6

    aget-wide v4, p6, v1

    const/16 v1, 0x8

    aget-wide v6, p6, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x7

    aget-wide v2, p0, v0

    const/4 v1, 0x7

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    add-int/lit8 v0, p1, 0x8

    aget-wide v2, p0, v0

    const/16 v1, 0x8

    aget-wide v4, p6, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    aget-wide v0, p2, p3

    add-int/lit8 v2, p3, 0x2

    aget-wide v2, p2, v2

    xor-long/2addr v2, v0

    add-int/lit8 v0, p3, 0x1

    aget-wide v0, p2, v0

    add-int/lit8 v4, p3, 0x3

    aget-wide v4, p2, v4

    xor-long v8, v0, v4

    aget-wide v0, p4, p5

    add-int/lit8 v4, p5, 0x2

    aget-wide v4, p4, v4

    xor-long/2addr v4, v0

    add-int/lit8 v0, p5, 0x1

    aget-wide v0, p4, v0

    add-int/lit8 v6, p5, 0x3

    aget-wide v6, p4, v6

    xor-long v10, v0, v6

    const/4 v1, 0x0

    move-object/from16 v0, p6

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v7, 0x2

    move-object/from16 v6, p6

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v0, 0x2

    aget-wide v6, p6, v0

    const/4 v1, 0x1

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p6, v0

    const/4 v0, 0x3

    aget-wide v6, p6, v0

    add-int/lit8 v1, p3, 0x4

    aget-wide v12, p2, v1

    add-int/lit8 v1, p5, 0x4

    aget-wide v14, p4, v1

    invoke-static {v12, v13, v14, v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v12

    xor-long/2addr v6, v12

    aput-wide v6, p6, v0

    add-int/lit8 v0, p1, 0x2

    aget-wide v6, p0, v0

    const/4 v1, 0x0

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    add-int/lit8 v0, p1, 0x3

    aget-wide v6, p0, v0

    const/4 v1, 0x2

    aget-wide v12, p6, v1

    const/4 v1, 0x0

    aget-wide v14, p6, v1

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x2

    aget-wide v6, p6, v0

    const/4 v1, 0x3

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p6, v0

    add-int/lit8 v0, p1, 0x4

    aget-wide v6, p0, v0

    const/4 v1, 0x2

    aget-wide v12, p6, v1

    const/4 v1, 0x0

    aget-wide v14, p6, v1

    xor-long/2addr v12, v14

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    add-int/lit8 v0, p1, 0x5

    aget-wide v6, p0, v0

    const/4 v1, 0x2

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    add-int/lit8 v0, p1, 0x6

    aget-wide v6, p0, v0

    const/4 v1, 0x3

    aget-wide v12, p6, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    add-int/lit8 v13, p1, 0x3

    xor-long v14, v2, v8

    xor-long v16, v4, v10

    move-object/from16 v12, p0

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v7, p1, 0x5

    add-int/lit8 v0, p3, 0x4

    aget-wide v0, p2, v0

    xor-long/2addr v8, v0

    add-int/lit8 v0, p5, 0x4

    aget-wide v0, p4, v0

    xor-long/2addr v10, v0

    move-object/from16 v6, p0

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    add-int/lit8 v1, p1, 0x4

    add-int/lit8 v0, p3, 0x4

    aget-wide v6, p2, v0

    xor-long/2addr v2, v6

    add-int/lit8 v0, p5, 0x4

    aget-wide v6, p4, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul384_no_simd_gf2x([J[JI[JI[J)V
    .locals 24

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    const/4 v1, 0x6

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v5, p4, 0x3

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v2, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    xor-long v14, v0, v4

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    xor-long v8, v0, v4

    aget-wide v0, p3, p4

    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    xor-long/2addr v4, v0

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v6, p4, 0x4

    aget-wide v6, p3, v6

    xor-long v16, v0, v6

    add-int/lit8 v0, p4, 0x2

    aget-wide v0, p3, v0

    add-int/lit8 v6, p4, 0x5

    aget-wide v6, p3, v6

    xor-long v10, v0, v6

    const/4 v0, 0x6

    aget-wide v6, p0, v0

    const/4 v1, 0x3

    aget-wide v12, p0, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x7

    aget-wide v6, p0, v0

    const/4 v1, 0x4

    aget-wide v12, p0, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/16 v0, 0x8

    aget-wide v6, p0, v0

    const/4 v1, 0x5

    aget-wide v12, p0, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v7, 0x4

    move-object/from16 v6, p5

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v13, 0x2

    move-object/from16 v12, p5

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v0, 0x3

    const/4 v1, 0x6

    aget-wide v6, p0, v1

    const/4 v1, 0x0

    aget-wide v12, p0, v1

    xor-long/2addr v6, v12

    const/4 v1, 0x0

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x1

    aget-wide v6, p5, v0

    const/4 v1, 0x2

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x0

    aget-wide v6, p5, v0

    const/4 v1, 0x1

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x3

    aget-wide v6, p5, v0

    const/4 v1, 0x4

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x4

    const/4 v1, 0x3

    aget-wide v6, p5, v1

    const/4 v1, 0x5

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x5

    const/16 v1, 0x8

    aget-wide v6, p0, v1

    const/4 v1, 0x2

    aget-wide v12, p0, v1

    xor-long/2addr v6, v12

    const/4 v1, 0x3

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    const/4 v1, 0x0

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x6

    aget-wide v6, p0, v0

    const/16 v1, 0x9

    aget-wide v12, p0, v1

    const/4 v1, 0x1

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    const/4 v1, 0x4

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x4

    const/4 v1, 0x7

    aget-wide v6, p0, v1

    const/4 v1, 0x1

    aget-wide v12, p0, v1

    xor-long/2addr v6, v12

    const/4 v1, 0x0

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x7

    aget-wide v6, p0, v0

    const/16 v1, 0xa

    aget-wide v12, p0, v1

    const/4 v1, 0x4

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/16 v0, 0x8

    aget-wide v6, p0, v0

    const/16 v1, 0xb

    aget-wide v12, p0, v1

    const/4 v1, 0x5

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/16 v19, 0x4

    xor-long v20, v2, v14

    xor-long v22, v4, v16

    move-object/from16 v18, p0

    invoke-static/range {v18 .. v23}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/4 v13, 0x6

    xor-long/2addr v14, v8

    xor-long v16, v16, v10

    move-object/from16 v12, p0

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/4 v1, 0x5

    xor-long/2addr v2, v8

    xor-long/2addr v4, v10

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul384_no_simd_gf2x_xor([J[JI[JI[J)V
    .locals 24

    const/4 v1, 0x0

    move-object/from16 v0, p5

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    const/4 v1, 0x6

    add-int/lit8 v3, p2, 0x3

    add-int/lit8 v5, p4, 0x3

    move-object/from16 v0, p5

    move-object/from16 v2, p1

    move-object/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v2, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    xor-long v14, v0, v4

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x5

    aget-wide v4, p1, v4

    xor-long v8, v0, v4

    aget-wide v0, p3, p4

    add-int/lit8 v4, p4, 0x3

    aget-wide v4, p3, v4

    xor-long/2addr v4, v0

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v6, p4, 0x4

    aget-wide v6, p3, v6

    xor-long v16, v0, v6

    add-int/lit8 v0, p4, 0x2

    aget-wide v0, p3, v0

    add-int/lit8 v6, p4, 0x5

    aget-wide v6, p3, v6

    xor-long v10, v0, v6

    const/4 v0, 0x6

    aget-wide v6, p5, v0

    const/4 v1, 0x3

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x7

    aget-wide v6, p5, v0

    const/4 v1, 0x4

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/16 v0, 0x8

    aget-wide v6, p5, v0

    const/4 v1, 0x5

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x0

    aget-wide v6, p0, v0

    const/4 v1, 0x0

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x1

    aget-wide v6, p0, v0

    const/4 v1, 0x1

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x2

    aget-wide v6, p0, v0

    const/4 v1, 0x2

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x3

    aget-wide v6, p0, v0

    const/4 v1, 0x6

    aget-wide v12, p5, v1

    const/4 v1, 0x0

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x5

    aget-wide v6, p0, v0

    const/16 v1, 0x8

    aget-wide v12, p5, v1

    const/4 v1, 0x2

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x6

    aget-wide v6, p0, v0

    const/4 v1, 0x6

    aget-wide v12, p5, v1

    const/16 v1, 0x9

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x4

    aget-wide v6, p0, v0

    const/4 v1, 0x7

    aget-wide v12, p5, v1

    const/4 v1, 0x1

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x7

    aget-wide v6, p0, v0

    const/4 v1, 0x7

    aget-wide v12, p5, v1

    const/16 v1, 0xa

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/16 v0, 0x8

    aget-wide v6, p0, v0

    const/16 v1, 0x8

    aget-wide v12, p5, v1

    const/16 v1, 0xb

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/16 v0, 0x9

    aget-wide v6, p0, v0

    const/16 v1, 0x9

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/16 v0, 0xa

    aget-wide v6, p0, v0

    const/16 v1, 0xa

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/16 v0, 0xb

    aget-wide v6, p0, v0

    const/16 v1, 0xb

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v7, 0x4

    move-object/from16 v6, p5

    invoke-static/range {v6 .. v11}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v13, 0x2

    move-object/from16 v12, p5

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v0, 0x3

    aget-wide v6, p0, v0

    const/4 v1, 0x0

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x1

    aget-wide v6, p5, v0

    const/4 v1, 0x2

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x0

    aget-wide v6, p5, v0

    const/4 v1, 0x1

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x3

    aget-wide v6, p5, v0

    const/4 v1, 0x4

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x4

    const/4 v1, 0x3

    aget-wide v6, p5, v1

    const/4 v1, 0x5

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p5, v0

    const/4 v0, 0x5

    aget-wide v6, p0, v0

    const/4 v1, 0x3

    aget-wide v12, p5, v1

    const/4 v1, 0x0

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x6

    aget-wide v6, p0, v0

    const/4 v1, 0x1

    aget-wide v12, p5, v1

    const/4 v1, 0x4

    aget-wide v18, p5, v1

    xor-long v12, v12, v18

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x4

    aget-wide v6, p0, v0

    const/4 v1, 0x0

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/4 v0, 0x7

    aget-wide v6, p0, v0

    const/4 v1, 0x4

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/16 v0, 0x8

    aget-wide v6, p0, v0

    const/4 v1, 0x5

    aget-wide v12, p5, v1

    xor-long/2addr v6, v12

    aput-wide v6, p0, v0

    const/16 v19, 0x4

    xor-long v20, v2, v14

    xor-long v22, v4, v16

    move-object/from16 v18, p0

    invoke-static/range {v18 .. v23}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/4 v13, 0x6

    xor-long/2addr v14, v8

    xor-long v16, v16, v10

    move-object/from16 v12, p0

    invoke-static/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/4 v1, 0x5

    xor-long/2addr v2, v8

    xor-long/2addr v4, v10

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    return-void
.end method

.method private static mul416_no_simd_gf2x([J[JI[JI[J)V
    .locals 26

    const/4 v1, 0x0

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    const/4 v1, 0x6

    add-int/lit8 v0, p2, 0x3

    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget-wide v4, p1, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v6, p3, v0

    add-int/lit8 v0, p4, 0x4

    aget-wide v8, p3, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/16 v1, 0xa

    add-int/lit8 v0, p2, 0x5

    aget-wide v2, p1, v0

    add-int/lit8 v0, p4, 0x5

    aget-wide v4, p3, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/16 v0, 0xc

    add-int/lit8 v1, p2, 0x6

    aget-wide v2, p1, v1

    add-int/lit8 v1, p4, 0x6

    aget-wide v4, p3, v1

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v2

    const/16 v1, 0xb

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xb

    const/16 v1, 0xa

    aget-wide v2, p0, v1

    const/16 v1, 0xc

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v1, 0xb

    add-int/lit8 v0, p2, 0x5

    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p4, 0x5

    aget-wide v4, p3, v0

    add-int/lit8 v0, p4, 0x6

    aget-wide v6, p3, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/16 v0, 0x8

    aget-wide v2, p0, v0

    const/16 v1, 0xa

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xb

    aget-wide v2, p0, v0

    const/16 v1, 0x9

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xa

    const/16 v1, 0x8

    aget-wide v2, p0, v1

    const/16 v1, 0xc

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x8

    aget-wide v2, p0, v0

    const/4 v1, 0x6

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x9

    const/16 v1, 0xb

    aget-wide v2, p0, v1

    const/4 v1, 0x7

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v1, 0x8

    add-int/lit8 v0, p2, 0x3

    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p2, 0x4

    aget-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    add-int/lit8 v0, p4, 0x3

    aget-wide v6, p3, v0

    add-int/lit8 v0, p4, 0x5

    aget-wide v8, p3, v0

    xor-long/2addr v6, v8

    add-int/lit8 v0, p4, 0x4

    aget-wide v8, p3, v0

    add-int/lit8 v0, p4, 0x6

    aget-wide v10, p3, v0

    xor-long/2addr v8, v10

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v2, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    xor-long/2addr v4, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    xor-long v12, v0, v6

    add-int/lit8 v0, p2, 0x6

    aget-wide v22, p1, v0

    aget-wide v0, p3, p4

    add-int/lit8 v6, p4, 0x3

    aget-wide v6, p3, v6

    xor-long/2addr v6, v0

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v8, p4, 0x4

    aget-wide v8, p3, v8

    xor-long/2addr v8, v0

    add-int/lit8 v0, p4, 0x2

    aget-wide v0, p3, v0

    add-int/lit8 v10, p4, 0x5

    aget-wide v10, p3, v10

    xor-long v14, v0, v10

    add-int/lit8 v0, p4, 0x6

    aget-wide v24, p3, v0

    const/4 v0, 0x6

    aget-wide v10, p0, v0

    const/4 v1, 0x3

    aget-wide v16, p0, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v0, 0x7

    aget-wide v10, p0, v0

    const/4 v1, 0x4

    aget-wide v16, p0, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/16 v0, 0x8

    aget-wide v10, p0, v0

    const/4 v1, 0x5

    aget-wide v16, p0, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/4 v11, 0x4

    move-object/from16 v10, p5

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v0, 0x6

    invoke-static/range {v22 .. v25}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v10

    const/4 v1, 0x5

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p5, v0

    const/4 v0, 0x5

    const/4 v1, 0x4

    aget-wide v10, p5, v1

    const/4 v1, 0x6

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p5, v0

    const/16 v17, 0x5

    xor-long v18, v12, v22

    xor-long v20, v14, v24

    move-object/from16 v16, p5

    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/4 v0, 0x3

    const/4 v1, 0x6

    aget-wide v10, p0, v1

    const/4 v1, 0x0

    aget-wide v16, p0, v1

    xor-long v10, v10, v16

    const/4 v1, 0x0

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v0, 0x4

    const/4 v1, 0x7

    aget-wide v10, p0, v1

    const/4 v1, 0x1

    aget-wide v16, p0, v1

    xor-long v10, v10, v16

    const/4 v1, 0x1

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v0, 0x2

    aget-wide v10, p5, v0

    const/4 v1, 0x4

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p5, v0

    const/4 v0, 0x3

    aget-wide v10, p5, v0

    const/4 v1, 0x5

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p5, v0

    const/4 v0, 0x5

    const/16 v1, 0x8

    aget-wide v10, p0, v1

    const/4 v1, 0x2

    aget-wide v16, p0, v1

    xor-long v10, v10, v16

    const/4 v1, 0x2

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    const/4 v1, 0x0

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v0, 0x6

    aget-wide v10, p0, v0

    const/16 v1, 0x9

    aget-wide v16, p0, v1

    const/4 v1, 0x3

    aget-wide v18, p5, v1

    xor-long v16, v16, v18

    const/4 v1, 0x1

    aget-wide v18, p5, v1

    xor-long v16, v16, v18

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v0, 0x7

    aget-wide v10, p0, v0

    const/16 v1, 0xa

    aget-wide v16, p0, v1

    const/4 v1, 0x2

    aget-wide v18, p5, v1

    xor-long v16, v16, v18

    const/4 v1, 0x6

    aget-wide v18, p5, v1

    xor-long v16, v16, v18

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/16 v0, 0x8

    aget-wide v10, p0, v0

    const/16 v1, 0xb

    aget-wide v16, p0, v1

    const/4 v1, 0x3

    aget-wide v18, p5, v1

    xor-long v16, v16, v18

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/16 v0, 0x9

    aget-wide v10, p0, v0

    const/16 v1, 0xc

    aget-wide v16, p0, v1

    const/4 v1, 0x6

    aget-wide v18, p5, v1

    xor-long v16, v16, v18

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v1, 0x5

    xor-long/2addr v2, v12

    xor-long v4, v4, v22

    xor-long/2addr v6, v14

    xor-long v8, v8, v24

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    return-void
.end method

.method private static mul416_no_simd_gf2x_xor([J[JI[JI[J[J)V
    .locals 26

    const/4 v1, 0x0

    move-object/from16 v0, p5

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul192_no_simd_gf2x([JI[JI[JI)V

    const/4 v1, 0x6

    add-int/lit8 v0, p2, 0x3

    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x4

    aget-wide v4, p1, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v6, p3, v0

    add-int/lit8 v0, p4, 0x4

    aget-wide v8, p3, v0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/16 v1, 0xa

    add-int/lit8 v0, p2, 0x5

    aget-wide v2, p1, v0

    add-int/lit8 v0, p4, 0x5

    aget-wide v4, p3, v0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/16 v0, 0xc

    add-int/lit8 v1, p2, 0x6

    aget-wide v2, p1, v1

    add-int/lit8 v1, p4, 0x6

    aget-wide v4, p3, v1

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v2

    const/16 v1, 0xb

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/16 v0, 0xb

    const/16 v1, 0xa

    aget-wide v2, p5, v1

    const/16 v1, 0xc

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/16 v1, 0xb

    add-int/lit8 v0, p2, 0x5

    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p4, 0x5

    aget-wide v4, p3, v0

    add-int/lit8 v0, p4, 0x6

    aget-wide v6, p3, v0

    xor-long/2addr v4, v6

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/16 v0, 0x8

    aget-wide v2, p5, v0

    const/16 v1, 0xa

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/16 v0, 0xb

    aget-wide v2, p5, v0

    const/16 v1, 0x9

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/16 v0, 0xa

    const/16 v1, 0x8

    aget-wide v2, p5, v1

    const/16 v1, 0xc

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/16 v0, 0x8

    aget-wide v2, p5, v0

    const/4 v1, 0x6

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/16 v0, 0x9

    const/16 v1, 0xb

    aget-wide v2, p5, v1

    const/4 v1, 0x7

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x6

    aget-wide v2, p5, v0

    const/4 v1, 0x3

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x7

    aget-wide v2, p5, v0

    const/4 v1, 0x4

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/16 v0, 0x8

    aget-wide v2, p5, v0

    const/4 v1, 0x5

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/16 v1, 0x8

    add-int/lit8 v0, p2, 0x3

    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x5

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p2, 0x4

    aget-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x6

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    add-int/lit8 v0, p4, 0x3

    aget-wide v6, p3, v0

    add-int/lit8 v0, p4, 0x5

    aget-wide v8, p3, v0

    xor-long/2addr v6, v8

    add-int/lit8 v0, p4, 0x4

    aget-wide v8, p3, v0

    add-int/lit8 v0, p4, 0x6

    aget-wide v10, p3, v0

    xor-long/2addr v8, v10

    move-object/from16 v0, p5

    move-object/from16 v10, p6

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const/4 v1, 0x0

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    const/4 v1, 0x1

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x2

    aget-wide v2, p0, v0

    const/4 v1, 0x2

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x3

    aget-wide v2, p0, v0

    const/4 v1, 0x6

    aget-wide v4, p5, v1

    const/4 v1, 0x0

    aget-wide v6, p5, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x4

    aget-wide v2, p0, v0

    const/4 v1, 0x7

    aget-wide v4, p5, v1

    const/4 v1, 0x1

    aget-wide v6, p5, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x5

    aget-wide v2, p0, v0

    const/16 v1, 0x8

    aget-wide v4, p5, v1

    const/4 v1, 0x2

    aget-wide v6, p5, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x6

    aget-wide v2, p0, v0

    const/4 v1, 0x6

    aget-wide v4, p5, v1

    const/16 v1, 0x9

    aget-wide v6, p5, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x7

    aget-wide v2, p0, v0

    const/4 v1, 0x7

    aget-wide v4, p5, v1

    const/16 v1, 0xa

    aget-wide v6, p5, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x8

    aget-wide v2, p0, v0

    const/16 v1, 0x8

    aget-wide v4, p5, v1

    const/16 v1, 0xb

    aget-wide v6, p5, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x9

    aget-wide v2, p0, v0

    const/16 v1, 0x9

    aget-wide v4, p5, v1

    const/16 v1, 0xc

    aget-wide v6, p5, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xa

    aget-wide v2, p0, v0

    const/16 v1, 0xa

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xb

    aget-wide v2, p0, v0

    const/16 v1, 0xb

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xc

    aget-wide v2, p0, v0

    const/16 v1, 0xc

    aget-wide v4, p5, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    aget-wide v0, p1, p2

    add-int/lit8 v2, p2, 0x3

    aget-wide v2, p1, v2

    xor-long/2addr v2, v0

    add-int/lit8 v0, p2, 0x1

    aget-wide v0, p1, v0

    add-int/lit8 v4, p2, 0x4

    aget-wide v4, p1, v4

    xor-long/2addr v4, v0

    add-int/lit8 v0, p2, 0x2

    aget-wide v0, p1, v0

    add-int/lit8 v6, p2, 0x5

    aget-wide v6, p1, v6

    xor-long v12, v0, v6

    add-int/lit8 v0, p2, 0x6

    aget-wide v22, p1, v0

    aget-wide v0, p3, p4

    add-int/lit8 v6, p4, 0x3

    aget-wide v6, p3, v6

    xor-long/2addr v6, v0

    add-int/lit8 v0, p4, 0x1

    aget-wide v0, p3, v0

    add-int/lit8 v8, p4, 0x4

    aget-wide v8, p3, v8

    xor-long/2addr v8, v0

    add-int/lit8 v0, p4, 0x2

    aget-wide v0, p3, v0

    add-int/lit8 v10, p4, 0x5

    aget-wide v10, p3, v10

    xor-long v14, v0, v10

    add-int/lit8 v0, p4, 0x6

    aget-wide v24, p3, v0

    const/4 v1, 0x0

    move-object/from16 v0, p5

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/4 v11, 0x4

    move-object/from16 v10, p5

    invoke-static/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X([JIJJ)V

    const/4 v0, 0x6

    invoke-static/range {v22 .. v25}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL32_NO_SIMD_GF2X(JJ)J

    move-result-wide v10

    const/4 v1, 0x5

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p5, v0

    const/4 v0, 0x5

    const/4 v1, 0x4

    aget-wide v10, p5, v1

    const/4 v1, 0x6

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p5, v0

    const/16 v17, 0x5

    xor-long v18, v12, v22

    xor-long v20, v14, v24

    move-object/from16 v16, p5

    invoke-static/range {v16 .. v21}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->MUL64_NO_SIMD_GF2X_XOR([JIJJ)V

    const/4 v0, 0x3

    aget-wide v10, p0, v0

    const/4 v1, 0x0

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v0, 0x4

    aget-wide v10, p0, v0

    const/4 v1, 0x1

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v0, 0x2

    aget-wide v10, p5, v0

    const/4 v1, 0x4

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p5, v0

    const/4 v0, 0x3

    aget-wide v10, p5, v0

    const/4 v1, 0x5

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p5, v0

    const/4 v0, 0x5

    aget-wide v10, p0, v0

    const/4 v1, 0x2

    aget-wide v16, p5, v1

    const/4 v1, 0x0

    aget-wide v18, p5, v1

    xor-long v16, v16, v18

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v0, 0x6

    aget-wide v10, p0, v0

    const/4 v1, 0x3

    aget-wide v16, p5, v1

    const/4 v1, 0x1

    aget-wide v18, p5, v1

    xor-long v16, v16, v18

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v0, 0x7

    aget-wide v10, p0, v0

    const/4 v1, 0x2

    aget-wide v16, p5, v1

    const/4 v1, 0x6

    aget-wide v18, p5, v1

    xor-long v16, v16, v18

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/16 v0, 0x8

    aget-wide v10, p0, v0

    const/4 v1, 0x3

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/16 v0, 0x9

    aget-wide v10, p0, v0

    const/4 v1, 0x6

    aget-wide v16, p5, v1

    xor-long v10, v10, v16

    aput-wide v10, p0, v0

    const/4 v1, 0x5

    xor-long/2addr v2, v12

    xor-long v4, v4, v22

    xor-long/2addr v6, v14

    xor-long v8, v8, v24

    move-object/from16 v0, p0

    move-object/from16 v10, p5

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    return-void
.end method

.method private static mul544_no_simd_gf2x([J[JI[JI[J[J[J)V
    .locals 12

    const/4 v1, 0x0

    aget-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-wide v4, p1, v0

    aget-wide v6, p3, p4

    add-int/lit8 v0, p4, 0x1

    aget-wide v8, p3, v0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/4 v1, 0x4

    add-int/lit8 v0, p2, 0x2

    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v4, p1, v0

    add-int/lit8 v0, p4, 0x2

    aget-wide v6, p3, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v8, p3, v0

    move-object v0, p0

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/4 v0, 0x4

    aget-wide v2, p0, v0

    const/4 v1, 0x2

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x5

    aget-wide v2, p0, v0

    const/4 v1, 0x3

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x2

    const/4 v1, 0x4

    aget-wide v2, p0, v1

    const/4 v1, 0x0

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x3

    const/4 v1, 0x5

    aget-wide v2, p0, v1

    const/4 v1, 0x1

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x4

    aget-wide v2, p0, v0

    const/4 v1, 0x6

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x5

    aget-wide v2, p0, v0

    const/4 v1, 0x7

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v1, 0x2

    aget-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x2

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p2, 0x1

    aget-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    aget-wide v6, p3, p4

    add-int/lit8 v0, p4, 0x2

    aget-wide v8, p3, v0

    xor-long/2addr v6, v8

    add-int/lit8 v0, p4, 0x1

    aget-wide v8, p3, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v10, p3, v0

    xor-long/2addr v8, v10

    move-object v0, p0

    move-object/from16 v10, p7

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    const/16 v1, 0x8

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v5, p4, 0x4

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V

    const/16 v0, 0x8

    aget-wide v2, p0, v0

    const/4 v1, 0x4

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x9

    aget-wide v2, p0, v0

    const/4 v1, 0x5

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xa

    aget-wide v2, p0, v0

    const/4 v1, 0x6

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xb

    aget-wide v2, p0, v0

    const/4 v1, 0x7

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x4

    const/16 v1, 0x8

    aget-wide v2, p0, v1

    const/4 v1, 0x0

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x5

    const/16 v1, 0x9

    aget-wide v2, p0, v1

    const/4 v1, 0x1

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x6

    const/16 v1, 0xa

    aget-wide v2, p0, v1

    const/4 v1, 0x2

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x7

    const/16 v1, 0xb

    aget-wide v2, p0, v1

    const/4 v1, 0x3

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x8

    aget-wide v2, p0, v0

    const/16 v1, 0xc

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x9

    aget-wide v2, p0, v0

    const/16 v1, 0xd

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xa

    aget-wide v2, p0, v0

    const/16 v1, 0xe

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xb

    aget-wide v2, p0, v0

    const/16 v1, 0xf

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xc

    aget-wide v2, p0, v0

    const/16 v1, 0x10

    aget-wide v4, p0, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x0

    aget-wide v2, p1, p2

    add-int/lit8 v1, p2, 0x4

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-wide v2, p1, v1

    add-int/lit8 v1, p2, 0x5

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x2

    add-int/lit8 v1, p2, 0x2

    aget-wide v2, p1, v1

    add-int/lit8 v1, p2, 0x6

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x3

    add-int/lit8 v1, p2, 0x3

    aget-wide v2, p1, v1

    add-int/lit8 v1, p2, 0x7

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x4

    add-int/lit8 v1, p2, 0x8

    aget-wide v2, p1, v1

    aput-wide v2, p5, v0

    const/4 v0, 0x0

    aget-wide v2, p3, p4

    add-int/lit8 v1, p4, 0x4

    aget-wide v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x1

    add-int/lit8 v1, p4, 0x1

    aget-wide v2, p3, v1

    add-int/lit8 v1, p4, 0x5

    aget-wide v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x2

    add-int/lit8 v1, p4, 0x2

    aget-wide v2, p3, v1

    add-int/lit8 v1, p4, 0x6

    aget-wide v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x3

    add-int/lit8 v1, p4, 0x3

    aget-wide v2, p3, v1

    add-int/lit8 v1, p4, 0x7

    aget-wide v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x4

    add-int/lit8 v1, p4, 0x8

    aget-wide v2, p3, v1

    aput-wide v2, p6, v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V

    return-void
.end method

.method private static mul544_no_simd_gf2x_xor([J[JI[JI[J[J[J[J)V
    .locals 12

    const/4 v1, 0x0

    aget-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x1

    aget-wide v4, p1, v0

    aget-wide v6, p3, p4

    add-int/lit8 v0, p4, 0x1

    aget-wide v8, p3, v0

    move-object/from16 v0, p7

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/4 v1, 0x4

    add-int/lit8 v0, p2, 0x2

    aget-wide v2, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v4, p1, v0

    add-int/lit8 v0, p4, 0x2

    aget-wide v6, p3, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v8, p3, v0

    move-object/from16 v0, p7

    invoke-static/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x([JIJJJJ)V

    const/4 v0, 0x4

    aget-wide v2, p7, v0

    const/4 v1, 0x2

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/4 v0, 0x5

    aget-wide v2, p7, v0

    const/4 v1, 0x3

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/4 v0, 0x2

    const/4 v1, 0x4

    aget-wide v2, p7, v1

    const/4 v1, 0x0

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/4 v0, 0x3

    const/4 v1, 0x5

    aget-wide v2, p7, v1

    const/4 v1, 0x1

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/4 v0, 0x4

    aget-wide v2, p7, v0

    const/4 v1, 0x6

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/4 v0, 0x5

    aget-wide v2, p7, v0

    const/4 v1, 0x7

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/4 v1, 0x2

    aget-wide v2, p1, p2

    add-int/lit8 v0, p2, 0x2

    aget-wide v4, p1, v0

    xor-long/2addr v2, v4

    add-int/lit8 v0, p2, 0x1

    aget-wide v4, p1, v0

    add-int/lit8 v0, p2, 0x3

    aget-wide v6, p1, v0

    xor-long/2addr v4, v6

    aget-wide v6, p3, p4

    add-int/lit8 v0, p4, 0x2

    aget-wide v8, p3, v0

    xor-long/2addr v6, v8

    add-int/lit8 v0, p4, 0x1

    aget-wide v8, p3, v0

    add-int/lit8 v0, p4, 0x3

    aget-wide v10, p3, v0

    xor-long/2addr v8, v10

    move-object/from16 v0, p7

    move-object/from16 v10, p8

    invoke-static/range {v0 .. v10}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul128_no_simd_gf2x_xor([JIJJJJ[J)V

    const/16 v1, 0x8

    add-int/lit8 v3, p2, 0x4

    add-int/lit8 v5, p4, 0x4

    move-object/from16 v0, p7

    move-object v2, p1

    move-object v4, p3

    move-object/from16 v6, p8

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x([JI[JI[JI[J)V

    const/16 v0, 0x8

    aget-wide v2, p7, v0

    const/4 v1, 0x4

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/16 v0, 0x9

    aget-wide v2, p7, v0

    const/4 v1, 0x5

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/16 v0, 0xa

    aget-wide v2, p7, v0

    const/4 v1, 0x6

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/16 v0, 0xb

    aget-wide v2, p7, v0

    const/4 v1, 0x7

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p7, v0

    const/4 v0, 0x0

    aget-wide v2, p0, v0

    const/4 v1, 0x0

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x1

    aget-wide v2, p0, v0

    const/4 v1, 0x1

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x2

    aget-wide v2, p0, v0

    const/4 v1, 0x2

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x3

    aget-wide v2, p0, v0

    const/4 v1, 0x3

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x4

    aget-wide v2, p0, v0

    const/16 v1, 0x8

    aget-wide v4, p7, v1

    const/4 v1, 0x0

    aget-wide v6, p7, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x5

    aget-wide v2, p0, v0

    const/16 v1, 0x9

    aget-wide v4, p7, v1

    const/4 v1, 0x1

    aget-wide v6, p7, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x6

    aget-wide v2, p0, v0

    const/16 v1, 0xa

    aget-wide v4, p7, v1

    const/4 v1, 0x2

    aget-wide v6, p7, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x7

    aget-wide v2, p0, v0

    const/16 v1, 0xb

    aget-wide v4, p7, v1

    const/4 v1, 0x3

    aget-wide v6, p7, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x8

    aget-wide v2, p0, v0

    const/16 v1, 0x8

    aget-wide v4, p7, v1

    const/16 v1, 0xc

    aget-wide v6, p7, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x9

    aget-wide v2, p0, v0

    const/16 v1, 0x9

    aget-wide v4, p7, v1

    const/16 v1, 0xd

    aget-wide v6, p7, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xa

    aget-wide v2, p0, v0

    const/16 v1, 0xa

    aget-wide v4, p7, v1

    const/16 v1, 0xe

    aget-wide v6, p7, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xb

    aget-wide v2, p0, v0

    const/16 v1, 0xb

    aget-wide v4, p7, v1

    const/16 v1, 0xf

    aget-wide v6, p7, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xc

    aget-wide v2, p0, v0

    const/16 v1, 0xc

    aget-wide v4, p7, v1

    const/16 v1, 0x10

    aget-wide v6, p7, v1

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xd

    aget-wide v2, p0, v0

    const/16 v1, 0xd

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xe

    aget-wide v2, p0, v0

    const/16 v1, 0xe

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0xf

    aget-wide v2, p0, v0

    const/16 v1, 0xf

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/16 v0, 0x10

    aget-wide v2, p0, v0

    const/16 v1, 0x10

    aget-wide v4, p7, v1

    xor-long/2addr v2, v4

    aput-wide v2, p0, v0

    const/4 v0, 0x0

    aget-wide v2, p1, p2

    add-int/lit8 v1, p2, 0x4

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x1

    add-int/lit8 v1, p2, 0x1

    aget-wide v2, p1, v1

    add-int/lit8 v1, p2, 0x5

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x2

    add-int/lit8 v1, p2, 0x2

    aget-wide v2, p1, v1

    add-int/lit8 v1, p2, 0x6

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x3

    add-int/lit8 v1, p2, 0x3

    aget-wide v2, p1, v1

    add-int/lit8 v1, p2, 0x7

    aget-wide v4, p1, v1

    xor-long/2addr v2, v4

    aput-wide v2, p5, v0

    const/4 v0, 0x4

    add-int/lit8 v1, p2, 0x8

    aget-wide v2, p1, v1

    aput-wide v2, p5, v0

    const/4 v0, 0x0

    aget-wide v2, p3, p4

    add-int/lit8 v1, p4, 0x4

    aget-wide v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x1

    add-int/lit8 v1, p4, 0x1

    aget-wide v2, p3, v1

    add-int/lit8 v1, p4, 0x5

    aget-wide v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x2

    add-int/lit8 v1, p4, 0x2

    aget-wide v2, p3, v1

    add-int/lit8 v1, p4, 0x6

    aget-wide v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x3

    add-int/lit8 v1, p4, 0x3

    aget-wide v2, p3, v1

    add-int/lit8 v1, p4, 0x7

    aget-wide v4, p3, v1

    xor-long/2addr v2, v4

    aput-wide v2, p6, v0

    const/4 v0, 0x4

    add-int/lit8 v1, p4, 0x8

    aget-wide v2, p3, v1

    aput-wide v2, p6, v0

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object/from16 v2, p5

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/gemss/Mul_GF2x;->mul288_no_simd_gf2x_xor([JI[JI[JI[J)V

    return-void
.end method


# virtual methods
.method public abstract mul_gf2x(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
.end method

.method public abstract mul_gf2x_xor(Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;Lorg/bouncycastle/pqc/crypto/gemss/Pointer;)V
.end method

.method public abstract sqr_gf2x([J[JI)V
.end method
