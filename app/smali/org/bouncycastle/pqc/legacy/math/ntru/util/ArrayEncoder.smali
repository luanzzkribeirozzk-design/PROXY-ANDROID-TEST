.class public Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;
.super Ljava/lang/Object;


# static fields
.field private static final BIT1_TABLE:[I

.field private static final BIT2_TABLE:[I

.field private static final BIT3_TABLE:[I

.field private static final COEFF1_TABLE:[I

.field private static final COEFF2_TABLE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v2, 0x8

    const/16 v1, 0x9

    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_4

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x1
        -0x1
        0x0
        0x1
        -0x1
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x0
        0x0
        0x0
        0x1
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x0
        0x1
        0x0
        0x0
        0x1
        0x1
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeMod3Sves([BI)[I
    .locals 6

    const/4 v1, 0x0

    new-array v3, p1, [I

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x8

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v4

    add-int/lit8 v5, v1, 0x1

    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v1

    add-int/lit8 v0, v5, 0x1

    invoke-static {p0, v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v5

    mul-int/lit8 v4, v4, 0x4

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v4

    add-int v4, v1, v5

    add-int/lit8 v5, v2, 0x1

    sget-object v1, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF1_TABLE:[I

    aget v1, v1, v4

    aput v1, v3, v2

    add-int/lit8 v1, v5, 0x1

    sget-object v2, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->COEFF2_TABLE:[I

    aget v2, v2, v4

    aput v2, v3, v5

    add-int/lit8 v2, p1, -0x2

    if-le v1, v2, :cond_1

    :cond_0
    return-object v3

    :cond_1
    move v2, v1

    goto :goto_0
.end method

.method public static decodeMod3Tight(Ljava/io/InputStream;I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-double v0, p1

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeMod3Tight([BI)[I

    move-result-object v0

    return-object v0
.end method

.method public static decodeMod3Tight([BI)[I
    .locals 8

    const-wide/16 v6, 0x3

    const/4 v4, 0x1

    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, v4, p0}, Ljava/math/BigInteger;-><init>(I[B)V

    new-array v2, p1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v0

    aget v3, v2, v0

    if-le v3, v4, :cond_0

    aget v3, v2, v0

    add-int/lit8 v3, v3, -0x3

    aput v3, v2, v0

    :cond_0
    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static decodeModQ(Ljava/io/InputStream;II)[I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    mul-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->readFullLength(Ljava/io/InputStream;I)[B

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->decodeModQ([BII)[I

    move-result-object v0

    return-object v0
.end method

.method public static decodeModQ([BII)[I
    .locals 8

    const/4 v2, 0x0

    new-array v3, p1, [I

    invoke-static {p2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v4, v0, 0x1f

    mul-int v5, p1, v4

    move v1, v2

    move v0, v2

    :goto_0
    if-ge v1, v5, :cond_1

    if-lez v1, :cond_0

    rem-int v2, v1, v4

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {p0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->getBit([BI)I

    move-result v2

    aget v6, v3, v0

    rem-int v7, v1, v4

    shl-int/2addr v2, v7

    add-int/2addr v2, v6

    aput v2, v3, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static encodeMod3Sves([I)[B
    .locals 10

    const/4 v9, 0x3

    const/4 v1, 0x0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v5, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    :cond_0
    array-length v4, p0

    div-int/lit8 v4, v4, 0x2

    mul-int/lit8 v4, v4, 0x2

    if-ge v0, v4, :cond_3

    add-int/lit8 v4, v0, 0x1

    aget v0, p0, v0

    add-int/lit8 v6, v0, 0x1

    add-int/lit8 v0, v4, 0x1

    aget v4, p0, v4

    add-int/lit8 v4, v4, 0x1

    if-nez v6, :cond_1

    if-nez v4, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Illegal encoding!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    mul-int/lit8 v6, v6, 0x3

    add-int/2addr v4, v6

    new-array v6, v9, [I

    sget-object v7, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT1_TABLE:[I

    aget v7, v7, v4

    aput v7, v6, v1

    const/4 v7, 0x1

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT2_TABLE:[I

    aget v8, v8, v4

    aput v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Lorg/bouncycastle/pqc/legacy/math/ntru/util/ArrayEncoder;->BIT3_TABLE:[I

    aget v4, v8, v4

    aput v4, v6, v7

    move v4, v1

    :goto_0
    if-ge v4, v9, :cond_0

    aget-byte v7, v5, v2

    aget v8, v6, v4

    shl-int/2addr v8, v3

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v5, v2

    const/4 v7, 0x7

    if-ne v3, v7, :cond_2

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-object v5
.end method

.method public static encodeMod3Tight([I)[B
    .locals 6

    const-wide/16 v4, 0x3

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    aget v2, p0, v0

    add-int/lit8 v2, v2, 0x1

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    array-length v2, p0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v2, v0, 0x8

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    if-ge v1, v2, :cond_2

    new-array v1, v2, [B

    const/4 v3, 0x0

    array-length v4, v0

    sub-int/2addr v2, v4

    array-length v4, v0

    invoke-static {v0, v3, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, v1

    :cond_1
    :goto_1
    return-object v0

    :cond_2
    array-length v1, v0

    if-le v1, v2, :cond_1

    const/4 v1, 0x1

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    goto :goto_1
.end method

.method public static encodeModQ([II)[B
    .locals 9

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v5, v0, 0x1f

    array-length v0, p0

    mul-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    new-array v6, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    array-length v4, p0

    if-ge v0, v4, :cond_2

    move v4, v1

    :goto_1
    if-ge v4, v5, :cond_1

    aget v7, p0, v0

    shr-int/2addr v7, v4

    and-int/lit8 v7, v7, 0x1

    aget-byte v8, v6, v2

    shl-int/2addr v7, v3

    or-int/2addr v7, v8

    int-to-byte v7, v7

    aput-byte v7, v6, v2

    const/4 v7, 0x7

    if-ne v3, v7, :cond_0

    add-int/lit8 v2, v2, 0x1

    move v3, v1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private static getBit([BI)I
    .locals 2

    div-int/lit8 v0, p1, 0x8

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    rem-int/lit8 v1, p1, 0x8

    shr-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x1

    return v0
.end method
