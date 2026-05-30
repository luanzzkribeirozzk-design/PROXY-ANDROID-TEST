.class Lcom/termux/MainActivity$8$2;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/MainActivity$8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/MainActivity$8;

.field final val$reseller:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x55

    const-class v1, Lcom/termux/MainActivity$8$2;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_85_20(Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/termux/MainActivity$8;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/termux/MainActivity$8$2;->this$0:Lcom/termux/MainActivity$8;

    iput-object p2, p0, Lcom/termux/MainActivity$8$2;->val$reseller:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
