.class Lcom/termux/DeltaLoginClient$1$4;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final this$0:Lcom/termux/DeltaLoginClient$1;

.field final val$e:Ljava/lang/Exception;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    const-class v1, Lcom/termux/DeltaLoginClient$1$4;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_3_20(Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/termux/DeltaLoginClient$1;Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/termux/DeltaLoginClient$1$4;->this$0:Lcom/termux/DeltaLoginClient$1;

    iput-object p2, p0, Lcom/termux/DeltaLoginClient$1$4;->val$e:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
