.class public Lorg/bouncycastle/crypto/generators/SCrypt;
.super Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BlockMix([I[I[I[II)V
    .locals 7

    const/16 v6, 0x10

    const/4 v2, 0x0

    array-length v0, p0

    add-int/lit8 v0, v0, -0x10

    invoke-static {p0, v0, p1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, p0

    ushr-int/lit8 v4, v0, 0x1

    mul-int/lit8 v0, p4, 0x2

    move v1, v2

    move v3, v2

    :goto_0
    if-lez v0, :cond_0

    invoke-static {p1, p0, v3, p2}, Lorg/bouncycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    const/16 v5, 0x8

    invoke-static {v5, p2, p1}, Lorg/bouncycastle/crypto/engines/Salsa20Engine;->salsaCore(I[I[I)V

    invoke-static {p1, v2, p3, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v5, v4, v3

    sub-int v1, v5, v1

    add-int/lit8 v3, v3, 0x10

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static Clear([B)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    :cond_0
    return-void
.end method

.method private static Clear([I)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method private static ClearAll([[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static MFcrypt([B[BIIII)[B
    .locals 9

    const/4 v0, 0x0

    mul-int/lit16 v4, p3, 0x80

    mul-int v1, p4, v4

    invoke-static {p0, p1, v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B

    move-result-object v5

    const/4 v1, 0x0

    :try_start_0
    array-length v2, v5

    ushr-int/lit8 v6, v2, 0x2

    new-array v1, v6, [I

    const/4 v2, 0x0

    invoke-static {v5, v2, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    mul-int v2, p2, p3

    move v3, v0

    :goto_0
    sub-int v7, p2, v3

    const/4 v8, 0x2

    if-le v7, v8, :cond_0

    const/16 v7, 0x400

    if-le v2, v7, :cond_0

    add-int/lit8 v3, v3, 0x1

    ushr-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    ushr-int/lit8 v2, v4, 0x2

    :goto_1
    if-ge v0, v6, :cond_1

    invoke-static {v1, v0, p2, v3, p3}, Lorg/bouncycastle/crypto/generators/SCrypt;->SMix([IIIII)V

    add-int/2addr v0, v2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    invoke-static {v1, v5, v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    invoke-static {p0, v5, p5}, Lorg/bouncycastle/crypto/generators/SCrypt;->SingleIterationPBKDF2([B[BI)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    invoke-static {v5}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/generators/SCrypt;->Clear([I)V

    throw v0
.end method

.method private static SMix([IIIII)V
    .locals 17

    invoke-static/range {p2 .. p2}, Lorg/bouncycastle/util/Integers;->numberOfTrailingZeros(I)I

    move-result v2

    ushr-int v5, p2, p3

    const/4 v3, 0x1

    shl-int v6, v3, p3

    add-int/lit8 v7, v5, -0x1

    sub-int v8, v2, p3

    mul-int/lit8 v9, p4, 0x20

    const/16 v2, 0x10

    new-array v10, v2, [I

    const/16 v2, 0x10

    new-array v11, v2, [I

    new-array v12, v9, [I

    new-array v13, v9, [I

    new-array v14, v6, [[I

    const/4 v2, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v0, v1, v13, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    if-ge v4, v6, :cond_1

    mul-int v2, v5, v9

    new-array v15, v2, [I

    aput-object v15, v14, v4

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_0

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v13, v0, v15, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v9

    move/from16 v0, p4

    invoke-static {v13, v10, v11, v12, v0}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v12, v0, v15, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v9

    move/from16 v0, p4

    invoke-static {v12, v10, v11, v13, v0}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v3, p2, -0x1

    const/4 v2, 0x0

    :goto_2
    move/from16 v0, p2

    if-ge v2, v0, :cond_2

    add-int/lit8 v4, v9, -0x10

    aget v4, v13, v4

    and-int/2addr v4, v3

    ushr-int v5, v4, v8

    aget-object v5, v14, v5

    and-int/2addr v4, v7

    mul-int/2addr v4, v9

    const/4 v6, 0x0

    invoke-static {v5, v4, v12, v6, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v4, 0x0

    invoke-static {v12, v13, v4, v12}, Lorg/bouncycastle/crypto/generators/SCrypt;->Xor([I[II[I)V

    move/from16 v0, p4

    invoke-static {v12, v10, v11, v13, v0}, Lorg/bouncycastle/crypto/generators/SCrypt;->BlockMix([I[I[I[II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {v13, v2, v0, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v14}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    const/4 v2, 0x4

    new-array v2, v2, [[I

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    const/4 v3, 0x2

    aput-object v11, v2, v3

    const/4 v3, 0x3

    aput-object v12, v2, v3

    invoke-static {v2}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v14}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    const/4 v3, 0x4

    new-array v3, v3, [[I

    const/4 v4, 0x0

    aput-object v13, v3, v4

    const/4 v4, 0x1

    aput-object v10, v3, v4

    const/4 v4, 0x2

    aput-object v11, v3, v4

    const/4 v4, 0x3

    aput-object v12, v3, v4

    invoke-static {v3}, Lorg/bouncycastle/crypto/generators/SCrypt;->ClearAll([[I)V

    throw v2
.end method

.method private static SingleIterationPBKDF2([B[BI)[B
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;

    invoke-static {}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->newInstance()Lorg/bouncycastle/crypto/SavableDigest;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/PKCS5S2ParametersGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    const/4 v1, 0x1

    invoke-virtual {v0, p0, p1, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->init([B[BI)V

    mul-int/lit8 v1, p2, 0x8

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/PBEParametersGenerator;->generateDerivedMacParameters(I)Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    return-object v0
.end method

.method private static Xor([I[II[I)V
    .locals 3

    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget v1, p0, v0

    add-int v2, p2, v0

    aget v2, p1, v2

    xor-int/2addr v1, v2

    aput v1, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static generate([B[BIIII)[B
    .locals 4

    const/4 v2, 0x1

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Passphrase P must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Salt S must be provided."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-le p2, v2, :cond_2

    invoke-static {p2}, Lorg/bouncycastle/crypto/generators/SCrypt;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cost parameter N must be > 1 and a power of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-ne p3, v2, :cond_4

    const/high16 v0, 0x10000

    if-lt p2, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cost parameter N must be > 1 and < 65536."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ge p3, v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Block size r must be >= 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    const v0, 0x7fffffff

    mul-int/lit16 v1, p3, 0x80

    mul-int/lit8 v1, v1, 0x8

    div-int/2addr v0, v1

    if-lt p4, v2, :cond_6

    if-le p4, v0, :cond_7

    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Parallelisation parameter p must be >= 1 and <= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (based on block size r of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    if-ge p5, v2, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Generated key length dkLen must be >= 1."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    invoke-static/range {p0 .. p5}, Lorg/bouncycastle/crypto/generators/SCrypt;->MFcrypt([B[BIIII)[B

    move-result-object v0

    return-object v0
.end method

.method private static isPowerOf2(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
