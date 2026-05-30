.class Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;
.super Ljava/lang/Object;


# instance fields
.field bd:[B

.field bdummy_u64:J

.field convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

.field ptr:I

.field sd:[B

.field sdummy_u64:J

.field type:I


# direct methods
.method constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bdummy_u64:J

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    iput-wide v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sdummy_u64:J

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->type:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    return-void
.end method

.method private QROUND(IIII[I)V
    .locals 2

    aget v0, p5, p1

    aget v1, p5, p2

    add-int/2addr v0, v1

    aput v0, p5, p1

    aget v0, p5, p4

    aget v1, p5, p1

    xor-int/2addr v0, v1

    aput v0, p5, p4

    aget v0, p5, p4

    shl-int/lit8 v0, v0, 0x10

    aget v1, p5, p4

    ushr-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    aput v0, p5, p4

    aget v0, p5, p3

    aget v1, p5, p4

    add-int/2addr v0, v1

    aput v0, p5, p3

    aget v0, p5, p2

    aget v1, p5, p3

    xor-int/2addr v0, v1

    aput v0, p5, p2

    aget v0, p5, p2

    shl-int/lit8 v0, v0, 0xc

    aget v1, p5, p2

    ushr-int/lit8 v1, v1, 0x14

    or-int/2addr v0, v1

    aput v0, p5, p2

    aget v0, p5, p1

    aget v1, p5, p2

    add-int/2addr v0, v1

    aput v0, p5, p1

    aget v0, p5, p4

    aget v1, p5, p1

    xor-int/2addr v0, v1

    aput v0, p5, p4

    aget v0, p5, p4

    shl-int/lit8 v0, v0, 0x8

    aget v1, p5, p4

    ushr-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    aput v0, p5, p4

    aget v0, p5, p3

    aget v1, p5, p4

    add-int/2addr v0, v1

    aput v0, p5, p3

    aget v0, p5, p2

    aget v1, p5, p3

    xor-int/2addr v0, v1

    aput v0, p5, p2

    aget v0, p5, p2

    shl-int/lit8 v0, v0, 0x7

    aget v1, p5, p2

    ushr-int/lit8 v1, v1, 0x19

    or-int/2addr v0, v1

    aput v0, p5, p2

    return-void
.end method


# virtual methods
.method prng_get_bytes([BII)V
    .locals 4

    move v1, p3

    :cond_0
    :goto_0
    if-lez v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v0, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    sub-int/2addr v0, v2

    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr v1, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v2, v2

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method prng_get_u64()J
    .locals 8

    const-wide/16 v6, 0xff

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v1, v1

    add-int/lit8 v1, v1, -0x9

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    const/4 v0, 0x0

    :cond_0
    add-int/lit8 v1, v0, 0x8

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v2, v0, 0x0

    aget-byte v1, v1, v2

    int-to-long v2, v1

    and-long/2addr v2, v6

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v4, v0, 0x1

    aget-byte v1, v1, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x8

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v4, v0, 0x2

    aget-byte v1, v1, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x10

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v4, v0, 0x3

    aget-byte v1, v1, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x18

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v4, v0, 0x4

    aget-byte v1, v1, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x20

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v4, v0, 0x5

    aget-byte v1, v1, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x28

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v4, v0, 0x6

    aget-byte v1, v1, v4

    int-to-long v4, v1

    and-long/2addr v4, v6

    const/16 v1, 0x30

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v6

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method prng_get_u8()B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    aget-byte v0, v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    :cond_0
    return v0
.end method

.method prng_init(Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;)V
    .locals 10

    const-wide v8, 0xffffffffL

    const/16 v0, 0x38

    const/16 v7, 0x30

    const/4 v1, 0x0

    new-array v2, v0, [B

    invoke-virtual {p1, v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/falcon/SHAKE256;->inner_shake256_extract([BII)V

    move v0, v1

    :goto_0
    const/16 v3, 0xe

    if-ge v0, v3, :cond_0

    shl-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x0

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    or-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x2

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x10

    or-int/2addr v3, v4

    shl-int/lit8 v4, v0, 0x2

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, v2, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    or-int/2addr v3, v4

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->int_to_bytes(I)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    shl-int/lit8 v5, v0, 0x2

    const/4 v6, 0x4

    invoke-static {v3, v1, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    invoke-virtual {v0, v2, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v0

    int-to-long v2, v0

    and-long/2addr v2, v8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v5, 0x34

    invoke-virtual {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v0

    int-to-long v4, v0

    and-long/2addr v4, v8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->long_to_bytes(J)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->prng_refill()V

    return-void
.end method

.method prng_refill()V
    .locals 14

    const/4 v0, 0x4

    new-array v10, v0, [I

    fill-array-data v10, :array_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_long([BI)J

    move-result-wide v2

    const/4 v0, 0x0

    move v7, v0

    move-wide v8, v2

    :goto_0
    const/16 v0, 0x8

    if-ge v7, v0, :cond_4

    const/16 v0, 0x10

    new-array v5, v0, [I

    const/4 v0, 0x0

    const/4 v1, 0x0

    array-length v2, v10

    invoke-static {v10, v0, v5, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int_array([BII)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0xc

    invoke-static {v0, v1, v5, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0xe

    aget v1, v5, v0

    long-to-int v2, v8

    xor-int/2addr v1, v2

    aput v1, v5, v0

    const/16 v0, 0xf

    aget v1, v5, v0

    const/16 v2, 0x20

    ushr-long v2, v8, v2

    long-to-int v2, v2

    xor-int/2addr v1, v2

    aput v1, v5, v0

    const/4 v0, 0x0

    move v6, v0

    :goto_1
    const/16 v0, 0xa

    if-ge v6, v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/16 v3, 0x8

    const/16 v4, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/4 v1, 0x1

    const/4 v2, 0x5

    const/16 v3, 0x9

    const/16 v4, 0xd

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/4 v1, 0x2

    const/4 v2, 0x6

    const/16 v3, 0xa

    const/16 v4, 0xe

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/4 v1, 0x3

    const/4 v2, 0x7

    const/16 v3, 0xb

    const/16 v4, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/16 v3, 0xa

    const/16 v4, 0xf

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/4 v1, 0x1

    const/4 v2, 0x6

    const/16 v3, 0xb

    const/16 v4, 0xc

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/4 v1, 0x2

    const/4 v2, 0x7

    const/16 v3, 0x8

    const/16 v4, 0xd

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/16 v3, 0x9

    const/16 v4, 0xe

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->QROUND(IIII[I)V

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    aget v1, v5, v0

    aget v2, v10, v0

    add-int/2addr v1, v2

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x4

    :goto_3
    const/16 v1, 0xe

    if-ge v0, v1, :cond_2

    aget v1, v5, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, -0x10

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v2

    add-int/2addr v1, v2

    aput v1, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    const/16 v0, 0xe

    aget v1, v5, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v4, 0x28

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v2

    long-to-int v3, v8

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v5, v0

    const/16 v0, 0xf

    aget v1, v5, v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v4, 0x2c

    invoke-virtual {v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->bytes_to_int([BI)I

    move-result v2

    const/16 v3, 0x20

    ushr-long v12, v8, v3

    long-to-int v3, v12

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v5, v0

    const-wide/16 v0, 0x1

    add-long v2, v8, v0

    const/4 v0, 0x0

    :goto_4
    const/16 v1, 0x10

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    shl-int/lit8 v4, v7, 0x2

    shl-int/lit8 v6, v0, 0x5

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x0

    aget v6, v5, v0

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    shl-int/lit8 v4, v7, 0x2

    shl-int/lit8 v6, v0, 0x5

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    aget v6, v5, v0

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    shl-int/lit8 v4, v7, 0x2

    shl-int/lit8 v6, v0, 0x5

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x2

    aget v6, v5, v0

    ushr-int/lit8 v6, v6, 0x10

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->bd:[B

    shl-int/lit8 v4, v7, 0x2

    shl-int/lit8 v6, v0, 0x5

    add-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x3

    aget v6, v5, v0

    ushr-int/lit8 v6, v6, 0x18

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    move-wide v8, v2

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->convertor:Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;

    invoke-virtual {v0, v8, v9}, Lorg/bouncycastle/pqc/crypto/falcon/FalconConversions;->long_to_bytes(J)[B

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->sd:[B

    const/16 v3, 0x30

    const/16 v4, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FalconRNG;->ptr:I

    return-void

    :array_0
    .array-data 4
        0x61707865
        0x3320646e
        0x79622d32
        0x6b206574
    .end array-data
.end method
