.class Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;
.super Ljava/lang/Object;
.source "AdbMdns.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$DiscoveryListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/android/AdbMdns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DiscoveryListener"
.end annotation


# instance fields
.field private final mAdbMdns:Lio/github/muntashirakon/adb/android/AdbMdns;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lio/github/muntashirakon/adb/android/AdbMdns;)V
    .locals 0
    .param p1, "adbMdns"    # Lio/github/muntashirakon/adb/android/AdbMdns;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-object p1, p0, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;->mAdbMdns:Lio/github/muntashirakon/adb/android/AdbMdns;

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Lio/github/muntashirakon/adb/android/AdbMdns;Lio/github/muntashirakon/adb/android/AdbMdns$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/muntashirakon/adb/android/AdbMdns;
    .param p2, "x1"    # Lio/github/muntashirakon/adb/android/AdbMdns$1;

    .prologue
    .line 139
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;-><init>(Lio/github/muntashirakon/adb/android/AdbMdns;)V

    return-void
.end method


# virtual methods
.method public onDiscoveryStarted(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;->mAdbMdns:Lio/github/muntashirakon/adb/android/AdbMdns;

    invoke-static {v0}, Lio/github/muntashirakon/adb/android/AdbMdns;->access$200(Lio/github/muntashirakon/adb/android/AdbMdns;)V

    .line 150
    return-void
.end method

.method public onDiscoveryStopped(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceType"    # Ljava/lang/String;

    .prologue
    .line 158
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;->mAdbMdns:Lio/github/muntashirakon/adb/android/AdbMdns;

    invoke-static {v0}, Lio/github/muntashirakon/adb/android/AdbMdns;->access$300(Lio/github/muntashirakon/adb/android/AdbMdns;)V

    .line 159
    return-void
.end method

.method public onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 1
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 167
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;->mAdbMdns:Lio/github/muntashirakon/adb/android/AdbMdns;

    invoke-static {v0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->access$400(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V

    .line 168
    return-void
.end method

.method public onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 1
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 172
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;->mAdbMdns:Lio/github/muntashirakon/adb/android/AdbMdns;

    invoke-static {v0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->access$500(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V

    .line 173
    return-void
.end method

.method public onStartDiscoveryFailed(Ljava/lang/String;I)V
    .locals 0
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 154
    return-void
.end method

.method public onStopDiscoveryFailed(Ljava/lang/String;I)V
    .locals 0
    .param p1, "serviceType"    # Ljava/lang/String;
    .param p2, "errorCode"    # I

    .prologue
    .line 163
    return-void
.end method
