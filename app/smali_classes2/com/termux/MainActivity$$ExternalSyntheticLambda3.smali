.class public final synthetic Lcom/termux/MainActivity$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final f$0:Lcom/termux/MainActivity;

.field public final f$1:Landroid/widget/EditText;

.field public final f$2:Landroid/widget/TextView;

.field public final f$3:Landroid/widget/TextView;

.field public final f$4:Landroid/widget/LinearLayout;

.field public final f$5:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x27

    const-class v1, Lcom/termux/MainActivity$$ExternalSyntheticLambda3;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_39_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/MainActivity;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda3;->f$0:Lcom/termux/MainActivity;

    iput-object p2, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda3;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda3;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda3;->f$3:Landroid/widget/TextView;

    iput-object p5, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda3;->f$4:Landroid/widget/LinearLayout;

    iput-object p6, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda3;->f$5:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public final native onClick(Landroid/view/View;)V
.end method
