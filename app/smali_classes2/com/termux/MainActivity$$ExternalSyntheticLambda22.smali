.class public final synthetic Lcom/termux/MainActivity$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final f$0:Lcom/termux/MainActivity;

.field public final f$1:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    const-class v1, Lcom/termux/MainActivity$$ExternalSyntheticLambda22;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_20_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/MainActivity;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda22;->f$0:Lcom/termux/MainActivity;

    iput p2, p0, Lcom/termux/MainActivity$$ExternalSyntheticLambda22;->f$1:I

    return-void
.end method


# virtual methods
.method public final native onClick(Landroid/view/View;)V
.end method
