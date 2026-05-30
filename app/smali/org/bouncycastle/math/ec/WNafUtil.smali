.class public abstract Lorg/bouncycastle/math/ec/WNafUtil;
.super Ljava/lang/Object;


# static fields
.field private static final DEFAULT_WINDOW_SIZE_CUTOFFS:[I

.field private static final EMPTY_BYTES:[B

.field private static final EMPTY_INTS:[I

.field private static final EMPTY_POINTS:[Lorg/bouncycastle/math/ec/ECPoint;

.field private static final MAX_WIDTH:I = 0x10

.field public static final PRECOMP_NAME:Ljava/lang/String; = "bc_wnaf"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    new-array v0, v1, [B

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    new-array v0, v1, [I

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    new-array v0, v1, [Lorg/bouncycastle/math/ec/ECPoint;

    sput-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/bouncycastle/math/ec/ECPoint;

    return-void

    :array_0
    .array-data 4
        0xd
        0x29
        0x79
        0x151
        0x381
        0x901
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_POINTS:[Lorg/bouncycastle/math/ec/ECPoint;

    return-object v0
.end method

.method static synthetic access$100([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/math/ec/WNafUtil;->resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method public static configureBasepoint(Lorg/bouncycastle/math/ec/ECPoint;)V
    .locals 4

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {v1}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    const/16 v2, 0x10

    invoke-static {v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const-string v2, "bc_wnaf"

    new-instance v3, Lorg/bouncycastle/math/ec/WNafUtil$1;

    invoke-direct {v3, v0}, Lorg/bouncycastle/math/ec/WNafUtil$1;-><init>(I)V

    invoke-virtual {v1, p0, v2, v3}, Lorg/bouncycastle/math/ec/ECCurve;->precompute(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    goto :goto_1
.end method

.method public static generateCompactNaf(Ljava/math/BigInteger;)[I
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    ushr-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v2

    if-nez v2, :cond_1

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    shr-int/lit8 v4, v3, 0x1

    new-array v6, v4, [I

    invoke-virtual {v2, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v7

    add-int/lit8 v8, v3, -0x1

    move v2, v1

    move v3, v0

    move v4, v0

    :goto_1
    if-ge v2, v8, :cond_4

    invoke-virtual {v7, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-nez v0, :cond_2

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    :goto_2
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, -0x1

    :goto_3
    add-int/lit8 v5, v4, 0x1

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr v0, v3

    aput v0, v6, v4

    add-int/lit8 v0, v2, 0x1

    move v3, v1

    move v4, v5

    goto :goto_2

    :cond_3
    move v0, v1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v4, 0x1

    const/high16 v1, 0x10000

    or-int/2addr v1, v3

    aput v1, v6, v4

    array-length v1, v6

    if-le v1, v0, :cond_5

    invoke-static {v6, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v6

    goto :goto_0
.end method

.method public static generateCompactWindowNaf(ILjava/math/BigInteger;)[I
    .locals 11

    const/4 v0, 0x2

    const/4 v7, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateCompactNaf(Ljava/math/BigInteger;)[I

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lt p0, v0, :cond_1

    const/16 v0, 0x10

    if-le p0, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 16]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    ushr-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'k\' must have bitlength < 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_INTS:[I

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/2addr v0, p0

    add-int/lit8 v0, v0, 0x1

    new-array v5, v0, [I

    shl-int v8, v7, p0

    add-int/lit8 v9, v8, -0x1

    ushr-int/lit8 v10, v8, 0x1

    move v0, v1

    move v2, v1

    move v4, v1

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v3

    if-gt v0, v3, :cond_9

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v3

    if-ne v3, v4, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    and-int/2addr v3, v9

    if-eqz v4, :cond_6

    add-int/lit8 v3, v3, 0x1

    :cond_6
    and-int v4, v3, v10

    if-eqz v4, :cond_8

    move v4, v7

    :goto_2
    if-eqz v4, :cond_b

    sub-int/2addr v3, v8

    move v6, v3

    :goto_3
    if-lez v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    :cond_7
    add-int/lit8 v3, v2, 0x1

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v0, v6

    aput v0, v5, v2

    move v0, p0

    move v2, v3

    goto :goto_1

    :cond_8
    move v4, v1

    goto :goto_2

    :cond_9
    array-length v0, v5

    if-le v0, v2, :cond_a

    invoke-static {v5, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([II)[I

    move-result-object v0

    goto :goto_0

    :cond_a
    move-object v0, v5

    goto :goto_0

    :cond_b
    move v6, v3

    goto :goto_3
.end method

.method public static generateJSF(Ljava/math/BigInteger;Ljava/math/BigInteger;)[B
    .locals 12

    invoke-virtual {p0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v3, v0, [B

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    move v8, v0

    move v9, v6

    move-object v1, p1

    move-object v2, p0

    :goto_0
    or-int v0, v5, v4

    if-nez v0, :cond_0

    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-gt v0, v8, :cond_0

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    if-le v0, v8, :cond_4

    :cond_0
    invoke-virtual {v2}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    ushr-int/2addr v0, v8

    add-int/2addr v0, v5

    and-int/lit8 v6, v0, 0x7

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v0

    ushr-int/2addr v0, v8

    add-int/2addr v0, v4

    and-int/lit8 v10, v0, 0x7

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_7

    and-int/lit8 v7, v6, 0x2

    sub-int/2addr v0, v7

    add-int v7, v6, v0

    const/4 v11, 0x4

    if-ne v7, v11, :cond_7

    and-int/lit8 v7, v10, 0x3

    const/4 v11, 0x2

    if-ne v7, v11, :cond_7

    neg-int v0, v0

    move v7, v0

    :goto_1
    and-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_6

    and-int/lit8 v11, v10, 0x2

    sub-int/2addr v0, v11

    add-int/2addr v10, v0

    const/4 v11, 0x4

    if-ne v10, v11, :cond_6

    and-int/lit8 v6, v6, 0x3

    const/4 v10, 0x2

    if-ne v6, v10, :cond_6

    neg-int v0, v0

    move v6, v0

    :goto_2
    shl-int/lit8 v0, v5, 0x1

    add-int/lit8 v10, v7, 0x1

    if-ne v0, v10, :cond_1

    xor-int/lit8 v0, v5, 0x1

    move v5, v0

    :cond_1
    shl-int/lit8 v0, v4, 0x1

    add-int/lit8 v10, v6, 0x1

    if-ne v0, v10, :cond_2

    xor-int/lit8 v0, v4, 0x1

    move v4, v0

    :cond_2
    add-int/lit8 v0, v8, 0x1

    const/16 v8, 0x1e

    if-ne v0, v8, :cond_3

    const/4 v0, 0x0

    const/16 v8, 0x1e

    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v2

    const/16 v8, 0x1e

    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v1

    :cond_3
    add-int/lit8 v10, v9, 0x1

    shl-int/lit8 v7, v7, 0x4

    and-int/lit8 v6, v6, 0xf

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v3, v9

    move v8, v0

    move v9, v10

    goto :goto_0

    :cond_4
    array-length v0, v3

    if-le v0, v9, :cond_5

    invoke-static {v3, v9}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    :goto_3
    return-object v0

    :cond_5
    move-object v0, v3

    goto :goto_3

    :cond_6
    move v6, v0

    goto :goto_2

    :cond_7
    move v7, v0

    goto :goto_1
.end method

.method public static generateNaf(Ljava/math/BigInteger;)[B
    .locals 7

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v4, v2, -0x1

    new-array v3, v4, [B

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    invoke-virtual {v5, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_3

    add-int/lit8 v6, v2, -0x1

    invoke-virtual {p0, v2}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    :goto_2
    int-to-byte v0, v0

    aput-byte v0, v3, v6

    add-int/lit8 v0, v2, 0x1

    :goto_3
    add-int/lit8 v2, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v4, -0x1

    aput-byte v1, v3, v0

    move-object v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_3
.end method

.method public static generateWindowNaf(ILjava/math/BigInteger;)[B
    .locals 10

    const/4 v0, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/math/ec/WNafUtil;->generateNaf(Ljava/math/BigInteger;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    if-lt p0, v0, :cond_1

    const/16 v0, 0x8

    if-le p0, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'width\' must be in the range [2, 8]"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->EMPTY_BYTES:[B

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-array v4, v0, [B

    shl-int v7, v6, p0

    add-int/lit8 v8, v7, -0x1

    ushr-int/lit8 v9, v7, 0x1

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v5

    if-gt v0, v5, :cond_9

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->testBit(I)Z

    move-result v5

    if-ne v5, v3, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result v5

    and-int/2addr v5, v8

    if-eqz v3, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    and-int v3, v5, v9

    if-eqz v3, :cond_8

    move v3, v6

    :goto_2
    if-eqz v3, :cond_6

    sub-int/2addr v5, v7

    :cond_6
    if-lez v2, :cond_7

    add-int/lit8 v0, v0, -0x1

    :cond_7
    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    move v0, p0

    goto :goto_1

    :cond_8
    move v3, v1

    goto :goto_2

    :cond_9
    array-length v0, v4

    if-le v0, v2, :cond_a

    invoke-static {v4, v2}, Lorg/bouncycastle/math/ec/WNafUtil;->trim([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_a
    move-object v0, v4

    goto :goto_0
.end method

.method public static getNafWeight(Ljava/math/BigInteger;)I
    .locals 1

    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->xor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitCount()I

    move-result v0

    goto :goto_0
.end method

.method public static getWNafPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/math/ec/ECCurve;->getPreCompInfo(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    move-result-object v0

    return-object v0
.end method

.method public static getWNafPreCompInfo(Lorg/bouncycastle/math/ec/PreCompInfo;)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 1

    instance-of v0, p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static getWindowSize(I)I
    .locals 2

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    const/16 v1, 0x10

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(II)I
    .locals 1

    sget-object v0, Lorg/bouncycastle/math/ec/WNafUtil;->DEFAULT_WINDOW_SIZE_CUTOFFS:[I

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[I)I
    .locals 1

    const/16 v0, 0x10

    invoke-static {p0, p1, v0}, Lorg/bouncycastle/math/ec/WNafUtil;->getWindowSize(I[II)I

    move-result v0

    return v0
.end method

.method public static getWindowSize(I[II)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget v1, p1, v0

    if-ge p0, v1, :cond_1

    :cond_0
    const/4 v1, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static precompute(Lorg/bouncycastle/math/ec/ECPoint;IZ)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    new-instance v2, Lorg/bouncycastle/math/ec/WNafUtil$2;

    invoke-direct {v2, p1, p2, p0, v0}, Lorg/bouncycastle/math/ec/WNafUtil$2;-><init>(IZLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECCurve;)V

    invoke-virtual {v0, p0, v1, v2}, Lorg/bouncycastle/math/ec/ECCurve;->precompute(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    return-object v0
.end method

.method public static precomputeWithPointMap(Lorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPointMap;Lorg/bouncycastle/math/ec/WNafPreCompInfo;Z)Lorg/bouncycastle/math/ec/WNafPreCompInfo;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/math/ec/ECPoint;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    const-string v1, "bc_wnaf"

    new-instance v2, Lorg/bouncycastle/math/ec/WNafUtil$3;

    invoke-direct {v2, p2, p3, p1}, Lorg/bouncycastle/math/ec/WNafUtil$3;-><init>(Lorg/bouncycastle/math/ec/WNafPreCompInfo;ZLorg/bouncycastle/math/ec/ECPointMap;)V

    invoke-virtual {v0, p0, v1, v2}, Lorg/bouncycastle/math/ec/ECCurve;->precompute(Lorg/bouncycastle/math/ec/ECPoint;Ljava/lang/String;Lorg/bouncycastle/math/ec/PreCompCallback;)Lorg/bouncycastle/math/ec/PreCompInfo;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/math/ec/WNafPreCompInfo;

    return-object v0
.end method

.method private static resizeTable([Lorg/bouncycastle/math/ec/ECPoint;I)[Lorg/bouncycastle/math/ec/ECPoint;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [Lorg/bouncycastle/math/ec/ECPoint;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static trim([BI)[B
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [B

    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private static trim([II)[I
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [I

    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
