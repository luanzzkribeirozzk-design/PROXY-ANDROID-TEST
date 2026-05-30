.class public Lcom/termux/TermuxReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Dex2C"


# static fields
.field public static final NOTIF_ID:I = 0x2a


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x5f

    const-class v1, Lcom/termux/TermuxReceiver;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_95_80(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method static native synthetic access$0(Lcom/termux/TermuxReceiver;Landroid/content/Context;Ljava/lang/String;Z)V
.end method

.method public static native dismiss(Landroid/content/Context;)V
.end method

.method private static native ensureChannel(Landroid/app/NotificationManager;)V
.end method

.method private native showResult(Landroid/content/Context;Ljava/lang/String;Z)V
.end method

.method public static native showWithInput(Landroid/content/Context;Ljava/lang/String;)V
.end method


# virtual methods
.method native synthetic lambda$0$com-termux-TermuxReceiver(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public native onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
