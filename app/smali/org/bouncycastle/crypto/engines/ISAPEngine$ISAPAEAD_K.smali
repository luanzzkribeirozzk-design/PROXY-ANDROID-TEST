.class abstract Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/ISAPEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ISAPAEAD_K"
.end annotation


# instance fields
.field protected C:[S

.field protected E:[S

.field protected ISAP_IV1_16:[S

.field protected ISAP_IV2_16:[S

.field protected ISAP_IV3_16:[S

.field final ISAP_STATE_SZ_CRYPTO_NPUBBYTES:I

.field private final KeccakF400RoundConstants:[I

.field protected SX:[S

.field protected iv16:[S

.field protected k16:[S

.field final synthetic this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V
    .locals 2

    const/16 v1, 0x19

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_STATE_SZ_CRYPTO_NPUBBYTES:I

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->KeccakF400RoundConstants:[I

    new-array v0, v1, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    const/4 v0, 0x5

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    const/16 v0, 0x90

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$002(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$000(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    shr-int/lit8 v0, v0, 0x3

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$102(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I

    return-void

    :array_0
    .array-data 4
        0x1
        0x8082
        0x808a
        0x8000
        0x808b
        0x1
        0x8081
        0x8009
        0x8a
        0x88
        0x8009
        0xa
        0x808b
        0x8b
        0x8089
        0x8003
        0x8002
        0x80
        0x800a
        0xa
    .end array-data
.end method

.method private ROL16(SI)S
    .locals 3

    const v1, 0xffff

    and-int v0, p1, v1

    shl-int/2addr v0, p2

    and-int/2addr v1, p1

    rsub-int/lit8 v2, p2, 0x10

    ushr-int/2addr v1, v2

    xor-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private byteToShort([B[SI)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    shl-int/lit8 v1, v0, 0x1

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private byteToShortXor([B[SI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-short v1, p2, v0

    shl-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shortToByte([S[BI)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    aget-short v1, p1, v0

    shl-int/lit8 v2, v0, 0x1

    add-int/2addr v2, p3

    invoke-static {v1, p2, v2}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected ABSORB_MAC([S[BI[S[S)V
    .locals 6

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    if-le p3, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p2, p1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShortXor([B[SI)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    sub-int/2addr p3, v2

    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    if-ne p3, v2, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShortXor([B[SI)V

    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    aget-short v0, p1, v1

    xor-int/lit16 v0, v0, 0x80

    int-to-short v0, v0

    aput-short v0, p1, v1

    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    :goto_1
    return-void

    :cond_1
    :goto_2
    if-ge v1, p3, :cond_2

    shr-int/lit8 v3, v1, 0x1

    aget-short v4, p1, v3

    add-int/lit8 v2, v0, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    and-int/lit8 v5, v1, 0x1

    shl-int/lit8 v5, v5, 0x3

    shl-int/2addr v0, v5

    xor-int/2addr v0, v4

    int-to-short v0, v0

    aput-short v0, p1, v3

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_2

    :cond_2
    shr-int/lit8 v0, p3, 0x1

    aget-short v1, p1, v0

    const/16 v2, 0x80

    and-int/lit8 v3, p3, 0x1

    shl-int/lit8 v3, v3, 0x3

    shl-int/2addr v2, v3

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p1, v0

    invoke-virtual {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    goto :goto_1
.end method

.method protected abstract PermuteRoundsBX([S[S[S)V
.end method

.method protected abstract PermuteRoundsHX([S[S[S)V
.end method

.method protected abstract PermuteRoundsKX([S[S[S)V
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShort([B[SI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    array-length v0, v0

    shr-int/lit8 v0, v0, 0x1

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->byteToShort([B[SI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->reset()V

    return-void
.end method

.method public isap_enc([BII[BII)V
    .locals 6

    const/4 v1, 0x0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    if-lt p3, v0, :cond_1

    move v0, v1

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v2

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, p5, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    shr-int/lit8 v4, v0, 0x1

    aget-short v3, v3, v4

    and-int/lit8 v4, v0, 0x1

    shl-int/lit8 v4, v4, 0x3

    ushr-int v4, v3, v4

    add-int/lit8 v3, p2, 0x1

    aget-byte v5, p1, p2

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, p4, p5

    add-int/lit8 v0, v0, 0x1

    move p5, v2

    move p2, v3

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I

    move-result v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    goto :goto_0

    :cond_1
    :goto_2
    if-ge v1, p3, :cond_2

    add-int/lit8 v0, p5, 0x1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    shr-int/lit8 v3, v1, 0x1

    aget-short v2, v2, v3

    and-int/lit8 v3, v1, 0x1

    shl-int/lit8 v3, v3, 0x3

    ushr-int v3, v2, v3

    add-int/lit8 v2, p2, 0x1

    aget-byte v4, p1, p2

    xor-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, p4, p5

    add-int/lit8 v1, v1, 0x1

    move p5, v0

    move p2, v2

    goto :goto_2

    :cond_2
    return-void
.end method

.method public isap_mac([BI[BI[BI)V
    .locals 8

    const/16 v7, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x0

    const/16 v0, 0x19

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    invoke-static {v0, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV1_16:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/4 v2, 0x4

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ABSORB_MAC([S[BI[S[S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v1, 0x18

    aget-short v2, v0, v1

    xor-int/lit16 v2, v2, 0x100

    int-to-short v2, v2

    aput-short v2, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    move-object v0, p0

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ABSORB_MAC([S[BI[S[S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    invoke-direct {p0, v0, p5, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->shortToByte([S[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV2_16:[S

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    move-object v0, p0

    move-object v2, p5

    move v3, v7

    move v5, v7

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->isap_rk([S[BI[SI[S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsHX([S[S[S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    invoke-direct {p0, v0, p5, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->shortToByte([S[BI)V

    return-void
.end method

.method public isap_rk([S[BI[SI[S)V
    .locals 8

    const/16 v1, 0x19

    const/16 v0, 0x8

    const/4 v2, 0x0

    new-array v3, v1, [S

    new-array v4, v1, [S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->k16:[S

    invoke-static {v1, v2, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x4

    invoke-static {p1, v2, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v3, v4, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    move v1, v2

    :goto_0
    shl-int/lit8 v5, p3, 0x3

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_0

    aget-short v5, v3, v2

    shr-int/lit8 v6, v1, 0x3

    aget-byte v6, p2, v6

    and-int/lit8 v7, v1, 0x7

    rsub-int/lit8 v7, v7, 0x7

    ushr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x1

    shl-int/lit8 v6, v6, 0x7

    xor-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, v3, v2

    invoke-virtual {p0, v3, v4, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsBX([S[S[S)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-short v1, v3, v2

    add-int/lit8 v5, p3, -0x1

    aget-byte v5, p2, v5

    and-int/lit8 v5, v5, 0x1

    shl-int/lit8 v5, v5, 0x7

    xor-int/2addr v1, v5

    int-to-short v1, v1

    aput-short v1, v3, v2

    invoke-virtual {p0, v3, v4, p6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    const/16 v1, 0x18

    if-ne p5, v1, :cond_1

    const/16 v0, 0x11

    :cond_1
    invoke-static {v3, v2, p4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method protected prepareThetaX([S[S)V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget-short v0, p1, v2

    const/4 v1, 0x5

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xa

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xf

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x14

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, v2

    aget-short v0, p1, v3

    const/4 v1, 0x6

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xb

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x15

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, v3

    aget-short v0, p1, v4

    const/4 v1, 0x7

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x11

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x16

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, v4

    aget-short v0, p1, v5

    const/16 v1, 0x8

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xd

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x12

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x17

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, v5

    aget-short v0, p1, v6

    const/16 v1, 0x9

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0xe

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x13

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    const/16 v1, 0x18

    aget-short v1, p1, v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    aput-short v0, p2, v6

    return-void
.end method

.method public reset()V
    .locals 7

    const/16 v1, 0x19

    new-array v0, v1, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    new-array v0, v1, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    const/4 v0, 0x5

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ISAP_IV3_16:[S

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->this$0:Lorg/bouncycastle/crypto/engines/ISAPEngine;

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B

    move-result-object v2

    const/16 v3, 0x10

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v5, 0x18

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->isap_rk([S[BI[SI[S)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->iv16:[S

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    const/16 v3, 0x11

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->SX:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->E:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->C:[S

    invoke-virtual {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->PermuteRoundsKX([S[S[S)V

    return-void
.end method

.method protected rounds12X([S[S[S)V
    .locals 0

    invoke-virtual {p0, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->prepareThetaX([S[S)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_8_18([S[S[S)V

    return-void
.end method

.method protected rounds_12_18([S[S[S)V
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xd

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0x11

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0x12

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    invoke-virtual {p0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIota([S[S[S)V

    return-void
.end method

.method protected rounds_4_18([S[S[S)V
    .locals 1

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_8_18([S[S[S)V

    return-void
.end method

.method protected rounds_8_18([S[S[S)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0x9

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    const/16 v0, 0xb

    invoke-virtual {p0, v0, p2, p1, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->rounds_12_18([S[S[S)V

    return-void
.end method

.method protected thetaRhoPiChiIota([S[S[S)V
    .locals 14

    const/4 v0, 0x4

    aget-short v0, p3, v0

    const/4 v1, 0x1

    aget-short v1, p3, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    const/4 v1, 0x0

    aget-short v1, p3, v1

    const/4 v2, 0x2

    aget-short v2, p3, v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    const/4 v2, 0x1

    aget-short v2, p3, v2

    const/4 v3, 0x3

    aget-short v3, p3, v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    xor-int/2addr v2, v3

    int-to-short v2, v2

    const/4 v3, 0x2

    aget-short v3, p3, v3

    const/4 v4, 0x4

    aget-short v4, p3, v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    xor-int/2addr v3, v4

    int-to-short v3, v3

    const/4 v4, 0x3

    aget-short v4, p3, v4

    const/4 v5, 0x0

    aget-short v5, p3, v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    xor-int/2addr v4, v5

    int-to-short v4, v4

    const/4 v5, 0x0

    aget-short v6, p1, v5

    xor-int/2addr v6, v0

    int-to-short v6, v6

    aput-short v6, p1, v5

    const/4 v5, 0x6

    aget-short v7, p1, v5

    xor-int/2addr v7, v1

    int-to-short v7, v7

    aput-short v7, p1, v5

    const/4 v5, 0x6

    aget-short v5, p1, v5

    const/16 v7, 0xc

    invoke-direct {p0, v5, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    const/16 v7, 0xc

    aget-short v8, p1, v7

    xor-int/2addr v8, v2

    int-to-short v8, v8

    aput-short v8, p1, v7

    const/16 v7, 0xc

    aget-short v7, p1, v7

    const/16 v8, 0xb

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    const/16 v8, 0x12

    aget-short v9, p1, v8

    xor-int/2addr v9, v3

    int-to-short v9, v9

    aput-short v9, p1, v8

    const/16 v8, 0x12

    aget-short v8, p1, v8

    const/4 v9, 0x5

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v9, 0x18

    aget-short v10, p1, v9

    xor-int/2addr v10, v4

    int-to-short v10, v10

    aput-short v10, p1, v9

    const/16 v9, 0x18

    aget-short v9, p1, v9

    const/16 v10, 0xe

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    const/4 v10, 0x0

    xor-int/lit8 v11, v5, -0x1

    and-int/2addr v11, v7

    xor-int/2addr v11, v6

    iget-object v12, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->KeccakF400RoundConstants:[I

    const/16 v13, 0x13

    aget v12, v12, v13

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p2, v10

    const/4 v10, 0x1

    xor-int/lit8 v11, v7, -0x1

    and-int/2addr v11, v8

    xor-int/2addr v11, v5

    int-to-short v11, v11

    aput-short v11, p2, v10

    const/4 v10, 0x2

    xor-int/lit8 v11, v8, -0x1

    and-int/2addr v11, v9

    xor-int/2addr v7, v11

    int-to-short v7, v7

    aput-short v7, p2, v10

    const/4 v7, 0x3

    xor-int/lit8 v10, v9, -0x1

    and-int/2addr v10, v6

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p2, v7

    const/4 v7, 0x4

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p2, v7

    const/4 v5, 0x3

    aget-short v6, p1, v5

    xor-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, p1, v5

    const/4 v5, 0x3

    aget-short v5, p1, v5

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    const/16 v6, 0x9

    aget-short v7, p1, v6

    xor-int/2addr v7, v4

    int-to-short v7, v7

    aput-short v7, p1, v6

    const/16 v6, 0x9

    aget-short v6, p1, v6

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    const/16 v7, 0xa

    aget-short v8, p1, v7

    xor-int/2addr v8, v0

    int-to-short v8, v8

    aput-short v8, p1, v7

    const/16 v7, 0xa

    aget-short v7, p1, v7

    const/4 v8, 0x3

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    const/16 v8, 0x10

    aget-short v9, p1, v8

    xor-int/2addr v9, v1

    int-to-short v9, v9

    aput-short v9, p1, v8

    const/16 v8, 0x10

    aget-short v8, p1, v8

    const/16 v9, 0xd

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v9, 0x16

    aget-short v10, p1, v9

    xor-int/2addr v10, v2

    int-to-short v10, v10

    aput-short v10, p1, v9

    const/16 v9, 0x16

    aget-short v9, p1, v9

    const/16 v10, 0xd

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    const/4 v10, 0x5

    xor-int/lit8 v11, v6, -0x1

    and-int/2addr v11, v7

    xor-int/2addr v11, v5

    int-to-short v11, v11

    aput-short v11, p2, v10

    const/4 v10, 0x6

    xor-int/lit8 v11, v7, -0x1

    and-int/2addr v11, v8

    xor-int/2addr v11, v6

    int-to-short v11, v11

    aput-short v11, p2, v10

    const/4 v10, 0x7

    xor-int/lit8 v11, v8, -0x1

    and-int/2addr v11, v9

    xor-int/2addr v7, v11

    int-to-short v7, v7

    aput-short v7, p2, v10

    const/16 v7, 0x8

    xor-int/lit8 v10, v9, -0x1

    and-int/2addr v10, v5

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p2, v7

    const/16 v7, 0x9

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v6

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p2, v7

    const/4 v5, 0x1

    aget-short v6, p1, v5

    xor-int/2addr v6, v1

    int-to-short v6, v6

    aput-short v6, p1, v5

    const/4 v5, 0x1

    aget-short v5, p1, v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    const/4 v6, 0x7

    aget-short v7, p1, v6

    xor-int/2addr v7, v2

    int-to-short v7, v7

    aput-short v7, p1, v6

    const/4 v6, 0x7

    aget-short v6, p1, v6

    const/4 v7, 0x6

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    const/16 v7, 0xd

    aget-short v8, p1, v7

    xor-int/2addr v8, v3

    int-to-short v8, v8

    aput-short v8, p1, v7

    const/16 v7, 0xd

    aget-short v7, p1, v7

    const/16 v8, 0x9

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    const/16 v8, 0x13

    aget-short v9, p1, v8

    xor-int/2addr v9, v4

    int-to-short v9, v9

    aput-short v9, p1, v8

    const/16 v8, 0x13

    aget-short v8, p1, v8

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v9, 0x14

    aget-short v10, p1, v9

    xor-int/2addr v10, v0

    int-to-short v10, v10

    aput-short v10, p1, v9

    const/16 v9, 0x14

    aget-short v9, p1, v9

    const/4 v10, 0x2

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    const/16 v10, 0xa

    xor-int/lit8 v11, v6, -0x1

    and-int/2addr v11, v7

    xor-int/2addr v11, v5

    int-to-short v11, v11

    aput-short v11, p2, v10

    const/16 v10, 0xb

    xor-int/lit8 v11, v7, -0x1

    and-int/2addr v11, v8

    xor-int/2addr v11, v6

    int-to-short v11, v11

    aput-short v11, p2, v10

    const/16 v10, 0xc

    xor-int/lit8 v11, v8, -0x1

    and-int/2addr v11, v9

    xor-int/2addr v7, v11

    int-to-short v7, v7

    aput-short v7, p2, v10

    const/16 v7, 0xd

    xor-int/lit8 v10, v9, -0x1

    and-int/2addr v10, v5

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p2, v7

    const/16 v7, 0xe

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v6

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p2, v7

    const/4 v5, 0x4

    aget-short v6, p1, v5

    xor-int/2addr v6, v4

    int-to-short v6, v6

    aput-short v6, p1, v5

    const/4 v5, 0x4

    aget-short v5, p1, v5

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    const/4 v6, 0x5

    aget-short v7, p1, v6

    xor-int/2addr v7, v0

    int-to-short v7, v7

    aput-short v7, p1, v6

    const/4 v6, 0x5

    aget-short v6, p1, v6

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    const/16 v7, 0xb

    aget-short v8, p1, v7

    xor-int/2addr v8, v1

    int-to-short v8, v8

    aput-short v8, p1, v7

    const/16 v7, 0xb

    aget-short v7, p1, v7

    const/16 v8, 0xa

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    const/16 v8, 0x11

    aget-short v9, p1, v8

    xor-int/2addr v9, v2

    int-to-short v9, v9

    aput-short v9, p1, v8

    const/16 v8, 0x11

    aget-short v8, p1, v8

    const/16 v9, 0xf

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v9, 0x17

    aget-short v10, p1, v9

    xor-int/2addr v10, v3

    int-to-short v10, v10

    aput-short v10, p1, v9

    const/16 v9, 0x17

    aget-short v9, p1, v9

    const/16 v10, 0x8

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    const/16 v10, 0xf

    xor-int/lit8 v11, v6, -0x1

    and-int/2addr v11, v7

    xor-int/2addr v11, v5

    int-to-short v11, v11

    aput-short v11, p2, v10

    const/16 v10, 0x10

    xor-int/lit8 v11, v7, -0x1

    and-int/2addr v11, v8

    xor-int/2addr v11, v6

    int-to-short v11, v11

    aput-short v11, p2, v10

    const/16 v10, 0x11

    xor-int/lit8 v11, v8, -0x1

    and-int/2addr v11, v9

    xor-int/2addr v7, v11

    int-to-short v7, v7

    aput-short v7, p2, v10

    const/16 v7, 0x12

    xor-int/lit8 v10, v9, -0x1

    and-int/2addr v10, v5

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p2, v7

    const/16 v7, 0x13

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v6

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p2, v7

    const/4 v5, 0x2

    aget-short v6, p1, v5

    xor-int/2addr v2, v6

    int-to-short v2, v2

    aput-short v2, p1, v5

    const/4 v2, 0x2

    aget-short v2, p1, v2

    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v2

    const/16 v5, 0x8

    aget-short v6, p1, v5

    xor-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, p1, v5

    const/16 v3, 0x8

    aget-short v3, p1, v3

    const/4 v5, 0x7

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    const/16 v5, 0xe

    aget-short v6, p1, v5

    xor-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p1, v5

    const/16 v4, 0xe

    aget-short v4, p1, v4

    const/4 v5, 0x7

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    const/16 v5, 0xf

    aget-short v6, p1, v5

    xor-int/2addr v0, v6

    int-to-short v0, v0

    aput-short v0, p1, v5

    const/16 v0, 0xf

    aget-short v0, p1, v0

    const/16 v5, 0x9

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v0

    const/16 v5, 0x15

    aget-short v6, p1, v5

    xor-int/2addr v1, v6

    int-to-short v1, v1

    aput-short v1, p1, v5

    const/16 v1, 0x15

    aget-short v1, p1, v1

    const/4 v5, 0x2

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    const/16 v5, 0x14

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v4

    xor-int/2addr v6, v2

    int-to-short v6, v6

    aput-short v6, p2, v5

    const/16 v5, 0x15

    xor-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v0

    xor-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, p2, v5

    const/16 v5, 0x16

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v1

    xor-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p2, v5

    const/16 v4, 0x17

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v2

    xor-int/2addr v0, v5

    int-to-short v0, v0

    aput-short v0, p2, v4

    const/16 v0, 0x18

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p2, v0

    return-void
.end method

.method protected thetaRhoPiChiIotaPrepareTheta(I[S[S[S)V
    .locals 14

    const/4 v0, 0x4

    aget-short v0, p4, v0

    const/4 v1, 0x1

    aget-short v1, p4, v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    xor-int/2addr v0, v1

    int-to-short v0, v0

    const/4 v1, 0x0

    aget-short v1, p4, v1

    const/4 v2, 0x2

    aget-short v2, p4, v2

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    const/4 v2, 0x1

    aget-short v2, p4, v2

    const/4 v3, 0x3

    aget-short v3, p4, v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    xor-int/2addr v2, v3

    int-to-short v2, v2

    const/4 v3, 0x2

    aget-short v3, p4, v3

    const/4 v4, 0x4

    aget-short v4, p4, v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    xor-int/2addr v3, v4

    int-to-short v3, v3

    const/4 v4, 0x3

    aget-short v4, p4, v4

    const/4 v5, 0x0

    aget-short v5, p4, v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    xor-int/2addr v4, v5

    int-to-short v4, v4

    const/4 v5, 0x0

    aget-short v6, p2, v5

    xor-int/2addr v6, v0

    int-to-short v6, v6

    aput-short v6, p2, v5

    const/4 v5, 0x6

    aget-short v7, p2, v5

    xor-int/2addr v7, v1

    int-to-short v7, v7

    aput-short v7, p2, v5

    const/4 v5, 0x6

    aget-short v5, p2, v5

    const/16 v7, 0xc

    invoke-direct {p0, v5, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    const/16 v7, 0xc

    aget-short v8, p2, v7

    xor-int/2addr v8, v2

    int-to-short v8, v8

    aput-short v8, p2, v7

    const/16 v7, 0xc

    aget-short v7, p2, v7

    const/16 v8, 0xb

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    const/16 v8, 0x12

    aget-short v9, p2, v8

    xor-int/2addr v9, v3

    int-to-short v9, v9

    aput-short v9, p2, v8

    const/16 v8, 0x12

    aget-short v8, p2, v8

    const/4 v9, 0x5

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v9, 0x18

    aget-short v10, p2, v9

    xor-int/2addr v10, v4

    int-to-short v10, v10

    aput-short v10, p2, v9

    const/16 v9, 0x18

    aget-short v9, p2, v9

    const/16 v10, 0xe

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    xor-int/lit8 v12, v5, -0x1

    and-int/2addr v12, v7

    xor-int/2addr v12, v6

    iget-object v13, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->KeccakF400RoundConstants:[I

    aget v13, v13, p1

    xor-int/2addr v12, v13

    int-to-short v12, v12

    aput-short v12, p3, v11

    aput-short v12, p4, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    xor-int/lit8 v12, v7, -0x1

    and-int/2addr v12, v8

    xor-int/2addr v12, v5

    int-to-short v12, v12

    aput-short v12, p3, v11

    aput-short v12, p4, v10

    const/4 v10, 0x2

    const/4 v11, 0x2

    xor-int/lit8 v12, v8, -0x1

    and-int/2addr v12, v9

    xor-int/2addr v7, v12

    int-to-short v7, v7

    aput-short v7, p3, v11

    aput-short v7, p4, v10

    const/4 v7, 0x3

    const/4 v10, 0x3

    xor-int/lit8 v11, v9, -0x1

    and-int/2addr v11, v6

    xor-int/2addr v8, v11

    int-to-short v8, v8

    aput-short v8, p3, v10

    aput-short v8, p4, v7

    const/4 v7, 0x4

    const/4 v8, 0x4

    xor-int/lit8 v6, v6, -0x1

    and-int/2addr v5, v6

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p3, v8

    aput-short v5, p4, v7

    const/4 v5, 0x3

    aget-short v6, p2, v5

    xor-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, p2, v5

    const/4 v5, 0x3

    aget-short v5, p2, v5

    const/16 v6, 0xc

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    const/16 v6, 0x9

    aget-short v7, p2, v6

    xor-int/2addr v7, v4

    int-to-short v7, v7

    aput-short v7, p2, v6

    const/16 v6, 0x9

    aget-short v6, p2, v6

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    const/16 v7, 0xa

    aget-short v8, p2, v7

    xor-int/2addr v8, v0

    int-to-short v8, v8

    aput-short v8, p2, v7

    const/16 v7, 0xa

    aget-short v7, p2, v7

    const/4 v8, 0x3

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    const/16 v8, 0x10

    aget-short v9, p2, v8

    xor-int/2addr v9, v1

    int-to-short v9, v9

    aput-short v9, p2, v8

    const/16 v8, 0x10

    aget-short v8, p2, v8

    const/16 v9, 0xd

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v9, 0x16

    aget-short v10, p2, v9

    xor-int/2addr v10, v2

    int-to-short v10, v10

    aput-short v10, p2, v9

    const/16 v9, 0x16

    aget-short v9, p2, v9

    const/16 v10, 0xd

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    const/4 v10, 0x5

    xor-int/lit8 v11, v6, -0x1

    and-int/2addr v11, v7

    xor-int/2addr v11, v5

    int-to-short v11, v11

    aput-short v11, p3, v10

    const/4 v10, 0x0

    aget-short v11, p4, v10

    const/4 v12, 0x5

    aget-short v12, p3, v12

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v10

    const/4 v10, 0x6

    xor-int/lit8 v11, v7, -0x1

    and-int/2addr v11, v8

    xor-int/2addr v11, v6

    int-to-short v11, v11

    aput-short v11, p3, v10

    const/4 v10, 0x1

    aget-short v11, p4, v10

    const/4 v12, 0x6

    aget-short v12, p3, v12

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v10

    const/4 v10, 0x7

    xor-int/lit8 v11, v8, -0x1

    and-int/2addr v11, v9

    xor-int/2addr v7, v11

    int-to-short v7, v7

    aput-short v7, p3, v10

    const/4 v7, 0x2

    aget-short v10, p4, v7

    const/4 v11, 0x7

    aget-short v11, p3, v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, p4, v7

    const/16 v7, 0x8

    xor-int/lit8 v10, v9, -0x1

    and-int/2addr v10, v5

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p3, v7

    const/4 v7, 0x3

    aget-short v8, p4, v7

    const/16 v10, 0x8

    aget-short v10, p3, v10

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p4, v7

    const/16 v7, 0x9

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v6

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p3, v7

    const/4 v5, 0x4

    aget-short v6, p4, v5

    const/16 v7, 0x9

    aget-short v7, p3, v7

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p4, v5

    const/4 v5, 0x1

    aget-short v6, p2, v5

    xor-int/2addr v6, v1

    int-to-short v6, v6

    aput-short v6, p2, v5

    const/4 v5, 0x1

    aget-short v5, p2, v5

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    const/4 v6, 0x7

    aget-short v7, p2, v6

    xor-int/2addr v7, v2

    int-to-short v7, v7

    aput-short v7, p2, v6

    const/4 v6, 0x7

    aget-short v6, p2, v6

    const/4 v7, 0x6

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    const/16 v7, 0xd

    aget-short v8, p2, v7

    xor-int/2addr v8, v3

    int-to-short v8, v8

    aput-short v8, p2, v7

    const/16 v7, 0xd

    aget-short v7, p2, v7

    const/16 v8, 0x9

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    const/16 v8, 0x13

    aget-short v9, p2, v8

    xor-int/2addr v9, v4

    int-to-short v9, v9

    aput-short v9, p2, v8

    const/16 v8, 0x13

    aget-short v8, p2, v8

    const/16 v9, 0x8

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v9, 0x14

    aget-short v10, p2, v9

    xor-int/2addr v10, v0

    int-to-short v10, v10

    aput-short v10, p2, v9

    const/16 v9, 0x14

    aget-short v9, p2, v9

    const/4 v10, 0x2

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    const/16 v10, 0xa

    xor-int/lit8 v11, v6, -0x1

    and-int/2addr v11, v7

    xor-int/2addr v11, v5

    int-to-short v11, v11

    aput-short v11, p3, v10

    const/4 v10, 0x0

    aget-short v11, p4, v10

    const/16 v12, 0xa

    aget-short v12, p3, v12

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v10

    const/16 v10, 0xb

    xor-int/lit8 v11, v7, -0x1

    and-int/2addr v11, v8

    xor-int/2addr v11, v6

    int-to-short v11, v11

    aput-short v11, p3, v10

    const/4 v10, 0x1

    aget-short v11, p4, v10

    const/16 v12, 0xb

    aget-short v12, p3, v12

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v10

    const/16 v10, 0xc

    xor-int/lit8 v11, v8, -0x1

    and-int/2addr v11, v9

    xor-int/2addr v7, v11

    int-to-short v7, v7

    aput-short v7, p3, v10

    const/4 v7, 0x2

    aget-short v10, p4, v7

    const/16 v11, 0xc

    aget-short v11, p3, v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, p4, v7

    const/16 v7, 0xd

    xor-int/lit8 v10, v9, -0x1

    and-int/2addr v10, v5

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p3, v7

    const/4 v7, 0x3

    aget-short v8, p4, v7

    const/16 v10, 0xd

    aget-short v10, p3, v10

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p4, v7

    const/16 v7, 0xe

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v6

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p3, v7

    const/4 v5, 0x4

    aget-short v6, p4, v5

    const/16 v7, 0xe

    aget-short v7, p3, v7

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p4, v5

    const/4 v5, 0x4

    aget-short v6, p2, v5

    xor-int/2addr v6, v4

    int-to-short v6, v6

    aput-short v6, p2, v5

    const/4 v5, 0x4

    aget-short v5, p2, v5

    const/16 v6, 0xb

    invoke-direct {p0, v5, v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v5

    const/4 v6, 0x5

    aget-short v7, p2, v6

    xor-int/2addr v7, v0

    int-to-short v7, v7

    aput-short v7, p2, v6

    const/4 v6, 0x5

    aget-short v6, p2, v6

    const/4 v7, 0x4

    invoke-direct {p0, v6, v7}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v6

    const/16 v7, 0xb

    aget-short v8, p2, v7

    xor-int/2addr v8, v1

    int-to-short v8, v8

    aput-short v8, p2, v7

    const/16 v7, 0xb

    aget-short v7, p2, v7

    const/16 v8, 0xa

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v7

    const/16 v8, 0x11

    aget-short v9, p2, v8

    xor-int/2addr v9, v2

    int-to-short v9, v9

    aput-short v9, p2, v8

    const/16 v8, 0x11

    aget-short v8, p2, v8

    const/16 v9, 0xf

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v8

    const/16 v9, 0x17

    aget-short v10, p2, v9

    xor-int/2addr v10, v3

    int-to-short v10, v10

    aput-short v10, p2, v9

    const/16 v9, 0x17

    aget-short v9, p2, v9

    const/16 v10, 0x8

    invoke-direct {p0, v9, v10}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v9

    const/16 v10, 0xf

    xor-int/lit8 v11, v6, -0x1

    and-int/2addr v11, v7

    xor-int/2addr v11, v5

    int-to-short v11, v11

    aput-short v11, p3, v10

    const/4 v10, 0x0

    aget-short v11, p4, v10

    const/16 v12, 0xf

    aget-short v12, p3, v12

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v10

    const/16 v10, 0x10

    xor-int/lit8 v11, v7, -0x1

    and-int/2addr v11, v8

    xor-int/2addr v11, v6

    int-to-short v11, v11

    aput-short v11, p3, v10

    const/4 v10, 0x1

    aget-short v11, p4, v10

    const/16 v12, 0x10

    aget-short v12, p3, v12

    xor-int/2addr v11, v12

    int-to-short v11, v11

    aput-short v11, p4, v10

    const/16 v10, 0x11

    xor-int/lit8 v11, v8, -0x1

    and-int/2addr v11, v9

    xor-int/2addr v7, v11

    int-to-short v7, v7

    aput-short v7, p3, v10

    const/4 v7, 0x2

    aget-short v10, p4, v7

    const/16 v11, 0x11

    aget-short v11, p3, v11

    xor-int/2addr v10, v11

    int-to-short v10, v10

    aput-short v10, p4, v7

    const/16 v7, 0x12

    xor-int/lit8 v10, v9, -0x1

    and-int/2addr v10, v5

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p3, v7

    const/4 v7, 0x3

    aget-short v8, p4, v7

    const/16 v10, 0x12

    aget-short v10, p3, v10

    xor-int/2addr v8, v10

    int-to-short v8, v8

    aput-short v8, p4, v7

    const/16 v7, 0x13

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v5, v6

    xor-int/2addr v5, v9

    int-to-short v5, v5

    aput-short v5, p3, v7

    const/4 v5, 0x4

    aget-short v6, p4, v5

    const/16 v7, 0x13

    aget-short v7, p3, v7

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p4, v5

    const/4 v5, 0x2

    aget-short v6, p2, v5

    xor-int/2addr v2, v6

    int-to-short v2, v2

    aput-short v2, p2, v5

    const/4 v2, 0x2

    aget-short v2, p2, v2

    const/16 v5, 0xe

    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v2

    const/16 v5, 0x8

    aget-short v6, p2, v5

    xor-int/2addr v3, v6

    int-to-short v3, v3

    aput-short v3, p2, v5

    const/16 v3, 0x8

    aget-short v3, p2, v3

    const/4 v5, 0x7

    invoke-direct {p0, v3, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v3

    const/16 v5, 0xe

    aget-short v6, p2, v5

    xor-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p2, v5

    const/16 v4, 0xe

    aget-short v4, p2, v4

    const/4 v5, 0x7

    invoke-direct {p0, v4, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v4

    const/16 v5, 0xf

    aget-short v6, p2, v5

    xor-int/2addr v0, v6

    int-to-short v0, v0

    aput-short v0, p2, v5

    const/16 v0, 0xf

    aget-short v0, p2, v0

    const/16 v5, 0x9

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v0

    const/16 v5, 0x15

    aget-short v6, p2, v5

    xor-int/2addr v1, v6

    int-to-short v1, v1

    aput-short v1, p2, v5

    const/16 v1, 0x15

    aget-short v1, p2, v1

    const/4 v5, 0x2

    invoke-direct {p0, v1, v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;->ROL16(SI)S

    move-result v1

    const/16 v5, 0x14

    xor-int/lit8 v6, v3, -0x1

    and-int/2addr v6, v4

    xor-int/2addr v6, v2

    int-to-short v6, v6

    aput-short v6, p3, v5

    const/4 v5, 0x0

    aget-short v6, p4, v5

    const/16 v7, 0x14

    aget-short v7, p3, v7

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p4, v5

    const/16 v5, 0x15

    xor-int/lit8 v6, v4, -0x1

    and-int/2addr v6, v0

    xor-int/2addr v6, v3

    int-to-short v6, v6

    aput-short v6, p3, v5

    const/4 v5, 0x1

    aget-short v6, p4, v5

    const/16 v7, 0x15

    aget-short v7, p3, v7

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, p4, v5

    const/16 v5, 0x16

    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v6, v1

    xor-int/2addr v4, v6

    int-to-short v4, v4

    aput-short v4, p3, v5

    const/4 v4, 0x2

    aget-short v5, p4, v4

    const/16 v6, 0x16

    aget-short v6, p3, v6

    xor-int/2addr v5, v6

    int-to-short v5, v5

    aput-short v5, p4, v4

    const/16 v4, 0x17

    xor-int/lit8 v5, v1, -0x1

    and-int/2addr v5, v2

    xor-int/2addr v0, v5

    int-to-short v0, v0

    aput-short v0, p3, v4

    const/4 v0, 0x3

    aget-short v4, p4, v0

    const/16 v5, 0x17

    aget-short v5, p3, v5

    xor-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, p4, v0

    const/16 v0, 0x18

    xor-int/lit8 v2, v2, -0x1

    and-int/2addr v2, v3

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p3, v0

    const/4 v0, 0x4

    aget-short v1, p4, v0

    const/16 v2, 0x18

    aget-short v2, p3, v2

    xor-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, p4, v0

    return-void
.end method
