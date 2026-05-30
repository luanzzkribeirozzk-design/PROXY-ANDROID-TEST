.class public final synthetic Lcom/termux/TermuxMain$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lcom/termux/TermuxMain;

.field public final f$1:Lcom/termux/TermuxMain$M8K3N7P2;

.field public final f$2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x5a

    const-class v1, Lcom/termux/TermuxMain$$ExternalSyntheticLambda2;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_90_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/TermuxMain;Lcom/termux/TermuxMain$M8K3N7P2;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/TermuxMain$$ExternalSyntheticLambda2;->f$0:Lcom/termux/TermuxMain;

    iput-object p2, p0, Lcom/termux/TermuxMain$$ExternalSyntheticLambda2;->f$1:Lcom/termux/TermuxMain$M8K3N7P2;

    iput-object p3, p0, Lcom/termux/TermuxMain$$ExternalSyntheticLambda2;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
