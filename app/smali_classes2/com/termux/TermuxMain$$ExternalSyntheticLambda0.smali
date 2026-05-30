.class public final synthetic Lcom/termux/TermuxMain$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "Dex2C"

# interfaces
.implements Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;


# instance fields
.field public final f$0:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x58

    const-class v1, Lcom/termux/TermuxMain$$ExternalSyntheticLambda0;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_88_20(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/TermuxMain$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p2, p0, Lcom/termux/TermuxMain$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final native onPortChanged(Ljava/net/InetAddress;I)V
.end method
