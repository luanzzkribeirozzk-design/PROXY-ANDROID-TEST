.class public final synthetic Lcom/termux/TermuxMain$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lcom/termux/TermuxMain;

.field public final f$1:Lcom/termux/TermuxMain$M8K3N7P2;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x59

    const-class v1, Lcom/termux/TermuxMain$$ExternalSyntheticLambda1;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_89_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/TermuxMain;Lcom/termux/TermuxMain$M8K3N7P2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/TermuxMain$$ExternalSyntheticLambda1;->f$0:Lcom/termux/TermuxMain;

    iput-object p2, p0, Lcom/termux/TermuxMain$$ExternalSyntheticLambda1;->f$1:Lcom/termux/TermuxMain$M8K3N7P2;

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
