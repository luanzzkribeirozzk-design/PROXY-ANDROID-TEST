.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM544_PENTANOMIAL_GF2X"
.end annotation


# instance fields
.field private final k1:I

.field private final k164:I

.field private final k2:I

.field private final k264:I

.field private final k3:I

.field private final k364:I

.field private final ki_k1:I

.field private final ki_k2:I

.field private final ki_k3:I


# direct methods
.method public constructor <init>(IIIIIIIIJ)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    iput-wide p9, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->mask:J

    sub-int v0, p4, p3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k3:I

    sub-int v0, p4, p2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k2:I

    sub-int v0, p4, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k1:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 12

    const/16 v0, 0x10

    aget-wide v0, p3, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v0, v2

    const/16 v2, 0x8

    aget-wide v2, p3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0x9

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x9

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xa

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    const/4 v7, 0x1

    aget-wide v8, p3, v7

    xor-long/2addr v8, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v10, v4, v7

    xor-long/2addr v8, v10

    aput-wide v8, p1, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k3:I

    ushr-long v6, v0, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k2:I

    ushr-long v8, v0, v8

    xor-long/2addr v6, v8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k1:I

    ushr-long v8, v0, v8

    xor-long/2addr v6, v8

    xor-long/2addr v2, v6

    const/4 v6, 0x0

    aget-wide v6, p3, v6

    xor-long/2addr v6, v2

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v8, v2, v8

    xor-long/2addr v6, v8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long/2addr v2, v8

    xor-long/2addr v2, v6

    aput-wide v2, p1, p2

    const/16 v2, 0xa

    aget-wide v2, p3, v2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v6

    const/16 v6, 0xb

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    add-int/lit8 v6, p2, 0x2

    const/4 v7, 0x2

    aget-wide v8, p3, v7

    xor-long/2addr v8, v2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v7

    xor-long/2addr v4, v8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v8, v2, v7

    xor-long/2addr v4, v8

    aput-wide v4, p1, v6

    const/16 v4, 0xb

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x3

    const/4 v7, 0x3

    aget-wide v8, p3, v7

    xor-long/2addr v8, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v7

    xor-long/2addr v2, v8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v8, v4, v7

    xor-long/2addr v2, v8

    aput-wide v2, p1, v6

    const/16 v2, 0xc

    aget-wide v2, p3, v2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v6

    const/16 v6, 0xd

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    add-int/lit8 v6, p2, 0x4

    const/4 v7, 0x4

    aget-wide v8, p3, v7

    xor-long/2addr v8, v2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v7

    xor-long/2addr v4, v8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v8, v2, v7

    xor-long/2addr v4, v8

    aput-wide v4, p1, v6

    const/16 v4, 0xd

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xe

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x5

    const/4 v7, 0x5

    aget-wide v8, p3, v7

    xor-long/2addr v8, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v7

    xor-long/2addr v2, v8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v8, v4, v7

    xor-long/2addr v2, v8

    aput-wide v2, p1, v6

    const/16 v2, 0xe

    aget-wide v2, p3, v2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v6

    const/16 v6, 0xf

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    add-int/lit8 v6, p2, 0x6

    const/4 v7, 0x6

    aget-wide v8, p3, v7

    xor-long/2addr v8, v2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v7

    xor-long/2addr v4, v8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v8, v2, v7

    xor-long/2addr v4, v8

    aput-wide v4, p1, v6

    const/16 v4, 0xf

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0x10

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x7

    const/4 v7, 0x7

    aget-wide v8, p3, v7

    xor-long/2addr v8, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v10, v2, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v10, v4, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v7

    xor-long/2addr v2, v8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v8, v4, v7

    xor-long/2addr v2, v8

    aput-wide v2, p1, v6

    add-int/lit8 v2, p2, 0x8

    const/16 v3, 0x8

    aget-wide v6, p3, v3

    xor-long/2addr v6, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v8, v4, v3

    xor-long/2addr v6, v8

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v8, v0, v3

    xor-long/2addr v6, v8

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v8, v4, v3

    xor-long/2addr v6, v8

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v8, v0, v3

    xor-long/2addr v6, v8

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v3

    xor-long/2addr v4, v6

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long/2addr v0, v3

    xor-long/2addr v0, v4

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->mask:J

    and-long/2addr v0, v4

    aput-wide v0, p1, v2

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 14

    const/16 v0, 0x10

    aget-wide v0, p3, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v0, v2

    const/16 v2, 0x8

    aget-wide v2, p3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/16 v4, 0x9

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/16 v4, 0x9

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xa

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    aget-wide v8, p1, v6

    const/4 v7, 0x1

    aget-wide v10, p3, v7

    xor-long/2addr v10, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v12, v4, v7

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    aput-wide v8, p1, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k3:I

    ushr-long v6, v0, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k2:I

    ushr-long v8, v0, v8

    xor-long/2addr v6, v8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki_k1:I

    ushr-long v8, v0, v8

    xor-long/2addr v6, v8

    xor-long/2addr v2, v6

    aget-wide v6, p1, p2

    const/4 v8, 0x0

    aget-wide v8, p3, v8

    xor-long/2addr v8, v2

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v10, v2, v10

    xor-long/2addr v8, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v10, v2, v10

    xor-long/2addr v8, v10

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long/2addr v2, v10

    xor-long/2addr v2, v8

    xor-long/2addr v2, v6

    aput-wide v2, p1, p2

    const/16 v2, 0xa

    aget-wide v2, p3, v2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v6

    const/16 v6, 0xb

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    add-int/lit8 v6, p2, 0x2

    aget-wide v8, p1, v6

    const/4 v7, 0x2

    aget-wide v10, p3, v7

    xor-long/2addr v10, v2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v7

    xor-long/2addr v4, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v10, v2, v7

    xor-long/2addr v4, v10

    xor-long/2addr v4, v8

    aput-wide v4, p1, v6

    const/16 v4, 0xb

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xc

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x3

    aget-wide v8, p1, v6

    const/4 v7, 0x3

    aget-wide v10, p3, v7

    xor-long/2addr v10, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v7

    xor-long/2addr v2, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v10, v4, v7

    xor-long/2addr v2, v10

    xor-long/2addr v2, v8

    aput-wide v2, p1, v6

    const/16 v2, 0xc

    aget-wide v2, p3, v2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v6

    const/16 v6, 0xd

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    add-int/lit8 v6, p2, 0x4

    aget-wide v8, p1, v6

    const/4 v7, 0x4

    aget-wide v10, p3, v7

    xor-long/2addr v10, v2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v7

    xor-long/2addr v4, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v10, v2, v7

    xor-long/2addr v4, v10

    xor-long/2addr v4, v8

    aput-wide v4, p1, v6

    const/16 v4, 0xd

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0xe

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x5

    aget-wide v8, p1, v6

    const/4 v7, 0x5

    aget-wide v10, p3, v7

    xor-long/2addr v10, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v7

    xor-long/2addr v2, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v10, v4, v7

    xor-long/2addr v2, v10

    xor-long/2addr v2, v8

    aput-wide v2, p1, v6

    const/16 v2, 0xe

    aget-wide v2, p3, v2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v6

    const/16 v6, 0xf

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v2, v6

    add-int/lit8 v6, p2, 0x6

    aget-wide v8, p1, v6

    const/4 v7, 0x6

    aget-wide v10, p3, v7

    xor-long/2addr v10, v2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v7

    xor-long/2addr v4, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v10, v2, v7

    xor-long/2addr v4, v10

    xor-long/2addr v4, v8

    aput-wide v4, p1, v6

    const/16 v4, 0xf

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/16 v6, 0x10

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x7

    aget-wide v8, p1, v6

    const/4 v7, 0x7

    aget-wide v10, p3, v7

    xor-long/2addr v10, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v12, v2, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v12, v4, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v7

    xor-long/2addr v2, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long v10, v4, v7

    xor-long/2addr v2, v10

    xor-long/2addr v2, v8

    aput-wide v2, p1, v6

    add-int/lit8 v2, p2, 0x8

    aget-wide v6, p1, v2

    const/16 v3, 0x8

    aget-wide v8, p3, v3

    xor-long/2addr v8, v0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k164:I

    ushr-long v10, v4, v3

    xor-long/2addr v8, v10

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k1:I

    shl-long v10, v0, v3

    xor-long/2addr v8, v10

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k264:I

    ushr-long v10, v4, v3

    xor-long/2addr v8, v10

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k2:I

    shl-long v10, v0, v3

    xor-long/2addr v8, v10

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k364:I

    ushr-long/2addr v4, v3

    xor-long/2addr v4, v8

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->k3:I

    shl-long/2addr v0, v3

    xor-long/2addr v0, v4

    iget-wide v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM544_PENTANOMIAL_GF2X;->mask:J

    and-long/2addr v0, v4

    xor-long/2addr v0, v6

    aput-wide v0, p1, v2

    return-void
.end method
