.class Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;
.super Ljava/lang/Object;
.source "AdbMdns.java"

# interfaces
.implements Landroid/net/nsd/NsdManager$ResolveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/android/AdbMdns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResolveListener"
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
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;->mAdbMdns:Lio/github/muntashirakon/adb/android/AdbMdns;

    .line 182
    return-void
.end method

.method synthetic constructor <init>(Lio/github/muntashirakon/adb/android/AdbMdns;Lio/github/muntashirakon/adb/android/AdbMdns$1;)V
    .locals 0
    .param p1, "x0"    # Lio/github/muntashirakon/adb/android/AdbMdns;
    .param p2, "x1"    # Lio/github/muntashirakon/adb/android/AdbMdns$1;

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;-><init>(Lio/github/muntashirakon/adb/android/AdbMdns;)V

    return-void
.end method


# virtual methods
.method public onResolveFailed(Landroid/net/nsd/NsdServiceInfo;I)V
    .locals 0
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;
    .param p2, "errorCode"    # I

    .prologue
    .line 186
    return-void
.end method

.method public onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 1
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 190
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;->mAdbMdns:Lio/github/muntashirakon/adb/android/AdbMdns;

    invoke-static {v0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->access$600(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V

    .line 191
    return-void
.end method
