.class Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;
.super Ljava/lang/Object;


# static fields
.field static final l2bound:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x18c7a
        0x32f4a
        0x68b41
        0xd9c87
        0x1c4518
        0x3aa246
        0x7974b6
        0xfb49c0
        0x2075426
        0x430299a
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method hash_to_point_ct(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII[SI)V
    .locals 17

    const/16 v1, 0xb

    new-array v1, v1, [S

    fill-array-data v1, :array_0

    const/16 v2, 0x3f

    new-array v10, v2, [S

    const/4 v2, 0x1

    shl-int v11, v2, p4

    shl-int/lit8 v12, v11, 0x1

    aget-short v13, v1, p4

    add-int v14, v11, v13

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v14, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [B

    const/4 v3, 0x0

    array-length v4, v2

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    add-int/lit16 v3, v2, -0x6002

    ushr-int/lit8 v3, v3, 0x1f

    add-int/lit8 v3, v3, -0x1

    and-int/lit16 v3, v3, 0x6002

    sub-int v3, v2, v3

    add-int/lit16 v4, v3, -0x6002

    ushr-int/lit8 v4, v4, 0x1f

    add-int/lit8 v4, v4, -0x1

    and-int/lit16 v4, v4, 0x6002

    sub-int/2addr v3, v4

    add-int/lit16 v4, v3, -0x3001

    ushr-int/lit8 v4, v4, 0x1f

    add-int/lit8 v4, v4, -0x1

    and-int/lit16 v4, v4, 0x3001

    sub-int/2addr v3, v4

    const v4, 0xf005

    sub-int/2addr v2, v4

    ushr-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, -0x1

    or-int/2addr v2, v3

    if-ge v1, v11, :cond_0

    add-int v3, p3, v1

    int-to-short v2, v2

    aput-short v2, p2, v3

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    if-ge v1, v12, :cond_1

    add-int v3, p6, v1

    sub-int/2addr v3, v11

    int-to-short v2, v2

    aput-short v2, p5, v3

    goto :goto_1

    :cond_1
    sub-int v3, v1, v12

    int-to-short v2, v2

    aput-short v2, v10, v3

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    move v9, v1

    :goto_2
    if-gt v9, v13, :cond_d

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v7, v1

    move v8, v2

    :goto_3
    if-ge v8, v14, :cond_c

    if-ge v8, v11, :cond_3

    const/4 v2, 0x1

    add-int v3, p3, v8

    aget-short v1, p2, v3

    move v4, v1

    move v5, v2

    move v6, v3

    :goto_4
    sub-int v15, v8, v7

    ushr-int/lit8 v1, v4, 0xf

    add-int/lit8 v16, v1, -0x1

    sub-int v7, v7, v16

    if-ge v8, v9, :cond_5

    :goto_5
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto :goto_3

    :cond_3
    if-ge v8, v12, :cond_4

    const/4 v2, 0x2

    add-int v1, p6, v8

    sub-int v3, v1, v11

    aget-short v1, p5, v3

    move v4, v1

    move v5, v2

    move v6, v3

    goto :goto_4

    :cond_4
    const/4 v2, 0x3

    sub-int v3, v8, v12

    aget-short v1, v10, v3

    move v4, v1

    move v5, v2

    move v6, v3

    goto :goto_4

    :cond_5
    sub-int v1, v8, v9

    if-ge v1, v11, :cond_6

    const/4 v2, 0x1

    add-int v1, p3, v8

    sub-int v3, v1, v9

    aget-short v1, p2, v3

    :goto_6
    and-int/2addr v15, v9

    add-int/lit16 v15, v15, 0x1ff

    shr-int/lit8 v15, v15, 0x9

    neg-int v15, v15

    and-int v15, v15, v16

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v5, v0, :cond_8

    xor-int v5, v4, v1

    and-int/2addr v5, v15

    xor-int/2addr v5, v4

    int-to-short v5, v5

    aput-short v5, p2, v6

    :goto_7
    const/4 v5, 0x1

    if-ne v2, v5, :cond_a

    xor-int v2, v4, v1

    and-int/2addr v2, v15

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v3

    goto :goto_5

    :cond_6
    sub-int v1, v8, v9

    if-ge v1, v12, :cond_7

    const/4 v2, 0x2

    sub-int v1, v8, v9

    add-int v1, v1, p6

    sub-int v3, v1, v11

    aget-short v1, p5, v3

    goto :goto_6

    :cond_7
    const/4 v2, 0x3

    sub-int v1, v8, v9

    sub-int v3, v1, v12

    aget-short v1, v10, v3

    goto :goto_6

    :cond_8
    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v5, v0, :cond_9

    xor-int v5, v4, v1

    and-int/2addr v5, v15

    xor-int/2addr v5, v4

    int-to-short v5, v5

    aput-short v5, p5, v6

    goto :goto_7

    :cond_9
    xor-int v5, v4, v1

    and-int/2addr v5, v15

    xor-int/2addr v5, v4

    int-to-short v5, v5

    aput-short v5, v10, v6

    goto :goto_7

    :cond_a
    const/4 v5, 0x2

    if-ne v2, v5, :cond_b

    xor-int v2, v4, v1

    and-int/2addr v2, v15

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p5, v3

    goto :goto_5

    :cond_b
    xor-int v2, v4, v1

    and-int/2addr v2, v15

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, v10, v3

    goto/16 :goto_5

    :cond_c
    shl-int/lit8 v1, v9, 0x1

    move v9, v1

    goto/16 :goto_2

    :cond_d
    return-void

    nop

    :array_0
    .array-data 2
        0x0s
        0x41s
        0x43s
        0x47s
        0x4ds
        0x56s
        0x64s
        0x7as
        0x9as
        0xcds
        0x11fs
    .end array-data
.end method

.method hash_to_point_vartime(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;[SII)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    shl-int v0, v5, p4

    move v1, p3

    :cond_0
    :goto_0
    if-lez v0, :cond_2

    new-array v2, v6, [B

    invoke-virtual {p1, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    aget-byte v2, v2, v5

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v2, v3

    const v3, 0xf005

    if-ge v2, v3, :cond_0

    move v3, v2

    :goto_1
    const/16 v2, 0x3001

    if-lt v3, v2, :cond_1

    add-int/lit16 v2, v3, -0x3001

    move v3, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v1, 0x1

    int-to-short v3, v3

    aput-short v3, p2, v1

    add-int/lit8 v0, v0, -0x1

    move v1, v2

    goto :goto_0

    :cond_2
    return-void
.end method

.method is_short([SI[SII)I
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    shl-int v5, v0, p5

    move v2, v1

    move v3, v1

    move v4, v1

    :goto_0
    if-ge v4, v5, :cond_0

    add-int v6, p2, v4

    aget-short v6, p1, v6

    mul-int/2addr v6, v6

    add-int/2addr v3, v6

    or-int/2addr v2, v3

    add-int v6, p4, v4

    aget-short v6, p3, v6

    mul-int/2addr v6, v6

    add-int/2addr v3, v6

    or-int/2addr v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v2, v2, 0x1f

    neg-int v2, v2

    or-int/2addr v2, v3

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    aget v4, v4, p5

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method is_short_half(I[SII)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    shl-int v4, v0, p4

    ushr-int/lit8 v2, p1, 0x1f

    neg-int v2, v2

    move v3, v1

    :goto_0
    if-ge v3, v4, :cond_0

    add-int v5, p3, v3

    aget-short v5, p2, v5

    mul-int/2addr v5, v5

    add-int/2addr p1, v5

    or-int/2addr v2, p1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v2, v2, 0x1f

    neg-int v2, v2

    or-int/2addr v2, p1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    sget-object v4, Lorg/bouncycastle/pqc/crypto/falcon/FalconCommon;->l2bound:[I

    aget v4, v4, p4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method
