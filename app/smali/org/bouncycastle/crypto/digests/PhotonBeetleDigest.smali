.class public Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# instance fields
.field private D:I

.field private DSquare:I

.field private Dq:I

.field private Dr:I

.field private final INITIAL_RATE_INBYTES:I

.field private LAST_THREE_BITS_OFFSET:I

.field private MixColMatrix:[[B

.field private RATE_INBYTES:I

.field private RC:[[B

.field private ROUND:I

.field private S:I

.field private SQUEEZE_RATE_INBYTES:I

.field private STATE_INBYTES:I

.field private S_1:I

.field private TAG_INBYTES:I

.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private sbox:[B

.field private state:[B

.field private state_2d:[[B


# direct methods
.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/16 v4, 0xc

    const/16 v3, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->INITIAL_RATE_INBYTES:I

    iput v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    iput v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    iput v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->ROUND:I

    iput v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    iput v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    const/4 v0, 0x7

    iput v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    iput v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->S:I

    iput v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->S_1:I

    new-array v0, v3, [[B

    const/4 v1, 0x0

    new-array v2, v4, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v4, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v4, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v1, v4, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    new-array v1, v4, [B

    fill-array-data v1, :array_4

    aput-object v1, v0, v6

    new-array v1, v4, [B

    fill-array-data v1, :array_5

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v2, v4, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RC:[[B

    new-array v0, v3, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_b

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    new-array v1, v3, [B

    fill-array-data v1, :array_d

    aput-object v1, v0, v7

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->MixColMatrix:[[B

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_10

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->sbox:[B

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    iget v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    return-void

    :array_0
    .array-data 1
        0x1t
        0x3t
        0x7t
        0xet
        0xdt
        0xbt
        0x6t
        0xct
        0x9t
        0x2t
        0x5t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x6t
        0xft
        0xct
        0xat
        0x7t
        0xdt
        0x8t
        0x3t
        0x4t
        0xbt
    .end array-data

    :array_2
    .array-data 1
        0x2t
        0x0t
        0x4t
        0xdt
        0xet
        0x8t
        0x5t
        0xft
        0xat
        0x1t
        0x6t
        0x9t
    .end array-data

    :array_3
    .array-data 1
        0x6t
        0x4t
        0x0t
        0x9t
        0xat
        0xct
        0x1t
        0xbt
        0xet
        0x5t
        0x2t
        0xdt
    .end array-data

    :array_4
    .array-data 1
        0xet
        0xct
        0x8t
        0x1t
        0x2t
        0x4t
        0x9t
        0x3t
        0x6t
        0xdt
        0xat
        0x5t
    .end array-data

    :array_5
    .array-data 1
        0xft
        0xdt
        0x9t
        0x0t
        0x3t
        0x5t
        0x8t
        0x2t
        0x7t
        0xct
        0xbt
        0x4t
    .end array-data

    :array_6
    .array-data 1
        0xdt
        0xft
        0xbt
        0x2t
        0x1t
        0x7t
        0xat
        0x0t
        0x5t
        0xet
        0x9t
        0x6t
    .end array-data

    :array_7
    .array-data 1
        0x9t
        0xbt
        0xft
        0x6t
        0x5t
        0x3t
        0xet
        0x4t
        0x1t
        0xat
        0xdt
        0x2t
    .end array-data

    :array_8
    .array-data 1
        0x2t
        0x4t
        0x2t
        0xbt
        0x2t
        0x8t
        0x5t
        0x6t
    .end array-data

    :array_9
    .array-data 1
        0xct
        0x9t
        0x8t
        0xdt
        0x7t
        0x7t
        0x5t
        0x2t
    .end array-data

    :array_a
    .array-data 1
        0x4t
        0x4t
        0xdt
        0xdt
        0x9t
        0x4t
        0xdt
        0x9t
    .end array-data

    :array_b
    .array-data 1
        0x1t
        0x6t
        0x5t
        0x1t
        0xct
        0xdt
        0xft
        0xet
    .end array-data

    :array_c
    .array-data 1
        0xft
        0xct
        0x9t
        0xdt
        0xet
        0x5t
        0xet
        0xdt
    .end array-data

    :array_d
    .array-data 1
        0x9t
        0xet
        0x5t
        0xft
        0x4t
        0xct
        0x9t
        0x6t
    .end array-data

    :array_e
    .array-data 1
        0xct
        0x2t
        0x2t
        0xat
        0x3t
        0x1t
        0x1t
        0xet
    .end array-data

    :array_f
    .array-data 1
        0xft
        0x1t
        0xdt
        0xat
        0x5t
        0xat
        0x2t
        0x3t
    .end array-data

    :array_10
    .array-data 1
        0xct
        0x5t
        0x6t
        0xbt
        0x9t
        0x0t
        0xat
        0xdt
        0x3t
        0xet
        0xft
        0x8t
        0x4t
        0x7t
        0x1t
        0x2t
    .end array-data
.end method


# virtual methods
.method PHOTON_Permutation()V
    .locals 11

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v3, v0, v3

    aget-object v2, v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v3, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    shr-int/lit8 v5, v0, 0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    and-int/lit8 v5, v0, 0x1

    mul-int/lit8 v5, v5, 0x4

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->ROUND:I

    if-ge v0, v2, :cond_c

    move v2, v1

    :goto_2
    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v3, v3, v2

    aget-byte v4, v3, v1

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RC:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_3
    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v3, :cond_3

    move v3, v1

    :goto_4
    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v3, v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v2

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->sbox:[B

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v6, v6, v2

    aget-byte v6, v6, v3

    aget-byte v5, v5, v6

    aput-byte v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x1

    :goto_5
    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v3, :cond_4

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v2

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    sub-int/2addr v5, v2

    invoke-static {v3, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v2

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    sub-int/2addr v5, v2

    invoke-static {v3, v1, v4, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    move v2, v1

    :goto_6
    iget v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v2, v3, :cond_b

    move v3, v1

    :goto_7
    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v3, v4, :cond_9

    move v4, v1

    move v5, v1

    :goto_8
    iget v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v5, v6, :cond_8

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->MixColMatrix:[[B

    aget-object v6, v6, v3

    aget-byte v7, v6, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v6, v6, v5

    aget-byte v9, v6, v2

    move v6, v1

    move v8, v1

    :goto_9
    iget v10, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->S:I

    if-ge v8, v10, :cond_7

    ushr-int v10, v9, v8

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_5

    xor-int/2addr v6, v7

    :cond_5
    iget v10, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->S_1:I

    ushr-int v10, v7, v10

    and-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_6

    shl-int/lit8 v7, v7, 0x1

    xor-int/lit8 v7, v7, 0x3

    :goto_a
    add-int/lit8 v8, v8, 0x1

    goto :goto_9

    :cond_6
    shl-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_7
    and-int/lit8 v6, v6, 0xf

    xor-int/2addr v4, v6

    int-to-byte v4, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_8
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aput-byte v4, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_9
    move v3, v1

    :goto_b
    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->D:I

    if-ge v3, v4, :cond_a

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    aget-object v4, v4, v3

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v5, v5, v3

    aput-byte v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_c
    :goto_c
    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->DSquare:I

    if-ge v1, v0, :cond_d

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    ushr-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v4, v1, v4

    aget-object v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v4, v1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state_2d:[[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dq:I

    ushr-int v5, v1, v5

    aget-object v4, v4, v5

    add-int/lit8 v5, v1, 0x1

    iget v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->Dr:I

    and-int/2addr v5, v6

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x2

    goto :goto_c

    :cond_d
    return-void
.end method

.method public doFinal([BI)I
    .locals 10

    const/4 v1, 0x2

    const/4 v0, 0x1

    const/16 v7, 0x10

    const/4 v3, 0x0

    add-int/lit8 v2, p2, 0x20

    array-length v4, p1

    if-le v2, v4, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v2, v4

    if-nez v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v4, v1, v2

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v0, v5

    xor-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    invoke-static {v0, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    add-int/2addr v1, p2

    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->SQUEEZE_RATE_INBYTES:I

    sub-int/2addr v2, v4

    invoke-static {v0, v3, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    return v0

    :cond_1
    if-gt v2, v7, :cond_4

    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v4, v3, v5, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ge v2, v7, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v5, v4, v2

    xor-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    :cond_2
    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v6, v4, v5

    if-ge v2, v7, :cond_3

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v0, v1

    xor-int/2addr v0, v6

    int-to-byte v0, v0

    aput-byte v0, v4, v5

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v4, v3, v5, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v5, v2, -0x10

    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    add-int/2addr v2, v5

    add-int/lit8 v2, v2, -0x1

    iget v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    div-int v6, v2, v6

    move v2, v3

    :goto_2
    add-int/lit8 v7, v6, -0x1

    if-ge v2, v7, :cond_5

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    iget v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    iget v8, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int/2addr v8, v2

    add-int/lit8 v8, v8, 0x10

    iget-object v9, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v7, v4, v8, v9, v3}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->PHOTON_Permutation()V

    iget v6, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int/2addr v6, v2

    sub-int v6, v5, v6

    iget v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    mul-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x10

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    invoke-static {v6, v4, v2, v7, v3}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    if-ge v6, v2, :cond_6

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    aget-byte v4, v2, v6

    xor-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    :cond_6
    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    iget v4, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->STATE_INBYTES:I

    add-int/lit8 v4, v4, -0x1

    aget-byte v6, v2, v4

    iget v7, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->RATE_INBYTES:I

    rem-int/2addr v5, v7

    if-nez v5, :cond_7

    :goto_3
    iget v1, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v0, v1

    xor-int/2addr v0, v6

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    goto/16 :goto_0

    :cond_7
    move v0, v1

    goto :goto_3
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Photon-Beetle Hash"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->TAG_INBYTES:I

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->state:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

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
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/PhotonBeetleDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
