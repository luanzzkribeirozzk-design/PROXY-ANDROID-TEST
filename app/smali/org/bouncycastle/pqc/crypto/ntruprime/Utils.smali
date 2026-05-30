.class Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static bToUnsignedInt(B)I
    .locals 1

    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method protected static checkForSmallPolynomial([B[BII)V
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    array-length v3, p1

    if-eq v0, v3, :cond_0

    aget-byte v3, p1, v0

    and-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sub-int v0, v2, p3

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkNotEqualToZero(I)I

    move-result v0

    :goto_1
    if-ge v1, p3, :cond_1

    aget-byte v2, p1, v1

    xor-int/lit8 v2, v2, 0x1

    xor-int/lit8 v3, v0, -0x1

    and-int/2addr v2, v3

    xor-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge p3, p2, :cond_2

    aget-byte v1, p1, p3

    xor-int/lit8 v2, v0, -0x1

    and-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method private static checkLessThanZero(I)I
    .locals 1

    ushr-int/lit8 v0, p0, 0x1f

    neg-int v0, v0

    return v0
.end method

.method private static checkNotEqualToZero(I)I
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v0

    neg-long v0, v0

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    neg-int v0, v0

    return v0
.end method

.method protected static cryptoSort([II)V
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x1

    :goto_0
    sub-int v0, p1, v3

    if-ge v3, v0, :cond_2

    add-int/2addr v3, v3

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_1
    if-lez v4, :cond_0

    move v0, v1

    :goto_2
    sub-int v2, p1, v4

    if-ge v0, v2, :cond_4

    and-int v2, v0, v4

    if-nez v2, :cond_3

    add-int v2, v0, v4

    invoke-static {p0, v0, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->minmax([III)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move v2, v3

    :goto_3
    if-le v2, v4, :cond_7

    move v0, v1

    :goto_4
    sub-int v5, p1, v2

    if-ge v0, v5, :cond_6

    and-int v5, v0, v4

    if-nez v5, :cond_5

    add-int v5, v0, v4

    add-int v6, v0, v2

    invoke-static {p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->minmax([III)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    ushr-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_7
    ushr-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1
.end method

.method private static decode([S[B[SIII)V
    .locals 10

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    const/4 v0, 0x0

    aget-short v0, p2, v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aput-short v0, p0, p4

    :cond_0
    :goto_0
    const/4 v0, 0x1

    if-le p3, v0, :cond_8

    add-int/lit8 v0, p3, 0x1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    add-int/lit8 v1, p3, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v2, v1, [S

    div-int/lit8 v1, p3, 0x2

    new-array v6, v1, [S

    div-int/lit8 v1, p3, 0x2

    new-array v7, v1, [I

    const/4 v1, 0x0

    move v5, p5

    :goto_1
    add-int/lit8 v3, p3, -0x1

    if-ge v1, v3, :cond_5

    aget-short v3, p2, v1

    add-int/lit8 v4, v1, 0x1

    aget-short v4, p2, v4

    mul-int/2addr v3, v4

    const v4, 0x3fff00

    if-le v3, v4, :cond_3

    div-int/lit8 v4, v1, 0x2

    const/high16 v8, 0x10000

    aput v8, v7, v4

    div-int/lit8 v4, v1, 0x2

    aget-byte v8, p1, v5

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v8

    add-int/lit8 v9, v5, 0x1

    aget-byte v9, p1, v9

    invoke-static {v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v9

    mul-int/lit16 v9, v9, 0x100

    add-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v6, v4

    add-int/lit8 v5, v5, 0x2

    div-int/lit8 v4, v1, 0x2

    add-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x8

    add-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    aput-short v3, v2, v4

    :goto_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    aget-short v0, p2, v0

    const/16 v1, 0x100

    if-gt v0, v1, :cond_2

    aget-byte v0, p1, p5

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v0

    const/4 v1, 0x0

    aget-short v1, p2, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, p4

    goto :goto_0

    :cond_2
    aget-byte v0, p1, p5

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v0

    add-int/lit8 v1, p5, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    const/4 v1, 0x0

    aget-short v1, p2, v1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p0, p4

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x4000

    if-lt v3, v4, :cond_4

    div-int/lit8 v4, v1, 0x2

    const/16 v8, 0x100

    aput v8, v7, v4

    div-int/lit8 v4, v1, 0x2

    aget-byte v8, p1, v5

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v8

    int-to-short v8, v8

    aput-short v8, v6, v4

    add-int/lit8 v5, v5, 0x1

    div-int/lit8 v4, v1, 0x2

    add-int/lit16 v3, v3, 0xff

    ushr-int/lit8 v3, v3, 0x8

    int-to-short v3, v3

    aput-short v3, v2, v4

    goto :goto_2

    :cond_4
    div-int/lit8 v4, v1, 0x2

    const/4 v8, 0x1

    aput v8, v7, v4

    div-int/lit8 v4, v1, 0x2

    const/4 v8, 0x0

    aput-short v8, v6, v4

    div-int/lit8 v4, v1, 0x2

    int-to-short v3, v3

    aput-short v3, v2, v4

    goto :goto_2

    :cond_5
    if-ge v1, p3, :cond_6

    div-int/lit8 v3, v1, 0x2

    aget-short v1, p2, v1

    aput-short v1, v2, v3

    :cond_6
    add-int/lit8 v1, p3, 0x1

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    move v4, p4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->decode([S[B[SIII)V

    const/4 v1, 0x0

    :goto_3
    add-int/lit8 v2, p3, -0x1

    if-ge v1, v2, :cond_7

    div-int/lit8 v2, v1, 0x2

    aget-short v2, v6, v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sToUnsignedInt(S)I

    move-result v2

    div-int/lit8 v3, v1, 0x2

    aget v3, v7, v3

    div-int/lit8 v4, v1, 0x2

    aget-short v4, v0, v4

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sToUnsignedInt(S)I

    move-result v4

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aget-short v3, p2, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v2

    add-int/lit8 v3, p4, 0x1

    const/4 v4, 0x1

    aget v4, v2, v4

    int-to-short v4, v4

    aput-short v4, p0, p4

    add-int/lit8 p4, v3, 0x1

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int/lit8 v4, v1, 0x1

    aget-short v4, p2, v4

    invoke-static {v2, v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p0, v3

    add-int/lit8 v1, v1, 0x2

    goto :goto_3

    :cond_7
    if-ge v1, p3, :cond_8

    div-int/lit8 v1, v1, 0x2

    aget-short v0, v0, v1

    aput-short v0, p0, p4

    :cond_8
    return-void
.end method

.method private static encode([B[S[SII)V
    .locals 8

    const/4 v5, 0x1

    const/4 v0, 0x0

    if-ne p3, v5, :cond_0

    aget-short v3, p1, v0

    aget-short v1, p2, v0

    move v2, p4

    :goto_0
    if-le v1, v5, :cond_1

    add-int/lit8 p4, v2, 0x1

    int-to-byte v4, v3

    aput-byte v4, p0, v2

    ushr-int/lit8 v2, v3, 0x8

    int-to-short v3, v2

    add-int/lit16 v1, v1, 0xff

    ushr-int/lit8 v1, v1, 0x8

    int-to-short v1, v1

    move v2, p4

    goto :goto_0

    :cond_0
    move v2, p4

    :cond_1
    if-le p3, v5, :cond_5

    add-int/lit8 v1, p3, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v5, v1, [S

    add-int/lit8 v1, p3, 0x1

    div-int/lit8 v1, v1, 0x2

    new-array v6, v1, [S

    move v4, v0

    :goto_1
    add-int/lit8 v0, p3, -0x1

    if-ge v4, v0, :cond_3

    aget-short v0, p2, v4

    aget-short v1, p1, v4

    add-int/lit8 v3, v4, 0x1

    aget-short v3, p1, v3

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    add-int/lit8 v3, v4, 0x1

    aget-short v3, p2, v3

    mul-int/2addr v0, v3

    :goto_2
    const/16 v3, 0x4000

    if-lt v0, v3, :cond_2

    add-int/lit8 v3, v2, 0x1

    int-to-byte v7, v1

    aput-byte v7, p0, v2

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x8

    move v2, v3

    goto :goto_2

    :cond_2
    div-int/lit8 v3, v4, 0x2

    int-to-short v1, v1

    aput-short v1, v5, v3

    div-int/lit8 v1, v4, 0x2

    int-to-short v0, v0

    aput-short v0, v6, v1

    add-int/lit8 v0, v4, 0x2

    move v4, v0

    goto :goto_1

    :cond_3
    if-ge v4, p3, :cond_4

    div-int/lit8 v0, v4, 0x2

    aget-short v1, p1, v4

    aput-short v1, v5, v0

    div-int/lit8 v0, v4, 0x2

    aget-short v1, p2, v4

    aput-short v1, v6, v0

    :cond_4
    add-int/lit8 v0, p3, 0x1

    div-int/lit8 v0, v0, 0x2

    invoke-static {p0, v5, v6, v0, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->encode([B[S[SII)V

    :cond_5
    return-void
.end method

.method protected static expand([I[B)V
    .locals 4

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    const/16 v2, 0x10

    new-array v2, v2, [B

    invoke-static {v0, v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->generateAES256CTRStream([B[B[B[B)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    mul-int/lit8 v2, v0, 0x4

    aget-byte v2, v1, v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v2

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v1, v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x2

    aget-byte v3, v1, v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v2, v3

    mul-int/lit8 v3, v0, 0x4

    add-int/lit8 v3, v3, 0x3

    aget-byte v3, v1, v3

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v3

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v2, v3

    aput v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static generateAES256CTRStream([B[B[B[B)V
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v3, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {v3, v4, p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length v3, p1

    move-object v1, p0

    move-object v4, p1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-void
.end method

.method protected static generatePolynomialInRQFromSeed([S[BII)V
    .locals 4

    new-array v1, p2, [I

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->expand([I[B)V

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget v2, v1, v0

    invoke-static {v2, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedMod(II)I

    move-result v2

    add-int/lit8 v3, p3, -0x1

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static getDecodedPolynomial([S[BII)V
    .locals 6

    const/4 v4, 0x0

    new-array v0, p2, [S

    new-array v2, p2, [S

    move v1, v4

    :goto_0
    if-ge v1, p2, :cond_0

    int-to-short v3, p3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    move v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->decode([S[B[SIII)V

    :goto_1
    if-ge v4, p2, :cond_1

    aget-short v1, v0, v4

    add-int/lit8 v2, p3, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected static getDecodedSmallPolynomial([B[BI)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    div-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, p1, v2

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    ushr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    add-int/lit8 v3, v4, 0x1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, p0, v4

    ushr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    add-int/lit8 v4, v3, 0x1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, p0, v3

    ushr-int/lit8 v2, v2, 0x2

    int-to-byte v2, v2

    add-int/lit8 v3, v4, 0x1

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v2

    and-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    aput-byte v2, p0, v4

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v0

    and-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, -0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v3

    return-void
.end method

.method protected static getEncodedInputs([B[B)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    ushr-int/lit8 v1, v0, 0x3

    aget-byte v2, p0, v1

    aget-byte v3, p1, v0

    and-int/lit8 v4, v0, 0x7

    shl-int/2addr v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static getEncodedPolynomial([B[SII)V
    .locals 6

    const/4 v1, 0x0

    new-array v2, p2, [S

    new-array v3, p2, [S

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-short v4, p1, v0

    add-int/lit8 v5, p3, -0x1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_1

    int-to-short v4, p3

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0, v2, v3, p2, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->encode([B[S[SII)V

    return-void
.end method

.method protected static getEncodedSmallPolynomial([B[BI)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    div-int/lit8 v1, p2, 0x4

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v3, 0x1

    aget-byte v3, p1, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    add-int/lit8 v4, v1, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    shl-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v3

    int-to-byte v1, v1

    add-int/lit8 v5, v4, 0x1

    aget-byte v3, p1, v4

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    shl-int/lit8 v3, v3, 0x4

    add-int/2addr v1, v3

    int-to-byte v1, v1

    add-int/lit8 v3, v5, 0x1

    aget-byte v4, p1, v5

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    shl-int/lit8 v4, v4, 0x6

    add-int/2addr v1, v4

    int-to-byte v4, v1

    add-int/lit8 v1, v2, 0x1

    aput-byte v4, p0, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    aget-byte v0, p1, v3

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    return-void
.end method

.method protected static getHashWithPrefix([B[B)[B
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x40

    new-array v0, v0, [B

    array-length v1, p0

    array-length v2, p1

    add-int/2addr v1, v2

    new-array v1, v1, [B

    array-length v2, p0

    invoke-static {p0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, p0

    array-length v3, p1

    invoke-static {p1, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    array-length v3, v1

    invoke-virtual {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->update([BII)V

    invoke-virtual {v2, v0, v4}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->doFinal([BI)I

    return-object v0
.end method

.method protected static getInverseInRQ(II)I
    .locals 3

    const/4 v0, 0x1

    move v1, p0

    :goto_0
    add-int/lit8 v2, p1, -0x2

    if-ge v0, v2, :cond_0

    mul-int/2addr v1, p0

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected static getModFreeze(II)I
    .locals 2

    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getSignedDivMod(II)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    add-int/lit8 v1, p1, -0x1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method protected static getOneThirdInverseInRQ([S[BII)V
    .locals 11

    add-int/lit8 v0, p2, 0x1

    new-array v3, v0, [S

    add-int/lit8 v0, p2, 0x1

    new-array v4, v0, [S

    add-int/lit8 v0, p2, 0x1

    new-array v5, v0, [S

    add-int/lit8 v0, p2, 0x1

    new-array v6, v0, [S

    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getInverseInRQ(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, v5, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-short v1, v3, v0

    add-int/lit8 v0, p2, -0x1

    const/4 v1, -0x1

    aput-short v1, v3, v0

    const/4 v0, -0x1

    aput-short v0, v3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v0

    aget-byte v2, p1, v0

    int-to-short v2, v2

    aput-short v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aput-short v0, v4, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    mul-int/lit8 v1, p2, 0x2

    add-int/lit8 v1, v1, -0x1

    if-ge v2, v1, :cond_5

    const/4 v1, 0x0

    const/4 v7, 0x1

    invoke-static {v6, v1, v6, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    const/4 v7, 0x0

    aput-short v7, v6, v1

    neg-int v1, v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkLessThanZero(I)I

    move-result v1

    const/4 v7, 0x0

    aget-short v7, v4, v7

    invoke-static {v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkNotEqualToZero(I)I

    move-result v7

    and-int/2addr v7, v1

    neg-int v1, v0

    xor-int/2addr v1, v0

    and-int/2addr v1, v7

    xor-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v8, p2, 0x1

    if-ge v0, v8, :cond_1

    aget-short v8, v3, v0

    aget-short v9, v4, v0

    xor-int/2addr v8, v9

    and-int/2addr v8, v7

    aget-short v9, v3, v0

    xor-int/2addr v9, v8

    int-to-short v9, v9

    aput-short v9, v3, v0

    aget-short v9, v4, v0

    xor-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v4, v0

    aget-short v8, v6, v0

    aget-short v9, v5, v0

    xor-int/2addr v8, v9

    and-int/2addr v8, v7

    aget-short v9, v6, v0

    xor-int/2addr v9, v8

    int-to-short v9, v9

    aput-short v9, v6, v0

    aget-short v9, v5, v0

    xor-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    aget-short v7, v3, v0

    const/4 v0, 0x0

    aget-short v8, v4, v0

    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v9, p2, 0x1

    if-ge v0, v9, :cond_2

    aget-short v9, v4, v0

    mul-int/2addr v9, v7

    aget-short v10, v3, v0

    mul-int/2addr v10, v8

    sub-int/2addr v9, v10

    invoke-static {v9, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v9, p2, 0x1

    if-ge v0, v9, :cond_3

    aget-short v9, v5, v0

    mul-int/2addr v9, v7

    aget-short v10, v6, v0

    mul-int/2addr v10, v8

    sub-int/2addr v9, v10

    invoke-static {v9, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v9

    int-to-short v9, v9

    aput-short v9, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_4

    add-int/lit8 v7, v0, 0x1

    aget-short v7, v4, v7

    aput-short v7, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    aput-short v0, v4, p2

    add-int/lit8 v2, v2, 0x1

    move v0, v1

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    aget-short v0, v3, v0

    invoke-static {v0, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getInverseInRQ(II)I

    move-result v1

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_6

    add-int/lit8 v2, p2, -0x1

    sub-int/2addr v2, v0

    aget-short v2, v6, v2

    mul-int/2addr v2, v1

    invoke-static {v2, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v2

    int-to-short v2, v2

    aput-short v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    return-void
.end method

.method protected static getRandomInputs(Ljava/security/SecureRandom;[B)V
    .locals 4

    array-length v0, p1

    div-int/lit8 v0, v0, 0x8

    new-array v1, v0, [B

    invoke-virtual {p0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    ushr-int/lit8 v2, v0, 0x3

    aget-byte v2, v1, v2

    and-int/lit8 v3, v0, 0x7

    ushr-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static getRandomShortPolynomial(Ljava/security/SecureRandom;[BII)V
    .locals 3

    new-array v1, p2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomUnsignedInteger(Ljava/security/SecureRandom;)I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, v1, p2, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->sortGenerateShortPolynomial([B[III)V

    return-void
.end method

.method protected static getRandomSmallPolynomial(Ljava/security/SecureRandom;[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getRandomUnsignedInteger(Ljava/security/SecureRandom;)I

    move-result v1

    const v2, 0x3fffffff    # 1.9999999f

    and-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    ushr-int/lit8 v1, v1, 0x1e

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static getRandomUnsignedInteger(Ljava/security/SecureRandom;)I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v1

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    add-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->bToUnsignedInt(B)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method protected static getRoundedDecodedPolynomial([S[BII)V
    .locals 6

    const/4 v4, 0x0

    new-array v0, p2, [S

    new-array v2, p2, [S

    move v1, v4

    :goto_0
    if-ge v1, p2, :cond_0

    add-int/lit8 v3, p3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-short v3, v3

    aput-short v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move-object v1, p1

    move v3, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->decode([S[B[SIII)V

    :goto_1
    if-ge v4, p2, :cond_1

    aget-short v1, v0, v4

    mul-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, p3, -0x1

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method protected static getRoundedEncodedPolynomial([B[SII)V
    .locals 6

    const/4 v1, 0x0

    new-array v2, p2, [S

    new-array v3, p2, [S

    move v0, v1

    :goto_0
    if-ge v0, p2, :cond_0

    aget-short v4, p1, v0

    add-int/lit8 v5, p3, -0x1

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    mul-int/lit16 v4, v4, 0x2aab

    ushr-int/lit8 v4, v4, 0xf

    int-to-short v4, v4

    aput-short v4, v2, v0

    add-int/lit8 v4, p3, 0x2

    div-int/lit8 v4, v4, 0x3

    int-to-short v4, v4

    aput-short v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, v2, v3, p2, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->encode([B[S[SII)V

    return-void
.end method

.method private static getSignedDivMod(II)[I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/32 v0, -0x80000000

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v1

    aget v2, v0, v6

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v2

    aget v4, v1, v6

    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v2

    aget v0, v0, v7

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v4

    aget v0, v1, v7

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v0

    sub-long v0, v4, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x1f

    neg-int v1, v1

    and-int v3, v1, p1

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v1, v2, v6

    aput v0, v2, v7

    return-object v2
.end method

.method protected static getTopDecodedPolynomial([B[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    aget-byte v2, p1, v0

    and-int/lit8 v2, v2, 0xf

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, p1, v0

    ushr-int/lit8 v2, v2, 0x4

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static getTopEncodedPolynomial([B[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    aget-byte v1, p1, v1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getUnsignedDivMod(II)[I
    .locals 11

    const/16 v10, 0x1f

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v0

    const/high16 v2, -0x80000000

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->iToUnsignedLong(I)J

    move-result-wide v2

    int-to-long v4, p1

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    mul-long v6, v0, v2

    ushr-long/2addr v6, v10

    int-to-long v8, p1

    mul-long/2addr v8, v6

    sub-long/2addr v0, v8

    add-long/2addr v4, v6

    mul-long/2addr v2, v0

    ushr-long/2addr v2, v10

    int-to-long v6, p1

    mul-long/2addr v6, v2

    sub-long/2addr v0, v6

    add-long/2addr v2, v4

    int-to-long v4, p1

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    const/16 v4, 0x3f

    ushr-long v4, v0, v4

    neg-long v4, v4

    int-to-long v6, p1

    and-long/2addr v6, v4

    add-long/2addr v0, v6

    add-long/2addr v2, v4

    const/4 v4, 0x2

    new-array v4, v4, [I

    const/4 v5, 0x0

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v2

    aput v2, v4, v5

    const/4 v2, 0x1

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->toIntExact(J)I

    move-result v0

    aput v0, v4, v2

    return-object v4
.end method

.method private static getUnsignedMod(II)I
    .locals 2

    invoke-static {p0, p1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getUnsignedDivMod(II)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method static iToUnsignedLong(I)J
    .locals 4

    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected static isInvertiblePolynomialInR3([B[BI)Z
    .locals 11

    add-int/lit8 v0, p2, 0x1

    new-array v3, v0, [B

    add-int/lit8 v0, p2, 0x1

    new-array v4, v0, [B

    add-int/lit8 v0, p2, 0x1

    new-array v5, v0, [B

    add-int/lit8 v0, p2, 0x1

    new-array v6, v0, [B

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-byte v1, v5, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    aput-byte v1, v3, v0

    add-int/lit8 v0, p2, -0x1

    const/4 v1, -0x1

    aput-byte v1, v3, v0

    const/4 v0, -0x1

    aput-byte v0, v3, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 v1, p2, -0x1

    sub-int/2addr v1, v0

    aget-byte v2, p0, v0

    aput-byte v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aput-byte v0, v4, p2

    const/4 v0, 0x1

    const/4 v2, 0x0

    move v1, v0

    :goto_1
    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    const/4 v0, 0x0

    const/4 v7, 0x1

    invoke-static {v6, v0, v6, v7, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    const/4 v7, 0x0

    aput-byte v7, v6, v0

    const/4 v0, 0x0

    aget-byte v0, v4, v0

    neg-int v0, v0

    const/4 v7, 0x0

    aget-byte v7, v3, v7

    mul-int/2addr v7, v0

    neg-int v0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkLessThanZero(I)I

    move-result v0

    const/4 v8, 0x0

    aget-byte v8, v4, v8

    invoke-static {v8}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkNotEqualToZero(I)I

    move-result v8

    and-int/2addr v8, v0

    neg-int v0, v1

    xor-int/2addr v0, v1

    and-int/2addr v0, v8

    xor-int/2addr v0, v1

    add-int/lit8 v1, v0, 0x1

    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v9, p2, 0x1

    if-ge v0, v9, :cond_1

    aget-byte v9, v3, v0

    aget-byte v10, v4, v0

    xor-int/2addr v9, v10

    and-int/2addr v9, v8

    aget-byte v10, v3, v0

    xor-int/2addr v10, v9

    int-to-byte v10, v10

    aput-byte v10, v3, v0

    aget-byte v10, v4, v0

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v4, v0

    aget-byte v9, v6, v0

    aget-byte v10, v5, v0

    xor-int/2addr v9, v10

    and-int/2addr v9, v8

    aget-byte v10, v6, v0

    xor-int/2addr v10, v9

    int-to-byte v10, v10

    aput-byte v10, v6, v0

    aget-byte v10, v5, v0

    xor-int/2addr v9, v10

    int-to-byte v9, v9

    aput-byte v9, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v8, p2, 0x1

    if-ge v0, v8, :cond_2

    aget-byte v8, v4, v0

    aget-byte v9, v3, v0

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_4
    add-int/lit8 v8, p2, 0x1

    if-ge v0, v8, :cond_3

    aget-byte v8, v5, v0

    aget-byte v9, v6, v0

    mul-int/2addr v9, v7

    add-int/2addr v8, v9

    const/4 v9, 0x3

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v8

    int-to-byte v8, v8

    aput-byte v8, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_4

    add-int/lit8 v7, v0, 0x1

    aget-byte v7, v4, v7

    aput-byte v7, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    aput-byte v0, v4, p2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_1

    :cond_5
    const/4 v0, 0x0

    aget-byte v2, v3, v0

    const/4 v0, 0x0

    :goto_6
    if-ge v0, p2, :cond_6

    add-int/lit8 v3, p2, -0x1

    sub-int/2addr v3, v0

    aget-byte v3, v6, v3

    mul-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_6
    if-nez v1, :cond_7

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected static minmax([III)V
    .locals 6

    aget v0, p0, p1

    aget v1, p0, p2

    xor-int v2, v0, v1

    sub-int v3, v1, v0

    xor-int v4, v3, v1

    const/high16 v5, -0x80000000

    xor-int/2addr v4, v5

    and-int/2addr v4, v2

    xor-int/2addr v3, v4

    ushr-int/lit8 v3, v3, 0x1f

    neg-int v3, v3

    and-int/2addr v2, v3

    xor-int/2addr v0, v2

    aput v0, p0, p1

    xor-int v0, v1, v2

    aput v0, p0, p2

    return-void
.end method

.method protected static multiplicationInR3([B[B[BI)V
    .locals 8

    const/4 v7, 0x3

    const/4 v0, 0x0

    add-int v1, p3, p3

    add-int/lit8 v1, v1, -0x1

    new-array v4, v1, [B

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_1

    move v1, v0

    move v2, v0

    :goto_1
    if-gt v1, v3, :cond_0

    aget-byte v5, p1, v1

    sub-int v6, v3, v1

    aget-byte v6, p2, v6

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    invoke-static {v2, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v2

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    aput-byte v2, v4, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_2
    add-int v1, p3, p3

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    sub-int v1, v3, p3

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    :goto_3
    if-ge v1, p3, :cond_2

    aget-byte v5, p1, v1

    sub-int v6, v3, v1

    aget-byte v6, p2, v6

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    invoke-static {v2, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v2

    int-to-byte v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    aput-byte v2, v4, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    add-int v1, p3, p3

    add-int/lit8 v1, v1, -0x2

    :goto_4
    if-lt v1, p3, :cond_4

    sub-int v2, v1, p3

    sub-int v3, v1, p3

    aget-byte v3, v4, v3

    aget-byte v5, v4, v1

    add-int/2addr v3, v5

    invoke-static {v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    sub-int v2, v1, p3

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v1, p3

    add-int/lit8 v3, v3, 0x1

    aget-byte v3, v4, v3

    aget-byte v5, v4, v1

    add-int/2addr v3, v5

    invoke-static {v3, v7}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v0, p3, :cond_5

    aget-byte v1, v4, v0

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method protected static multiplicationInRQ([S[S[BII)V
    .locals 7

    const/4 v0, 0x0

    add-int v1, p3, p3

    add-int/lit8 v1, v1, -0x1

    new-array v4, v1, [S

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_1

    move v1, v0

    move v2, v0

    :goto_1
    if-gt v1, v3, :cond_0

    aget-short v5, p1, v1

    sub-int v6, v3, v1

    aget-byte v6, p2, v6

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    invoke-static {v2, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v2

    int-to-short v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    aput-short v2, v4, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_2
    add-int v1, p3, p3

    add-int/lit8 v1, v1, -0x1

    if-ge v3, v1, :cond_3

    sub-int v1, v3, p3

    add-int/lit8 v1, v1, 0x1

    move v2, v0

    :goto_3
    if-ge v1, p3, :cond_2

    aget-short v5, p1, v1

    sub-int v6, v3, v1

    aget-byte v6, p2, v6

    mul-int/2addr v5, v6

    add-int/2addr v2, v5

    invoke-static {v2, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v2

    int-to-short v2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_2
    aput-short v2, v4, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    add-int v1, p3, p3

    add-int/lit8 v1, v1, -0x2

    :goto_4
    if-lt v1, p3, :cond_4

    sub-int v2, v1, p3

    sub-int v3, v1, p3

    aget-short v3, v4, v3

    aget-short v5, v4, v1

    add-int/2addr v3, v5

    invoke-static {v3, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v4, v2

    sub-int v2, v1, p3

    add-int/lit8 v2, v2, 0x1

    sub-int v3, v1, p3

    add-int/lit8 v3, v3, 0x1

    aget-short v3, v4, v3

    aget-short v5, v4, v1

    add-int/2addr v3, v5

    invoke-static {v3, p4}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v4, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_4
    :goto_5
    if-ge v0, p3, :cond_5

    aget-short v1, v4, v0

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    return-void
.end method

.method protected static right([B[S[BIIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p2, v0

    mul-int/2addr v1, p6

    sub-int/2addr v1, p5

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    aget-short v2, p1, v0

    sub-int/2addr v1, v2

    mul-int/lit8 v2, p4, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->checkLessThanZero(I)I

    move-result v1

    neg-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static roundPolynomial([S[S)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    aget-short v2, p1, v0

    const/4 v3, 0x3

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static sToUnsignedInt(S)I
    .locals 1

    const v0, 0xffff

    and-int/2addr v0, p0

    return v0
.end method

.method protected static scalarMultiplicationInRQ([S[SII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    mul-int/2addr v1, p2

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    int-to-short v1, v1

    aput-short v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static sortGenerateShortPolynomial([B[III)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    aget v2, p1, v1

    and-int/lit8 v2, v2, -0x2

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge p3, p2, :cond_1

    aget v1, p1, p3

    and-int/lit8 v1, v1, -0x3

    or-int/lit8 v1, v1, 0x1

    aput v1, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->cryptoSort([II)V

    :goto_2
    if-ge v0, p2, :cond_2

    aget v1, p1, v0

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, -0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static toIntExact(J)I
    .locals 4

    long-to-int v0, p0

    int-to-long v2, v0

    cmp-long v1, v2, p0

    if-eqz v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "value out of integer range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return v0
.end method

.method protected static top([B[S[BIII)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    aget-byte v2, p2, v0

    add-int/lit8 v3, p3, -0x1

    div-int/lit8 v3, v3, 0x2

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    invoke-static {v1, p3}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    add-int/2addr v1, p4

    mul-int/2addr v1, p5

    add-int/lit16 v1, v1, 0x4000

    ushr-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static transformRQToR3([B[S)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/ntruprime/Utils;->getModFreeze(II)I

    move-result v1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static updateDiffMask([B[BI)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p0, v0

    aget-byte v3, p1, v0

    xor-int/2addr v2, v3

    and-int/2addr v2, p2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
