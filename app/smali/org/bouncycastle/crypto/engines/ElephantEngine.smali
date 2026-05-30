.class public Lorg/bouncycastle/crypto/engines/ElephantEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;,
        Lorg/bouncycastle/crypto/engines/ElephantEngine$State;
    }
.end annotation


# instance fields
.field private final BLOCK_SIZE:I

.field private final CRYPTO_ABYTES:B

.field private final CRYPTO_KEYBYTES:B

.field private final CRYPTO_NPUBBYTES:B

.field private final KeccakRhoOffsets:[I

.field private final KeccakRoundConstants:[B

.field private final aadData:Ljava/io/ByteArrayOutputStream;

.field private ad:[B

.field private adOff:I

.field private adlen:I

.field private final algorithmName:Ljava/lang/String;

.field private final buffer:[B

.field private current_mask:[B

.field private expanded_key:[B

.field private forEncryption:Z

.field private initialised:Z

.field private inputMessage:[B

.field private inputOff:I

.field private lfsrIV:B

.field private m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

.field private nBits:I

.field private final nRounds:I

.field private nSBox:I

.field private nb_its:I

.field private next_mask:[B

.field private npub:[B

.field private final outputMessage:[B

.field private final parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

.field private previous_mask:[B

.field private final previous_outputMessage:[B

.field private final sBoxLayer:[B

.field private tag:[B

.field private final tag_buffer:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;)V
    .locals 7

    const/16 v6, 0x14

    const/16 v5, 0x12

    const/16 v4, 0x10

    const/16 v3, 0x8

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_KEYBYTES:B

    const/16 v0, 0xc

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_NPUBBYTES:B

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    new-array v0, v5, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    const/16 v0, 0x19

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter settings for Elephant"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    iput v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    const/16 v0, 0x50

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    const/16 v0, 0x75

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iput-byte v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 160 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    iput-boolean v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void

    :pswitch_1
    const/16 v0, 0x16

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    const/16 v0, 0xb0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    const/16 v0, 0x16

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    const/16 v0, 0x5a

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    const/16 v0, 0x45

    iput-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iput-byte v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 176 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x19

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    iput v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    iput-byte v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    const-string v0, "Elephant 200 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    nop

    :array_0
    .array-data 1
        -0x12t
        -0x13t
        -0x15t
        -0x20t
        -0x1et
        -0x1ft
        -0x1ct
        -0x11t
        -0x19t
        -0x16t
        -0x18t
        -0x1bt
        -0x17t
        -0x14t
        -0x1dt
        -0x1at
        -0x22t
        -0x23t
        -0x25t
        -0x30t
        -0x2et
        -0x2ft
        -0x2ct
        -0x21t
        -0x29t
        -0x26t
        -0x28t
        -0x2bt
        -0x27t
        -0x24t
        -0x2dt
        -0x2at
        -0x42t
        -0x43t
        -0x45t
        -0x50t
        -0x4et
        -0x4ft
        -0x4ct
        -0x41t
        -0x49t
        -0x46t
        -0x48t
        -0x4bt
        -0x47t
        -0x44t
        -0x4dt
        -0x4at
        0xet
        0xdt
        0xbt
        0x0t
        0x2t
        0x1t
        0x4t
        0xft
        0x7t
        0xat
        0x8t
        0x5t
        0x9t
        0xct
        0x3t
        0x6t
        0x2et
        0x2dt
        0x2bt
        0x20t
        0x22t
        0x21t
        0x24t
        0x2ft
        0x27t
        0x2at
        0x28t
        0x25t
        0x29t
        0x2ct
        0x23t
        0x26t
        0x1et
        0x1dt
        0x1bt
        0x10t
        0x12t
        0x11t
        0x14t
        0x1ft
        0x17t
        0x1at
        0x18t
        0x15t
        0x19t
        0x1ct
        0x13t
        0x16t
        0x4et
        0x4dt
        0x4bt
        0x40t
        0x42t
        0x41t
        0x44t
        0x4ft
        0x47t
        0x4at
        0x48t
        0x45t
        0x49t
        0x4ct
        0x43t
        0x46t
        -0x2t
        -0x3t
        -0x5t
        -0x10t
        -0xet
        -0xft
        -0xct
        -0x1t
        -0x9t
        -0x6t
        -0x8t
        -0xbt
        -0x7t
        -0x4t
        -0xdt
        -0xat
        0x7et
        0x7dt
        0x7bt
        0x70t
        0x72t
        0x71t
        0x74t
        0x7ft
        0x77t
        0x7at
        0x78t
        0x75t
        0x79t
        0x7ct
        0x73t
        0x76t
        -0x52t
        -0x53t
        -0x55t
        -0x60t
        -0x5et
        -0x5ft
        -0x5ct
        -0x51t
        -0x59t
        -0x56t
        -0x58t
        -0x5bt
        -0x57t
        -0x54t
        -0x5dt
        -0x5at
        -0x72t
        -0x73t
        -0x75t
        -0x80t
        -0x7et
        -0x7ft
        -0x7ct
        -0x71t
        -0x79t
        -0x76t
        -0x78t
        -0x7bt
        -0x77t
        -0x74t
        -0x7dt
        -0x7at
        0x5et
        0x5dt
        0x5bt
        0x50t
        0x52t
        0x51t
        0x54t
        0x5ft
        0x57t
        0x5at
        0x58t
        0x55t
        0x59t
        0x5ct
        0x53t
        0x56t
        -0x62t
        -0x63t
        -0x65t
        -0x70t
        -0x6et
        -0x6ft
        -0x6ct
        -0x61t
        -0x69t
        -0x66t
        -0x68t
        -0x6bt
        -0x67t
        -0x64t
        -0x6dt
        -0x6at
        -0x32t
        -0x33t
        -0x35t
        -0x40t
        -0x3et
        -0x3ft
        -0x3ct
        -0x31t
        -0x39t
        -0x36t
        -0x38t
        -0x3bt
        -0x37t
        -0x34t
        -0x3dt
        -0x3at
        0x3et
        0x3dt
        0x3bt
        0x30t
        0x32t
        0x31t
        0x34t
        0x3ft
        0x37t
        0x3at
        0x38t
        0x35t
        0x39t
        0x3ct
        0x33t
        0x36t
        0x6et
        0x6dt
        0x6bt
        0x60t
        0x62t
        0x61t
        0x64t
        0x6ft
        0x67t
        0x6at
        0x68t
        0x65t
        0x69t
        0x6ct
        0x63t
        0x66t
    .end array-data

    :array_1
    .array-data 1
        0x1t
        -0x7et
        -0x76t
        0x0t
        -0x75t
        0x1t
        -0x7ft
        0x9t
        -0x76t
        -0x78t
        0x9t
        0xat
        -0x75t
        -0x75t
        -0x77t
        0x3t
        0x2t
        -0x80t
    .end array-data

    nop

    :array_2
    .array-data 4
        0x0
        0x1
        0x6
        0x4
        0x3
        0x4
        0x4
        0x6
        0x7
        0x4
        0x3
        0x2
        0x3
        0x1
        0x7
        0x1
        0x5
        0x7
        0x5
        0x0
        0x2
        0x2
        0x5
        0x0
        0x6
    .end array-data

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private KeccakP200Round([BI)V
    .locals 9

    const/4 v8, 0x5

    const/4 v1, 0x0

    const/16 v0, 0x19

    new-array v3, v0, [B

    move v2, v1

    :goto_0
    if-ge v2, v8, :cond_1

    move v0, v1

    :goto_1
    if-ge v0, v8, :cond_0

    aget-byte v4, v3, v2

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_2
    if-ge v0, v8, :cond_2

    add-int/lit8 v2, v0, 0x5

    add-int/lit8 v4, v0, 0x1

    rem-int/lit8 v4, v4, 0x5

    aget-byte v4, v3, v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v4

    add-int/lit8 v5, v0, 0x4

    rem-int/lit8 v5, v5, 0x5

    aget-byte v5, v3, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_3
    if-ge v2, v8, :cond_4

    move v0, v1

    :goto_4
    if-ge v0, v8, :cond_3

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    aget-byte v5, p1, v4

    add-int/lit8 v6, v2, 0x5

    aget-byte v6, v3, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_5
    if-ge v2, v8, :cond_6

    move v0, v1

    :goto_6
    if-ge v0, v8, :cond_5

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRhoOffsets:[I

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v7

    aget v6, v6, v7

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ROL8(BI)B

    move-result v5

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_7
    if-ge v2, v8, :cond_8

    move v0, v1

    :goto_8
    if-ge v0, v8, :cond_7

    mul-int/lit8 v4, v2, 0x2

    mul-int/lit8 v5, v0, 0x3

    add-int/2addr v4, v5

    rem-int/lit8 v4, v4, 0x5

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    invoke-direct {p0, v2, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, v3, v5

    aput-byte v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :cond_8
    move v2, v1

    :goto_9
    if-ge v2, v8, :cond_b

    move v0, v1

    :goto_a
    if-ge v0, v8, :cond_9

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    aget-byte v4, p1, v4

    add-int/lit8 v5, v0, 0x1

    rem-int/lit8 v5, v5, 0x5

    invoke-direct {p0, v5, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v5

    aget-byte v5, p1, v5

    xor-int/lit8 v5, v5, -0x1

    add-int/lit8 v6, v0, 0x2

    rem-int/lit8 v6, v6, 0x5

    invoke-direct {p0, v6, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v6

    aget-byte v6, p1, v6

    and-int/2addr v5, v6

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_b
    if-ge v0, v8, :cond_a

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->index(II)I

    move-result v4

    aget-byte v5, v3, v0

    aput-byte v5, p1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_9

    :cond_b
    aget-byte v0, p1, v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakRoundConstants:[B

    aget-byte v2, v2, p2

    xor-int/2addr v0, v2

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    return-void
.end method

.method private ROL8(BI)B
    .locals 3

    if-eqz p2, :cond_0

    and-int/lit16 v0, p1, 0xff

    shl-int/2addr v0, p2

    and-int/lit16 v1, p1, 0xff

    rsub-int/lit8 v2, p2, 0x8

    ushr-int/2addr v1, v2

    xor-int p1, v0, v1

    :cond_0
    int-to-byte v0, p1

    return v0
.end method

.method private checkAad()V
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private get_c_block([B[BIII)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr v0, p5

    if-ne v0, p4, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, v2, v0, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v3, p1, v2

    :goto_0
    return-void

    :cond_0
    sub-int v0, p4, v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-gt v1, v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p2, p3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    invoke-static {p2, p3, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, v0, v1, v2}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v3, p1, v0

    goto :goto_0
.end method

.method private index(II)I
    .locals 1

    mul-int/lit8 v0, p2, 0x5

    add-int/2addr v0, p1

    return v0
.end method

.method private lfsr_step([B[B)V
    .locals 6

    const/16 v5, 0xd

    const/4 v4, 0x3

    const/4 v3, 0x0

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    add-int/lit8 v1, v1, -0x1

    invoke-static {p2, v0, p1, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :pswitch_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p2, v3

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x3

    aget-byte v2, p2, v3

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x5

    or-int/2addr v1, v2

    aget-byte v2, p2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    aget-byte v2, p2, v5

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p2, v3

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v1

    aget-byte v2, p2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    const/16 v2, 0x13

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    ushr-int/lit8 v2, v2, 0x7

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    add-int/lit8 v0, v0, -0x1

    aget-byte v1, p2, v3

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v1

    const/4 v2, 0x2

    aget-byte v2, p2, v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->rotl(B)B

    move-result v2

    xor-int/2addr v1, v2

    aget-byte v2, p2, v5

    shl-int/lit8 v2, v2, 0x1

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private permutation([B)V
    .locals 10

    const/4 v1, 0x0

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$ElephantParameters:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->parameters:Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$ElephantParameters;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :cond_0
    return-void

    :pswitch_0
    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsrIV:B

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    new-array v6, v0, [B

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v0, v3, :cond_0

    aget-byte v3, p1, v1

    xor-int/2addr v3, v2

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    add-int/lit8 v3, v3, -0x1

    aget-byte v4, p1, v3

    and-int/lit8 v5, v2, 0x1

    shl-int/lit8 v5, v5, 0x7

    and-int/lit8 v7, v2, 0x2

    shl-int/lit8 v7, v7, 0x5

    or-int/2addr v5, v7

    and-int/lit8 v7, v2, 0x4

    shl-int/lit8 v7, v7, 0x3

    or-int/2addr v5, v7

    and-int/lit8 v7, v2, 0x8

    shl-int/lit8 v7, v7, 0x1

    or-int/2addr v5, v7

    and-int/lit8 v7, v2, 0x10

    ushr-int/lit8 v7, v7, 0x1

    or-int/2addr v5, v7

    and-int/lit8 v7, v2, 0x20

    ushr-int/lit8 v7, v7, 0x3

    or-int/2addr v5, v7

    and-int/lit8 v7, v2, 0x40

    ushr-int/lit8 v7, v7, 0x5

    or-int/2addr v5, v7

    and-int/lit16 v7, v2, 0x80

    ushr-int/lit8 v7, v7, 0x7

    or-int/2addr v5, v7

    int-to-byte v5, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    shl-int/lit8 v3, v2, 0x1

    and-int/lit8 v4, v2, 0x40

    ushr-int/lit8 v4, v4, 0x6

    and-int/lit8 v2, v2, 0x20

    ushr-int/lit8 v2, v2, 0x5

    xor-int/2addr v2, v4

    or-int/2addr v2, v3

    and-int/lit8 v2, v2, 0x7f

    int-to-byte v2, v2

    move v3, v1

    :goto_1
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->sBoxLayer:[B

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    aput-byte v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-static {v6, v1}, Ljava/util/Arrays;->fill([BB)V

    move v3, v1

    :goto_2
    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    if-ge v3, v4, :cond_4

    move v5, v1

    :goto_3
    const/16 v4, 0x8

    if-ge v5, v4, :cond_3

    shl-int/lit8 v4, v3, 0x3

    add-int/2addr v4, v5

    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    add-int/lit8 v7, v7, -0x1

    if-eq v4, v7, :cond_2

    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    mul-int/2addr v4, v7

    shr-int/lit8 v4, v4, 0x2

    iget v7, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nBits:I

    add-int/lit8 v7, v7, -0x1

    rem-int/2addr v4, v7

    :cond_2
    ushr-int/lit8 v7, v4, 0x3

    aget-byte v8, v6, v7

    aget-byte v9, p1, v3

    and-int/lit16 v9, v9, 0xff

    ushr-int/2addr v9, v5

    and-int/lit8 v9, v9, 0x1

    and-int/lit8 v4, v4, 0x7

    shl-int v4, v9, v4

    xor-int/2addr v4, v8

    int-to-byte v4, v4

    aput-byte v4, v6, v7

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nSBox:I

    invoke-static {v6, v1, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :goto_4
    :pswitch_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nRounds:I

    if-ge v1, v0, :cond_0

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->KeccakP200Round([BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processAADBytes([B)V
    .locals 7

    const/4 v6, 0x1

    const/16 v0, 0xc

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->checkAad()V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    iput v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    :cond_0
    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :cond_1
    :pswitch_0
    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    sub-int/2addr v2, v0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    sub-int/2addr v3, v4

    if-gt v2, v3, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    :goto_1
    return-void

    :pswitch_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v2, v1, v3, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    invoke-static {v2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_0

    :pswitch_3
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adlen:I

    if-ne v0, v2, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {p1, v1, v0, v1}, Ljava/util/Arrays;->fill([BIIB)V

    aput-byte v6, p1, v1

    goto :goto_1

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot process AAD when the length of the plaintext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot process AAD when the length of the ciphertext to be processed exceeds the a block size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-lez v3, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->ad:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    invoke-static {v4, v5, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    add-int/2addr v4, v3

    iput v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    :cond_3
    add-int v4, v0, v3

    add-int/2addr v2, v0

    invoke-static {p1, v4, v2, v1}, Ljava/util/Arrays;->fill([BIIB)V

    add-int/2addr v0, v3

    aput-byte v6, p1, v0

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_7
    goto/16 :goto_1

    :pswitch_8
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto/16 :goto_1

    :pswitch_9
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_9
    .end packed-switch
.end method

.method private processBytes([B[BIIIIII)I
    .locals 9

    const/4 v2, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    move v8, v1

    :goto_0
    if-ge v8, p4, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    invoke-direct {p0, v1, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->lfsr_step([B[B)V

    if-ge v8, p5, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/4 v5, 0x0

    const/16 v6, 0xc

    invoke-static {v1, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/16 v3, 0xc

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    const/4 v5, 0x0

    invoke-static {v1, v3, v4, v5}, Ljava/util/Arrays;->fill([BIIB)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v3, v4, v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    add-int/lit8 v1, p5, -0x1

    if-ne v8, v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr v1, v8

    sub-int v1, p7, v1

    :goto_1
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_2
    add-int/2addr v1, v2

    move v7, v1

    :goto_3
    if-lez v8, :cond_0

    if-gt v8, p6, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    const/4 v4, 0x0

    add-int/lit8 v6, v8, -0x1

    move-object v1, p0

    move/from16 v5, p7

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->get_c_block([B[BIII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    :cond_0
    add-int/lit8 v1, v8, 0x1

    move/from16 v0, p8

    if-ge v1, v0, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->buffer:[B

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v3, v4}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_mask:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->current_mask:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->next_mask:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->previous_outputMessage:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v8, 0x1

    move v8, v1

    move v2, v7

    goto/16 :goto_0

    :cond_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    goto/16 :goto_1

    :cond_3
    const/4 v3, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->outputMessage:[B

    const/4 v5, 0x0

    invoke-static {p1, v3, v4, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_2

    :cond_4
    return v2

    :cond_5
    move v7, v2

    goto/16 :goto_3
.end method

.method private reset(Z)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->adOff:I

    return-void
.end method

.method private rotl(B)B
    .locals 2

    and-int/lit16 v0, p1, 0xff

    shl-int/lit8 v0, v0, 0x1

    and-int/lit16 v1, p1, 0xff

    ushr-int/lit8 v1, v1, 0x7

    or-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method private xor_block([B[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p4, :cond_0

    aget-byte v1, p1, v0

    add-int v2, v0, p3

    aget-byte v2, p2, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v9, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs call init function before doFinal"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v1, :cond_1

    add-int v1, v0, p2

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v1, v2

    array-length v2, p1

    if-gt v1, v2, :cond_2

    :cond_1
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-nez v1, :cond_3

    add-int v1, v0, p2

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr v1, v2

    array-length v2, p1

    if-le v1, v2, :cond_3

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v0, :cond_5

    move v0, v9

    :goto_1
    sub-int v7, v2, v0

    array-length v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int v1, v7, v1

    add-int/lit8 v6, v1, 0x1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    rem-int v1, v7, v1

    if-eqz v1, :cond_6

    move v5, v6

    :goto_2
    add-int/lit8 v0, v0, 0xc

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v1, v8, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIII)I

    move-result v0

    add-int/2addr v0, p2

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    invoke-direct {p0, v1, v2, v9, v3}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->xor_block([B[BII)V

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    iget-byte v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    invoke-static {v1, v9, v2, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    array-length v2, v2

    invoke-static {v1, v9, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v7, v0

    :cond_4
    invoke-direct {p0, v9}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return v7

    :pswitch_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    goto :goto_0

    :cond_5
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v6, -0x1

    goto :goto_2

    :cond_7
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    move v0, v9

    :goto_3
    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    aget-byte v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v3, v0

    aget-byte v2, v2, v3

    if-eq v1, v2, :cond_8

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mac does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    const/16 v0, 0xc

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v0, p1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public getUpdateOutputSize(I)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v1, p1

    iget-byte v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs call init function before getUpdateOutputSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v0, p1

    iget-byte v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    add-int/2addr v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v4, 0x10

    const/4 v1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init parameters must include an IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->npub:[B

    array-length v2, v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires exactly 12 bytes of IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " init parameters must include a key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v2, v0

    if-eq v2, v4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key must be 128 bits long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    invoke-static {v0, v1, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->expanded_key:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->permutation([B)V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v4

    invoke-direct {v0, v2, v3, p2, v4}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->initialised:Z

    if-eqz p1, :cond_5

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-eqz p1, :cond_6

    move v0, v1

    :goto_1
    add-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void

    :cond_5
    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    goto :goto_0

    :cond_6
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    goto :goto_1
.end method

.method public processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

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
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

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

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 10
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
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int v2, v0, p3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    sub-int v0, v2, v0

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    if-lt v0, v2, :cond_4

    sget-object v0, Lorg/bouncycastle/crypto/engines/ElephantEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ElephantEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->m_state:Lorg/bouncycastle/crypto/engines/ElephantEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/ElephantEngine$State;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int v2, v0, p3

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->forEncryption:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_2
    sub-int v7, v2, v0

    array-length v1, v1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int v4, v7, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    rem-int v0, v7, v0

    if-eqz v0, :cond_3

    move v0, v4

    :goto_3
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v0, v1, 0xc

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    div-int/2addr v0, v1

    add-int/lit8 v8, v0, 0x1

    const/4 v0, 0x1

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr v0, v1

    new-array v1, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v6, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {v0, v2, v1, v3, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    sub-int v9, v0, v2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    array-length v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    sub-int/2addr v2, v3

    invoke-static {p1, p2, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v0, p0

    move-object v2, p4

    move v3, p5

    move v6, v4

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processBytes([B[BIIIIII)I

    sub-int v0, p3, v9

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int v0, p2, v9

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    add-int/2addr v0, v4

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->nb_its:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->BLOCK_SIZE:I

    mul-int/2addr v0, v4

    :goto_4
    return v0

    :cond_1
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->tag_buffer:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->processAADBytes([B)V

    goto :goto_1

    :cond_2
    iget-byte v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->CRYPTO_ABYTES:B

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v4, -0x1

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputMessage:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ElephantEngine;->inputOff:I

    const/4 v0, 0x0

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/ElephantEngine;->reset(Z)V

    return-void
.end method
