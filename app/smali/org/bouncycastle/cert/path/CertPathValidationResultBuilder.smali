.class Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;
.super Ljava/lang/Object;


# instance fields
.field private final certIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

.field private final exceptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/bouncycastle/cert/path/CertPathValidationException;",
            ">;"
        }
    .end annotation
.end field

.field private final ruleIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->certIndexes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->ruleIndexes:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    iput-object p1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

    return-void
.end method

.method private toInts(Ljava/util/List;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-eq v1, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-object v2
.end method


# virtual methods
.method public addException(IILorg/bouncycastle/cert/path/CertPathValidationException;)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->certIndexes:Ljava/util/List;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->ruleIndexes:Ljava/util/List;

    invoke-static {p2}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public build()Lorg/bouncycastle/cert/path/CertPathValidationResult;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    iget-object v1, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/cert/path/CertPathValidationResult;

    iget-object v2, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->context:Lorg/bouncycastle/cert/path/CertPathValidationContext;

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->certIndexes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->toInts(Ljava/util/List;)[I

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->ruleIndexes:Ljava/util/List;

    invoke-direct {p0, v0}, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->toInts(Ljava/util/List;)[I

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    iget-object v5, p0, Lorg/bouncycastle/cert/path/CertPathValidationResultBuilder;->exceptions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    invoke-interface {v0, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/cert/path/CertPathValidationException;

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/bouncycastle/cert/path/CertPathValidationResult;-><init>(Lorg/bouncycastle/cert/path/CertPathValidationContext;[I[I[Lorg/bouncycastle/cert/path/CertPathValidationException;)V

    move-object v0, v1

    goto :goto_0
.end method
