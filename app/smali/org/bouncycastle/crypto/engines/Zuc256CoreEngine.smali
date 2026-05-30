.class public Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;
.super Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;


# static fields
.field private static final EK_d:[B

.field private static final EK_d128:[B

.field private static final EK_d32:[B

.field private static final EK_d64:[B


# instance fields
.field private theD:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x10

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d32:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d64:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d128:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x22t
        0x2ft
        0x24t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_1
    .array-data 1
        0x22t
        0x2ft
        0x25t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_2
    .array-data 1
        0x23t
        0x2ft
        0x24t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data

    :array_3
    .array-data 1
        0x23t
        0x2ft
        0x25t
        0x2at
        0x6dt
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x40t
        0x52t
        0x10t
        0x30t
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>()V

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d32:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    :goto_0
    return-void

    :sswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d64:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    goto :goto_0

    :sswitch_2
    sget-object v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->EK_d128:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x20 -> :sswitch_0
        0x40 -> :sswitch_1
        0x80 -> :sswitch_2
    .end sparse-switch
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;)V

    return-void
.end method

.method private static MAKEU31(BBBB)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x17

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;)V

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Zuc-256"

    return-object v0
.end method

.method protected getMaxIterations()I
    .locals 1

    const/16 v0, 0x271

    return v0
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;

    invoke-super {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->reset(Lorg/bouncycastle/util/Memoable;)V

    iget-object v0, v0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    return-void
.end method

.method protected setKeyAndIV([I[B[B)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    array-length v0, p2

    const/16 v1, 0x20

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A key of 32 bytes is needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    const/16 v1, 0x19

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An IV of 25 bytes is needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    aget-byte v0, p2, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v1, v1, v4

    const/16 v2, 0x15

    aget-byte v2, p2, v2

    const/16 v3, 0x10

    aget-byte v3, p2, v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v0

    aput v0, p1, v4

    aget-byte v0, p2, v5

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v1, v1, v5

    const/16 v2, 0x16

    aget-byte v2, p2, v2

    const/16 v3, 0x11

    aget-byte v3, p2, v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v0

    aput v0, p1, v5

    aget-byte v0, p2, v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v1, v1, v6

    const/16 v2, 0x17

    aget-byte v2, p2, v2

    const/16 v3, 0x12

    aget-byte v3, p2, v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v0

    aput v0, p1, v6

    aget-byte v0, p2, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v1, v1, v7

    const/16 v2, 0x18

    aget-byte v2, p2, v2

    const/16 v3, 0x13

    aget-byte v3, p2, v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v0

    aput v0, p1, v7

    aget-byte v0, p2, v8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    aget-byte v1, v1, v8

    const/16 v2, 0x19

    aget-byte v2, p2, v2

    const/16 v3, 0x14

    aget-byte v3, p2, v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v0

    aput v0, p1, v8

    const/4 v0, 0x5

    aget-byte v1, p3, v4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/4 v3, 0x5

    aget-byte v2, v2, v3

    const/16 v3, 0x11

    aget-byte v3, p3, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x5

    aget-byte v3, p2, v3

    const/16 v4, 0x1a

    aget-byte v4, p2, v4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x6

    aget-byte v1, p3, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/4 v3, 0x6

    aget-byte v2, v2, v3

    const/16 v3, 0x12

    aget-byte v3, p3, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x6

    aget-byte v3, p2, v3

    const/16 v4, 0x1b

    aget-byte v4, p2, v4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/4 v0, 0x7

    const/16 v1, 0xa

    aget-byte v1, p3, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/4 v3, 0x7

    aget-byte v2, v2, v3

    const/16 v3, 0x13

    aget-byte v3, p3, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x7

    aget-byte v3, p2, v3

    aget-byte v4, p3, v6

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0x8

    const/16 v1, 0x8

    aget-byte v1, p2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v3, 0x8

    aget-byte v2, v2, v3

    const/16 v3, 0x14

    aget-byte v3, p3, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aget-byte v3, p3, v7

    const/16 v4, 0xb

    aget-byte v4, p3, v4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0x9

    const/16 v1, 0x9

    aget-byte v1, p2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v3, 0x9

    aget-byte v2, v2, v3

    const/16 v3, 0x15

    aget-byte v3, p3, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0xc

    aget-byte v3, p3, v3

    aget-byte v4, p3, v8

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0xa

    const/4 v1, 0x5

    aget-byte v1, p3, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v3, 0xa

    aget-byte v2, v2, v3

    const/16 v3, 0x16

    aget-byte v3, p3, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0xa

    aget-byte v3, p2, v3

    const/16 v4, 0x1c

    aget-byte v4, p2, v4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0xb

    const/16 v1, 0xb

    aget-byte v1, p2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v3, 0xb

    aget-byte v2, v2, v3

    const/16 v3, 0x17

    aget-byte v3, p3, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x6

    aget-byte v3, p3, v3

    const/16 v4, 0xd

    aget-byte v4, p3, v4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0xc

    const/16 v1, 0xc

    aget-byte v1, p2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v3, 0xc

    aget-byte v2, v2, v3

    const/16 v3, 0x18

    aget-byte v3, p3, v3

    and-int/lit8 v3, v3, 0x3f

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/4 v3, 0x7

    aget-byte v3, p3, v3

    const/16 v4, 0xe

    aget-byte v4, p3, v4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0xd

    const/16 v1, 0xd

    aget-byte v1, p2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v3, 0xd

    aget-byte v2, v2, v3

    const/16 v3, 0xf

    aget-byte v3, p3, v3

    const/16 v4, 0x8

    aget-byte v4, p3, v4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0xe

    const/16 v1, 0xe

    aget-byte v1, p2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v3, 0xe

    aget-byte v2, v2, v3

    const/16 v3, 0x1f

    aget-byte v3, p2, v3

    ushr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x10

    aget-byte v3, p3, v3

    const/16 v4, 0x9

    aget-byte v4, p3, v4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    const/16 v0, 0xf

    const/16 v1, 0xf

    aget-byte v1, p2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->theD:[B

    const/16 v3, 0xf

    aget-byte v2, v2, v3

    const/16 v3, 0x1f

    aget-byte v3, p2, v3

    and-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    const/16 v3, 0x1e

    aget-byte v3, p2, v3

    const/16 v4, 0x1d

    aget-byte v4, p2, v4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc256CoreEngine;->MAKEU31(BBBB)I

    move-result v1

    aput v1, p1, v0

    return-void
.end method
