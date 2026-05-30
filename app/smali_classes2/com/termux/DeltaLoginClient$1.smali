.class Lcom/termux/DeltaLoginClient$1;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final val$callback:Lcom/termux/DeltaLoginClient$Callback;

.field final val$context:Landroid/content/Context;

.field final val$pass:Ljava/lang/String;

.field final val$user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    const-class v1, Lcom/termux/DeltaLoginClient$1;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_4_20(Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/DeltaLoginClient$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/termux/DeltaLoginClient$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/DeltaLoginClient$1;->val$user:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/DeltaLoginClient$1;->val$pass:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/DeltaLoginClient$1;->val$callback:Lcom/termux/DeltaLoginClient$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
