.class public interface abstract Lio/github/muntashirakon/adb/android/AdbMdns$OnAdbDaemonDiscoveredListener;
.super Ljava/lang/Object;
.source "AdbMdns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/android/AdbMdns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnAdbDaemonDiscoveredListener"
.end annotation


# virtual methods
.method public abstract onPortChanged(Ljava/net/InetAddress;I)V
    .param p1    # Ljava/net/InetAddress;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
