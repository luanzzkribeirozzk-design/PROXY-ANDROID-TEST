.class public Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;
    }
.end annotation


# instance fields
.field private A:[B

.field private final CRYPTO_KEYBYTES:I

.field private final CRYPTO_NPUBBYTES:I

.field private final D:I

.field private final DSquare:I

.field private final Dq:I

.field private final Dr:I

.field private K:[B

.field private final LAST_THREE_BITS_OFFSET:I

.field private final MixColMatrix:[[B

.field private N:[B

.field private final RATE_INBYTES:I

.field private final RATE_INBYTES_HALF:I

.field private final RC:[[B

.field private final ROUND:I

.field private final S:I

.field private final STATE_INBYTES:I

.field private final S_1:I

.field private T:[B

.field private final TAG_INBYTES:I

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private encrypted:Z

.field private forEncryption:Z

.field private initialised:Z

.field private input_empty:Z

.field private final message:Ljava/io/ByteArrayOutputStream;

.field private final sbox:[B

.field private state:[B

.field private state_2d:[[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;)V
    .locals 8

    const/16 v7, 0x10

    const/4 v6, 0x3

    const/4 v1, 0x0

    const/16 v5, 0xc

    const/16 v4, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    iput v7, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->CRYPTO_KEYBYTES:I

    iput v7, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->CRYPTO_NPUBBYTES:I

    iput v7, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->TAG_INBYTES:I

    iput v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->ROUND:I

    iput v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->D:I

    iput v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->Dq:I

    const/4 v0, 0x7

    iput v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->Dr:I

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->DSquare:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->S:I

    iput v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->S_1:I

    new-array v0, v4, [[B

    new-array v2, v5, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-array v3, v5, [B

    fill-array-data v3, :array_1

    aput-object v3, v0, v2

    const/4 v2, 0x2

    new-array v3, v5, [B

    fill-array-data v3, :array_2

    aput-object v3, v0, v2

    new-array v2, v5, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v6

    const/4 v2, 0x4

    new-array v3, v5, [B

    fill-array-data v3, :array_4

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-array v3, v5, [B

    fill-array-data v3, :array_5

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v5, [B

    fill-array-data v3, :array_6

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-array v3, v5, [B

    fill-array-data v3, :array_7

    aput-object v3, v0, v2

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RC:[[B

    new-array v0, v4, [[B

    new-array v2, v4, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/4 v2, 0x1

    new-array v3, v4, [B

    fill-array-data v3, :array_9

    aput-object v3, v0, v2

    const/4 v2, 0x2

    new-array v3, v4, [B

    fill-array-data v3, :array_a

    aput-object v3, v0, v2

    new-array v2, v4, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    const/4 v2, 0x4

    new-array v3, v4, [B

    fill-array-data v3, :array_c

    aput-object v3, v0, v2

    const/4 v2, 0x5

    new-array v3, v4, [B

    fill-array-data v3, :array_d

    aput-object v3, v0, v2

    const/4 v2, 0x6

    new-array v3, v4, [B

    fill-array-data v3, :array_e

    aput-object v3, v0, v2

    const/4 v2, 0x7

    new-array v3, v4, [B

    fill-array-data v3, :array_f

    aput-object v3, v0, v2

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MixColMatrix:[[B

    new-array v0, v7, [B

    fill-array-data v0, :array_10

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->sbox:[B

    sget-object v0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$PhotonBeetleEngine$PhotonBeetleParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine$PhotonBeetleParameters;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    move v0, v1

    move v2, v1

    :goto_0
    add-int/lit8 v3, v0, 0x7

    ushr-int/lit8 v3, v3, 0x3

    iput v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    ushr-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    add-int/2addr v0, v2

    add-int/lit8 v2, v0, 0x7

    ushr-int/lit8 v2, v2, 0x3

    iput v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    add-int/lit8 v2, v2, -0x1

    shl-int/lit8 v2, v2, 0x3

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->initialised:Z

    return-void

    :pswitch_0
    const/16 v0, 0x20

    const/16 v2, 0xe0

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x80

    const/16 v2, 0x80

    goto :goto_0

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

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private PHOTON_Permutation()V
    .locals 13

    const/16 v12, 0x40

    const/16 v11, 0x8

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, v12, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    ushr-int/lit8 v3, v0, 0x3

    aget-object v2, v2, v3

    and-int/lit8 v3, v0, 0x7

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

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
    move v9, v1

    :goto_1
    const/16 v0, 0xc

    if-ge v9, v0, :cond_c

    move v0, v1

    :goto_2
    if-ge v0, v11, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v2, v2, v0

    aget-byte v3, v2, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RC:[[B

    aget-object v4, v4, v0

    aget-byte v4, v4, v9

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v2, v1

    :goto_3
    if-ge v2, v11, :cond_3

    move v0, v1

    :goto_4
    if-ge v0, v11, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->sbox:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v5, v5, v2

    aget-byte v5, v5, v0

    aget-byte v4, v4, v5

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_3
    const/4 v0, 0x1

    :goto_5
    if-ge v0, v11, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    invoke-static {v2, v1, v3, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v3, v3, v0

    rsub-int/lit8 v4, v0, 0x8

    invoke-static {v2, v0, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v3, v3, v0

    rsub-int/lit8 v4, v0, 0x8

    invoke-static {v2, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    move v8, v1

    :goto_6
    if-ge v8, v11, :cond_b

    move v7, v1

    :goto_7
    if-ge v7, v11, :cond_9

    move v5, v1

    move v6, v1

    :goto_8
    if-ge v6, v11, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->MixColMatrix:[[B

    aget-object v0, v0, v7

    aget-byte v0, v0, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v2, v2, v6

    aget-byte v10, v2, v8

    move v2, v1

    move v3, v0

    move v4, v1

    :goto_9
    const/4 v0, 0x4

    if-ge v4, v0, :cond_7

    ushr-int v0, v10, v4

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_5

    xor-int v0, v2, v3

    move v2, v0

    :cond_5
    ushr-int/lit8 v0, v3, 0x3

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    shl-int/lit8 v0, v3, 0x1

    xor-int/lit8 v0, v0, 0x3

    :goto_a
    add-int/lit8 v4, v4, 0x1

    move v3, v0

    goto :goto_9

    :cond_6
    shl-int/lit8 v0, v3, 0x1

    goto :goto_a

    :cond_7
    and-int/lit8 v0, v2, 0xf

    xor-int/2addr v0, v5

    int-to-byte v0, v0

    add-int/lit8 v2, v6, 0x1

    move v5, v0

    move v6, v2

    goto :goto_8

    :cond_8
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aput-byte v5, v0, v7

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_7

    :cond_9
    move v0, v1

    :goto_b
    if-ge v0, v11, :cond_a

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v8

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_6

    :cond_b
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_1

    :cond_c
    move v0, v1

    :goto_c
    if-ge v0, v12, :cond_d

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    ushr-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    ushr-int/lit8 v4, v0, 0x3

    aget-object v3, v3, v4

    and-int/lit8 v4, v0, 0x7

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0xf

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    ushr-int/lit8 v5, v0, 0x3

    aget-object v4, v4, v5

    add-int/lit8 v5, v0, 0x1

    and-int/lit8 v5, v5, 0x7

    aget-byte v4, v4, v5

    and-int/lit8 v4, v4, 0xf

    shl-int/lit8 v4, v4, 0x4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_d
    return-void
.end method

.method private XOR([BII)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

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
    return-void
.end method

.method private reset(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->input_empty:Z

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    array-length v2, v2

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    array-length v2, v2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    array-length v3, v3

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->encrypted:Z

    return-void
.end method

.method private rhoohr([BI[BII)V
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    aget-object v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    invoke-static {p5, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    add-int/lit8 v4, v4, -0x1

    if-ge v0, v4, :cond_0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v4, v4, v0

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    add-int/lit8 v6, v0, 0x1

    aget-byte v5, v5, v6

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v0, v5, v0

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v0, v0, 0x1

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v5, v5, v1

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x7

    or-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, v2, v4

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_1

    add-int v4, v0, p2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    add-int/2addr v5, v0

    aget-byte v5, v1, v5

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p4

    aget-byte v0, p3, v0

    xor-int/2addr v0, v5

    int-to-byte v0, v0

    aput-byte v0, p1, v4

    move v0, v1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v0, p5, :cond_2

    add-int v3, v0, p2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES_HALF:I

    sub-int v1, v0, v1

    aget-byte v4, v2, v1

    add-int/lit8 v1, v0, 0x1

    add-int/2addr v0, p4

    aget-byte v0, p3, v0

    xor-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p1, v3

    move v0, v1

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, p3, p4, p5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->XOR([BII)V

    :goto_3
    return-void

    :cond_3
    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->XOR([BII)V

    goto :goto_3
.end method

.method private select(ZZBB)B
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_0
    :goto_0
    return p3

    :cond_1
    if-eqz p1, :cond_2

    const/4 p3, 0x2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_0

    move p3, p4

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/16 v7, 0x10

    const/4 v8, 0x1

    const/4 v6, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    move v0, v6

    :goto_0
    sub-int v9, v1, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-eqz v0, :cond_1

    add-int/lit8 v0, v9, 0x10

    add-int/2addr v0, p2

    array-length v1, p1

    if-gt v0, v1, :cond_2

    :cond_1
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-nez v0, :cond_4

    add-int v0, v9, p2

    array-length v1, p1

    if-le v0, v1, :cond_4

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v0, v7

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->A:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->A:[B

    array-length v2, v0

    if-nez v2, :cond_5

    if-eqz v9, :cond_6

    :cond_5
    iput-boolean v6, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->input_empty:Z

    :cond_6
    if-eqz v9, :cond_7

    move v0, v8

    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    rem-int v1, v2, v1

    if-nez v1, :cond_8

    move v1, v8

    :goto_2
    const/4 v4, 0x3

    const/4 v5, 0x4

    invoke-direct {p0, v0, v1, v4, v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->select(ZZBB)B

    move-result v4

    if-eqz v2, :cond_9

    move v0, v8

    :goto_3
    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    rem-int v1, v9, v1

    if-nez v1, :cond_a

    move v1, v8

    :goto_4
    const/4 v5, 0x5

    const/4 v10, 0x6

    invoke-direct {p0, v0, v1, v5, v10}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->select(ZZBB)B

    move-result v11

    if-eqz v2, :cond_d

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    div-int v1, v0, v1

    move v0, v6

    :goto_5
    add-int/lit8 v5, v1, -0x1

    if-ge v0, v5, :cond_b

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->A:[B

    iget v10, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int/2addr v10, v0

    iget v12, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    invoke-direct {p0, v5, v10, v12}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->XOR([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move v0, v6

    goto :goto_1

    :cond_8
    move v1, v6

    goto :goto_2

    :cond_9
    move v0, v6

    goto :goto_3

    :cond_a
    move v1, v6

    goto :goto_4

    :cond_b
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int/2addr v1, v0

    sub-int v1, v2, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->A:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int/2addr v0, v5

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->XOR([BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v2, v0, v1

    xor-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_c
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    iget v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    shl-int/2addr v4, v5

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_d
    if-eqz v9, :cond_10

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    add-int/2addr v0, v9

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    div-int v12, v0, v1

    move v10, v6

    :goto_6
    add-int/lit8 v0, v12, -0x1

    if-ge v10, v0, :cond_e

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int/2addr v0, v10

    add-int v2, p2, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int/2addr v0, v10

    add-int v4, v6, v0

    iget v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->rhoohr([BI[BII)V

    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_6

    :cond_e
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int/2addr v0, v10

    sub-int v5, v9, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int/2addr v0, v10

    add-int v2, p2, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    mul-int/2addr v0, v10

    add-int v4, v6, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->rhoohr([BI[BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

    if-ge v5, v0, :cond_f

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    aget-byte v1, v0, v5

    xor-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, v0, v5

    :cond_f
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    add-int/lit8 v1, v1, -0x1

    aget-byte v2, v0, v1

    iget v4, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    shl-int v4, v11, v4

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :cond_10
    add-int v0, p2, v9

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->input_empty:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v4, v1, v2

    iget v5, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->LAST_THREE_BITS_OFFSET:I

    shl-int v5, v8, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    :cond_11
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->PHOTON_Permutation()V

    new-array v1, v7, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    invoke-static {v1, v6, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    if-eqz v1, :cond_12

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    invoke-static {v1, v6, p1, v0, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v9, 0x10

    :goto_7
    invoke-direct {p0, v6}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->reset(Z)V

    return v0

    :cond_12
    move v0, v6

    :goto_8
    if-ge v0, v7, :cond_14

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    aget-byte v1, v1, v0

    add-int v2, v9, v0

    aget-byte v2, v3, v2

    if-eq v1, v2, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mac does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_14
    move v0, v9

    goto :goto_7
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Photon-Beetle AEAD"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->RATE_INBYTES:I

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

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v5, 0x8

    const/16 v4, 0x10

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Photon-Beetle AEAD init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->N:[B

    array-length v1, v1

    if-eq v1, v4, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Photon-Beetle AEAD requires exactly 16 bytes of IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v1, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Photon-Beetle AEAD init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->K:[B

    array-length v0, v0

    if-eq v0, v4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Photon-Beetle AEAD key must be 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->STATE_INBYTES:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state:[B

    filled-new-array {v5, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->state_2d:[[B

    new-array v0, v4, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->T:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->initialised:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->reset(Z)V

    return-void
.end method

.method public processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->aadData:Ljava/io/ByteArrayOutputStream;

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

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/PhotonBeetleEngine;->reset(Z)V

    return-void
.end method
