.class Lcom/termux/MainActivity$2;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Lcom/termux/TermuxMain$M8K3N7P2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/MainActivity;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x46

    const-class v1, Lcom/termux/MainActivity$2;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_70_40(Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/termux/MainActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/termux/MainActivity$2;->this$0:Lcom/termux/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native R7K3M9N2X5(Ljava/lang/String;)V
.end method

.method public native T4N8K2M7P1()V
.end method

.method public native Y2K8N3M5P1(Ljava/lang/String;)V
.end method
