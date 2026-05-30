.class Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;
.super Ljava/lang/Object;


# instance fields
.field engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

.field final htPubKey:[B

.field private final pkSeed:[B

.field private final skSeed:[B

.field wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;[B[B)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2, p3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_PKgen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->htPubKey:[B

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->htPubKey:[B

    goto :goto_0
.end method


# virtual methods
.method sign([BJI)[B
    .locals 16

    new-instance v7, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    new-array v15, v2, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    const/4 v2, 0x0

    aput-object v4, v15, v2

    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object/from16 v2, p0

    move/from16 v3, p4

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    const/4 v2, 0x1

    move v14, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    if-ge v14, v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    shl-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    and-long v4, v4, p2

    long-to-int v5, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    ushr-long p2, p2, v2

    invoke-virtual {v7, v14}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    move-wide/from16 v0, p2

    invoke-virtual {v7, v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->skSeed:[B

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move-result-object v10

    aput-object v10, v15, v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    add-int/lit8 v2, v2, -0x1

    if-ge v14, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->pkSeed:[B

    move-object/from16 v8, p0

    move v9, v5

    move-object v11, v3

    move-object v13, v7

    invoke-virtual/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    :cond_0
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    goto :goto_0

    :cond_1
    array-length v2, v15

    new-array v3, v2, [[B

    const/4 v2, 0x0

    :goto_1
    array-length v4, v3

    if-eq v2, v4, :cond_2

    aget-object v4, v15, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->sig:[B

    aget-object v5, v15, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->auth:[[B

    invoke-static {v5}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v5

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v3}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v2

    return-object v2
.end method

.method treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    new-instance v4, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v4, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    shl-int v0, v7, p3

    rem-int v0, p2, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    move v2, v3

    :goto_1
    shl-int v0, v7, p3

    if-ge v2, v0, :cond_2

    invoke-virtual {v4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    add-int v0, p2, v2

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v0, p1, p4, v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->pkGen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v4, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    add-int v1, p2, v2

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    move-object v1, v0

    :goto_2
    invoke-virtual {v5}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeHeight:I

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v6

    if-ne v0, v6, :cond_1

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    invoke-virtual {v6, p4, v4, v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v0

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v4, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    move-object v1, v0

    goto :goto_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeHeight()I

    move-result v6

    invoke-direct {v0, v1, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;-><init>([BI)V

    invoke-virtual {v5, v3, v0}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v5, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/NodeEntry;->nodeValue:[B

    goto :goto_0
.end method

.method public verify([B[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[BJI[B)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>()V

    aget-object v2, p2, v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v5, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    move-object v0, p0

    move v1, p6

    move-object v3, p1

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    move v6, v7

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->D:I

    if-ge v6, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    shl-int v0, v7, v0

    add-int/lit8 v0, v0, -0x1

    int-to-long v0, v0

    and-long/2addr v0, p4

    long-to-int v1, v0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    ushr-long/2addr p4, v0

    aget-object v2, p2, v6

    invoke-virtual {v5, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {v5, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    move-object v0, p0

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v3

    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-static {p7, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0
.end method

.method xmss_PKgen([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    return-object v0
.end method

.method xmss_pkFromSig(ILorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 6

    const/4 v0, 0x0

    new-instance v3, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v3, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->getWOTSSig()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;->getXMSSAUTH()[[B

    move-result-object v4

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v2, v1, p3, p4, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->pkFromSig([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v2

    const/4 v1, 0x2

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v3, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    if-ge v1, v0, :cond_1

    add-int/lit8 v0, v1, 0x1

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeHeight(I)V

    const/4 v0, 0x1

    shl-int/2addr v0, v1

    div-int v0, p1, v0

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object v5, v4, v1

    invoke-virtual {v0, p4, v3, v2, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeIndex(I)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    aget-object v5, v4, v1

    invoke-virtual {v0, p4, v3, v5, v2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method xmss_sign([B[BI[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    new-array v6, v0, [[B

    new-instance v5, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v5, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getLayerAddress()I

    move-result v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setLayerAddress(I)V

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->getTreeAddress()J

    move-result-wide v0

    invoke-virtual {v5, v0, v1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setTreeAddress(J)V

    const/4 v3, 0x0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->engine:Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;->H_PRIME:I

    if-ge v3, v0, :cond_0

    shl-int v0, v7, v3

    div-int v0, p3, v0

    xor-int/lit8 v0, v0, 0x1

    shl-int v1, v7, v3

    mul-int v2, v0, v1

    move-object v0, p0

    move-object v1, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->treehash([BII[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    aput-object v0, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;

    invoke-direct {v0, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;-><init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)V

    invoke-virtual {v0, v7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setType(I)V

    invoke-virtual {v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->setKeyPairAddress(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/HT;->wots:Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;

    invoke-virtual {v1, p1, p2, p4, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/WotsPlus;->sign([B[B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    invoke-direct {v1, v0, v6}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;-><init>([B[[B)V

    return-object v1
.end method
