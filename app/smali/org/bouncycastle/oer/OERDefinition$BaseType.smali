.class public final enum Lorg/bouncycastle/oer/OERDefinition$BaseType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/oer/OERDefinition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bouncycastle/oer/OERDefinition$BaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum BIT_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum BMPString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum BOOLEAN:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum IA5String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum IS0646String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum NULL:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum NumericString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum OPAQUE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum PrintableString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum SEQ_OF:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum Supplier:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum Switch:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum UniversalString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

.field public static final enum VisibleString:Lorg/bouncycastle/oer/OERDefinition$BaseType;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .locals 3

    const/16 v0, 0x16

    new-array v0, v0, [Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ_OF:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OPAQUE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BIT_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NULL:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BOOLEAN:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->IS0646String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->PrintableString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NumericString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BMPString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UniversalString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->IA5String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->VisibleString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->Switch:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lorg/bouncycastle/oer/OERDefinition$BaseType;->Supplier:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "SEQ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "SEQ_OF"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->SEQ_OF:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "CHOICE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->CHOICE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "ENUM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "INT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->INT:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "OCTET_STRING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OCTET_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "OPAQUE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->OPAQUE:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "UTF8_STRING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UTF8_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "BIT_STRING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BIT_STRING:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "NULL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NULL:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "EXTENSION"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->EXTENSION:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "ENUM_ITEM"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->ENUM_ITEM:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "BOOLEAN"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BOOLEAN:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "IS0646String"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->IS0646String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "PrintableString"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->PrintableString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "NumericString"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->NumericString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "BMPString"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->BMPString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "UniversalString"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->UniversalString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "IA5String"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->IA5String:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "VisibleString"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->VisibleString:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "Switch"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->Switch:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    new-instance v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    const-string v1, "Supplier"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OERDefinition$BaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->Supplier:Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-static {}, Lorg/bouncycastle/oer/OERDefinition$BaseType;->$values()[Lorg/bouncycastle/oer/OERDefinition$BaseType;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->$VALUES:[Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .locals 1

    const-class v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/oer/OERDefinition$BaseType;
    .locals 1

    sget-object v0, Lorg/bouncycastle/oer/OERDefinition$BaseType;->$VALUES:[Lorg/bouncycastle/oer/OERDefinition$BaseType;

    invoke-virtual {v0}, [Lorg/bouncycastle/oer/OERDefinition$BaseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/oer/OERDefinition$BaseType;

    return-object v0
.end method
