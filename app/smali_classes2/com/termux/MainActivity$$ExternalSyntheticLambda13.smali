.class public final synthetic Lcom/termux/MainActivity$$ExternalSyntheticLambda13;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Landroid/widget/TextView;

.field public final f$1:I

.field public final f$2:Landroid/widget/FrameLayout;

.field public final f$3:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xa

    const-class v1, Lcom/termux/MainActivity$$ExternalSyntheticLambda13;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_10_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/TextView;ILandroid/widget/FrameLayout;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda13;->f$0:Landroid/widget/TextView;

    iput p2, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda13;->f$1:I

    iput-object p3, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda13;->f$2:Landroid/widget/FrameLayout;

    iput-object p4, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda13;->f$3:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
