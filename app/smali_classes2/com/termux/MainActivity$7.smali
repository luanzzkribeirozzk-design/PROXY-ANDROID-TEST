.class Lcom/termux/MainActivity$7;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Lcom/termux/DeltaLoginClient$Callback;


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

.field private final val$btnEntrar:Landroid/widget/TextView;

.field private final val$tvMsg:Landroid/widget/TextView;

.field private final val$user:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x52

    const-class v1, Lcom/termux/MainActivity$7;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_82_60(Ljava/lang/Class;)V

    return-void
.end method

.method constructor <init>(Lcom/termux/MainActivity;Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    iput-object p1, p0, Lcom/termux/MainActivity$7;->this$0:Lcom/termux/MainActivity;

    iput-object p2, p0, Lcom/termux/MainActivity$7;->val$user:Ljava/lang/String;

    iput-object p3, p0, Lcom/termux/MainActivity$7;->val$tvMsg:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/termux/MainActivity$7;->val$btnEntrar:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method native synthetic lambda$0$com-termux-MainActivity$7(Ljava/lang/String;)V
.end method

.method native synthetic lambda$1$com-termux-MainActivity$7(Ljava/lang/String;)V
.end method

.method native synthetic lambda$2$com-termux-MainActivity$7()V
.end method

.method public native onError(Ljava/lang/String;)V
.end method

.method public native onSuccess(Ljava/lang/String;Ljava/lang/String;)V
.end method
