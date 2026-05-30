.class public Lorg/bouncycastle/oer/OERDefinition$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected aSwitch:Lorg/bouncycastle/oer/Switch;

.field protected final baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field protected block:I

.field protected children:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/bouncycastle/oer/OERDefinition$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

.field protected defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

.field protected elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

.field protected enumValue:Ljava/math/BigInteger;

.field protected explicit:Z

.field protected inScope:Ljava/lang/Boolean;

.field protected label:Ljava/lang/String;

.field protected lowerBound:Ljava/math/BigInteger;

.field protected mayRecurse:Z

.field protected placeholderValue:Lorg/bouncycastle/oer/OERDefinition$Builder;

.field protected supplierMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/bouncycastle/oer/ElementSupplier;",
            ">;"
        }
    .end annotation
.end field

.field protected typeName:Ljava/lang/String;

.field protected upperBound:Ljava/math/BigInteger;

.field protected validSwitchValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/bouncycastle/asn1/ASN1Encodable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/oer/OERDefinition$Builder$1;-><init>(Lorg/bouncycastle/oer/OERDefinition$Builder;)V

    iput-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$ItemProvider;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    return-object v0
.end method

.method static synthetic access$100(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method private copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 6

    new-instance v3, Lorg/bouncycastle/oer/OERDefinition$Builder;

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v3, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    iget-object v5, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p1, v1, v0}, Lorg/bouncycastle/oer/OERDefinition$ItemProvider;->existingChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v2

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    iput-boolean v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope:Ljava/lang/Boolean;

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope:Ljava/lang/Boolean;

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    iput-boolean v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    iget v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    iput v0, v3, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    return-object v3
.end method


# virtual methods
.method protected addExtensions(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ExtensionList;)V
    .locals 3

    invoke-virtual {p2}, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    sget-object v1, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    iget v1, p2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    iput v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    iget-object v1, p1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    if-eqz v2, :cond_2

    iget v2, p2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    invoke-virtual {p0, p1, v2, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addOptionals(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$OptionalList;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iget v2, p2, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;->block:I

    iput v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    iget-object v2, p1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addOptionals(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$OptionalList;)V
    .locals 3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    invoke-virtual {p0, p1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addExtensions(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ExtensionList;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput p2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    iget-object v2, p1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected block(I)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    return-object v0
.end method

.method public build()Lorg/bouncycastle/oer/Element;
    .locals 21

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    sget-object v3, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-ne v2, v3, :cond_2

    const/4 v5, 0x0

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v3, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    iget-object v7, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    if-nez v7, :cond_0

    int-to-long v10, v5

    invoke-static {v10, v11}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v7

    iput-object v7, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    add-int/lit8 v5, v5, 0x1

    :cond_0
    iget-object v7, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v2, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    invoke-virtual {v6, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "duplicate enum value at index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    if-nez v9, :cond_3

    iget v5, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    if-lez v5, :cond_3

    const/4 v9, 0x1

    :cond_3
    iget-boolean v5, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    if-nez v5, :cond_4

    add-int/lit8 v19, v19, 0x1

    :cond_4
    if-nez v20, :cond_5

    iget-object v5, v2, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v5, :cond_5

    const/16 v20, 0x1

    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/oer/OERDefinition$Builder;->build()Lorg/bouncycastle/oer/Element;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    new-instance v2, Lorg/bouncycastle/oer/Element;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->baseType:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_8

    const/4 v13, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_9

    const/16 v17, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    move/from16 v18, v0

    invoke-direct/range {v2 .. v20}, Lorg/bouncycastle/oer/Element;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;Ljava/util/List;ZLjava/lang/String;Ljava/math/BigInteger;Ljava/math/BigInteger;ZLjava/math/BigInteger;Lorg/bouncycastle/asn1/ASN1Encodable;Lorg/bouncycastle/oer/Switch;Ljava/util/List;Lorg/bouncycastle/oer/ElementSupplier;ZLjava/lang/String;Ljava/util/Map;IIZ)V

    return-object v2

    :cond_7
    const/4 v5, 0x0

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->supplierMap:Ljava/util/Map;

    move-object/from16 v17, v0

    goto :goto_4
.end method

.method public copy()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultItemProvider:Lorg/bouncycastle/oer/OERDefinition$ItemProvider;

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public decodeSwitch(Lorg/bouncycastle/oer/Switch;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->aSwitch:Lorg/bouncycastle/oer/Switch;

    return-object v0
.end method

.method public defaultValue(Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public elementSupplier(Lorg/bouncycastle/oer/ElementSupplier;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->elementSupplier:Lorg/bouncycastle/oer/ElementSupplier;

    return-object v0
.end method

.method public enumValue(Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->enumValue:Ljava/math/BigInteger;

    return-object v0
.end method

.method public explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit:Z

    return-object v0
.end method

.method public fixedSize(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public inScope(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope:Ljava/lang/Boolean;

    return-object v0
.end method

.method public varargs items([Ljava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 8

    const/4 v7, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    move v2, v3

    :goto_0
    array-length v0, p1

    if-eq v2, v0, :cond_4

    aget-object v0, p1, v2

    instance-of v1, v0, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$ExtensionList;

    invoke-virtual {p0, v5, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addExtensions(Lorg/bouncycastle/oer/OERDefinition$Builder;Lorg/bouncycastle/oer/OERDefinition$ExtensionList;)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    if-eqz v1, :cond_2

    iget v1, v5, Lorg/bouncycastle/oer/OERDefinition$Builder;->block:I

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$OptionalList;

    invoke-virtual {p0, v5, v1, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->addOptionals(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$OptionalList;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    move v4, v3

    :goto_2
    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-ge v4, v1, :cond_0

    iget-object v6, v5, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    move-object v1, v0

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-virtual {p0, v7, v1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_2

    :cond_3
    iget-object v1, v5, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {p0, v7, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v5
.end method

.method public label(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    return-object v0
.end method

.method public labelPrefix(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    return-object v0
.end method

.method public varargs limitScopeTo([Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v5

    iget-object v0, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->inScope(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iput-object v3, v1, Lorg/bouncycastle/oer/OERDefinition$Builder;->children:Ljava/util/ArrayList;

    return-object v1
.end method

.method public mayRecurse(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-boolean p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->mayRecurse:Z

    return-object v0
.end method

.method public range(JJLorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    invoke-static {p3, p4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    iput-object p5, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->defaultValue:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public range(Ljava/math/BigInteger;Ljava/math/BigInteger;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object p2, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public rangeToMAXFrom(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    const/4 v1, 0x0

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public rangeZeroTo(J)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public replaceChild(ILorg/bouncycastle/oer/OERDefinition$Builder;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/oer/OERDefinition$Builder$2;-><init>(Lorg/bouncycastle/oer/OERDefinition$Builder;ILorg/bouncycastle/oer/OERDefinition$Builder;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy(Lorg/bouncycastle/oer/OERDefinition$ItemProvider;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    return-object v0
.end method

.method public typeName(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->typeName:Ljava/lang/String;

    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    if-nez v1, :cond_0

    iput-object p1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->label:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public unbounded()Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->lowerBound:Ljava/math/BigInteger;

    iput-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->upperBound:Ljava/math/BigInteger;

    return-object v0
.end method

.method public varargs validSwitchValue([Lorg/bouncycastle/asn1/ASN1Encodable;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/oer/OERDefinition$Builder;->copy()Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    iget-object v1, v0, Lorg/bouncycastle/oer/OERDefinition$Builder;->validSwitchValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method protected wrap(ZLjava/lang/Object;)Lorg/bouncycastle/oer/OERDefinition$Builder;
    .locals 2

    instance-of v0, p2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/oer/OERDefinition$Builder;

    invoke-virtual {p2, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$Builder;

    check-cast p2, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-direct {v0, p2}, Lorg/bouncycastle/oer/OERDefinition$Builder;-><init>(Lorg/bouncycastle/oer/OERDefinition$BaseType;)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/oer/OERDefinition$Builder;->explicit(Z)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    goto :goto_0

    :cond_1
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/bouncycastle/oer/OERDefinition;->enumItem(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$Builder;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to wrap item in builder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
