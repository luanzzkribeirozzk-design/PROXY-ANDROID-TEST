.class public Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tsp/ers/ERSRootNodeCalculator;


# instance fields
.field private tree:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<[B>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computePathToRoot(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;I)[Lorg/bouncycastle/asn1/tsp/PartialHashtree;
    .locals 6

    const/4 v2, 0x0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, p2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v0

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    move-object v3, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p3, v0, :cond_0

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    and-int/lit8 v0, p3, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    add-int/lit8 v5, p3, 0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_2
    new-instance v5, Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    invoke-direct {v5, v0}, Lorg/bouncycastle/asn1/tsp/PartialHashtree;-><init>([B)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1, v3, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v3

    div-int/lit8 p3, p3, 0x2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 p3, v0, -0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    add-int/lit8 v5, p3, -0x1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    goto :goto_2

    :cond_3
    new-array v0, v2, [Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/asn1/tsp/PartialHashtree;

    return-object v0
.end method

.method public computeRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B
    .locals 7

    const/4 v6, 0x1

    const/4 v2, 0x0

    new-instance v1, Lorg/bouncycastle/tsp/ers/SortedHashList;

    invoke-direct {v1}, Lorg/bouncycastle/tsp/ers/SortedHashList;-><init>()V

    move v0, v2

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_0

    aget-object v3, p2, v0

    invoke-static {p1, v3}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bouncycastle/tsp/ers/SortedHashList;->add([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/tsp/ers/SortedHashList;->toList()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    iget-object v1, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v6, :cond_4

    move-object v3, v0

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v5, v2

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-gt v5, v0, :cond_1

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    add-int/lit8 v1, v5, 0x1

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v5, 0x2

    move v5, v0

    goto :goto_2

    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-ne v0, v6, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/BinaryTreeRootCalculator;->tree:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v6, :cond_3

    :goto_3
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0

    :cond_3
    move-object v3, v4

    goto :goto_1

    :cond_4
    move-object v4, v0

    goto :goto_3
.end method

.method public recoverRootHash(Lorg/bouncycastle/operator/DigestCalculator;[Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B
    .locals 3

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-static {p1, v0}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v1

    const/4 v0, 0x1

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    aget-object v2, p2, v0

    invoke-static {p1, v2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->computeNodeHash(Lorg/bouncycastle/operator/DigestCalculator;Lorg/bouncycastle/asn1/tsp/PartialHashtree;)[B

    move-result-object v2

    invoke-static {p1, v1, v2}, Lorg/bouncycastle/tsp/ers/ERSUtil;->calculateBranchHash(Lorg/bouncycastle/operator/DigestCalculator;[B[B)[B

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
