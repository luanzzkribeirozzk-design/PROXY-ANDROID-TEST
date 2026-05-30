.class public final enum Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/ITSValidityPeriod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Unit"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bouncycastle/its/ITSValidityPeriod$Unit;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum hours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum microseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum milliseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum minutes:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum seconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

.field public static final enum years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;


# instance fields
.field private final unitTag:I


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->microseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->milliseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->seconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->minutes:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->hours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "microseconds"

    invoke-direct {v0, v1, v2, v2}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->microseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "milliseconds"

    invoke-direct {v0, v1, v3, v3}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->milliseconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "seconds"

    invoke-direct {v0, v1, v4, v4}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->seconds:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "minutes"

    invoke-direct {v0, v1, v5, v5}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->minutes:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "hours"

    invoke-direct {v0, v1, v6, v6}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->hours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "sixtyHours"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->sixtyHours:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    new-instance v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    const-string v1, "years"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->years:Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-static {}, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->$values()[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->$VALUES:[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->unitTag:I

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/its/ITSValidityPeriod$Unit;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->unitTag:I

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
    .locals 1

    const-class v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;
    .locals 1

    sget-object v0, Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->$VALUES:[Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    invoke-virtual {v0}, [Lorg/bouncycastle/its/ITSValidityPeriod$Unit;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/its/ITSValidityPeriod$Unit;

    return-object v0
.end method
