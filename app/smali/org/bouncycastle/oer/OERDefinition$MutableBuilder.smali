.class public Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
.super Lorg/bouncycastle/oer/OERDefinition$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MutableBuilder"
.end annotation


# instance fields
.field private frozen:Z


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    return-void
.end method


# virtual methods
.method public varargs addItemsAndFreeze([Lorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
    .locals 8

    const/4 v7, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "build cannot be modified and must be copied only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v1, v2

    :goto_0
    array-length v0, p1

    if-eq v1, v0, :cond_4

    aget-object v0, p1, v1

    instance-of v3, v0, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast v0, [Ljava/lang/Object;

    array-length v4, v0

    move v3, v2

    :goto_2
    if-ge v3, v4, :cond_3

    aget-object v5, v0, v3

    iget-object v6, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v5}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_4
    iput-boolean v7, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->frozen:Z

    return-object p0
.end method

.method public bridge synthetic label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$MutableBuilder;->label:Ljava/lang/String;

    return-object p0
.end method
