.class public Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/StreamCipher;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final EK_d:[S

.field private static final S0:[B

.field private static final S1:[B


# instance fields
.field private final BRC:[I

.field private final F:[I

.field private final LFSR:[I

.field private final keyStream:[B

.field private theIndex:I

.field private theIterations:I

.field private theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x100

    new-array v0, v1, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    new-array v0, v1, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    const/16 v0, 0x10

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    return-void

    :array_0
    .array-data 1
        0x3et
        0x72t
        0x5bt
        0x47t
        -0x36t
        -0x20t
        0x0t
        0x33t
        0x4t
        -0x2ft
        0x54t
        -0x68t
        0x9t
        -0x47t
        0x6dt
        -0x35t
        0x7bt
        0x1bt
        -0x7t
        0x32t
        -0x51t
        -0x63t
        0x6at
        -0x5bt
        -0x48t
        0x2dt
        -0x4t
        0x1dt
        0x8t
        0x53t
        0x3t
        -0x70t
        0x4dt
        0x4et
        -0x7ct
        -0x67t
        -0x1ct
        -0x32t
        -0x27t
        -0x6ft
        -0x23t
        -0x4at
        -0x7bt
        0x48t
        -0x75t
        0x29t
        0x6et
        -0x54t
        -0x33t
        -0x3ft
        -0x8t
        0x1et
        0x73t
        0x43t
        0x69t
        -0x3at
        -0x4bt
        -0x43t
        -0x3t
        0x39t
        0x63t
        0x20t
        -0x2ct
        0x38t
        0x76t
        0x7dt
        -0x4et
        -0x59t
        -0x31t
        -0x13t
        0x57t
        -0x3bt
        -0xdt
        0x2ct
        -0x45t
        0x14t
        0x21t
        0x6t
        0x55t
        -0x65t
        -0x1dt
        -0x11t
        0x5et
        0x31t
        0x4ft
        0x7ft
        0x5at
        -0x5ct
        0xdt
        -0x7et
        0x51t
        0x49t
        0x5ft
        -0x46t
        0x58t
        0x1ct
        0x4at
        0x16t
        -0x2bt
        0x17t
        -0x58t
        -0x6et
        0x24t
        0x1ft
        -0x74t
        -0x1t
        -0x28t
        -0x52t
        0x2et
        0x1t
        -0x2dt
        -0x53t
        0x3bt
        0x4bt
        -0x26t
        0x46t
        -0x15t
        -0x37t
        -0x22t
        -0x66t
        -0x71t
        -0x79t
        -0x29t
        0x3at
        -0x80t
        0x6ft
        0x2ft
        -0x38t
        -0x4ft
        -0x4ct
        0x37t
        -0x9t
        0xat
        0x22t
        0x13t
        0x28t
        0x7ct
        -0x34t
        0x3ct
        -0x77t
        -0x39t
        -0x3dt
        -0x6at
        0x56t
        0x7t
        -0x41t
        0x7et
        -0x10t
        0xbt
        0x2bt
        -0x69t
        0x52t
        0x35t
        0x41t
        0x79t
        0x61t
        -0x5at
        0x4ct
        0x10t
        -0x2t
        -0x44t
        0x26t
        -0x6bt
        -0x78t
        -0x76t
        -0x50t
        -0x5dt
        -0x5t
        -0x40t
        0x18t
        -0x6ct
        -0xet
        -0x1ft
        -0x1bt
        -0x17t
        0x5dt
        -0x30t
        -0x24t
        0x11t
        0x66t
        0x64t
        0x5ct
        -0x14t
        0x59t
        0x42t
        0x75t
        0x12t
        -0xbt
        0x74t
        -0x64t
        -0x56t
        0x23t
        0xet
        -0x7at
        -0x55t
        -0x42t
        0x2at
        0x2t
        -0x19t
        0x67t
        -0x1at
        0x44t
        -0x5et
        0x6ct
        -0x3et
        -0x6dt
        -0x61t
        -0xft
        -0xat
        -0x6t
        0x36t
        -0x2et
        0x50t
        0x68t
        -0x62t
        0x62t
        0x71t
        0x15t
        0x3dt
        -0x2at
        0x40t
        -0x3ct
        -0x1et
        0xft
        -0x72t
        -0x7dt
        0x77t
        0x6bt
        0x25t
        0x5t
        0x3ft
        0xct
        0x30t
        -0x16t
        0x70t
        -0x49t
        -0x5ft
        -0x18t
        -0x57t
        0x65t
        -0x73t
        0x27t
        0x1at
        -0x25t
        -0x7ft
        -0x4dt
        -0x60t
        -0xct
        0x45t
        0x7at
        0x19t
        -0x21t
        -0x12t
        0x78t
        0x34t
        0x60t
    .end array-data

    :array_1
    .array-data 1
        0x55t
        -0x3et
        0x63t
        0x71t
        0x3bt
        -0x38t
        0x47t
        -0x7at
        -0x61t
        0x3ct
        -0x26t
        0x5bt
        0x29t
        -0x56t
        -0x3t
        0x77t
        -0x74t
        -0x3bt
        -0x6ct
        0xct
        -0x5at
        0x1at
        0x13t
        0x0t
        -0x1dt
        -0x58t
        0x16t
        0x72t
        0x40t
        -0x7t
        -0x8t
        0x42t
        0x44t
        0x26t
        0x68t
        -0x6at
        -0x7ft
        -0x27t
        0x45t
        0x3et
        0x10t
        0x76t
        -0x3at
        -0x59t
        -0x75t
        0x39t
        0x43t
        -0x1ft
        0x3at
        -0x4bt
        0x56t
        0x2at
        -0x40t
        0x6dt
        -0x4dt
        0x5t
        0x22t
        0x66t
        -0x41t
        -0x24t
        0xbt
        -0x6t
        0x62t
        0x48t
        -0x23t
        0x20t
        0x11t
        0x6t
        0x36t
        -0x37t
        -0x3ft
        -0x31t
        -0xat
        0x27t
        0x52t
        -0x45t
        0x69t
        -0xbt
        -0x2ct
        -0x79t
        0x7ft
        -0x7ct
        0x4ct
        -0x2et
        -0x64t
        0x57t
        -0x5ct
        -0x44t
        0x4ft
        -0x66t
        -0x21t
        -0x2t
        -0x2at
        -0x73t
        0x7at
        -0x15t
        0x2bt
        0x53t
        -0x28t
        0x5ct
        -0x5ft
        0x14t
        0x17t
        -0x5t
        0x23t
        -0x2bt
        0x7dt
        0x30t
        0x67t
        0x73t
        0x8t
        0x9t
        -0x12t
        -0x49t
        0x70t
        0x3ft
        0x61t
        -0x4et
        0x19t
        -0x72t
        0x4et
        -0x1bt
        0x4bt
        -0x6dt
        -0x71t
        0x5dt
        -0x25t
        -0x57t
        -0x53t
        -0xft
        -0x52t
        0x2et
        -0x35t
        0xdt
        -0x4t
        -0xct
        0x2dt
        0x46t
        0x6et
        0x1dt
        -0x69t
        -0x18t
        -0x2ft
        -0x17t
        0x4dt
        0x37t
        -0x5bt
        0x75t
        0x5et
        -0x7dt
        -0x62t
        -0x55t
        -0x7et
        -0x63t
        -0x47t
        0x1ct
        -0x20t
        -0x33t
        0x49t
        -0x77t
        0x1t
        -0x4at
        -0x43t
        0x58t
        0x24t
        -0x5et
        0x5ft
        0x38t
        0x78t
        -0x67t
        0x15t
        -0x70t
        0x50t
        -0x48t
        -0x6bt
        -0x1ct
        -0x30t
        -0x6ft
        -0x39t
        -0x32t
        -0x13t
        0xft
        -0x4ct
        0x6ft
        -0x60t
        -0x34t
        -0x10t
        0x2t
        0x4at
        0x79t
        -0x3dt
        -0x22t
        -0x5dt
        -0x11t
        -0x16t
        0x51t
        -0x1at
        0x6bt
        0x18t
        -0x14t
        0x1bt
        0x2ct
        -0x80t
        -0x9t
        0x74t
        -0x19t
        -0x1t
        0x21t
        0x5at
        0x6at
        0x54t
        0x1et
        0x41t
        0x31t
        -0x6et
        0x35t
        -0x3ct
        0x33t
        0x7t
        0xat
        -0x46t
        0x7et
        0xet
        0x34t
        -0x78t
        -0x4ft
        -0x68t
        0x7ct
        -0xdt
        0x3dt
        0x60t
        0x6ct
        0x7bt
        -0x36t
        -0x2dt
        0x1ft
        0x32t
        0x65t
        0x4t
        0x28t
        0x64t
        -0x42t
        -0x7bt
        -0x65t
        0x2ft
        0x59t
        -0x76t
        -0x29t
        -0x50t
        0x25t
        -0x54t
        -0x51t
        0x12t
        0x3t
        -0x1et
        -0xet
    .end array-data

    :array_2
    .array-data 2
        0x44d7s
        0x26bcs
        0x626bs
        0x135es
        0x5789s
        0x35e2s
        0x7135s
        0x9afs
        0x4d78s
        0x2f13s
        0x6bc4s
        0x1af1s
        0x5e26s
        0x3c4ds
        0x789as
        0x47acs
    .end array-data
.end method

.method protected constructor <init>()V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    return-void
.end method

.method protected constructor <init>(Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;)V
    .locals 2

    const/4 v1, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->reset(Lorg/bouncycastle/util/Memoable;)V

    return-void
.end method

.method private AddM(II)I
    .locals 2

    add-int v0, p1, p2

    const v1, 0x7fffffff

    and-int/2addr v1, v0

    ushr-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method private BitReorganization()V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x0

    const v5, 0xffff

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xf

    aget v1, v1, v2

    const v2, 0x7fff8000

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    and-int/2addr v2, v5

    or-int/2addr v1, v2

    aput v1, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0x9

    aget v3, v3, v4

    ushr-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    and-int/2addr v1, v5

    shl-int/lit8 v1, v1, 0x10

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    ushr-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    aput v1, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v2, v2, v7

    and-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x10

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v6

    ushr-int/lit8 v3, v3, 0xf

    or-int/2addr v2, v3

    aput v2, v0, v1

    return-void
.end method

.method private static L1(I)I
    .locals 2

    const/4 v0, 0x2

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v0

    xor-int/2addr v0, p0

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x12

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private static L2(I)I
    .locals 2

    const/16 v0, 0x8

    invoke-static {p0, v0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v0

    xor-int/2addr v0, p0

    const/16 v1, 0xe

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    const/16 v1, 0x1e

    invoke-static {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->ROT(II)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method private LFSRWithInitialisationMode(I)V
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/16 v5, 0xf

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v0, v0, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v4

    invoke-static {v1, v7}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v6

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v8

    const/16 v2, 0x15

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v5

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v6

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v1, v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v7

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    aput v2, v1, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0x9

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v8

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    aput v2, v1, v8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xb

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xc

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xd

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xe

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v5

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aput v0, v1, v5

    return-void
.end method

.method private LFSRWithWorkMode()V
    .locals 9

    const/16 v8, 0xa

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v4, 0x0

    const/16 v5, 0xf

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v0, v0, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v4

    invoke-static {v1, v7}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v6

    const/16 v2, 0x14

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v8

    const/16 v2, 0x15

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xd

    aget v1, v1, v2

    const/16 v2, 0x11

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v1, v1, v5

    invoke-static {v1, v5}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MulByPow2(II)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->AddM(II)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    aput v2, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x3

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v6

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    aput v2, v1, v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x6

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x6

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v4, 0x7

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v2, 0x7

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v7

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    aput v2, v1, v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0x9

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v8

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    aput v2, v1, v8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xb

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xc

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xc

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xd

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xd

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v4, 0xe

    aget v3, v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v2, 0xe

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget v3, v3, v5

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aput v0, v1, v5

    return-void
.end method

.method private static MAKEU31(BSB)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x17

    const v1, 0xffff

    and-int/2addr v1, p1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static MAKEU32(BBBB)I
    .locals 2

    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

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

.method private static MulByPow2(II)I
    .locals 2

    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x1f

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    return v0
.end method

.method static ROT(II)I
    .locals 2

    shl-int v0, p0, p1

    rsub-int/lit8 v1, p1, 0x20

    ushr-int v1, p0, v1

    or-int/2addr v0, v1

    return v0
.end method

.method public static encode32be(I[BI)V
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    int-to-byte v1, p0

    aput-byte v1, p1, v0

    return-void
.end method

.method private makeKeyStream()V
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->makeKeyStreamWord()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->encode32be(I[BI)V

    return-void
.end method

.method private setKeyAndIV([B[B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    invoke-virtual {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->setKeyAndIV([I[B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aput v2, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    const/16 v0, 0x20

    :goto_0
    if-lez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BitReorganization()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F()I

    move-result v1

    ushr-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSRWithInitialisationMode(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BitReorganization()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F()I

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSRWithWorkMode()V

    return-void
.end method


# virtual methods
.method F()I
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    aget v0, v0, v8

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v1, v1, v8

    xor-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v1, v1, v9

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v1, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    aget v2, v2, v9

    add-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    aget v2, v2, v9

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v4, 0x2

    aget v3, v3, v4

    xor-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x10

    ushr-int/lit8 v4, v2, 0x10

    or-int/2addr v3, v4

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->L1(I)I

    move-result v3

    shl-int/lit8 v2, v2, 0x10

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->L2(I)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    sget-object v4, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v5, v3, 0x18

    aget-byte v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    ushr-int/lit8 v6, v3, 0x10

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v7, v3, 0x8

    and-int/lit16 v7, v7, 0xff

    aget-byte v6, v6, v7

    sget-object v7, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    and-int/lit16 v3, v3, 0xff

    aget-byte v3, v7, v3

    invoke-static {v4, v5, v6, v3}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU32(BBBB)I

    move-result v3

    aput v3, v2, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v4, v1, 0x18

    aget-byte v3, v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    ushr-int/lit8 v5, v1, 0x10

    and-int/lit16 v5, v5, 0xff

    aget-byte v4, v4, v5

    sget-object v5, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S0:[B

    ushr-int/lit8 v6, v1, 0x8

    and-int/lit16 v6, v6, 0xff

    aget-byte v5, v5, v6

    sget-object v6, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->S1:[B

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v6, v1

    invoke-static {v3, v4, v5, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU32(BBBB)I

    move-result v1

    aput v1, v2, v9

    return v0
.end method

.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;-><init>(Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;)V

    return-object v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Zuc-128"

    return-object v0
.end method

.method protected getMaxIterations()I
    .locals 1

    const/16 v0, 0x7ff

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, 0x0

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :goto_0
    instance-of v3, v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v2

    :cond_0
    iput v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    iput v4, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    invoke-direct {p0, v2, v1}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->setKeyAndIV([B[B)V

    new-instance v1, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    array-length v0, v2

    mul-int/lit8 v2, v0, 0x8

    if-eqz p1, :cond_1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    :goto_1
    invoke-direct {v1, v3, v2, p2, v0}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    return-void

    :cond_1
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_1

    :cond_2
    move-object v1, v2

    move-object v0, p2

    goto :goto_0
.end method

.method protected makeKeyStreamWord()I
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->getMaxIterations()I

    move-result v1

    if-lt v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Too much data processed by singleKey/IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BitReorganization()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    xor-int/2addr v0, v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSRWithWorkMode()V

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->getAlgorithmName()Ljava/lang/String;

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
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_3

    add-int v1, v0, p5

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    invoke-virtual {p0, v2}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->returnByte(B)B

    move-result v2

    aput-byte v2, p4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return p3
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->reset(Lorg/bouncycastle/util/Memoable;)V

    :cond_0
    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 4

    const/4 v3, 0x0

    check-cast p1, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    iget-object v0, p1, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->F:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->BRC:[I

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    iget v0, p1, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIterations:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theResetState:Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;

    return-void
.end method

.method public returnByte(B)B
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->makeKeyStream()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->keyStream:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    add-int/lit8 v1, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    iput v1, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->theIndex:I

    return v0
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

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "A key of 16 bytes is needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An IV of 16 bytes is needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget-byte v1, p2, v4

    sget-object v2, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v4

    aget-byte v3, p3, v4

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, v0, v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget-byte v1, p2, v5

    sget-object v2, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v5

    aget-byte v3, p3, v5

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, v0, v5

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget-byte v1, p2, v6

    sget-object v2, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v6

    aget-byte v3, p3, v6

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, v0, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget-byte v1, p2, v7

    sget-object v2, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v7

    aget-byte v3, p3, v7

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, v0, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    aget-byte v1, p2, v8

    sget-object v2, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    aget-short v2, v2, v8

    aget-byte v3, p3, v8

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v1

    aput v1, v0, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/4 v4, 0x5

    aget-short v3, v3, v4

    const/4 v4, 0x5

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/4 v4, 0x6

    aget-short v3, v3, v4

    const/4 v4, 0x6

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/4 v1, 0x7

    const/4 v2, 0x7

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/4 v4, 0x7

    aget-short v3, v3, v4

    const/4 v4, 0x7

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0x8

    const/16 v2, 0x8

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/16 v4, 0x8

    aget-short v3, v3, v4

    const/16 v4, 0x8

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0x9

    const/16 v2, 0x9

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/16 v4, 0x9

    aget-short v3, v3, v4

    const/16 v4, 0x9

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xa

    const/16 v2, 0xa

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/16 v4, 0xa

    aget-short v3, v3, v4

    const/16 v4, 0xa

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xb

    const/16 v2, 0xb

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/16 v4, 0xb

    aget-short v3, v3, v4

    const/16 v4, 0xb

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xc

    const/16 v2, 0xc

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/16 v4, 0xc

    aget-short v3, v3, v4

    const/16 v4, 0xc

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xd

    const/16 v2, 0xd

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/16 v4, 0xd

    aget-short v3, v3, v4

    const/16 v4, 0xd

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xe

    const/16 v2, 0xe

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/16 v4, 0xe

    aget-short v3, v3, v4

    const/16 v4, 0xe

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->LFSR:[I

    const/16 v1, 0xf

    const/16 v2, 0xf

    aget-byte v2, p2, v2

    sget-object v3, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->EK_d:[S

    const/16 v4, 0xf

    aget-short v3, v3, v4

    const/16 v4, 0xf

    aget-byte v4, p3, v4

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/crypto/engines/Zuc128CoreEngine;->MAKEU31(BSB)I

    move-result v2

    aput v2, v0, v1

    return-void
.end method
