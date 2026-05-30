.class public final synthetic Lcom/termux/MainActivity$$ExternalSyntheticLambda36;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final f$0:Lcom/termux/MainActivity;

.field public final f$1:Landroid/widget/EditText;

.field public final f$2:Landroid/widget/TextView;

.field public final f$3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x23

    const-class v1, Lcom/termux/MainActivity$$ExternalSyntheticLambda36;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_35_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/MainActivity;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda36;->f$0:Lcom/termux/MainActivity;

    iput-object p2, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda36;->f$1:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda36;->f$2:Landroid/widget/TextView;

    iput-object p4, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda36;->f$3:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final native onClick(Landroid/view/View;)V
.end method
