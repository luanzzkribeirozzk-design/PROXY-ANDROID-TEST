.class public Lorg/bouncycastle/crypto/engines/NoekeonEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final SIZE:I = 0x10

.field private static final roundConstants:[B


# instance fields
.field private _forEncryption:Z

.field private _initialised:Z

.field private final k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x1bt
        0x36t
        0x6ct
        -0x28t
        -0x55t
        0x4dt
        -0x66t
        0x2ft
        0x5et
        -0x44t
        0x63t
        -0x3at
        -0x69t
        0x35t
        0x6at
        -0x2ct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 15

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v6

    add-int/lit8 v2, p2, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v5

    add-int/lit8 v2, p2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v4

    add-int/lit8 v2, p2, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v7, 0x0

    aget v7, v2, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v8, 0x1

    aget v8, v2, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v9, 0x2

    aget v9, v2, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v10, 0x3

    aget v10, v2, v10

    const/16 v2, 0x10

    :goto_0
    xor-int v11, v6, v4

    const/16 v12, 0x8

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    const/16 v13, 0x18

    invoke-static {v11, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v13

    xor-int/2addr v12, v13

    xor-int/2addr v11, v12

    xor-int/2addr v6, v7

    xor-int/2addr v5, v8

    xor-int/2addr v4, v9

    xor-int/2addr v3, v10

    xor-int v12, v5, v3

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v13

    const/16 v14, 0x18

    invoke-static {v12, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v14

    xor-int/2addr v13, v14

    xor-int/2addr v12, v13

    xor-int/2addr v6, v12

    xor-int/2addr v5, v11

    xor-int/2addr v4, v12

    xor-int/2addr v3, v11

    sget-object v11, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[B

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0xff

    xor-int/2addr v6, v11

    add-int/lit8 v2, v2, -0x1

    if-gez v2, :cond_0

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v6, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v2, p4, 0x4

    move-object/from16 v0, p3

    invoke-static {v5, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v2, p4, 0x8

    move-object/from16 v0, p3

    invoke-static {v4, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v2, p4, 0xc

    move-object/from16 v0, p3

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/16 v2, 0x10

    return v2

    :cond_0
    const/4 v11, 0x1

    invoke-static {v5, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    const/4 v11, 0x5

    invoke-static {v4, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v4

    const/4 v11, 0x2

    invoke-static {v3, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    or-int v11, v3, v4

    xor-int/2addr v5, v11

    xor-int/lit8 v11, v5, -0x1

    and-int/2addr v11, v4

    xor-int/2addr v11, v6

    xor-int/lit8 v6, v5, -0x1

    xor-int/2addr v6, v3

    xor-int/2addr v4, v6

    xor-int/2addr v4, v11

    or-int v6, v11, v4

    xor-int/2addr v5, v6

    and-int v6, v4, v5

    xor-int/2addr v6, v3

    const/16 v3, 0x1f

    invoke-static {v5, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    const/16 v3, 0x1b

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v4

    const/16 v3, 0x1e

    invoke-static {v11, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    goto/16 :goto_0
.end method

.method private encryptBlock([BI[BI)I
    .locals 15

    invoke-static/range {p1 .. p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v6

    add-int/lit8 v2, p2, 0x4

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v5

    add-int/lit8 v2, p2, 0x8

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v4

    add-int/lit8 v2, p2, 0xc

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v7, 0x0

    aget v7, v2, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v8, 0x1

    aget v8, v2, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v9, 0x2

    aget v9, v2, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v10, 0x3

    aget v10, v2, v10

    const/4 v2, 0x0

    :goto_0
    sget-object v11, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->roundConstants:[B

    aget-byte v11, v11, v2

    and-int/lit16 v11, v11, 0xff

    xor-int/2addr v6, v11

    xor-int v11, v6, v4

    const/16 v12, 0x8

    invoke-static {v11, v12}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v12

    const/16 v13, 0x18

    invoke-static {v11, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v13

    xor-int/2addr v12, v13

    xor-int/2addr v11, v12

    xor-int/2addr v6, v7

    xor-int/2addr v5, v8

    xor-int/2addr v4, v9

    xor-int/2addr v3, v10

    xor-int v12, v5, v3

    const/16 v13, 0x8

    invoke-static {v12, v13}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v13

    const/16 v14, 0x18

    invoke-static {v12, v14}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v14

    xor-int/2addr v13, v14

    xor-int/2addr v12, v13

    xor-int/2addr v6, v12

    xor-int/2addr v5, v11

    xor-int/2addr v4, v12

    xor-int/2addr v3, v11

    add-int/lit8 v2, v2, 0x1

    const/16 v11, 0x10

    if-le v2, v11, :cond_0

    move-object/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v6, v0, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v2, p4, 0x4

    move-object/from16 v0, p3

    invoke-static {v5, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v2, p4, 0x8

    move-object/from16 v0, p3

    invoke-static {v4, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    add-int/lit8 v2, p4, 0xc

    move-object/from16 v0, p3

    invoke-static {v3, v0, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    const/16 v2, 0x10

    return v2

    :cond_0
    const/4 v11, 0x1

    invoke-static {v5, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    const/4 v11, 0x5

    invoke-static {v4, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v4

    const/4 v11, 0x2

    invoke-static {v3, v11}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    or-int v11, v3, v4

    xor-int/2addr v5, v11

    xor-int/lit8 v11, v5, -0x1

    and-int/2addr v11, v4

    xor-int/2addr v11, v6

    xor-int/lit8 v6, v5, -0x1

    xor-int/2addr v6, v3

    xor-int/2addr v4, v6

    xor-int/2addr v4, v11

    or-int v6, v11, v4

    xor-int/2addr v5, v6

    and-int v6, v4, v5

    xor-int/2addr v6, v3

    const/16 v3, 0x1f

    invoke-static {v5, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    const/16 v3, 0x1b

    invoke-static {v4, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v4

    const/16 v3, 0x1e

    invoke-static {v11, v3}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v3

    goto/16 :goto_0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Noekeon"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 12

    const/16 v7, 0x8

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to Noekeon init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v1, v0

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length not 128 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    const/4 v2, 0x4

    invoke-static {v0, v8, v1, v8, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI[III)V

    if-nez p1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aget v0, v0, v8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aget v1, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aget v2, v2, v10

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aget v3, v3, v11

    xor-int v4, v0, v2

    invoke-static {v4, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v5

    const/16 v6, 0x18

    invoke-static {v4, v6}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    xor-int/2addr v5, v6

    xor-int/2addr v4, v5

    xor-int v5, v1, v3

    invoke-static {v5, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v6

    const/16 v7, 0x18

    invoke-static {v5, v7}, Lorg/bouncycastle/util/Integers;->rotateLeft(II)I

    move-result v7

    xor-int/2addr v6, v7

    xor-int/2addr v5, v6

    xor-int/2addr v0, v5

    xor-int/2addr v1, v4

    xor-int/2addr v2, v5

    xor-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aput v0, v4, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aput v1, v0, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aput v2, v0, v10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->k:[I

    aput v3, v0, v11

    :cond_2
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    iput-boolean v9, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not initialised"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x10

    if-le p2, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p3

    add-int/lit8 v0, v0, -0x10

    if-le p4, v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->_forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/NoekeonEngine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
