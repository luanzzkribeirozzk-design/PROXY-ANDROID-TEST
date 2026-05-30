.class final enum Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;
.super Ljava/lang/Enum;
.source "PairingConnectionCtx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/PairingConnectionCtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Role"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

.field public static final enum Client:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

.field public static final enum Server:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;


# direct methods
.method private static synthetic $values()[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;
    .locals 3

    .prologue
    .line 51
    const/4 v0, 0x2

    new-array v0, v0, [Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    const/4 v1, 0x0

    sget-object v2, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Client:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Server:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    new-instance v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    const-string v1, "Client"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Client:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 53
    new-instance v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    const-string v1, "Server"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Server:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 51
    invoke-static {}, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->$values()[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    move-result-object v0

    sput-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->$VALUES:[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    return-object v0
.end method

.method public static values()[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->$VALUES:[Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    invoke-virtual {v0}, [Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    return-object v0
.end method
