.class Lorg/bouncycastle/pqc/crypto/picnic/Tree;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field private static final MAX_SEED_SIZE_BYTES:I = 0x20


# instance fields
.field private dataSize:I

.field private depth:I

.field private engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

.field private exists:[Z

.field private haveNode:[Z

.field nodes:[[B

.field private numLeaves:I

.field private numNodes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V
    .locals 5

    const/4 v1, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    shl-int v0, v4, v0

    add-int/lit8 v0, v0, -0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    add-int/lit8 v2, v2, -0x1

    shl-int v2, v4, v2

    sub-int/2addr v2, p2

    sub-int/2addr v0, v2

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    filled-new-array {v0, p3}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    new-array v3, p3, [B

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    invoke-static {v0, v2, v3, v4}, Lorg/bouncycastle/util/Arrays;->fill([ZIIZ)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v2

    :goto_1
    if-lez v0, :cond_3

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v2

    if-nez v2, :cond_1

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    invoke-direct {p0, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    aput-boolean v4, v2, v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    aput-boolean v4, v0, v1

    return-void
.end method

.method private computeParentHash(I[B)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0x2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hasRightChild(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v2, 0x20

    invoke-interface {v1, p2, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    goto/16 :goto_0
.end method

.method private contains([III)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p1, v1

    if-ne v2, p3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private exists(I)Z
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-lt p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method private expandSeeds([BI)V
    .locals 9

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/16 v0, 0x40

    new-array v1, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v8

    move v6, v7

    :goto_0
    if-gt v6, v8, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v0, v0, v6

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget-object v2, v0, v6

    move-object v0, p0

    move-object v3, p1

    move v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hashSeed([B[B[BBII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v2, v6, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    mul-int/lit8 v2, v6, 0x2

    add-int/lit8 v2, v2, 0x1

    aget-object v0, v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v1, v7, v0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v2, v6, 0x2

    add-int/lit8 v2, v2, 0x1

    aput-boolean v4, v0, v2

    :cond_2
    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v2, v6, 0x2

    add-int/lit8 v2, v2, 0x2

    aget-boolean v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    mul-int/lit8 v3, v6, 0x2

    add-int/lit8 v3, v3, 0x2

    aget-object v2, v2, v3

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v1, v0, v2, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    mul-int/lit8 v2, v6, 0x2

    add-int/lit8 v2, v2, 0x2

    aput-boolean v4, v0, v2

    goto :goto_1

    :cond_3
    return-void
.end method

.method private getParent(I)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeftChild(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, -0x1

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p1, -0x2

    div-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private getRevealedMerkleNodes([II[I)[I
    .locals 8

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int v4, v0, v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    new-array v5, v0, [Z

    move v0, v3

    :goto_0
    if-ge v0, p2, :cond_0

    aget v1, p1, v0

    add-int/2addr v1, v4

    aput-boolean v2, v5, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v0

    :goto_1
    if-lez v0, :cond_4

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_3

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-boolean v1, v5, v1

    if-eqz v1, :cond_1

    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x2

    aget-boolean v1, v5, v1

    if-eqz v1, :cond_1

    aput-boolean v2, v5, v0

    goto :goto_2

    :cond_3
    mul-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    aget-boolean v1, v5, v1

    if-eqz v1, :cond_1

    aput-boolean v2, v5, v0

    goto :goto_2

    :cond_4
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    new-array v6, v0, [I

    move v2, v3

    move v1, v3

    :goto_3
    if-ge v2, p2, :cond_8

    aget v0, p1, v2

    add-int/2addr v0, v4

    :cond_5
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v7

    aget-boolean v7, v5, v7

    if-nez v7, :cond_6

    invoke-direct {p0, v6, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->contains([III)Z

    move-result v7

    if-nez v7, :cond_7

    aput v0, v6, v1

    add-int/lit8 v0, v1, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v0

    if-nez v0, :cond_5

    :cond_7
    move v0, v1

    goto :goto_4

    :cond_8
    aput v1, p3, v3

    return-object v6
.end method

.method private getRevealedNodes([II[I)[I
    .locals 9

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->depth:I

    add-int/lit8 v6, v0, -0x1

    filled-new-array {v6, p2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v3, v4

    :goto_0
    if-ge v3, p2, :cond_1

    aget v1, p1, v3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v2, v5

    add-int/2addr v1, v2

    aget-object v2, v0, v4

    aput v1, v2, v3

    const/4 v2, 0x1

    :goto_1
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getParent(I)I

    move-result v1

    if-eqz v1, :cond_0

    aget-object v5, v0, v2

    aput v1, v5, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    new-array v7, v1, [I

    move v5, v4

    move v2, v4

    :goto_2
    if-ge v5, v6, :cond_5

    move v3, v4

    :goto_3
    if-ge v3, p2, :cond_4

    aget-object v1, v0, v5

    aget v1, v1, v3

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hasSibling(I)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_4
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_3

    :cond_2
    aget-object v1, v0, v5

    aget v1, v1, v3

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getSibling(I)I

    move-result v1

    aget-object v8, v0, v5

    invoke-direct {p0, v8, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->contains([III)Z

    move-result v8

    if-nez v8, :cond_6

    :goto_5
    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->hasRightChild(I)Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeafNode(I)Z

    move-result v8

    if-nez v8, :cond_3

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_3
    invoke-direct {p0, v7, v2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->contains([III)Z

    move-result v8

    if-nez v8, :cond_6

    aput v1, v7, v2

    add-int/lit8 v1, v2, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_2

    :cond_5
    aput v2, p3, v4

    return-object v7

    :cond_6
    move v1, v2

    goto :goto_4
.end method

.method private getSibling(I)I
    .locals 2

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeftChild(I)Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->LOG:Ljava/util/logging/Logger;

    const-string v1, "getSibling: request for node with not sibling"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, p1, -0x1

    goto :goto_0
.end method

.method private hasRightChild(I)Z
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge v0, v1, :cond_0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasSibling(I)Z
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->isLeftChild(I)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->exists(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private hashSeed([B[B[BBII)V
    .locals 5

    const v4, 0xffff

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, p4}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v1, 0x20

    invoke-interface {v0, p3, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    and-int v1, p5, v4

    int-to-short v1, v1

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    and-int v1, p6, v4

    int-to-short v1, v1

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S)[B

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private isLeafNode(I)Z
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLeftChild(I)Z
    .locals 2

    const/4 v0, 0x1

    rem-int/lit8 v1, p1, 0x2

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected addMerkleNodes([II[BI)I
    .locals 9

    const/4 v8, 0x1

    const/4 v2, -0x1

    const/4 v1, 0x0

    new-array v3, v8, [I

    aput v1, v3, v1

    invoke-direct {p0, p1, p2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedMerkleNodes([II[I)[I

    move-result-object v4

    move v0, v1

    :goto_0
    aget v5, v3, v1

    if-ge v0, v5, :cond_2

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    sub-int/2addr p4, v5

    if-gez p4, :cond_1

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    mul-int/2addr v5, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v7, v4, v0

    aget-object v6, v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    invoke-static {p3, v5, v6, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget v6, v4, v0

    aput-boolean v8, v5, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_0

    move v1, v2

    goto :goto_1
.end method

.method protected buildMerkleTree([[B[B)V
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int v2, v0, v2

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    if-ge v0, v3, :cond_1

    aget-object v3, p1, v0

    if-eqz v3, :cond_0

    aget-object v3, p1, v0

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    add-int v5, v2, v0

    aget-object v4, v4, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    add-int v4, v2, v0

    const/4 v5, 0x1

    aput-boolean v5, v3, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    :goto_1
    if-lez v0, :cond_2

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->computeParentHash(I[B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected generateSeeds([B[BI)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aput-object p1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    const/4 v1, 0x1

    aput-boolean v1, v0, v2

    invoke-direct {p0, p2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->expandSeeds([BI)V

    return-void
.end method

.method protected getLeaf(I)[B
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    add-int/2addr v0, p1

    aget-object v0, v1, v0

    return-object v0
.end method

.method protected getLeaves()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    return-object v0
.end method

.method protected getLeavesOffset()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int/2addr v0, v1

    return v0
.end method

.method hasLeftChild(Lorg/bouncycastle/pqc/crypto/picnic/Tree;I)Z
    .locals 2

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected openMerkleTree([II[I)[B
    .locals 8

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [I

    invoke-direct {p0, p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedMerkleNodes([II[I)[I

    move-result-object v3

    aget v0, v2, v1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    mul-int/2addr v0, v4

    aput v0, p3, v1

    aget v0, p3, v1

    new-array v4, v0, [B

    move v0, v1

    :goto_0
    aget v5, v2, v1

    if-ge v0, v5, :cond_0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v6, v3, v0

    aget-object v5, v5, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    mul-int/2addr v6, v0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    invoke-static {v5, v1, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v4
.end method

.method protected openMerkleTreeSize([II)I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedMerkleNodes([II[I)[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected reconstructSeeds([II[BI[BI)I
    .locals 8

    const/4 v7, 0x1

    const/4 v1, 0x0

    new-array v2, v7, [I

    aput v1, v2, v1

    invoke-direct {p0, p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedNodes([II[I)[I

    move-result-object v3

    move v0, v1

    :goto_0
    aget v4, v2, v1

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    sub-int/2addr p4, v4

    if-gez p4, :cond_0

    const/4 v1, -0x1

    :goto_1
    return v1

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v4, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v6, v3, v0

    aget-object v5, v5, v6

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget v5, v3, v0

    aput-boolean v7, v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p5, p6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->expandSeeds([BI)V

    goto :goto_1
.end method

.method protected revealSeeds([II[BI)I
    .locals 7

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v2, v0, [I

    aput v1, v2, v1

    invoke-direct {p0, p1, p2, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedNodes([II[I)[I

    move-result-object v3

    move v0, v1

    :goto_0
    aget v4, v2, v1

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    sub-int/2addr p4, v4

    if-gez p4, :cond_0

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Insufficient sized buffer provided to revealSeeds"

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_1
    return v1

    :cond_0
    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    aget v5, v3, v0

    aget-object v4, v4, v5

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v5, v0

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v4, v1, p3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p3

    sub-int v1, v0, p4

    goto :goto_1
.end method

.method protected revealSeedsSize([II)I
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    new-array v0, v0, [I

    aput v1, v0, v1

    invoke-direct {p0, p1, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getRevealedNodes([II[I)[I

    aget v0, v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->engine:Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    iget v1, v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v0, v1

    return v0
.end method

.method protected verifyMerkleTree([[B[B)I
    .locals 7

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    sub-int v3, v0, v3

    move v0, v1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numLeaves:I

    if-ge v0, v4, :cond_3

    aget-object v4, p1, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    add-int v5, v3, v0

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_1

    move v1, v2

    :cond_0
    :goto_1
    return v1

    :cond_1
    aget-object v4, p1, v0

    if-eqz v4, :cond_2

    aget-object v4, p1, v0

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    add-int v6, v3, v0

    aget-object v5, v5, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->dataSize:I

    invoke-static {v4, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    add-int v5, v3, v0

    const/4 v6, 0x1

    aput-boolean v6, v4, v5

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->numNodes:I

    :goto_2
    if-lez v0, :cond_4

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->computeParentHash(I[B)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->haveNode:[Z

    aget-boolean v0, v0, v1

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_1
.end method
