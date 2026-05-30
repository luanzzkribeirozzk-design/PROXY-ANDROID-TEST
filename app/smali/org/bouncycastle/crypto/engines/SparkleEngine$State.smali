.class final enum Lorg/bouncycastle/crypto/engines/SparkleEngine$State;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/engines/SparkleEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bouncycastle/crypto/engines/SparkleEngine$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field public static final enum DecAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field public static final enum DecData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field public static final enum DecFinal:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field public static final enum DecInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field public static final enum EncAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field public static final enum EncData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field public static final enum EncFinal:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field public static final enum EncInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field public static final enum Uninitialized:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/crypto/engines/SparkleEngine$State;
    .locals 3

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const-string v1, "Uninitialized"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const-string v1, "EncInit"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const-string v1, "EncAad"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const-string v1, "EncData"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const-string v1, "EncFinal"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const-string v1, "DecInit"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const-string v1, "DecAad"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const-string v1, "DecData"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    new-instance v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const-string v1, "DecFinal"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->$values()[Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->$VALUES:[Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

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

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/engines/SparkleEngine$State;
    .locals 1

    const-class v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/crypto/engines/SparkleEngine$State;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->$VALUES:[Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    return-object v0
.end method
