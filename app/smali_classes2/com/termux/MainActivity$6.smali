.class Lcom/termux/MainActivity$6;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Lcom/termux/TermuxMain$M8K3N7P2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/MainActivity;->lambda$27$com-termux-MainActivity(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/MainActivity;

.field private final val$btnPair:Landroid/widget/TextView;

.field private final val$tvMsg:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x4e

    const-class v1, Lcom/termux/MainActivity$6;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_78_80(Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/termux/MainActivity;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/termux/MainActivity$6;->this$0:Lcom/termux/MainActivity;

    iput-object p2, p0, Lcom/termux/MainActivity$6;->val$tvMsg:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/termux/MainActivity$6;->val$btnPair:Landroid/widget/TextView;

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

.method native synthetic lambda$0$com-termux-MainActivity$6(Landroid/widget/TextView;Ljava/lang/String;)V
.end method

.method native synthetic lambda$1$com-termux-MainActivity$6(Landroid/widget/TextView;)V
.end method

.method native synthetic lambda$2$com-termux-MainActivity$6()V
.end method

.method native synthetic lambda$3$com-termux-MainActivity$6(Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V
.end method
