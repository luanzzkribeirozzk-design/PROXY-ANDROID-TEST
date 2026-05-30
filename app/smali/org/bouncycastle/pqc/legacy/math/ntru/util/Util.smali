.class public Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;
.super Ljava/lang/Object;


# static fields
.field private static volatile IS_64_BITNESS_KNOWN:Z

.field private static volatile IS_64_BIT_JVM:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateRandomTernary(IIIZLjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;
    .locals 1

    if-eqz p3, :cond_0

    invoke-static {p0, p1, p2, p4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1, p2, p4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->generateRandom(IIILjava/security/SecureRandom;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v0

    goto :goto_0
.end method

.method public static generateRandomTernary(IIILjava/security/SecureRandom;)[I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v1, -0x1

    invoke-static {v1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_1

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, p0, :cond_2

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    invoke-static {v5, p3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    new-array v2, p0, [I

    move v1, v0

    :goto_3
    if-ge v1, p0, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    return-object v2
.end method

.method public static invert(II)I
    .locals 1

    rem-int v0, p0, p1

    if-gez v0, :cond_0

    add-int/2addr v0, p1

    :cond_0
    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->calculate(II)Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;

    move-result-object v0

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->x:I

    return v0
.end method

.method public static is64BitJVM()Z
    .locals 4

    const/4 v1, 0x1

    sget-boolean v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BITNESS_KNOWN:Z

    if-nez v0, :cond_1

    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sun.arch.data.model"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "amd64"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "x86_64"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "ppc64"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BIT_JVM:Z

    sput-boolean v1, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BITNESS_KNOWN:Z

    :cond_1
    sget-boolean v0, Lorg/bouncycastle/pqc/legacy/math/ntru/util/Util;->IS_64_BIT_JVM:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static pow(III)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/2addr v1, p0

    rem-int/2addr v1, p2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public static pow(JIJ)J
    .locals 4

    const-wide/16 v2, 0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    mul-long/2addr v2, p0

    rem-long/2addr v2, p3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public static readFullLength(Ljava/io/InputStream;I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-array v0, p1, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    array-length v2, v0

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not enough bytes to read."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method
