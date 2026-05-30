.class Lcom/termux/MainActivity$8$2$1;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/MainActivity$8$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$1:Lcom/termux/MainActivity$8$2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x54

    const-class v1, Lcom/termux/MainActivity$8$2$1;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_84_20(Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/termux/MainActivity$8$2;)V
    .locals 0

    iput-object p1, p0, Lcom/termux/MainActivity$8$2$1;->this$1:Lcom/termux/MainActivity$8$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native run()V
.end method
