.class public Lorg/bouncycastle/crypto/engines/LEAEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field private static final BASEROUNDS:I = 0x10

.field private static final BLOCKSIZE:I = 0x10

.field private static final DELTA:[I

.field private static final KEY0:I = 0x0

.field private static final KEY1:I = 0x1

.field private static final KEY2:I = 0x2

.field private static final KEY3:I = 0x3

.field private static final KEY4:I = 0x4

.field private static final KEY5:I = 0x5

.field private static final MASK128:I = 0x3

.field private static final MASK256:I = 0x7

.field private static final NUMWORDS:I = 0x4

.field private static final NUMWORDS128:I = 0x4

.field private static final NUMWORDS192:I = 0x6

.field private static final NUMWORDS256:I = 0x8

.field private static final ROT1:I = 0x1

.field private static final ROT11:I = 0xb

.field private static final ROT13:I = 0xd

.field private static final ROT17:I = 0x11

.field private static final ROT3:I = 0x3

.field private static final ROT5:I = 0x5

.field private static final ROT6:I = 0x6

.field private static final ROT9:I = 0x9


# instance fields
.field private forEncryption:Z

.field private final theBlock:[I

.field private theRoundKeys:[[I

.field private theRounds:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    return-void

    :array_0
    .array-data 4
        -0x3c101625
        0x44626b02
        0x79e27c8a
        0x78df30ec
        0x715ea49e
        -0x387a25f6
        -0x1fb10dd6
        -0x1a3bf6a9
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    return-void
.end method

.method private static bufLength([B)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    goto :goto_0
.end method

.method private static checkBuffer([BIZ)V
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->bufLength([B)I

    move-result v1

    add-int/lit8 v2, p1, 0x10

    if-ltz p1, :cond_0

    if-gez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    if-le v2, v1, :cond_4

    :cond_1
    if-eqz p2, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private decryptBlock([BI[BI)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-static {p1, p2, v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->decryptRound(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    const/16 v0, 0x10

    return v0
.end method

.method private decryptRound(I)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v0, v0, p1

    rem-int/lit8 v1, p1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rightIndex(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v2

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->ror32(II)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v1, v5, v1

    const/4 v5, 0x0

    aget v5, v0, v5

    xor-int/2addr v1, v5

    sub-int v1, v4, v1

    const/4 v4, 0x1

    aget v4, v0, v4

    xor-int/2addr v1, v4

    aput v1, v3, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rightIndex(I)I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v1

    invoke-static {v4, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v2, v5, v2

    const/4 v5, 0x2

    aget v5, v0, v5

    xor-int/2addr v2, v5

    sub-int v2, v4, v2

    aget v4, v0, v6

    xor-int/2addr v2, v4

    aput v2, v3, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rightIndex(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v2

    invoke-static {v4, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v1, v5, v1

    const/4 v5, 0x4

    aget v5, v0, v5

    xor-int/2addr v1, v5

    sub-int v1, v4, v1

    aget v0, v0, v7

    xor-int/2addr v0, v1

    aput v0, v3, v2

    return-void
.end method

.method private encryptBlock([BI[BI)I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    const/4 v2, 0x4

    invoke-static {p1, p2, v1, v0, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->encryptRound(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    const/16 v0, 0x10

    return v0
.end method

.method private encryptRound(I)V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v0, v0, p1

    add-int/lit8 v1, p1, 0x3

    rem-int/lit8 v1, v1, 0x4

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->leftIndex(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v2

    const/4 v5, 0x4

    aget v5, v0, v5

    xor-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v5, v5, v1

    aget v6, v0, v8

    xor-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-static {v4, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->ror32(II)I

    move-result v4

    aput v4, v3, v1

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->leftIndex(I)I

    move-result v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v1

    const/4 v5, 0x2

    aget v5, v0, v5

    xor-int/2addr v4, v5

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v5, v5, v2

    aget v6, v0, v7

    xor-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-static {v4, v8}, Lorg/bouncycastle/crypto/engines/LEAEngine;->ror32(II)I

    move-result v4

    aput v4, v3, v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->leftIndex(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v2, v4, v2

    const/4 v4, 0x0

    aget v4, v0, v4

    xor-int/2addr v2, v4

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theBlock:[I

    aget v4, v4, v1

    const/4 v5, 0x1

    aget v0, v0, v5

    xor-int/2addr v0, v4

    add-int/2addr v0, v2

    const/16 v2, 0x9

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v0

    aput v0, v3, v1

    return-void
.end method

.method private generate128RoundKeys([I)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/4 v5, 0x1

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    and-int/lit8 v3, v0, 0x3

    aget v2, v2, v3

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aget v3, p1, v1

    add-int/2addr v3, v2

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v1

    aget v3, p1, v5

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v5

    aget v3, p1, v7

    invoke-static {v2, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    add-int/2addr v3, v4

    const/4 v4, 0x6

    invoke-static {v3, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v7

    aget v3, p1, v6

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    add-int/2addr v2, v3

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v2, v2, v0

    aget v3, p1, v1

    aput v3, v2, v1

    aget v3, p1, v5

    aput v3, v2, v5

    aget v3, p1, v7

    aput v3, v2, v7

    aget v3, p1, v5

    aput v3, v2, v6

    const/4 v3, 0x4

    aget v4, p1, v6

    aput v4, v2, v3

    const/4 v3, 0x5

    aget v4, p1, v5

    aput v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generate192RoundKeys([I)V
    .locals 10

    const/4 v9, 0x6

    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v0, v2, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    rem-int/lit8 v3, v0, 0x6

    aget v2, v2, v3

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aget v3, p1, v1

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v1

    aget v3, p1, v7

    const/4 v4, 0x2

    invoke-static {v2, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v7

    aget v3, p1, v4

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v3, v5

    invoke-static {v3, v9}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v4

    aget v3, p1, v8

    const/4 v4, 0x4

    invoke-static {v2, v8}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    add-int/2addr v3, v5

    const/16 v5, 0xb

    invoke-static {v3, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v8

    aget v3, p1, v4

    const/4 v5, 0x5

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    add-int/2addr v3, v6

    const/16 v6, 0xd

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    aput v3, p1, v4

    aget v3, p1, v5

    invoke-static {v2, v5}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    add-int/2addr v2, v3

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, p1, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v2, v2, v0

    invoke-static {p1, v1, v2, v1, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private generate256RoundKeys([I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    if-ge v0, v3, :cond_0

    sget-object v3, Lorg/bouncycastle/crypto/engines/LEAEngine;->DELTA:[I

    and-int/lit8 v4, v0, 0x7

    aget v3, v3, v4

    invoke-static {v3, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    aget-object v4, v4, v0

    and-int/lit8 v5, v2, 0x7

    aget v5, p1, v5

    add-int/2addr v5, v3

    invoke-static {v5, v8}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    aput v5, v4, v1

    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v2, v2, 0x7

    aget v6, v4, v1

    aput v6, p1, v2

    and-int/lit8 v2, v5, 0x7

    aget v2, p1, v2

    invoke-static {v3, v8}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    add-int/2addr v2, v6

    invoke-static {v2, v9}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, v4, v8

    add-int/lit8 v2, v5, 0x1

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x2

    aget v7, v4, v8

    aput v7, p1, v5

    and-int/lit8 v5, v2, 0x7

    aget v5, p1, v5

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v7

    add-int/2addr v5, v7

    const/4 v7, 0x6

    invoke-static {v5, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    aput v5, v4, v6

    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v2, v2, 0x7

    aget v6, v4, v6

    aput v6, p1, v2

    and-int/lit8 v2, v5, 0x7

    aget v2, p1, v2

    invoke-static {v3, v9}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v6

    add-int/2addr v2, v6

    const/16 v6, 0xb

    invoke-static {v2, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, v4, v9

    add-int/lit8 v2, v5, 0x1

    and-int/lit8 v5, v5, 0x7

    const/4 v6, 0x4

    aget v7, v4, v9

    aput v7, p1, v5

    and-int/lit8 v5, v2, 0x7

    aget v5, p1, v5

    invoke-static {v3, v6}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v7

    add-int/2addr v5, v7

    const/16 v7, 0xd

    invoke-static {v5, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v5

    aput v5, v4, v6

    add-int/lit8 v5, v2, 0x1

    and-int/lit8 v2, v2, 0x7

    const/4 v7, 0x5

    aget v6, v4, v6

    aput v6, p1, v2

    and-int/lit8 v2, v5, 0x7

    aget v2, p1, v2

    invoke-static {v3, v7}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x11

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/LEAEngine;->rol32(II)I

    move-result v2

    aput v2, v4, v7

    add-int/lit8 v2, v5, 0x1

    and-int/lit8 v3, v5, 0x7

    aget v4, v4, v7

    aput v4, p1, v3

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method private generateRoundKeys([B)V
    .locals 3

    const/4 v2, 0x0

    array-length v0, p1

    shr-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRounds:I

    const/4 v1, 0x6

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->theRoundKeys:[[I

    array-length v0, p1

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [I

    invoke-static {p1, v2, v1, v2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generate256RoundKeys([I)V

    :goto_0
    return-void

    :pswitch_1
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generate128RoundKeys([I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generate192RoundKeys([I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private static leftIndex(I)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x3

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    goto :goto_0
.end method

.method private static rightIndex(I)I
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, 0x1

    goto :goto_0
.end method

.method private static rol32(II)I
    .locals 2

    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method private static ror32(II)I
    .locals 2

    ushr-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    shl-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "LEA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid parameter passed to LEA init - "

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

    shl-int/lit8 v2, v1, 0x1

    rem-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    const/16 v2, 0x20

    if-le v1, v2, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyBitSize must be 128, 192 or 256"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->forEncryption:Z

    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v1, v1, 0x8

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->forEncryption:Z

    invoke-static {v4}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v2, v3, v1, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->generateRoundKeys([B)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->checkBuffer([BIZ)V

    const/4 v0, 0x1

    invoke-static {p3, p4, v0}, Lorg/bouncycastle/crypto/engines/LEAEngine;->checkBuffer([BIZ)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/LEAEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->encryptBlock([BI[BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/crypto/engines/LEAEngine;->decryptBlock([BI[BI)I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method
