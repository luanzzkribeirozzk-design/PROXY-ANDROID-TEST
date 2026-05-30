.class public Lio/github/muntashirakon/adb/android/AdbMdns;
.super Ljava/lang/Object;
.source "AdbMdns.java"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;,
        Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;,
        Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;,
        Lio/github/muntashirakon/adb/android/AdbMdns$ServiceType;
    }
.end annotation


# static fields
.field public static final SERVICE_TYPE_ADB:Ljava/lang/String; = "adb"

.field public static final SERVICE_TYPE_TLS_CONNECT:Ljava/lang/String; = "adb-tls-connect"

.field public static final SERVICE_TYPE_TLS_PAIRING:Ljava/lang/String; = "adb-tls-pairing"


# instance fields
.field private final mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

.field private final mNsdManager:Landroid/net/nsd/NsdManager;

.field private mRegistered:Z

.field private mRunning:Z

.field private mServiceName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mServiceType:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "serviceType"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "portChangeListener"    # Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mContext:Landroid/content/Context;

    .line 68
    const-string v0, "_%s._tcp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceType:Ljava/lang/String;

    .line 69
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    iput-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    .line 70
    const-string v0, "servicediscovery"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/nsd/NsdManager;

    iput-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    .line 71
    new-instance v0, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/github/muntashirakon/adb/android/AdbMdns$DiscoveryListener;-><init>(Lio/github/muntashirakon/adb/android/AdbMdns;Lio/github/muntashirakon/adb/android/AdbMdns$1;)V

    iput-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    .line 72
    return-void
.end method

.method static synthetic access$200(Lio/github/muntashirakon/adb/android/AdbMdns;)V
    .locals 0
    .param p0, "x0"    # Lio/github/muntashirakon/adb/android/AdbMdns;

    .prologue
    .line 33
    invoke-direct {p0}, Lio/github/muntashirakon/adb/android/AdbMdns;->onDiscoveryStart()V

    return-void
.end method

.method static synthetic access$300(Lio/github/muntashirakon/adb/android/AdbMdns;)V
    .locals 0
    .param p0, "x0"    # Lio/github/muntashirakon/adb/android/AdbMdns;

    .prologue
    .line 33
    invoke-direct {p0}, Lio/github/muntashirakon/adb/android/AdbMdns;->onDiscoverStop()V

    return-void
.end method

.method static synthetic access$400(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0
    .param p0, "x0"    # Lio/github/muntashirakon/adb/android/AdbMdns;
    .param p1, "x1"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method static synthetic access$500(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0
    .param p0, "x0"    # Lio/github/muntashirakon/adb/android/AdbMdns;
    .param p1, "x1"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method static synthetic access$600(Lio/github/muntashirakon/adb/android/AdbMdns;Landroid/net/nsd/NsdServiceInfo;)V
    .locals 0
    .param p0, "x0"    # Lio/github/muntashirakon/adb/android/AdbMdns;
    .param p1, "x1"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lio/github/muntashirakon/adb/android/AdbMdns;->onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V

    return-void
.end method

.method private isPortAvailable(I)Z
    .locals 5
    .param p1, "port"    # I

    .prologue
    const/4 v3, 0x1

    .line 131
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {v1}, Ljava/net/ServerSocket;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 132
    .local v1, "socket":Ljava/net/ServerSocket;
    :try_start_1
    new-instance v2, Ljava/net/InetSocketAddress;

    iget-object v4, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lio/github/muntashirakon/adb/android/AndroidUtils;->getHostIpAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, p1}, Ljava/net/InetSocketAddress;-><init>(Ljava/lang/String;I)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Ljava/net/ServerSocket;->bind(Ljava/net/SocketAddress;I)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    const/4 v2, 0x0

    .line 134
    :try_start_2
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    .end local v1    # "socket":Ljava/net/ServerSocket;
    :goto_0
    return v2

    .line 131
    .restart local v1    # "socket":Ljava/net/ServerSocket;
    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :goto_1
    :try_start_4
    throw v2

    .line 134
    .end local v1    # "socket":Ljava/net/ServerSocket;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move v2, v3

    .line 135
    goto :goto_0

    .line 131
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "socket":Ljava/net/ServerSocket;
    :catch_2
    move-exception v4

    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1
.end method

.method private onDiscoverStop()V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 100
    return-void
.end method

.method private onDiscoveryStart()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    .line 96
    return-void
.end method

.method private onServiceFound(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 103
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    new-instance v1, Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lio/github/muntashirakon/adb/android/AdbMdns$ResolveListener;-><init>(Lio/github/muntashirakon/adb/android/AdbMdns;Lio/github/muntashirakon/adb/android/AdbMdns$1;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/nsd/NsdManager;->resolveService(Landroid/net/nsd/NsdServiceInfo;Landroid/net/nsd/NsdManager$ResolveListener;)V

    .line 104
    return-void
.end method

.method private onServiceLost(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 3
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 107
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    move-result-object v1

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;->onPortChanged(Ljava/net/InetAddress;I)V

    .line 110
    :cond_0
    return-void
.end method

.method private onServiceResolved(Landroid/net/nsd/NsdServiceInfo;)V
    .locals 9
    .param p1, "serviceInfo"    # Landroid/net/nsd/NsdServiceInfo;

    .prologue
    .line 113
    iget-boolean v4, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    if-nez v4, :cond_1

    .line 128
    :cond_0
    :goto_0
    return-void

    .line 115
    :cond_1
    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/NetworkInterface;

    .line 116
    .local v3, "networkInterface":Ljava/net/NetworkInterface;
    invoke-virtual {v3}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 117
    .local v1, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "inetHost":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 119
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v6

    invoke-direct {p0, v6}, Lio/github/muntashirakon/adb/android/AdbMdns;->isPortAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 120
    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getServiceName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceName:Ljava/lang/String;

    .line 121
    iget-object v6, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mAdbDaemonDiscoveredListener:Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getHost()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {p1}, Landroid/net/nsd/NsdServiceInfo;->getPort()I

    move-result v8

    invoke-interface {v6, v7, v8}, Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;->onPortChanged(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 125
    .end local v1    # "inetAddress":Ljava/net/InetAddress;
    .end local v2    # "inetHost":Ljava/lang/String;
    .end local v3    # "networkInterface":Ljava/net/NetworkInterface;
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/net/SocketException;
    invoke-virtual {v0}, Ljava/net/SocketException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    return v0
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 75
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    if-eqz v0, :cond_1

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    iput-boolean v3, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 77
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mServiceType:Ljava/lang/String;

    iget-object v2, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v1, v3, v2}, Landroid/net/nsd/NsdManager;->discoverServices(Ljava/lang/String;ILandroid/net/nsd/NsdManager$DiscoveryListener;)V

    goto :goto_0
.end method

.method public stop()V
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    if-nez v0, :cond_1

    .line 88
    :cond_0
    :goto_0
    return-void

    .line 84
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRunning:Z

    .line 85
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mNsdManager:Landroid/net/nsd/NsdManager;

    iget-object v1, p0, Lio/github/muntashirakon/adb/android/AdbMdns;->mDiscoveryListener:Landroid/net/nsd/NsdManager$DiscoveryListener;

    invoke-virtual {v0, v1}, Landroid/net/nsd/NsdManager;->stopServiceDiscovery(Landroid/net/nsd/NsdManager$DiscoveryListener;)V

    goto :goto_0
.end method
