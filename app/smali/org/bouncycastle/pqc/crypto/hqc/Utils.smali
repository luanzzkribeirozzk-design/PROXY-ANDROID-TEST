.class Lorg/bouncycastle/pqc/crypto/hqc/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bitMask(JJ)J
    .locals 4

    const-wide/16 v2, 0x1

    rem-long v0, p0, p2

    long-to-int v0, v0

    shl-long v0, v2, v0

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method static copyBytes([II[III)V
    .locals 1

    div-int/lit8 v0, p4, 0x2

    invoke-static {p0, p1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static fromByte16ArrayToLongArray([J[I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    div-int/lit8 v1, v0, 0x4

    aget v2, p1, v0

    int-to-long v2, v2

    const-wide/32 v4, 0xffff

    and-long/2addr v2, v4

    aput-wide v2, p0, v1

    div-int/lit8 v1, v0, 0x4

    aget-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    div-int/lit8 v1, v0, 0x4

    aget-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x2

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    div-int/lit8 v1, v0, 0x4

    aget-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x3

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromByte32ArrayToLongArray([J[I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    div-int/lit8 v1, v0, 0x2

    aget v2, p1, v0

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    aput-wide v2, p0, v1

    div-int/lit8 v1, v0, 0x2

    aget-wide v2, p0, v1

    add-int/lit8 v4, v0, 0x1

    aget v4, p1, v4

    int-to-long v4, v4

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    aput-wide v2, p0, v1

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromByteArrayToByte16Array([I[B)V
    .locals 4

    const/4 v1, 0x0

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v1

    const v3, 0xffff

    and-int/2addr v1, v3

    aput v1, p0, v0

    add-int/lit8 v1, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static fromByteArrayToLongArray([J[B)V
    .locals 6

    const/4 v1, 0x0

    array-length v0, p1

    rem-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    new-array v0, v0, [B

    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v0

    :cond_0
    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI)J

    move-result-wide v4

    aput-wide v4, p0, v0

    add-int/lit8 v1, v2, 0x8

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static fromLongArrayToByte32Array([I[J)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    aget-wide v2, p1, v0

    long-to-int v2, v2

    aput v2, p0, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-wide v2, p1, v0

    const/16 v4, 0x20

    shr-long/2addr v2, v4

    long-to-int v2, v2

    aput v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static fromLongArrayToByteArray([B[J)V
    .locals 8

    const/4 v0, 0x0

    array-length v1, p0

    div-int/lit8 v4, v1, 0x8

    move v1, v0

    :goto_0
    if-eq v1, v4, :cond_0

    aget-wide v2, p1, v1

    mul-int/lit8 v5, v1, 0x8

    invoke-static {v2, v3, p0, v5}, Lorg/bouncycastle/util/Pack;->longToLittleEndian(J[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v1, p0

    rem-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v4, 0x8

    move v2, v1

    :goto_1
    array-length v1, p0

    if-ge v2, v1, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-wide v6, p1, v4

    add-int/lit8 v1, v0, 0x1

    mul-int/lit8 v0, v0, 0x8

    ushr-long/2addr v6, v0

    long-to-int v0, v6

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    move v0, v1

    move v2, v3

    goto :goto_1

    :cond_1
    return-void
.end method

.method static getByte64SizeFromBitSize(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x3f

    div-int/lit8 v0, v0, 0x40

    return v0
.end method

.method static getByteSizeFromBitSize(I)I
    .locals 1

    add-int/lit8 v0, p0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method static resizeArray([JI[JIII)V
    .locals 10

    const/4 v1, 0x0

    const-wide v2, 0x7fffffffffffffffL

    if-ge p1, p3, :cond_0

    rem-int/lit8 v0, p1, 0x40

    if-eqz v0, :cond_2

    rem-int/lit8 v0, p1, 0x40

    rsub-int/lit8 v0, v0, 0x40

    :goto_0
    invoke-static {p2, v1, p0, v1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_1
    if-ge v1, v0, :cond_1

    add-int/lit8 v4, p5, -0x1

    aget-wide v6, p0, v4

    shr-long v8, v2, v1

    and-long/2addr v6, v8

    aput-wide v6, p0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, p3, 0x7

    div-int/lit8 v0, v0, 0x8

    invoke-static {p2, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static toUnsigned16Bits(I)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method static toUnsigned8bits(I)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method static xorLongToByte16Array([IJI)V
    .locals 5

    const v4, 0xffff

    add-int/lit8 v0, p3, 0x0

    aget v1, p0, v0

    long-to-int v2, p1

    and-int/2addr v2, v4

    xor-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, p3, 0x1

    aget v1, p0, v0

    const/16 v2, 0x10

    ushr-long v2, p1, v2

    long-to-int v2, v2

    and-int/2addr v2, v4

    xor-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, p3, 0x2

    aget v1, p0, v0

    const/16 v2, 0x20

    ushr-long v2, p1, v2

    long-to-int v2, v2

    and-int/2addr v2, v4

    xor-int/2addr v1, v2

    aput v1, p0, v0

    add-int/lit8 v0, p3, 0x3

    aget v1, p0, v0

    const/16 v2, 0x30

    ushr-long v2, p1, v2

    long-to-int v2, v2

    and-int/2addr v2, v4

    xor-int/2addr v1, v2

    aput v1, p0, v0

    return-void
.end method
