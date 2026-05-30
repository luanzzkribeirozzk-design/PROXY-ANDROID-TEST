.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;
.super Ljava/lang/Object;


# static fields
.field private static final len_chi:I = 0x10

.field private static final len_chi_bytes:I = 0x2

.field private static final len_seedA:I = 0x80

.field private static final len_seedA_bytes:I = 0x10

.field private static final len_z:I = 0x80

.field private static final len_z_bytes:I = 0x10

.field private static final mbar:I = 0x8

.field static final nbar:I = 0x8


# instance fields
.field private final B:I

.field private final D:I

.field private final T_chi:[S

.field private final digest:Lorg/bouncycastle/crypto/Xof;

.field private final gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

.field private final len_ct_bytes:I

.field private final len_k:I

.field private final len_k_bytes:I

.field private final len_mu:I

.field private final len_mu_bytes:I

.field private final len_pk_bytes:I

.field private final len_pkh:I

.field private final len_pkh_bytes:I

.field private final len_s:I

.field private final len_s_bytes:I

.field private final len_seedSE:I

.field private final len_seedSE_bytes:I

.field private final len_sk_bytes:I

.field private final len_ss:I

.field private final len_ss_bytes:I

.field private final n:I

.field private final q:I


# direct methods
.method public constructor <init>(III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    const/4 v0, 0x1

    shl-int/2addr v0, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    mul-int/lit8 v0, p3, 0x8

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss:I

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v1, p2, 0x8

    mul-int/lit8 v1, v1, 0x8

    div-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    mul-int v0, p2, p1

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, p1, 0x2

    mul-int/lit8 v1, v1, 0x8

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    iput-object p4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    iput-object p5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iput-object p6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    return-void
.end method

.method private ctselect([B[BS)[B
    .locals 4

    array-length v0, p1

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    xor-int/lit8 v2, p3, -0x1

    aget-byte v3, p1, v0

    and-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p2, v0

    and-int/2addr v3, p3

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private ctverify([S[S[S[S)S
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_0

    aget-short v3, p1, v0

    aget-short v4, p3, v0

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    array-length v3, p2

    if-ge v0, v3, :cond_1

    aget-short v3, p2, v0

    aget-short v4, p4, v0

    xor-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-short v2, v2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_1

    :cond_1
    if-nez v2, :cond_2

    :goto_2
    return v1

    :cond_2
    const/4 v1, -0x1

    goto :goto_2
.end method

.method private decode([S)[B
    .locals 18

    const/4 v6, 0x0

    const/16 v9, 0x8

    const/16 v10, 0x8

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    shl-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-short v11, v2

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    shl-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-short v12, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    mul-int/2addr v2, v9

    new-array v13, v2, [B

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    if-ge v8, v10, :cond_2

    const-wide/16 v2, 0x0

    const/4 v7, 0x0

    move-wide v4, v2

    :goto_1
    if-ge v7, v9, :cond_0

    aget-short v2, p1, v6

    and-int/2addr v2, v12

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    move-object/from16 v0, p0

    iget v15, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    sub-int/2addr v14, v15

    add-int/lit8 v14, v14, -0x1

    shl-int/2addr v3, v14

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    sub-int/2addr v3, v14

    shr-int/2addr v2, v3

    int-to-short v2, v2

    and-int/2addr v2, v11

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget v14, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    mul-int/2addr v14, v7

    shl-long/2addr v2, v14

    or-long/2addr v2, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    move-wide v4, v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    if-ge v2, v3, :cond_1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    mul-int/2addr v3, v8

    add-int/2addr v3, v2

    mul-int/lit8 v7, v2, 0x8

    shr-long v14, v4, v7

    const-wide/16 v16, 0xff

    and-long v14, v14, v16

    long-to-int v7, v14

    int-to-byte v7, v7

    aput-byte v7, v13, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    :cond_2
    return-object v13
.end method

.method private encode([B)[S
    .locals 12

    const/16 v11, 0x8

    const/4 v5, 0x1

    const/4 v1, 0x0

    const/16 v0, 0x40

    new-array v9, v0, [S

    move v8, v1

    move v2, v5

    move v3, v1

    :goto_0
    if-ge v8, v11, :cond_4

    move v7, v1

    :goto_1
    if-ge v7, v11, :cond_3

    move v0, v1

    move v4, v1

    :goto_2
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    if-ge v4, v6, :cond_2

    aget-byte v6, p1, v3

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_1

    move v6, v5

    :goto_3
    shl-int v10, v5, v4

    mul-int/2addr v6, v10

    add-int/2addr v0, v6

    shl-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    if-nez v2, :cond_0

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    move v6, v1

    goto :goto_3

    :cond_2
    mul-int/lit8 v4, v8, 0x8

    add-int/2addr v4, v7

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->B:I

    shl-int v10, v5, v10

    div-int/2addr v6, v10

    mul-int/2addr v0, v6

    int-to-short v0, v0

    aput-short v0, v9, v4

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_4
    return-object v9
.end method

.method private matrix_add([S[SII)[S
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 v3, v0, -0x1

    mul-int v0, p3, p4

    new-array v4, v0, [S

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, p4, :cond_0

    mul-int v5, v2, p4

    add-int/2addr v5, v0

    mul-int v6, v2, p4

    add-int/2addr v6, v0

    aget-short v6, p1, v6

    mul-int v7, v2, p4

    add-int/2addr v7, v0

    aget-short v7, p2, v7

    add-int/2addr v6, v7

    and-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private matrix_mul([SII[SII)[S
    .locals 9

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 v5, v0, -0x1

    mul-int v0, p2, p6

    new-array v6, v0, [S

    move v4, v1

    :goto_0
    if-ge v4, p2, :cond_2

    move v3, v1

    :goto_1
    if-ge v3, p6, :cond_1

    move v0, v1

    move v2, v1

    :goto_2
    if-ge v0, p3, :cond_0

    mul-int v7, v4, p3

    add-int/2addr v7, v0

    aget-short v7, p1, v7

    mul-int v8, v0, p6

    add-int/2addr v8, v3

    aget-short v8, p4, v8

    mul-int/2addr v7, v8

    add-int/2addr v2, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int v0, v4, p6

    add-int/2addr v0, v3

    and-int/2addr v2, v5

    int-to-short v2, v2

    aput-short v2, v6, v0

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private matrix_sub([S[SII)[S
    .locals 8

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->q:I

    add-int/lit8 v3, v0, -0x1

    mul-int v0, p3, p4

    new-array v4, v0, [S

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, p4, :cond_0

    mul-int v5, v2, p4

    add-int/2addr v5, v0

    mul-int v6, v2, p4

    add-int/2addr v6, v0

    aget-short v6, p1, v6

    mul-int v7, v2, p4

    add-int/2addr v7, v0

    aget-short v7, p2, v7

    sub-int/2addr v6, v7

    and-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method private matrix_transpose([SII)[S
    .locals 6

    const/4 v1, 0x0

    mul-int v0, p2, p3

    new-array v3, v0, [S

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_0

    mul-int v4, v2, p2

    add-int/2addr v4, v0

    mul-int v5, v0, p3

    add-int/2addr v5, v2

    aget-short v5, p1, v5

    aput-short v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private pack([S)[B
    .locals 13

    const/16 v12, 0x8

    const/4 v1, 0x0

    array-length v6, p1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x8

    new-array v7, v0, [B

    move v0, v1

    move v2, v1

    move v3, v1

    move v4, v1

    :cond_0
    :goto_0
    array-length v5, v7

    if-ge v4, v5, :cond_4

    if-lt v3, v6, :cond_1

    if-ne v3, v6, :cond_4

    if-lez v0, :cond_4

    :cond_1
    move v5, v1

    :cond_2
    :goto_1
    if-ge v5, v12, :cond_3

    rsub-int/lit8 v8, v5, 0x8

    invoke-static {v8, v0}, Ljava/lang/Math;->min(II)I

    move-result v8

    const/4 v9, 0x1

    shl-int/2addr v9, v8

    add-int/lit8 v9, v9, -0x1

    int-to-short v9, v9

    sub-int v10, v0, v8

    shr-int v10, v2, v10

    and-int/2addr v9, v10

    int-to-byte v9, v9

    aget-byte v10, v7, v4

    rsub-int/lit8 v11, v5, 0x8

    sub-int/2addr v11, v8

    shl-int/2addr v9, v11

    add-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    add-int/2addr v5, v8

    int-to-byte v5, v5

    sub-int/2addr v0, v8

    int-to-byte v0, v0

    if-nez v0, :cond_2

    if-ge v3, v6, :cond_3

    aget-short v2, p1, v3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    int-to-byte v0, v0

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    goto :goto_1

    :cond_3
    if-ne v5, v12, :cond_0

    add-int/lit8 v4, v4, 0x1

    int-to-short v4, v4

    goto :goto_0

    :cond_4
    return-object v7
.end method

.method private sample(S)S
    .locals 5

    const/4 v1, 0x0

    const v4, 0xffff

    and-int v0, p1, v4

    ushr-int/lit8 v0, v0, 0x1

    int-to-short v3, v0

    move v0, v1

    move v2, v1

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->T_chi:[S

    aget-short v1, v1, v0

    if-le v3, v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    int-to-short v1, v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    and-int v0, p1, v4

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    mul-int/lit8 v0, v2, -0x1

    and-int/2addr v0, v4

    int-to-short v2, v0

    :cond_1
    return v2

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private sample_matrix([SIII)[S
    .locals 6

    const/4 v1, 0x0

    mul-int v0, p3, p4

    new-array v3, v0, [S

    move v2, v1

    :goto_0
    if-ge v2, p3, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, p4, :cond_0

    mul-int v4, v2, p4

    add-int/2addr v4, v0

    mul-int v5, v2, p4

    add-int/2addr v5, v0

    add-int/2addr v5, p2

    aget-short v5, p1, v5

    invoke-direct {p0, v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample(S)S

    move-result v5

    aput-short v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private unpack([BII)[S
    .locals 12

    mul-int v0, p2, p3

    new-array v5, v0, [S

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :cond_0
    :goto_0
    array-length v4, v5

    if-ge v3, v4, :cond_4

    array-length v4, p1

    if-lt v2, v4, :cond_1

    array-length v4, p1

    if-ne v2, v4, :cond_4

    if-lez v0, :cond_4

    :cond_1
    const/4 v4, 0x0

    :cond_2
    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    if-ge v4, v6, :cond_3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    sub-int/2addr v6, v4

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v6

    const/4 v7, 0x1

    shl-int/2addr v7, v6

    add-int/lit8 v7, v7, -0x1

    const v8, 0xffff

    and-int/2addr v7, v8

    int-to-short v7, v7

    and-int/lit16 v8, v1, 0xff

    and-int/lit16 v9, v0, 0xff

    sub-int/2addr v9, v6

    ushr-int/2addr v8, v9

    const v9, 0xffff

    and-int/2addr v9, v7

    and-int/2addr v8, v9

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aget-short v9, v5, v3

    const v10, 0xffff

    and-int/2addr v9, v10

    and-int/lit16 v8, v8, 0xff

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    and-int/lit16 v11, v4, 0xff

    sub-int/2addr v10, v11

    sub-int/2addr v10, v6

    shl-int/2addr v8, v10

    add-int/2addr v8, v9

    const v9, 0xffff

    and-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v5, v3

    add-int/2addr v4, v6

    int-to-byte v4, v4

    sub-int/2addr v0, v6

    int-to-byte v0, v0

    shl-int v6, v7, v0

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v1, v6

    int-to-byte v1, v1

    if-nez v0, :cond_2

    array-length v6, p1

    if-ge v2, v6, :cond_3

    aget-byte v1, p1, v2

    const/16 v0, 0x8

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    goto :goto_1

    :cond_3
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    if-ne v4, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    int-to-short v3, v3

    goto :goto_0

    :cond_4
    return-object v5
.end method


# virtual methods
.method public getCipherTextSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    return v0
.end method

.method public getPublicKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    return v0
.end method

.method public kem_dec([B[B[B)V
    .locals 19

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v3, v3, 0x8

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    add-int v4, v2, v3

    move-object/from16 v0, p2

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v11

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    mul-int/lit8 v3, v3, 0x40

    div-int/lit8 v3, v3, 0x8

    add-int/2addr v3, v2

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    add-int v4, v2, v3

    move-object/from16 v0, p3

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v13

    add-int/2addr v2, v3

    const/16 v3, 0x10

    add-int v4, v2, v3

    move-object/from16 v0, p3

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v9

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->D:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x8

    div-int/lit8 v3, v3, 0x8

    add-int v4, v2, v3

    move-object/from16 v0, p3

    invoke-static {v0, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v14

    add-int v4, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v2, v2, 0x8

    mul-int/lit8 v2, v2, 0x10

    div-int/lit8 v5, v2, 0x8

    add-int v2, v4, v5

    move-object/from16 v0, p3

    invoke-static {v0, v4, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v6

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v2, v2, 0x8

    new-array v7, v2, [S

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/16 v2, 0x8

    if-ge v3, v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    if-ge v2, v8, :cond_0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v8, v3

    add-int/2addr v8, v2

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v10, v3

    mul-int/lit8 v10, v10, 0x2

    mul-int/lit8 v15, v2, 0x2

    add-int/2addr v10, v15

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v10

    aput-short v10, v7, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v2, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_transpose([SII)[S

    move-result-object v6

    add-int v2, v4, v5

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    add-int/2addr v3, v2

    move-object/from16 v0, p3

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v2, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v3

    const/16 v2, 0x8

    const/16 v4, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v2, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v15

    const/16 v4, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v8, 0x8

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v2

    const/16 v4, 0x8

    const/16 v5, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v15, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_sub([S[SII)[S

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->decode([S)[B

    move-result-object v16

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v2, v4

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-interface {v4, v10, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    move-object/from16 v0, v16

    invoke-interface {v4, v0, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v6, v7

    invoke-interface {v4, v2, v5, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v5, v6

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v17

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x40

    mul-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v6, -0x6a

    invoke-interface {v5, v6}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    invoke-interface {v5, v2, v6, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v5, 0x0

    array-length v6, v4

    invoke-interface {v2, v4, v5, v6}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x40

    new-array v0, v2, [S

    move-object/from16 v18, v0

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, v18

    array-length v5, v0

    if-ge v2, v5, :cond_2

    mul-int/lit8 v5, v2, 0x2

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v5

    aput-short v5, v18, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    const/16 v4, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v5

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v2, v2, 0x8

    const/16 v4, 0x8

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v4, v9}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v8

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v4

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v2, v6, v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v2

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v4, v4, 0x10

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4, v6, v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v18

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4, v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v8

    const/16 v6, 0x8

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v10, 0x8

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v4

    const/16 v5, 0x8

    const/16 v6, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v4, v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->encode([B)[S

    move-result-object v5

    const/16 v6, 0x8

    const/16 v7, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v15, v2, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->ctverify([S[S[S[S)S

    move-result v2

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v13, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->ctselect([B[BS)[B

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    array-length v5, v11

    invoke-interface {v3, v11, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    array-length v5, v12

    invoke-interface {v3, v12, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    array-length v5, v2

    invoke-interface {v3, v2, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ss_bytes:I

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method public kem_enc([B[B[BLjava/security/SecureRandom;)V
    .locals 13

    const/4 v1, 0x0

    const/16 v2, 0x10

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/16 v1, 0x10

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    new-array v9, v1, [B

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    new-array v1, v1, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    move-object/from16 v0, p3

    invoke-interface {v2, v0, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-interface {v2, v1, v4, v5}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k:I

    add-int/2addr v2, v4

    new-array v2, v2, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-interface {v4, v1, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_mu_bytes:I

    invoke-interface {v1, v9, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v5, v6

    invoke-interface {v1, v2, v4, v5}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/4 v1, 0x0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    invoke-static {v2, v1, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    add-int/2addr v5, v6

    invoke-static {v2, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v10

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x40

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v5, -0x6a

    invoke-interface {v4, v5}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v5, 0x0

    array-length v6, v1

    invoke-interface {v4, v1, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    array-length v5, v2

    invoke-interface {v1, v2, v4, v5}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length v1, v2

    div-int/lit8 v1, v1, 0x2

    new-array v11, v1, [S

    const/4 v1, 0x0

    :goto_0
    array-length v4, v11

    if-ge v1, v4, :cond_0

    mul-int/lit8 v4, v1, 0x2

    invoke-static {v2, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v4

    aput-short v4, v11, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v2, 0x8

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {p0, v11, v1, v2, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v1, v1, 0x8

    const/16 v4, 0x8

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {p0, v11, v1, v4, v5}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v12

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v5

    const/16 v3, 0x8

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v1

    const/16 v3, 0x8

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {p0, v1, v12, v3, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v12

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v1, v1, 0x10

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {p0, v11, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v11

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v3, 0x8

    invoke-direct {p0, v8, v1, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->unpack([BII)[S

    move-result-object v5

    const/16 v3, 0x8

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    const/16 v7, 0x8

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v1

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {p0, v1, v11, v2, v3}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v1

    invoke-direct {p0, v9}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->encode([B)[S

    move-result-object v2

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v1

    invoke-static {v12, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_ct_bytes:I

    invoke-static {v2, v3, p1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v3, 0x0

    array-length v4, v12

    invoke-interface {v2, v12, v3, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-interface {v2, v1, v3, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_k_bytes:I

    invoke-interface {v1, v10, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    invoke-interface {v1, p2, v2, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method public kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 12

    const/16 v6, 0x8

    const/4 v7, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    new-array v0, v0, [B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    invoke-static {v0, v7, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v8

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v1, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_seedSE_bytes:I

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x10

    invoke-static {v0, v1, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    const/16 v1, 0x10

    new-array v9, v1, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v0

    invoke-interface {v1, v0, v7, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, v9

    invoke-interface {v0, v9, v7, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->gen:Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;->genMatrix([B)[S

    move-result-object v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    new-array v3, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v4, 0x5f

    invoke-interface {v0, v4}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v4, v2

    invoke-interface {v0, v2, v7, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v3

    invoke-interface {v0, v3, v7, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v0, v0, 0x8

    new-array v2, v0, [S

    move v0, v7

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    mul-int/lit8 v4, v0, 0x2

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v4

    aput-short v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {p0, v2, v7, v6, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {p0, v10, v6, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_transpose([SII)[S

    move-result-object v4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/lit8 v0, v0, 0x8

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {p0, v2, v0, v3, v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->sample_matrix([SIII)[S

    move-result-object v11

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_mul([SII[SII)[S

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    invoke-direct {p0, v0, v11, v1, v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->matrix_add([S[SII)[S

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->pack([S)[B

    move-result-object v0

    invoke-static {v9, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    invoke-static {v0, v7, p1, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    new-array v2, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    invoke-interface {v0, p1, v7, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, v2

    invoke-interface {v0, v2, v7, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    invoke-static {v8, p1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v1, v3

    invoke-static {v0, v7, p2, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v7

    :goto_1
    if-ge v1, v6, :cond_2

    move v0, v7

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    if-ge v0, v3, :cond_1

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v3, v1

    add-int/2addr v3, v0

    aget-short v3, v10, v3

    invoke-static {v3}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_s_bytes:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pk_bytes:I

    add-int/2addr v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->n:I

    mul-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x2

    add-int/2addr v4, v5

    const/4 v5, 0x2

    invoke-static {v3, v7, p2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_sk_bytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->len_pkh_bytes:I

    invoke-static {v2, v7, p2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method
