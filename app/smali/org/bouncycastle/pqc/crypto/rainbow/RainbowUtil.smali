.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cloneArray([[S)[[S
    .locals 3

    array-length v0, p0

    new-array v1, v0, [[S

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static cloneArray([[[S)[[[S
    .locals 6

    const/4 v2, 0x0

    array-length v0, p0

    aget-object v1, p0, v2

    array-length v1, v1

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, [S

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    move v1, v2

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_1

    move v3, v2

    :goto_1
    aget-object v4, p0, v2

    array-length v4, v4

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v1

    aget-object v5, p0, v1

    aget-object v5, v5, v3

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->clone([S)[S

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static convertArray([S)[B
    .locals 3

    array-length v0, p0

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-short v2, p0, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static convertArray([B)[S
    .locals 3

    array-length v0, p0

    new-array v1, v0, [S

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static equals([S[S)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    array-length v3, p1

    if-eq v0, v3, :cond_0

    :goto_0
    return v2

    :cond_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    move v4, v0

    move v3, v1

    :goto_1
    if-ltz v4, :cond_2

    aget-short v0, p0, v4

    aget-short v5, p1, v4

    if-ne v0, v5, :cond_1

    move v0, v1

    :goto_2
    and-int/2addr v3, v0

    add-int/lit8 v0, v4, -0x1

    move v4, v0

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static equals([[S[[S)Z
    .locals 4

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->equals([S[S)Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static equals([[[S[[[S)Z
    .locals 4

    array-length v0, p0

    array-length v1, p1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return v0

    :cond_1
    const/4 v0, 0x1

    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_0

    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->equals([[S[[S)Z

    move-result v2

    and-int/2addr v0, v2

    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static generate_random(Ljava/security/SecureRandom;IIIZ)[[[S
    .locals 9

    const/4 v4, 0x0

    if-eqz p4, :cond_0

    add-int/lit8 v0, p2, 0x1

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, p1

    :goto_0
    new-array v7, v0, [B

    invoke-virtual {p0, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    filled-new-array {p1, p2, p3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    move v6, v4

    move v1, v4

    :goto_1
    if-ge v6, p2, :cond_4

    move v5, v4

    :goto_2
    if-ge v5, p3, :cond_3

    move v3, v4

    :goto_3
    if-ge v3, p1, :cond_2

    if-eqz p4, :cond_1

    if-le v6, v5, :cond_1

    :goto_4
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_3

    :cond_0
    mul-int v0, p1, p2

    mul-int/2addr v0, p3

    goto :goto_0

    :cond_1
    aget-object v2, v0, v3

    aget-object v8, v2, v6

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v7, v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v8, v5

    move v1, v2

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public static generate_random_2d(Ljava/security/SecureRandom;II)[[S
    .locals 7

    const/4 v2, 0x0

    mul-int v0, p1, p2

    new-array v4, v0, [B

    invoke-virtual {p0, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    filled-new-array {p1, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    move v3, v2

    :goto_0
    if-ge v3, p2, :cond_1

    move v1, v2

    :goto_1
    if-ge v1, p1, :cond_0

    aget-object v5, v0, v1

    mul-int v6, v3, p1

    add-int/2addr v6, v1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getEncoded([[S)[B
    .locals 8

    const/4 v1, 0x0

    array-length v3, p0

    aget-object v0, p0, v1

    array-length v4, v0

    mul-int v0, v3, v4

    new-array v5, v0, [B

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    mul-int v6, v2, v3

    add-int/2addr v6, v0

    aget-object v7, p0, v0

    aget-short v7, v7, v2

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v5
.end method

.method public static getEncoded([[[SZ)[B
    .locals 10

    const/4 v2, 0x0

    array-length v5, p0

    aget-object v0, p0, v2

    array-length v6, v0

    aget-object v0, p0, v2

    aget-object v0, v0, v2

    array-length v7, v0

    if-eqz p1, :cond_0

    add-int/lit8 v0, v6, 0x1

    mul-int/2addr v0, v6

    div-int/lit8 v0, v0, 0x2

    mul-int/2addr v0, v5

    :goto_0
    new-array v8, v0, [B

    move v4, v2

    move v0, v2

    :goto_1
    if-ge v4, v6, :cond_4

    move v3, v2

    :goto_2
    if-ge v3, v7, :cond_3

    move v1, v2

    :goto_3
    if-ge v1, v5, :cond_2

    if-eqz p1, :cond_1

    if-le v4, v3, :cond_1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    mul-int v0, v5, v6

    mul-int/2addr v0, v7

    goto :goto_0

    :cond_1
    aget-object v9, p0, v1

    aget-object v9, v9, v4

    aget-short v9, v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_4
    return-object v8
.end method

.method public static hash(Lorg/bouncycastle/crypto/Digest;[BI)[B
    .locals 6

    const/4 v5, 0x0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    array-length v0, p1

    invoke-interface {p0, p1, v5, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    new-array v1, v4, [B

    invoke-interface {p0, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    if-ne p2, v4, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    if-ge p2, v4, :cond_2

    invoke-static {v1, p2}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {v1, v4}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    sub-int v2, p2, v4

    move-object v3, v1

    :goto_1
    if-lt v2, v4, :cond_3

    invoke-interface {p0, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    new-array v3, v4, [B

    invoke-interface {p0, v3, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    sub-int v1, v2, v4

    move v2, v1

    goto :goto_1

    :cond_3
    if-lez v2, :cond_0

    invoke-interface {p0, v3, v5, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    new-array v1, v4, [B

    invoke-interface {p0, v1, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v3, v0

    add-int v4, v3, v2

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    invoke-static {v1, v5, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B
    .locals 5

    const/4 v4, 0x0

    invoke-interface {p0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    array-length v1, p1

    invoke-interface {p0, p1, v4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v1, p2

    invoke-interface {p0, p2, v4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v1, p3

    if-ne v1, v0, :cond_1

    invoke-interface {p0, p3, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :cond_0
    :goto_0
    return-object p3

    :cond_1
    new-array v2, v0, [B

    invoke-interface {p0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v1, p3

    if-ge v1, v0, :cond_2

    array-length v0, p3

    invoke-static {v2, v4, p3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_2
    array-length v1, v2

    invoke-static {v2, v4, p3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p3

    sub-int/2addr v1, v0

    :goto_1
    array-length v3, v2

    if-lt v1, v3, :cond_3

    array-length v3, v2

    invoke-interface {p0, v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v3, v2

    invoke-static {v2, v4, p3, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, v2

    sub-int/2addr v1, v3

    array-length v3, v2

    add-int/2addr v0, v3

    goto :goto_1

    :cond_3
    if-lez v1, :cond_0

    array-length v3, v2

    invoke-interface {p0, v2, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {v2, v4, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static loadEncoded([[S[BI)I
    .locals 7

    const/4 v1, 0x0

    array-length v3, p0

    aget-object v0, p0, v1

    array-length v4, v0

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_0

    aget-object v5, p0, v0

    mul-int v6, v2, v3

    add-int/2addr v6, p2

    add-int/2addr v6, v0

    aget-byte v6, p1, v6

    and-int/lit16 v6, v6, 0xff

    int-to-short v6, v6

    aput-short v6, v5, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    mul-int v0, v3, v4

    return v0
.end method

.method public static loadEncoded([[[S[BIZ)I
    .locals 10

    const/4 v3, 0x0

    array-length v6, p0

    aget-object v0, p0, v3

    array-length v7, v0

    aget-object v0, p0, v3

    aget-object v0, v0, v3

    array-length v8, v0

    move v5, v3

    move v0, v3

    :goto_0
    if-ge v5, v7, :cond_3

    move v4, v3

    :goto_1
    if-ge v4, v8, :cond_2

    move v2, v3

    :goto_2
    if-ge v2, v6, :cond_1

    if-eqz p3, :cond_0

    if-le v5, v4, :cond_0

    :goto_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_2

    :cond_0
    aget-object v1, p0, v2

    aget-object v9, v1, v5

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p2

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    int-to-short v0, v0

    aput-short v0, v9, v4

    move v0, v1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_0

    :cond_3
    return v0
.end method
