.class public final Lcom/termux/DeltaLoginClient;
.super Ljava/lang/Object;
.source "Dex2C"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x5

    const-class v1, Lcom/termux/DeltaLoginClient;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_5_30(Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native checkLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/termux/DeltaLoginClient$Callback;)V
.end method

.method public static native computeDeviceUid(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method
