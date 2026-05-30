.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Shake256Engine"
.end annotation


# instance fields
.field private final maskDigest:Lorg/bouncycastle/crypto/Xof;

.field private final treeDigest:Lorg/bouncycastle/crypto/Xof;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 2

    const/16 v1, 0x100

    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;-><init>(ZIIIIII)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    return-void
.end method


# virtual methods
.method F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->robust:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p3

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    invoke-interface {v1, p1, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p3

    invoke-interface {v1, p3, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v0
.end method

.method H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    invoke-interface {v1, p1, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->robust:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, v1

    invoke-interface {v2, v1, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p3

    invoke-interface {v1, p3, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p4

    invoke-interface {v1, p4, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    goto :goto_0
.end method

.method H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
    .locals 11

    const/4 v10, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->A:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->K:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->H:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->D:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->H:I

    sub-int/2addr v2, v1

    add-int/lit8 v3, v1, 0x7

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x7

    div-int/lit8 v4, v4, 0x8

    add-int v5, v0, v3

    add-int/2addr v5, v4

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v7, p1

    invoke-interface {v6, p1, v10, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v7, p2

    invoke-interface {v6, p2, v10, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v7, p3

    invoke-interface {v6, p3, v10, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v7, p4

    invoke-interface {v6, p4, v10, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v7, v5

    invoke-interface {v6, v5, v10, v7}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/16 v6, 0x8

    new-array v6, v6, [B

    rsub-int/lit8 v7, v4, 0x8

    invoke-static {v5, v0, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    rsub-int/lit8 v2, v2, 0x40

    ushr-long/2addr v8, v2

    and-long/2addr v6, v8

    const/4 v2, 0x4

    new-array v2, v2, [B

    add-int/2addr v4, v0

    rsub-int/lit8 v8, v3, 0x4

    invoke-static {v5, v4, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v10}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    const/4 v3, -0x1

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, v3, v1

    and-int/2addr v1, v2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    invoke-static {v5, v10, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v6, v7, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;-><init>(JI[B)V

    return-object v2
.end method

.method PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v2, p3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v2, v2

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p2

    invoke-interface {v0, p2, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v0
.end method

.method public PRF_msg([B[B[B)[B
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p2

    invoke-interface {v0, p2, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p3

    invoke-interface {v0, p3, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v0
.end method

.method T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->robust:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object p3

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->N:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    invoke-interface {v1, p1, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p3

    invoke-interface {v1, p3, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->treeDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v0
.end method

.method protected bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 5

    const/4 v4, 0x0

    array-length v0, p3

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    invoke-interface {v1, p1, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length v1, p3

    invoke-static {v1, p3, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-object v0
.end method

.method protected bitmask([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 5

    const/4 v4, 0x0

    array-length v0, p3

    array-length v1, p4

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p1

    invoke-interface {v1, p1, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    array-length v3, v3

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Shake256Engine;->maskDigest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, v0

    invoke-interface {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    array-length v1, p3

    invoke-static {v1, p3, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    array-length v1, p4

    array-length v2, p3

    invoke-static {v1, p4, v4, v0, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    return-object v0
.end method

.method init([B)V
    .locals 0

    return-void
.end method
