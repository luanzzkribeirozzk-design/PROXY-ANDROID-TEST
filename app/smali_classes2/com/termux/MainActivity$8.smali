.class Lcom/termux/MainActivity$8;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Lcom/termux/DeltaLoginClient$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/MainActivity;->lambda$16$com-termux-MainActivity(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final this$0:Lcom/termux/MainActivity;

.field final val$btnActivate:Landroid/widget/TextView;

.field final val$key:Ljava/lang/String;

.field final val$shakeLayout:Landroid/widget/LinearLayout;

.field final val$tvMsg:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x56

    const-class v1, Lcom/termux/MainActivity$8;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_86_30(Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/termux/MainActivity;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/termux/MainActivity$8;->this$0:Lcom/termux/MainActivity;

    iput-object p2, p0, Lcom/termux/MainActivity$8;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/MainActivity$8;->val$tvMsg:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/termux/MainActivity$8;->val$btnActivate:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/termux/MainActivity$8;->val$shakeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native onError(Ljava/lang/String;)V
.end method

.method public native onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
