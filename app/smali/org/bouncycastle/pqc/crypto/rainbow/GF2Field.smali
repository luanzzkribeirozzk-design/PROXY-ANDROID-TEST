.class Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;
.super Ljava/lang/Object;


# static fields
.field public static final MASK:I = 0xff

.field static final gfInvTable:[B

.field static final gfMulTable:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x100

    const/16 v1, 0x100

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    const/16 v0, 0x100

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfInvTable:[B

    const-wide v2, 0x101010101010101L

    const/4 v0, 0x1

    move v1, v0

    move-wide v4, v2

    :goto_0
    const/16 v0, 0xff

    if-gt v1, v0, :cond_1

    const-wide v2, 0x706050403020100L

    const/4 v0, 0x0

    :goto_1
    const/16 v6, 0x100

    if-ge v0, v6, :cond_0

    invoke-static {v4, v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v6

    sget-object v8, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    aget-object v8, v8, v1

    invoke-static {v6, v7, v8, v0}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    const-wide v6, 0x808080808080808L

    add-long/2addr v2, v6

    add-int/lit8 v0, v0, 0x8

    goto :goto_1

    :cond_0
    const-wide v2, 0x101010101010101L

    add-long/2addr v2, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-wide v4, v2

    goto :goto_0

    :cond_1
    const-wide v2, 0x706050403020100L

    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Inv_64(J)J

    move-result-wide v4

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfInvTable:[B

    invoke-static {v4, v5, v1, v0}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    const-wide v4, 0x808080808080808L

    add-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x8

    goto :goto_2

    :cond_2
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addElem(SS)S
    .locals 1

    xor-int v0, p0, p1

    int-to-short v0, v0

    return v0
.end method

.method public static addElem_64(JJ)J
    .locals 2

    xor-long v0, p0, p2

    return-wide v0
.end method

.method private static gf16Mul(SS)S
    .locals 6

    and-int/lit8 v0, p0, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    ushr-int/lit8 v1, p0, 0x2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    and-int/lit8 v2, p1, 0x3

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    ushr-int/lit8 v3, p1, 0x2

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul(SS)S

    move-result v4

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul(SS)S

    move-result v5

    xor-int/2addr v0, v1

    int-to-short v0, v0

    xor-int v1, v2, v3

    int-to-short v1, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul(SS)S

    move-result v0

    xor-int/2addr v0, v4

    int-to-short v0, v0

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v1

    shl-int/lit8 v0, v0, 0x2

    xor-int/2addr v0, v4

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static gf16Mul8(S)S
    .locals 2

    and-int/lit8 v0, p0, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    ushr-int/lit8 v1, p0, 0x2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v0

    shl-int/lit8 v0, v0, 0x2

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul3(S)S

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static gf16Mul8_64(J)J
    .locals 8

    const/4 v6, 0x2

    const-wide v0, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v0, p0

    const-wide v2, -0x3333333333333334L    # -9.255963134931783E61

    and-long/2addr v2, p0

    shl-long/2addr v0, v6

    xor-long/2addr v0, v2

    ushr-long v4, v2, v6

    xor-long/2addr v0, v4

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2_64(J)J

    move-result-wide v0

    ushr-long/2addr v2, v6

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static gf16Mul_64(JJ)J
    .locals 10

    const-wide v6, -0x3333333333333334L    # -9.255963134931783E61

    const/4 v8, 0x2

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul_64(JJ)J

    move-result-wide v0

    const-wide v2, 0x3333333333333333L    # 4.667261458395856E-62

    and-long/2addr v2, v0

    and-long/2addr v0, v6

    shl-long v4, p0, v8

    xor-long/2addr v4, p0

    and-long/2addr v4, v6

    ushr-long/2addr v0, v8

    xor-long/2addr v0, v4

    shl-long v4, p2, v8

    xor-long/2addr v4, p2

    and-long/2addr v4, v6

    const-wide v6, 0x2222222222222222L

    xor-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul_64(JJ)J

    move-result-wide v0

    shl-long v4, v2, v8

    xor-long/2addr v0, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static gf16Squ(S)S
    .locals 3

    and-int/lit8 v0, p0, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    ushr-int/lit8 v1, p0, 0x2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Squ(S)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v2

    shl-int/lit8 v1, v1, 0x2

    xor-int/2addr v1, v2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Squ(S)S

    move-result v0

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static gf16Squ_64(J)J
    .locals 6

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Squ_64(J)J

    move-result-wide v0

    const-wide v2, -0x3333333333333334L    # -9.255963134931783E61

    and-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2_64(J)J

    move-result-wide v2

    const/4 v4, 0x2

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static gf256Inv(S)S
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v2

    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v1

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v2

    invoke-static {v2, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ(S)S

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul(SS)S

    move-result v0

    return v0
.end method

.method private static gf256Inv_64(J)J
    .locals 6

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v4

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v2

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v4

    invoke-static {v4, v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Squ_64(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method private static gf256Mul(SS)S
    .locals 6

    and-int/lit8 v0, p0, 0xf

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    ushr-int/lit8 v1, p0, 0x4

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    and-int/lit8 v2, p1, 0xf

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    ushr-int/lit8 v3, p1, 0x4

    and-int/lit16 v3, v3, 0xff

    int-to-short v3, v3

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul(SS)S

    move-result v4

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul(SS)S

    move-result v5

    xor-int/2addr v0, v1

    int-to-short v0, v0

    xor-int v1, v2, v3

    int-to-short v1, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul(SS)S

    move-result v0

    xor-int/2addr v0, v4

    int-to-short v0, v0

    invoke-static {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul8(S)S

    move-result v1

    shl-int/lit8 v0, v0, 0x4

    xor-int/2addr v0, v4

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static gf256Mul_64(JJ)J
    .locals 10

    const-wide v6, -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236

    const/4 v8, 0x4

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul_64(JJ)J

    move-result-wide v0

    const-wide v2, 0xf0f0f0f0f0f0f0fL    # 3.815736827118017E-236

    and-long/2addr v2, v0

    and-long/2addr v0, v6

    shl-long v4, p0, v8

    xor-long/2addr v4, p0

    and-long/2addr v4, v6

    ushr-long/2addr v0, v8

    xor-long/2addr v0, v4

    shl-long v4, p2, v8

    xor-long/2addr v4, p2

    and-long/2addr v4, v6

    const-wide v6, 0x808080808080808L

    xor-long/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul_64(JJ)J

    move-result-wide v0

    shl-long v4, v2, v8

    xor-long/2addr v0, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static gf256Squ(S)S
    .locals 3

    and-int/lit8 v0, p0, 0xf

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    ushr-int/lit8 v1, p0, 0x4

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Squ(S)S

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul8(S)S

    move-result v2

    shl-int/lit8 v1, v1, 0x4

    xor-int/2addr v1, v2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Squ(S)S

    move-result v0

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static gf256Squ_64(J)J
    .locals 6

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Squ_64(J)J

    move-result-wide v0

    const-wide v2, -0xf0f0f0f0f0f0f10L    # -1.0773087426743214E236

    and-long/2addr v2, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf16Mul8_64(J)J

    move-result-wide v2

    const/4 v4, 0x4

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static gf4Mul(SS)S
    .locals 3

    and-int/lit8 v0, p1, 0x1

    mul-int/2addr v0, p0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf4Mul2(S)S

    move-result v1

    ushr-int/lit8 v2, p1, 0x1

    mul-int/2addr v1, v2

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static gf4Mul2(S)S
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    ushr-int/lit8 v1, p0, 0x1

    mul-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static gf4Mul2_64(J)J
    .locals 6

    const/4 v4, 0x1

    const-wide v0, 0x5555555555555555L    # 1.1945305291614955E103

    and-long/2addr v0, p0

    const-wide v2, -0x5555555555555556L

    and-long/2addr v2, p0

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static gf4Mul3(S)S
    .locals 3

    add-int/lit8 v0, p0, -0x2

    ushr-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, p0, 0x3

    and-int/2addr v1, v0

    xor-int/lit8 v0, v0, -0x1

    add-int/lit8 v2, p0, -0x1

    and-int/2addr v0, v2

    or-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static gf4Mul_64(JJ)J
    .locals 8

    const-wide v6, -0x5555555555555556L

    const/4 v4, 0x1

    shl-long v0, p0, v4

    and-long/2addr v0, p2

    shl-long v2, p2, v4

    and-long/2addr v2, p0

    xor-long/2addr v0, v2

    and-long/2addr v0, v6

    and-long v2, p0, p2

    xor-long/2addr v0, v2

    and-long/2addr v2, v6

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private static gf4Squ(S)S
    .locals 1

    ushr-int/lit8 v0, p0, 0x1

    xor-int/2addr v0, p0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method private static gf4Squ_64(J)J
    .locals 4

    const-wide v0, -0x5555555555555556L

    and-long/2addr v0, p0

    const/4 v2, 0x1

    ushr-long/2addr v0, v2

    xor-long/2addr v0, p0

    return-wide v0
.end method

.method public static invElem(S)S
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfInvTable:[B

    aget-byte v0, v0, p0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static invElem_64(J)J
    .locals 2

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Inv_64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static multElem(SS)S
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gfMulTable:[[B

    aget-object v0, v0, p0

    aget-byte v0, v0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    return v0
.end method

.method public static multElem_64(JJ)J
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->gf256Mul_64(JJ)J

    move-result-wide v0

    return-wide v0
.end method
