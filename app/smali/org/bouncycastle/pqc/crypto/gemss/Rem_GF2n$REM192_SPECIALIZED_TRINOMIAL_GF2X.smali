.class public Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;
.super Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "REM192_SPECIALIZED_TRINOMIAL_GF2X"
.end annotation


# instance fields
.field private final k3:I

.field private final k364:I

.field private final ki_k3:I


# direct methods
.method constructor <init>(IIIIJ)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    sub-int v0, p2, p1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    return-void
.end method


# virtual methods
.method public rem_gf2n([JI[J)V
    .locals 12

    const/4 v0, 0x2

    aget-wide v0, p3, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v0, v2

    const/4 v2, 0x3

    aget-wide v2, p3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x3

    aget-wide v2, p3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x4

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x4

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x5

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    const/4 v7, 0x1

    aget-wide v8, p3, v7

    xor-long/2addr v8, v2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v10, v0, v7

    xor-long/2addr v8, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v10, v2, v7

    xor-long/2addr v8, v10

    aput-wide v8, p1, v6

    add-int/lit8 v6, p2, 0x2

    const/4 v7, 0x2

    aget-wide v8, p3, v7

    xor-long/2addr v8, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v7

    xor-long/2addr v2, v8

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v8, v4, v7

    xor-long/2addr v2, v8

    iget-wide v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v2, v8

    aput-wide v2, p1, v6

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v2, v4, v2

    xor-long/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    xor-long/2addr v2, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long/2addr v0, v4

    xor-long/2addr v0, v2

    aput-wide v0, p1, p2

    return-void
.end method

.method public rem_gf2n_xor([JI[J)V
    .locals 14

    const/4 v0, 0x2

    aget-wide v0, p3, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v0, v2

    const/4 v2, 0x3

    aget-wide v2, p3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    const/4 v2, 0x3

    aget-wide v2, p3, v2

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v2, v4

    const/4 v4, 0x4

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v4, v6

    xor-long/2addr v2, v4

    const/4 v4, 0x4

    aget-wide v4, p3, v4

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki:I

    ushr-long/2addr v4, v6

    const/4 v6, 0x5

    aget-wide v6, p3, v6

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki64:I

    shl-long/2addr v6, v8

    xor-long/2addr v4, v6

    add-int/lit8 v6, p2, 0x1

    aget-wide v8, p1, v6

    const/4 v7, 0x1

    aget-wide v10, p3, v7

    xor-long/2addr v10, v2

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long v12, v0, v7

    xor-long/2addr v10, v12

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v12, v2, v7

    xor-long/2addr v10, v12

    xor-long/2addr v8, v10

    aput-wide v8, p1, v6

    add-int/lit8 v6, p2, 0x2

    aget-wide v8, p1, v6

    const/4 v7, 0x2

    aget-wide v10, p3, v7

    xor-long/2addr v10, v4

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k364:I

    ushr-long/2addr v2, v7

    xor-long/2addr v2, v10

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long v10, v4, v7

    xor-long/2addr v2, v10

    iget-wide v10, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->mask:J

    and-long/2addr v2, v10

    xor-long/2addr v2, v8

    aput-wide v2, p1, v6

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->ki_k3:I

    ushr-long v2, v4, v2

    xor-long/2addr v0, v2

    aget-wide v2, p1, p2

    const/4 v4, 0x0

    aget-wide v4, p3, v4

    xor-long/2addr v4, v0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/gemss/Rem_GF2n$REM192_SPECIALIZED_TRINOMIAL_GF2X;->k3:I

    shl-long/2addr v0, v6

    xor-long/2addr v0, v4

    xor-long/2addr v0, v2

    aput-wide v0, p1, p2

    return-void
.end method
