.class public Lorg/bouncycastle/crypto/digests/XoodyakDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;
    }
.end annotation


# instance fields
.field private final MAXROUNDS:I

.field private final NCOLUMS:I

.field private final NLANES:I

.field private final NROWS:I

.field private final PhaseDown:I

.field private final PhaseUp:I

.field private final RC:[I

.field private Rabsorb:I

.field private final Rhash:I

.field private final TAGLEN:I

.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private final f_bPrime:I

.field private mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

.field private phase:I

.field private state:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x30

    const/16 v2, 0x10

    const/16 v1, 0xc

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->f_bPrime:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Rhash:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->PhaseDown:I

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->PhaseUp:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->NLANES:I

    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->NROWS:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->NCOLUMS:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->MAXROUNDS:I

    iput v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->TAGLEN:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    new-array v0, v3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->reset()V

    return-void

    nop

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

.method private Up([BIII)V
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v1, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v1, 0x2f

    aget-byte v2, v0, v1

    xor-int/2addr v2, p4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_0
    const/16 v0, 0xc

    new-array v3, v0, [I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

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

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v1

    aget v1, v3, v1

    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v7

    aget v7, v3, v7

    xor-int/2addr v1, v7

    const/4 v7, 0x2

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

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

    invoke-direct {p0, v1, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v7

    const/16 v8, 0xe

    invoke-direct {p0, v1, v8}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

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

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

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

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v1

    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v7

    aget v7, v3, v7

    aput v7, v4, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v1

    add-int/lit8 v7, v0, 0x3

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v7

    aget v7, v3, v7

    aput v7, v4, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v1

    const/4 v7, 0x2

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v7

    aget v7, v3, v7

    const/16 v8, 0xb

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v7

    aput v7, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    const/4 v0, 0x0

    aget v1, v4, v0

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->RC:[I

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

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v7

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v8

    aget v8, v4, v8

    add-int/lit8 v9, v0, 0x1

    invoke-direct {p0, v1, v9}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v9

    aget v9, v4, v9

    xor-int/lit8 v9, v9, -0x1

    add-int/lit8 v10, v0, 0x2

    invoke-direct {p0, v1, v10}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

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

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v1

    const/4 v7, 0x0

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v7

    aget v7, v3, v7

    aput v7, v4, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v1

    const/4 v7, 0x1

    invoke-direct {p0, v0, v7}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v7

    aget v7, v3, v7

    const/4 v8, 0x1

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

    move-result v7

    aput v7, v4, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v1

    add-int/lit8 v7, v0, 0x2

    const/4 v8, 0x2

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->index(II)I

    move-result v7

    aget v7, v3, v7

    const/16 v8, 0x8

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->ROTL32(II)I

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

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v4, 0x0

    invoke-static {v3, v0, v1, v2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    if-eqz p1, :cond_a

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_a
    return-void
.end method

.method private index(II)I
    .locals 2

    rem-int/lit8 v0, p2, 0x3

    mul-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p1, 0x4

    add-int/2addr v0, v1

    return v0
.end method


# virtual methods
.method Down([BIII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

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
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    aget-byte v1, v0, p3

    xor-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, p3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/16 v1, 0x2f

    aget-byte v2, v0, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    sget-object v4, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    if-ne v3, v4, :cond_1

    and-int/lit8 p4, p4, 0x1

    :cond_1
    xor-int/2addr v2, p4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    return-void
.end method

.method public doFinal([BI)I
    .locals 9

    const/4 v8, 0x0

    const/16 v7, 0x10

    const/4 v1, 0x0

    add-int/lit8 v0, p2, 0x20

    array-length v2, p1

    if-le v0, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/4 v0, 0x3

    move v3, v1

    :goto_0
    iget v5, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    invoke-direct {p0, v8, v1, v1, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    :cond_1
    iget v5, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v4, v3, v5, v0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    add-int/2addr v3, v5

    sub-int/2addr v2, v5

    if-nez v2, :cond_2

    const/16 v0, 0x40

    invoke-direct {p0, p1, p2, v7, v0}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    invoke-virtual {p0, v8, v1, v1, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Down([BIII)V

    add-int/lit8 v0, p2, 0x10

    invoke-direct {p0, p1, v0, v7, v1}, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Up([BIII)V

    const/16 v0, 0x20

    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Xoodyak Hash"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->phase:I

    sget-object v0, Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;->ModeHash:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->mode:Lorg/bouncycastle/crypto/digests/XoodyakDigest$MODE;

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->Rabsorb:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/XoodyakDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
