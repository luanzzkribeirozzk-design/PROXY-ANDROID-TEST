.class public final synthetic Lcom/termux/TermuxReceiver$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final f$0:Lcom/termux/TermuxReceiver;

.field public final f$1:Landroid/content/Context;

.field public final f$2:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x5c

    const-class v1, Lcom/termux/TermuxReceiver$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_92_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/termux/TermuxReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/TermuxReceiver$$ExternalSyntheticLambda0;->f$0:Lcom/termux/TermuxReceiver;

    iput-object p2, p0, Lcom/termux/TermuxReceiver$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/termux/TermuxReceiver$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final native run()V
.end method
