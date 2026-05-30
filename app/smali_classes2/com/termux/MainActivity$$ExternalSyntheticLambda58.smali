.class public final synthetic Lcom/termux/MainActivity$$ExternalSyntheticLambda58;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lcom/termux/MainActivity;

.field public final f$1:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x3b

    const-class v1, Lcom/termux/MainActivity$$ExternalSyntheticLambda58;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_59_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/MainActivity;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda58;->f$0:Lcom/termux/MainActivity;

    iput-object p2, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda58;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
