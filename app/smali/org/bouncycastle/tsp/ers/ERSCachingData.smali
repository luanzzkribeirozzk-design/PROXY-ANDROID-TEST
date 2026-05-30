.class public abstract Lorg/bouncycastle/tsp/ers/ERSCachingData;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/tsp/ers/ERSData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;
    }
.end annotation


# instance fields
.field private preCalcs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method protected abstract calculateHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
.end method

.method public getHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B
    .locals 3

    new-instance v1, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;

    invoke-interface {p1}, Lorg/bouncycastle/operator/DigestCalculator;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p2, v2}, Lorg/bouncycastle/tsp/ers/ERSCachingData$CacheIndex;-><init>(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;[BLorg/bouncycastle/tsp/ers/ERSCachingData$1;)V

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/tsp/ers/ERSCachingData;->calculateHash(Lorg/bouncycastle/operator/DigestCalculator;[B)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/tsp/ers/ERSCachingData;->preCalcs:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
