.class public final enum Lio/github/muntashirakon/crypto/spake2/Spake2Role;
.super Ljava/lang/Enum;
.source "Spake2Role.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lio/github/muntashirakon/crypto/spake2/Spake2Role;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/github/muntashirakon/crypto/spake2/Spake2Role;

.field public static final enum Alice:Lio/github/muntashirakon/crypto/spake2/Spake2Role;

.field public static final enum Bob:Lio/github/muntashirakon/crypto/spake2/Spake2Role;


# direct methods
.method private static synthetic $values()[Lio/github/muntashirakon/crypto/spake2/Spake2Role;
    .locals 3

    .prologue
    .line 9
    const/4 v0, 0x2

    new-array v0, v0, [Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    const/4 v1, 0x0

    sget-object v2, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->Alice:Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->Bob:Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 10
    new-instance v0, Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    const-string v1, "Alice"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/github/muntashirakon/crypto/spake2/Spake2Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->Alice:Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    .line 11
    new-instance v0, Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    const-string v1, "Bob"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lio/github/muntashirakon/crypto/spake2/Spake2Role;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->Bob:Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    .line 9
    invoke-static {}, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->$values()[Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    move-result-object v0

    sput-object v0, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->$VALUES:[Lio/github/muntashirakon/crypto/spake2/Spake2Role;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/github/muntashirakon/crypto/spake2/Spake2Role;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    return-object v0
.end method

.method public static values()[Lio/github/muntashirakon/crypto/spake2/Spake2Role;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->$VALUES:[Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    invoke-virtual {v0}, [Lio/github/muntashirakon/crypto/spake2/Spake2Role;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    return-object v0
.end method
