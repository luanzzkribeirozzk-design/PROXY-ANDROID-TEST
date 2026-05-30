.class public Lorg/bouncycastle/oer/OERInputStream$Sequence;
.super Lorg/bouncycastle/oer/OERInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sequence"
.end annotation


# instance fields
.field private final extensionFlagSet:Z

.field private final preamble:I

.field private final valuePresent:[Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/oer/Element;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->hasPopulatedExtension()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getOptionals()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->hasDefaultChildren()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    if-gez v0, :cond_1

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "expecting preamble byte of sequence"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->hasPopulatedExtension()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    and-int/lit16 v0, v0, 0x80

    const/16 v4, 0x80

    if-ne v0, v4, :cond_4

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->hasPopulatedExtension()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    :goto_1
    iget v5, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    invoke-virtual {p2}, Lorg/bouncycastle/oer/Element;->getChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v4, v2

    move v6, v0

    :cond_2
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/Element;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/Element;->getBaseType()Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v7

    sget-object v9, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-eq v7, v9, :cond_2

    invoke-virtual {v0}, Lorg/bouncycastle/oer/Element;->getBlock()I

    move-result v7

    if-eq v7, v2, :cond_7

    :cond_3
    :goto_3
    return-void

    :cond_4
    move v0, v2

    goto :goto_0

    :cond_5
    iput v2, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->preamble:I

    iput-boolean v2, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    goto :goto_3

    :cond_6
    move v0, v3

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Lorg/bouncycastle/oer/Element;->isExplicit()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v7, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    add-int/lit8 v0, v4, 0x1

    aput-boolean v1, v7, v4

    :goto_4
    move v4, v0

    goto :goto_2

    :cond_8
    if-gez v6, :cond_a

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v5

    if-gez v5, :cond_9

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "expecting mask byte sequence"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    move v6, v3

    :cond_a
    iget-object v9, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    add-int/lit8 v7, v4, 0x1

    invoke-static {}, Lorg/bouncycastle/oer/OERInputStream;->access$300()[I

    move-result-object v0

    aget v0, v0, v6

    and-int/2addr v0, v5

    if-lez v0, :cond_b

    move v0, v1

    :goto_5
    aput-boolean v0, v9, v4

    add-int/lit8 v6, v6, -0x1

    move v0, v7

    goto :goto_4

    :cond_b
    move v0, v2

    goto :goto_5
.end method

.method static synthetic access$100(Lorg/bouncycastle/oer/OERInputStream$Sequence;)[Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    return-object v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/oer/OERInputStream$Sequence;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    return v0
.end method


# virtual methods
.method public hasExtension()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->extensionFlagSet:Z

    return v0
.end method

.method public hasOptional(I)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    aget-boolean v0, v0, p1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SEQ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERInputStream$Sequence;->hasExtension()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Ext "

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    if-nez v0, :cond_2

    const-string v0, "*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    array-length v2, v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/oer/OERInputStream$Sequence;->valuePresent:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_3

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
