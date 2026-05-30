.class public Lio/github/muntashirakon/adb/AdbAuthenticationFailedException;
.super Ljava/lang/RuntimeException;
.source "AdbAuthenticationFailedException.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    const-string v0, "Initial authentication attempt rejected by peer."

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method
