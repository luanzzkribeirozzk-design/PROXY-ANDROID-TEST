.class public Lorg/bouncycastle/crypto/engines/XoodyakEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;
    }
.end annotation


# instance fields
.field private K:[B

.field private final MAXROUNDS:I

.field private final NCOLUMS:I

.field private final NLANES:I

.field private final NROWS:I

.field private final PhaseDown:I

.field private final PhaseUp:I

.field private final RC:[I

.field private Rabsorb:I

.field final Rkin:I

.field private final Rkout:I

.field private final TAGLEN:I

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private aadFinished:Z

.field private encrypted:Z

.field private final f_bPrime:I

.field private forEncryption:Z

.field private initialised:Z

.field private iv:[B

.field private final message:Ljava/io/ByteArrayOutputStream;

.field private mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

.field private phase:I

.field private state:[B

.field private tag:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->f_bPrime:I

    const/16 v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rkout:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->PhaseDown:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->PhaseUp:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->NLANES:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->NROWS:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->NCOLUMS:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->MAXROUNDS:I

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->TAGLEN:I

    const/16 v0, 0x2c

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rkin:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->RC:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    return-void

    :array_0
    .array-data 4
        0x58
        0x38
        0x3c0
        0xd0
        0x120
        0x14
        0x60
        0x2c
        0x380
        0xf0
        0x1a0
        0x12
    .end array-data
.end method

.method private AbsorbAny([BIIII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0, v0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    :cond_0
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0, p1, p2, v1, p5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Down([BIII)V

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    if-nez p3, :cond_1

    return-void

    :cond_1
    move p5, v0

    goto :goto_0
.end method

.method private ROTL32(II)I
    .locals 2

    and-int/lit8 v0, p2, 0x1f

    shl-int v0, p1, v0

    rsub-int/lit8 v1, p2, 0x20

    and-int/lit8 v1, v1, 0x1f

    ushr-int v1, p1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private Up([BII)V
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    sget-object v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeHash:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v1, 0x2f

    aget-byte v2, v0, v1

    xor-int/2addr v2, p3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_0
    const/16 v0, 0xc

    new-array v3, v0, [I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    array-length v4, v3

    invoke-static {v0, v1, v3, v2, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    const/16 v0, 0xc

    new-array v4, v0, [I

    const/4 v0, 0x4

    new-array v5, v0, [I

    const/4 v0, 0x4

    new-array v6, v0, [I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    const/16 v0, 0xc

    if-ge v2, v0, :cond_9

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v1

    aget v1, v3, v1

    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    aget v7, v3, v7

    xor-int/2addr v1, v7

    const/4 v7, 0x2

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    aget v7, v3, v7

    xor-int/2addr v1, v7

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, 0x3

    and-int/lit8 v1, v1, 0x3

    aget v1, v5, v1

    const/4 v7, 0x5

    invoke-direct {p0, v1, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v7

    const/16 v8, 0xe

    invoke-direct {p0, v1, v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v1

    xor-int/2addr v1, v7

    aput v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    :goto_3
    const/4 v0, 0x4

    if-ge v1, v0, :cond_4

    const/4 v0, 0x0

    :goto_4
    const/4 v7, 0x3

    if-ge v0, v7, :cond_3

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    aget v8, v3, v7

    aget v9, v6, v1

    xor-int/2addr v8, v9

    aput v8, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v1

    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    aget v7, v3, v7

    aput v7, v4, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v1

    add-int/lit8 v7, v0, 0x3

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    aget v7, v3, v7

    aput v7, v4, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v1

    const/4 v7, 0x2

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    aget v7, v3, v7

    const/16 v8, 0xb

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v7

    aput v7, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    aget v1, v4, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->RC:[I

    aget v7, v7, v2

    xor-int/2addr v1, v7

    aput v1, v4, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    const/4 v0, 0x4

    if-ge v1, v0, :cond_7

    const/4 v0, 0x0

    :goto_7
    const/4 v7, 0x3

    if-ge v0, v7, :cond_6

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v8

    aget v8, v4, v8

    add-int/lit8 v9, v0, 0x1

    invoke-direct {p0, v1, v9}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v9

    aget v9, v4, v9

    xor-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v0, 0x2

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v10

    aget v10, v4, v10

    and-int/2addr v9, v10

    xor-int/2addr v8, v9

    aput v8, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const/4 v1, 0x4

    if-ge v0, v1, :cond_8

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v1

    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    aget v7, v3, v7

    aput v7, v4, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v1

    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    aget v7, v3, v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v7

    aput v7, v4, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v1

    add-int/lit8 v7, v0, 0x2

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->index(II)I

    move-result v7

    aget v7, v3, v7

    const/16 v8, 0x8

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->ROTL32(II)I

    move-result v7

    aput v7, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v7, 0xc

    invoke-static {v4, v0, v3, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    array-length v1, v3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    if-eqz p1, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    return-void
.end method

.method private encrypt([BII[BI)I
    .locals 10

    const/16 v9, 0x18

    const/4 v1, 0x0

    new-array v5, v9, [B

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    move v4, p3

    move v2, p2

    :goto_1
    if-nez v4, :cond_0

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    if-nez v3, :cond_5

    :cond_0
    invoke-static {v4, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v3, :cond_1

    invoke-static {p1, v2, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v3, v1, v0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_3

    add-int v7, p5, v0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p1, v2

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    aget-byte v8, v8, v0

    xor-int/2addr v2, v8

    int-to-byte v2, v2

    aput-byte v2, p4, v7

    add-int/lit8 v0, v0, 0x1

    move v2, v3

    goto :goto_2

    :cond_2
    const/16 v0, 0x80

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0, v5, v1, v6, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Down([BIII)V

    :goto_3
    add-int/2addr p5, v6

    sub-int v3, v4, v6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    move v0, v1

    move v4, v3

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p4, p5, v6, v1}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Down([BIII)V

    goto :goto_3

    :cond_5
    return p3
.end method

.method private index(II)I
    .locals 2

    rem-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method

.method private processAAD()V
    .locals 6

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v1

    iget v4, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rabsorb:I

    const/4 v5, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->AbsorbAny([BIIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    :cond_0
    return-void
.end method

.method private reset(Z)V
    .locals 7

    const/16 v6, 0x2c

    const/4 v5, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypted:Z

    iput v5, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    array-length v3, v1

    new-array v1, v6, [B

    sget-object v4, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeKeyed:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    iput-object v4, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    iput v6, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rabsorb:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    invoke-static {v4, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    invoke-static {v4, v2, v1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, v0, v3

    int-to-byte v6, v3

    aput-byte v6, v1, v4

    add-int/2addr v0, v3

    add-int/lit8 v3, v0, 0x1

    iget v4, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Rabsorb:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->AbsorbAny([BIIII)V

    return-void
.end method


# virtual methods
.method Down([BIII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    aget-byte v3, v2, v0

    add-int/lit8 v1, p2, 0x1

    aget-byte v4, p1, p2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    move p2, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    aget-byte v1, v0, p3

    xor-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    const/16 v1, 0x2f

    aget-byte v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    sget-object v4, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeHash:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    if-ne v3, v4, :cond_1

    and-int/lit8 p4, p4, 0x1

    :cond_1
    xor-int/2addr v2, p4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->phase:I

    return-void
.end method

.method public doFinal([BI)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/16 v6, 0x40

    const/4 v2, 0x0

    const/16 v7, 0x10

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, v3, 0x10

    add-int/2addr v0, p2

    array-length v4, p1

    if-gt v0, v4, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-nez v0, :cond_3

    add-int/lit8 v0, v3, -0x10

    add-int/2addr v0, p2

    array-length v4, p1

    if-le v0, v4, :cond_3

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->processAAD()V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v0, :cond_5

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypt([BII[BI)I

    add-int v0, p2, v3

    new-array v1, v7, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    invoke-direct {p0, v1, v7, v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    invoke-static {v1, v2, p1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x10

    :cond_4
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->reset(Z)V

    return v3

    :cond_5
    add-int/lit8 v3, v3, -0x10

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypt([BII[BI)I

    new-array v0, v7, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    invoke-direct {p0, v0, v7, v6}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->Up([BII)V

    move v0, v2

    move v4, v3

    :goto_0
    if-ge v0, v7, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    aget-byte v6, v5, v0

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, v1, v4

    if-eq v6, v4, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mac does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Xoodyak AEAD"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x18

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x10

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v4, 0x10

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Xoodyak init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->iv:[B

    array-length v1, v1

    if-eq v1, v4, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Xoodyak requires exactly 16 bytes of IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Xoodyak init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->K:[B

    array-length v0, v0

    if-eq v0, v4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Xoodyak key must be 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    const/16 v0, 0x30

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->state:[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->tag:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->reset()V

    return-void
.end method

.method public processAADByte(B)V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AAD cannot be added after reading a full block("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes) of input for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    const-string v0, "encryption"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "decryption"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadFinished:Z

    if-eqz v0, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AAD cannot be added after reading a full block("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " bytes) of input for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    const-string v0, "encryption"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "decryption"

    goto :goto_0

    :cond_1
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public processByte(B[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v1, v3, [B

    aput-byte p1, v1, v2

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->mode:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    sget-object v1, Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;->ModeKeyed:Lorg/bouncycastle/crypto/engines/XoodyakEngine$MODE;

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Xoodyak has not been initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_0
    sub-int v0, v1, v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v1

    if-lt v0, v1, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v3

    div-int/2addr v0, v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->getBlockSize()I

    move-result v3

    mul-int/2addr v3, v0

    add-int v0, v3, p5

    array-length v4, p4

    if-le v0, v4, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    const/16 v0, 0x10

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->processAAD()V

    move-object v0, p0

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->encrypt([BII[BI)I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->message:Ljava/io/ByteArrayOutputStream;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_1
    return v3

    :cond_5
    move v3, v2

    goto :goto_1
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/XoodyakEngine;->reset(Z)V

    return-void
.end method
