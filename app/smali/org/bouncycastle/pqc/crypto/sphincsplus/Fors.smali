.class Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;
.super Ljava/lang/Object;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    return-void
.end method

.method static message_to_idxs([BII)[I
    .locals 8

    const/4 v1, 0x0

    new-array v4, p1, [I

    move v3, v1

    move v2, v1

    :goto_0
    if-ge v3, p1, :cond_1

    aput v1, v4, v3

    move v0, v1

    :goto_1
    if-ge v0, p2, :cond_0

    aget v5, v4, v3

    shr-int/lit8 v6, v2, 0x3

    aget-byte v6, p0, v6

    and-int/lit8 v7, v2, 0x7

    shr-int/2addr v6, v7

    and-int/lit8 v6, v6, 0x1

    shl-int/2addr v6, v0

    xor-int/2addr v5, v6

    aput v5, v4, v3

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    return-object v4
.end method


# virtual methods
.method public pkFromSig([Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 14

    const/4 v2, 0x2

    new-array v4, v2, [[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    new-array v5, v2, [[B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v6, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->message_to_idxs([BII)[I

    move-result-object v7

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    if-ge v2, v3, :cond_2

    aget v8, v7, v2

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->getSK()[B

    move-result-object v3

    const/4 v9, 0x0

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    mul-int v9, v2, v6

    add-int/2addr v9, v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v9}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    const/4 v9, 0x0

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v10, v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v3

    aput-object v3, v4, v9

    aget-object v3, p1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;->getAuthPath()[[B

    move-result-object v9

    mul-int v3, v2, v6

    add-int/2addr v3, v8

    move-object/from16 v0, p4

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    const/4 v3, 0x0

    :goto_1
    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v10, v10, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    if-ge v3, v10, :cond_1

    add-int/lit8 v10, v3, 0x1

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    const/4 v10, 0x1

    shl-int/2addr v10, v3

    div-int v10, v8, v10

    rem-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_0

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    const/4 v12, 0x0

    aget-object v12, v4, v12

    aget-object v13, v9, v3

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v11, v0, v1, v12, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v11

    aput-object v11, v4, v10

    :goto_2
    const/4 v10, 0x0

    const/4 v11, 0x1

    aget-object v11, v4, v11

    aput-object v11, v4, v10

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    div-int/lit8 v10, v10, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    const/4 v10, 0x1

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object v12, v9, v3

    const/4 v13, 0x0

    aget-object v13, v4, v13

    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {v11, v0, v1, v12, v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v11

    aput-object v11, v4, v10

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    aget-object v3, v4, v3

    aput-object v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    move-object/from16 v0, p4

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v3

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v3, v0, v2, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v2

    return-object v2
.end method

.method public sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    .locals 15

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    move-object/from16 v0, p4

    invoke-direct {v7, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    move-object/from16 v0, p1

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->message_to_idxs([BII)[I

    move-result-object v9

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    new-array v10, v2, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v11, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->T:I

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->K:I

    if-ge v8, v2, :cond_1

    aget v12, v9, v8

    const/4 v2, 0x6

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual/range {p4 .. p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v2

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    mul-int v2, v8, v11

    add-int/2addr v2, v12

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v13

    const/4 v2, 0x3

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->changeType(I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    new-array v14, v2, [[B

    const/4 v5, 0x0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->A:I

    if-ge v5, v2, :cond_0

    const/4 v2, 0x1

    shl-int/2addr v2, v5

    div-int v2, v12, v2

    xor-int/lit8 v2, v2, 0x1

    mul-int v3, v8, v11

    const/4 v4, 0x1

    shl-int/2addr v4, v5

    mul-int/2addr v2, v4

    add-int v4, v3, v2

    move-object v2, p0

    move-object/from16 v3, p2

    move-object/from16 v6, p3

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v2

    aput-object v2, v14, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    invoke-direct {v2, v13, v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;-><init>([B[[B)V

    aput-object v2, v10, v8

    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_0

    :cond_1
    return-object v10
.end method

.method treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    shl-int v0, v7, p3

    rem-int v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v5, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    move v2, v3

    :goto_1
    shl-int v0, v7, p3

    if-ge v2, v0, :cond_2

    const/4 v0, 0x6

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getKeyPairAddress()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {v5, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    add-int v0, p2, v2

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v0, p4, p1, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->changeType(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    invoke-virtual {v1, p4, v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B

    move-result-object v0

    invoke-virtual {v5, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    move-object v1, v0

    :goto_2
    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeHeight:I

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v6

    if-ne v0, v6, :cond_1

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/Fors;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    invoke-virtual {v6, p4, v5, v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v0

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v5, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    move-object v1, v0

    goto :goto_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v6

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;-><init>([BI)V

    invoke-virtual {v4, v3, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    goto/16 :goto_0
.end method
