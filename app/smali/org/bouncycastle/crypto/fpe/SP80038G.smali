.class Lorg/bouncycastle/crypto/fpe/SP80038G;
.super Ljava/lang/Object;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field static final FF1_DISABLED:Ljava/lang/String; = "org.bouncycastle.fpe.disable_ff1"

.field static final FPE_DISABLED:Ljava/lang/String; = "org.bouncycastle.fpe.disable"

.field protected static final LOG2:D

.field protected static final TWO_TO_96:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/crypto/fpe/SP80038G;->LOG2:D

    const-wide/high16 v0, 0x4058000000000000L    # 96.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sput-wide v0, Lorg/bouncycastle/crypto/fpe/SP80038G;->TWO_TO_96:D

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static calculateB_FF1(II)I
    .locals 4

    invoke-static {p0}, Lorg/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v1

    mul-int v0, v1, p1

    ushr-int v1, p0, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method protected static calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/math/BigInteger;

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v3

    aget-object v1, v0, v3

    aput-object v1, v0, v2

    if-eq p2, p1, :cond_0

    aget-object v1, v0, v2

    invoke-virtual {v1, p0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aput-object v1, v0, v2

    :cond_0
    return-object v0
.end method

.method protected static calculateP_FF1(IBII)[B
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x10

    new-array v0, v0, [B

    aput-byte v1, v0, v2

    aput-byte v3, v0, v1

    aput-byte v1, v0, v3

    const/4 v1, 0x3

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    shr-int/lit8 v2, p0, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xa

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte p1, v0, v1

    const/16 v1, 0x8

    invoke-static {p2, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/16 v1, 0xc

    invoke-static {p3, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-object v0
.end method

.method protected static calculateTweak64_FF3_1([B)[B
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/16 v0, 0x8

    new-array v0, v0, [B

    aget-byte v1, p0, v2

    aput-byte v1, v0, v2

    aget-byte v1, p0, v4

    aput-byte v1, v0, v4

    aget-byte v1, p0, v5

    aput-byte v1, v0, v5

    aget-byte v1, p0, v3

    and-int/lit16 v1, v1, 0xf0

    int-to-byte v1, v1

    aput-byte v1, v0, v3

    aget-byte v1, p0, v6

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aget-byte v2, p0, v3

    shl-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method protected static calculateY_FF1(Lorg/bouncycastle/crypto/BlockCipher;[BIII[B[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;
    .locals 8

    array-length v0, p1

    invoke-virtual {p7, p6}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;)[B

    move-result-object v1

    add-int v2, v0, p2

    add-int/lit8 v2, v2, 0x1

    neg-int v2, v2

    and-int/lit8 v2, v2, 0xf

    add-int v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p2

    new-array v3, v3, [B

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {p1, v4, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v2

    int-to-byte v2, p4

    aput-byte v2, v3, v0

    const/4 v0, 0x0

    array-length v2, v3

    array-length v4, v1

    sub-int/2addr v2, v4

    array-length v4, v1

    invoke-static {v1, v0, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {p5, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->prf(Lorg/bouncycastle/crypto/BlockCipher;[B)[B

    move-result-object v1

    const/16 v0, 0x10

    if-le p3, v0, :cond_0

    add-int/lit8 v0, p3, 0x10

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v3, v0, 0x10

    mul-int/lit8 v0, v3, 0x10

    new-array v0, v0, [B

    const/16 v2, 0xc

    invoke-static {v1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v4

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    invoke-static {v1, v2, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x1

    :goto_0
    if-ge v2, v3, :cond_1

    mul-int/lit8 v5, v2, 0x10

    const/4 v6, 0x0

    const/16 v7, 0xc

    invoke-static {v1, v6, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    xor-int v6, v4, v2

    add-int/lit8 v7, v5, 0x10

    add-int/lit8 v7, v7, -0x4

    invoke-static {v6, v0, v7}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    invoke-interface {p0, v0, v5, v0, v5}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v0, v1

    :cond_1
    const/4 v1, 0x0

    invoke-static {v0, v1, p3}, Lorg/bouncycastle/crypto/fpe/SP80038G;->num([BII)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected static calculateY_FF3(Lorg/bouncycastle/crypto/BlockCipher;[BII[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [B

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v1

    xor-int/2addr v1, p3

    invoke-static {v1, v0, v4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    invoke-virtual {p5, p4}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v1

    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-static {v1, v0, v2, v3}, Lorg/bouncycastle/util/BigIntegers;->asUnsignedByteArray(Ljava/math/BigInteger;[BII)V

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    invoke-interface {p0, v0, v4, v0, v4}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([B)[B

    array-length v1, v0

    invoke-static {v0, v4, v1}, Lorg/bouncycastle/crypto/fpe/SP80038G;->num([BII)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method protected static checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkCipher(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/16 v0, 0x100

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkData(ZI[BII)V

    return-void
.end method

.method protected static checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkCipher(Lorg/bouncycastle/crypto/BlockCipher;)V

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    const/high16 v0, 0x10000

    if-le p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    invoke-static {p1, p2, p3, p4, p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkData(ZI[SII)V

    return-void
.end method

.method protected static checkCipher(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 2

    const/16 v0, 0x10

    invoke-interface {p0}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    return-void
.end method

.method protected static checkData(ZI[BII)V
    .locals 2

    invoke-static {p0, p1, p4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkLength(ZII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p3, v0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    if-lt v1, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data outside of radix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected static checkData(ZI[SII)V
    .locals 3

    invoke-static {p0, p1, p4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkLength(ZII)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_1

    add-int v1, p3, v0

    aget-short v1, p2, v1

    const v2, 0xffff

    and-int/2addr v1, v2

    if-lt v1, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input data outside of radix"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static checkLength(ZII)V
    .locals 4

    const/4 v0, 0x2

    if-lt p2, v0, :cond_0

    int-to-double v0, p1

    int-to-double v2, p2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input too short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p0, :cond_2

    sget-wide v0, Lorg/bouncycastle/crypto/fpe/SP80038G;->TWO_TO_96:D

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    int-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v0, v0, 0x2

    if-le p2, v0, :cond_2

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maximum input length is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method static decFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S
    .locals 12

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    array-length v3, p2

    move/from16 v0, p5

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateB_FF1(II)I

    move-result v4

    add-int/lit8 v5, v4, 0x7

    and-int/lit8 v5, v5, -0x4

    move/from16 v0, p4

    int-to-byte v6, v0

    invoke-static {v2, v6, p3, v3}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateP_FF1(IBII)[B

    move-result-object v7

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v10

    const/16 v6, 0x9

    move-object/from16 v8, p6

    :goto_0
    if-ltz v6, :cond_0

    move-object v2, p0

    move-object v3, p2

    move-object v9, p1

    invoke-static/range {v2 .. v9}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateY_FF1(Lorg/bouncycastle/crypto/BlockCipher;[BIII[B[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;

    move-result-object v2

    sub-int p4, p3, p4

    and-int/lit8 v3, v6, 0x1

    aget-object v3, v10, v3

    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v0, p4

    move-object/from16 v1, p7

    invoke-virtual {p1, v2, v0, v1}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(Ljava/math/BigInteger;I[S)V

    add-int/lit8 v6, v6, -0x1

    move-object v11, v8

    move-object/from16 v8, p7

    move-object/from16 p7, v11

    goto :goto_0

    :cond_0
    move-object/from16 v0, p7

    invoke-static {v8, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v2

    return-object v2
.end method

.method private static decFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S
    .locals 11

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v0, p5

    invoke-static {v2, p4, v0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v8

    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    const/4 v5, 0x7

    move-object/from16 v6, p6

    :goto_0
    if-ltz v5, :cond_0

    sub-int p5, p3, p5

    and-int/lit8 v2, v5, 0x1

    rsub-int/lit8 v2, v2, 0x1

    aget-object v9, v8, v2

    and-int/lit8 v2, v5, 0x1

    mul-int/lit8 v2, v2, 0x4

    rsub-int/lit8 v4, v2, 0x4

    move-object v2, p0

    move-object v3, p2

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateY_FF3(Lorg/bouncycastle/crypto/BlockCipher;[BII[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {p1, v0}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v0, p5

    move-object/from16 v1, p7

    invoke-virtual {p1, v2, v0, v1}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(Ljava/math/BigInteger;I[S)V

    add-int/lit8 v5, v5, -0x1

    move-object v10, v6

    move-object/from16 v6, p7

    move-object/from16 p7, v10

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    move-object/from16 v0, p7

    invoke-static {v6, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v2

    return-object v2
.end method

.method static decryptFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 8

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    div-int/lit8 v4, p5, 0x2

    sub-int v5, p5, v4

    invoke-static {p3, p4, v4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v6

    add-int v0, p4, v4

    invoke-static {p3, v0, v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toByte([S)[B

    move-result-object v0

    return-object v0
.end method

.method static decryptFF1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    div-int/lit8 v4, p5, 0x2

    sub-int v5, p5, v4

    new-array v6, v4, [S

    new-array v7, v5, [S

    invoke-static {p3, p4, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p4, v4

    invoke-static {p3, v0, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v0

    return-object v0
.end method

.method static decryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    array-length v0, p2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implDecryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static decryptFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    array-length v0, p2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tweak should be 56 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateTweak64_FF3_1([B)[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implDecryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static decryptFF3_1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    array-length v0, p2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tweak should be 56 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateTweak64_FF3_1([B)[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implDecryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S

    move-result-object v0

    return-object v0
.end method

.method private static encFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S
    .locals 13

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    array-length v3, p2

    move/from16 v0, p5

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateB_FF1(II)I

    move-result v4

    add-int/lit8 v5, v4, 0x7

    and-int/lit8 v5, v5, -0x4

    move/from16 v0, p4

    int-to-byte v6, v0

    move/from16 v0, p3

    invoke-static {v2, v6, v0, v3}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateP_FF1(IBII)[B

    move-result-object v7

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v0, p4

    move/from16 v1, p5

    invoke-static {v2, v0, v1}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v11

    const/4 v6, 0x0

    move-object/from16 v8, p7

    move-object/from16 v10, p6

    :goto_0
    const/16 v2, 0xa

    if-ge v6, v2, :cond_0

    move-object v2, p0

    move-object v3, p2

    move-object v9, p1

    invoke-static/range {v2 .. v9}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateY_FF1(Lorg/bouncycastle/crypto/BlockCipher;[BIII[B[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;

    move-result-object v2

    sub-int p5, p3, p5

    and-int/lit8 v3, v6, 0x1

    aget-object v3, v11, v3

    invoke-virtual {p1, v10}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    move/from16 v0, p5

    invoke-virtual {p1, v2, v0, v10}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(Ljava/math/BigInteger;I[S)V

    add-int/lit8 v6, v6, 0x1

    move-object v12, v10

    move-object v10, v8

    move-object v8, v12

    goto :goto_0

    :cond_0
    invoke-static {v10, v8}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v2

    return-object v2
.end method

.method private static encFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S
    .locals 10

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, p4, p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateModUV(Ljava/math/BigInteger;II)[Ljava/math/BigInteger;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    invoke-static/range {p7 .. p7}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    const/4 v3, 0x0

    move-object/from16 v4, p7

    move-object/from16 v6, p6

    :goto_0
    const/16 v0, 0x8

    if-ge v3, v0, :cond_0

    sub-int p4, p3, p4

    and-int/lit8 v0, v3, 0x1

    rsub-int/lit8 v0, v0, 0x1

    aget-object v8, v7, v0

    and-int/lit8 v0, v3, 0x1

    mul-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v2, v0, 0x4

    move-object v0, p0

    move-object v1, p2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateY_FF3(Lorg/bouncycastle/crypto/BlockCipher;[BII[SLorg/bouncycastle/crypto/util/RadixConverter;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v6}, Lorg/bouncycastle/crypto/util/RadixConverter;->fromEncoding([S)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0, p4, v6}, Lorg/bouncycastle/crypto/util/RadixConverter;->toEncoding(Ljava/math/BigInteger;I[S)V

    add-int/lit8 v3, v3, 0x1

    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    goto :goto_0

    :cond_0
    invoke-static {v6}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->reverseInPlace([S)[S

    invoke-static {v6, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v0

    return-object v0
.end method

.method static encryptFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 8

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    div-int/lit8 v4, p5, 0x2

    sub-int v5, p5, v4

    invoke-static {p3, p4, v4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v6

    add-int v0, p4, v4

    invoke-static {p3, v0, v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toByte([S)[B

    move-result-object v0

    return-object v0
.end method

.method static encryptFF1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 9

    const/4 v8, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    div-int/lit8 v4, p5, 0x2

    sub-int v5, p5, v4

    new-array v6, v4, [S

    new-array v7, v5, [S

    invoke-static {p3, p4, v6, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p4, v4

    invoke-static {p3, v0, v7, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encFF1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v0

    return-object v0
.end method

.method static encryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    array-length v0, p2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implEncryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static encryptFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[BII)V

    array-length v0, p2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tweak should be 56 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateTweak64_FF3_1([B)[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method static encryptFF3_1w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    array-length v0, p2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tweak should be 56 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p2}, Lorg/bouncycastle/crypto/fpe/SP80038G;->calculateTweak64_FF3_1([B)[B

    move-result-object v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S

    move-result-object v0

    return-object v0
.end method

.method static encryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/util/RadixConverter;->getRadix()I

    move-result v2

    move-object v0, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->checkArgs(Lorg/bouncycastle/crypto/BlockCipher;ZI[SII)V

    array-length v0, p2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->implEncryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S

    move-result-object v0

    return-object v0
.end method

.method protected static implDecryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 8

    div-int/lit8 v4, p5, 0x2

    sub-int v5, p5, v4

    invoke-static {p3, p4, v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v6

    add-int v0, p4, v5

    invoke-static {p3, v0, v4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toByte([S)[B

    move-result-object v0

    return-object v0
.end method

.method protected static implDecryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 8

    const/4 v1, 0x0

    div-int/lit8 v4, p5, 0x2

    sub-int v5, p5, v4

    new-array v6, v5, [S

    new-array v7, v4, [S

    invoke-static {p3, p4, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p4, v5

    invoke-static {p3, v0, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->decFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v0

    return-object v0
.end method

.method protected static implEncryptFF3(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[BII)[B
    .locals 8

    div-int/lit8 v4, p5, 0x2

    sub-int v5, p5, v4

    invoke-static {p3, p4, v5}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v6

    add-int v0, p4, v5

    invoke-static {p3, v0, v4}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toShort([BII)[S

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/fpe/SP80038G;->toByte([S)[B

    move-result-object v0

    return-object v0
.end method

.method protected static implEncryptFF3w(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[B[SII)[S
    .locals 8

    const/4 v1, 0x0

    div-int/lit8 v4, p5, 0x2

    sub-int v5, p5, v4

    new-array v6, v5, [S

    new-array v7, v4, [S

    invoke-static {p3, p4, v6, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p4, v5

    invoke-static {p3, v0, v7, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/fpe/SP80038G;->encFF3_1(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/util/RadixConverter;[BIII[S[S)[S

    move-result-object v0

    return-object v0
.end method

.method protected static num([BII)Ljava/math/BigInteger;
    .locals 3

    new-instance v0, Ljava/math/BigInteger;

    const/4 v1, 0x1

    add-int v2, p1, p2

    invoke-static {p0, p1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    return-object v0
.end method

.method protected static prf(Lorg/bouncycastle/crypto/BlockCipher;[B)[B
    .locals 6

    const/16 v5, 0x10

    const/4 v1, 0x0

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p1

    div-int/lit8 v2, v0, 0x10

    new-array v3, v5, [B

    move v0, v1

    :goto_0
    if-ge v0, v2, :cond_1

    mul-int/lit8 v4, v0, 0x10

    invoke-static {v5, p1, v4, v3, v1}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    invoke-interface {p0, v3, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private static toByte([S)[B
    .locals 3

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    aget-short v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static toShort([BII)[S
    .locals 3

    new-array v1, p2, [S

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    add-int v2, p1, v0

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
