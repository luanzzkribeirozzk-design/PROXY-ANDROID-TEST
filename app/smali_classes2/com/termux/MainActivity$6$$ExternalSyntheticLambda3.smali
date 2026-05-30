.class public final synthetic Lcom/termux/MainActivity$6$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lcom/termux/MainActivity$6;

.field public final f$1:Landroid/widget/TextView;

.field public final f$2:Ljava/lang/String;

.field public final f$3:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x4d

    const-class v1, Lcom/termux/MainActivity$6$$ExternalSyntheticLambda3;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_77_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/MainActivity$6;Landroid/widget/TextView;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/MainActivity$6$$ExternalSyntheticLambda3;->f$0:Lcom/termux/MainActivity$6;

    iput-object p2, p0, Lcom/termux/MainActivity$6$$ExternalSyntheticLambda3;->f$1:Landroid/widget/TextView;

    iput-object p3, p0, Lcom/termux/MainActivity$6$$ExternalSyntheticLambda3;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/termux/MainActivity$6$$ExternalSyntheticLambda3;->f$3:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
