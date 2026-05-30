.class Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;
.super Ljava/lang/Object;


# instance fields
.field final max_FG_bits:[B

.field final max_fg_bits:[B

.field final max_sig_bits:[B


# direct methods
.method constructor <init>()V
    .locals 2

    const/16 v1, 0xb

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_fg_bits:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_FG_bits:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCodec;->max_sig_bits:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x7t
        0x7t
        0x6t
        0x6t
        0x5t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method


# virtual methods
.method comp_decode([SII[BII)I
    .locals 8

    const/4 v0, 0x1

    shl-int v5, v0, p3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v5, :cond_8

    if-lt v0, p6, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_1
    return v0

    :cond_1
    shl-int/lit8 v2, v2, 0x8

    add-int v3, p5, v0

    aget-byte v3, p4, v3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x1

    ushr-int v0, v2, v1

    and-int/lit16 v6, v0, 0x80

    and-int/lit8 v0, v0, 0x7f

    :cond_2
    if-nez v1, :cond_4

    if-lt v3, p6, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    shl-int/lit8 v1, v2, 0x8

    add-int v2, p5, v3

    aget-byte v2, p4, v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v1

    add-int/lit8 v3, v3, 0x1

    const/16 v1, 0x8

    :cond_4
    add-int/lit8 v1, v1, -0x1

    ushr-int v7, v2, v1

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_5

    if-eqz v6, :cond_6

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    add-int/lit16 v0, v0, 0x80

    const/16 v7, 0x7ff

    if-le v0, v7, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    add-int v7, p2, v4

    if-eqz v6, :cond_7

    neg-int v0, v0

    :cond_7
    int-to-short v0, v0

    aput-short v0, p1, v7

    add-int/lit8 v4, v4, 0x1

    move v0, v3

    goto :goto_0

    :cond_8
    const/4 v3, 0x1

    shl-int v1, v3, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1
.end method

.method comp_encode([BII[SII)I
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x1

    shl-int v6, v0, p6

    move v0, v3

    :goto_0
    if-ge v0, v6, :cond_2

    add-int v1, p5, v0

    aget-short v1, p4, v1

    const/16 v2, -0x7ff

    if-lt v1, v2, :cond_0

    add-int v1, p5, v0

    aget-short v1, p4, v1

    const/16 v2, 0x7ff

    if-le v1, v2, :cond_1

    :cond_0
    move v0, v3

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v4, v3

    move v1, v3

    move v2, v3

    move v5, v3

    :goto_2
    if-ge v5, v6, :cond_7

    shl-int/lit8 v1, v1, 0x1

    add-int v0, p5, v5

    aget-short v0, p4, v0

    if-gez v0, :cond_3

    neg-int v0, v0

    or-int/lit8 v1, v1, 0x1

    :cond_3
    shl-int/lit8 v1, v1, 0x7

    and-int/lit8 v7, v0, 0x7f

    or-int/2addr v1, v7

    ushr-int/lit8 v0, v0, 0x7

    add-int/lit8 v4, v4, 0x8

    add-int/lit8 v7, v0, 0x1

    shl-int/2addr v1, v7

    or-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v4

    :goto_3
    const/16 v4, 0x8

    if-lt v0, v4, :cond_6

    add-int/lit8 v0, v0, -0x8

    if-eqz p1, :cond_5

    if-lt v2, p3, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    add-int v4, p2, v2

    ushr-int v7, v1, v0

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    add-int/lit8 v5, v5, 0x1

    move v4, v0

    goto :goto_2

    :cond_7
    if-lez v4, :cond_a

    if-eqz p1, :cond_9

    if-lt v2, p3, :cond_8

    move v0, v3

    goto :goto_1

    :cond_8
    add-int v0, p2, v2

    rsub-int/lit8 v3, v4, 0x8

    shl-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    :cond_9
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_a
    move v0, v2

    goto :goto_1
.end method

.method modq_decode([SII[BII)I
    .locals 8

    const/4 v0, 0x1

    shl-int v5, v0, p3

    mul-int/lit8 v0, v5, 0xe

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    if-le v0, p6, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_3

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v3, p5, 0x1

    aget-byte v6, p4, p5

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    add-int/lit8 v1, v1, 0x8

    const/16 v6, 0xe

    if-lt v1, v6, :cond_4

    add-int/lit8 v1, v1, -0xe

    ushr-int v6, v2, v1

    and-int/lit16 v6, v6, 0x3fff

    const/16 v7, 0x3001

    if-lt v6, v7, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    add-int v7, p2, v4

    int-to-short v6, v6

    aput-short v6, p1, v7

    add-int/lit8 v4, v4, 0x1

    move p5, v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    shl-int v1, v3, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move p5, v3

    goto :goto_1
.end method

.method modq_encode([BII[SII)I
    .locals 9

    const v8, 0xffff

    const/4 v0, 0x0

    const/4 v1, 0x1

    shl-int v6, v1, p6

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    add-int v2, p5, v1

    aget-short v2, p4, v2

    and-int/2addr v2, v8

    const/16 v3, 0x3001

    if-lt v2, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    mul-int/lit8 v1, v6, 0xe

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    if-nez p1, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    if-gt v1, p3, :cond_0

    move v3, v0

    move v4, v0

    move v2, p2

    move v5, v0

    :goto_2
    if-ge v5, v6, :cond_5

    shl-int/lit8 v0, v4, 0xe

    add-int v4, p5, v5

    aget-short v4, p4, v4

    and-int/2addr v4, v8

    or-int/2addr v4, v0

    add-int/lit8 v0, v3, 0xe

    :goto_3
    const/16 v3, 0x8

    if-lt v0, v3, :cond_4

    add-int/lit8 v0, v0, -0x8

    add-int/lit8 v3, v2, 0x1

    shr-int v7, v4, v0

    int-to-byte v7, v7

    aput-byte v7, p1, v2

    move v2, v3

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v3, v0

    goto :goto_2

    :cond_5
    if-lez v3, :cond_6

    rsub-int/lit8 v0, v3, 0x8

    shl-int v0, v4, v0

    int-to-byte v0, v0

    aput-byte v0, p1, v2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method trim_i16_decode([SIII[BII)I
    .locals 11

    const/4 v1, 0x1

    shl-int v6, v1, p3

    mul-int v1, v6, p4

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    move/from16 v0, p7

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    shl-int/2addr v5, p4

    add-int/lit8 v7, v5, -0x1

    const/4 v5, 0x1

    add-int/lit8 v8, p4, -0x1

    shl-int v8, v5, v8

    :goto_1
    if-ge v3, v6, :cond_3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p6, 0x1

    aget-byte v9, p5, p6

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v4, v9

    add-int/lit8 v2, v2, 0x8

    :goto_2
    if-lt v2, p4, :cond_4

    if-ge v3, v6, :cond_4

    sub-int/2addr v2, p4

    ushr-int v9, v4, v2

    and-int/2addr v9, v7

    and-int v10, v9, v8

    neg-int v10, v10

    or-int/2addr v9, v10

    neg-int v10, v8

    if-ne v9, v10, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    and-int v10, v9, v8

    neg-int v10, v10

    or-int/2addr v9, v10

    add-int v10, p2, v3

    int-to-short v9, v9

    aput-short v9, p1, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    shl-int v2, v3, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move/from16 p6, v5

    goto :goto_1
.end method

.method trim_i16_encode([BII[SIII)I
    .locals 9

    const/4 v0, 0x1

    shl-int v6, v0, p6

    const/4 v0, 0x1

    add-int/lit8 v1, p7, -0x1

    shl-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    neg-int v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_3

    add-int v3, p5, v0

    aget-short v3, p4, v3

    if-lt v3, v2, :cond_0

    add-int v3, p5, v0

    aget-short v3, p4, v3

    if-le v3, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    mul-int v0, v6, p7

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    if-eqz p1, :cond_1

    if-le v0, p3, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    shl-int v2, v2, p7

    add-int/lit8 v7, v2, -0x1

    const/4 v4, 0x0

    move v2, p2

    move v5, v4

    :goto_2
    if-ge v5, v6, :cond_6

    shl-int v3, v3, p7

    add-int v4, p5, v5

    aget-short v4, p4, v4

    and-int/lit16 v4, v4, 0xfff

    and-int/2addr v4, v7

    or-int/2addr v4, v3

    add-int v1, v1, p7

    :goto_3
    const/16 v3, 0x8

    if-lt v1, v3, :cond_5

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v3, v2, 0x1

    shr-int v8, v4, v1

    int-to-byte v8, v8

    aput-byte v8, p1, v2

    move v2, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    goto :goto_2

    :cond_6
    if-lez v1, :cond_1

    add-int/lit8 v4, v2, 0x1

    rsub-int/lit8 v1, v1, 0x8

    shl-int v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    goto :goto_1
.end method

.method trim_i8_decode([BIII[BII)I
    .locals 11

    const/4 v1, 0x1

    shl-int v6, v1, p3

    mul-int v1, v6, p4

    add-int/lit8 v1, v1, 0x7

    shr-int/lit8 v1, v1, 0x3

    move/from16 v0, p7

    if-le v1, v0, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    shl-int/2addr v5, p4

    add-int/lit8 v7, v5, -0x1

    const/4 v5, 0x1

    add-int/lit8 v8, p4, -0x1

    shl-int v8, v5, v8

    :goto_1
    if-ge v3, v6, :cond_3

    shl-int/lit8 v4, v4, 0x8

    add-int/lit8 v5, p6, 0x1

    aget-byte v9, p5, p6

    and-int/lit16 v9, v9, 0xff

    or-int/2addr v4, v9

    add-int/lit8 v2, v2, 0x8

    :goto_2
    if-lt v2, p4, :cond_4

    if-ge v3, v6, :cond_4

    sub-int/2addr v2, p4

    ushr-int v9, v4, v2

    and-int/2addr v9, v7

    and-int v10, v9, v8

    neg-int v10, v10

    or-int/2addr v9, v10

    neg-int v10, v8

    if-ne v9, v10, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    add-int v10, p2, v3

    int-to-byte v9, v9

    aput-byte v9, p1, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    shl-int v2, v3, v2

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move/from16 p6, v5

    goto :goto_1
.end method

.method trim_i8_encode([BII[BIII)I
    .locals 9

    const/4 v0, 0x1

    shl-int v6, v0, p6

    const/4 v0, 0x1

    add-int/lit8 v1, p7, -0x1

    shl-int/2addr v0, v1

    add-int/lit8 v1, v0, -0x1

    neg-int v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v6, :cond_3

    add-int v3, p5, v0

    aget-byte v3, p4, v3

    if-lt v3, v2, :cond_0

    add-int v3, p5, v0

    aget-byte v3, p4, v3

    if-le v3, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    return v0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    mul-int v0, v6, p7

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    if-eqz p1, :cond_1

    if-le v0, p3, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    shl-int v2, v2, p7

    add-int/lit8 v7, v2, -0x1

    const/4 v4, 0x0

    move v2, p2

    move v5, v4

    :goto_2
    if-ge v5, v6, :cond_6

    shl-int v3, v3, p7

    add-int v4, p5, v5

    aget-byte v4, p4, v4

    const v8, 0xffff

    and-int/2addr v4, v8

    and-int/2addr v4, v7

    or-int/2addr v4, v3

    add-int v1, v1, p7

    :goto_3
    const/16 v3, 0x8

    if-lt v1, v3, :cond_5

    add-int/lit8 v1, v1, -0x8

    add-int/lit8 v3, v2, 0x1

    ushr-int v8, v4, v1

    int-to-byte v8, v8

    aput-byte v8, p1, v2

    move v2, v3

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, 0x1

    move v3, v4

    goto :goto_2

    :cond_6
    if-lez v1, :cond_1

    add-int/lit8 v4, v2, 0x1

    rsub-int/lit8 v1, v1, 0x8

    shl-int v1, v3, v1

    int-to-byte v1, v1

    aput-byte v1, p1, v2

    goto :goto_1
.end method
