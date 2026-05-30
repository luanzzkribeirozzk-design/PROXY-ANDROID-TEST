.class public final synthetic Lio/github/muntashirakon/adb/AdbConnection$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/muntashirakon/adb/AdbConnection;


# direct methods
.method public synthetic constructor <init>(Lio/github/muntashirakon/adb/AdbConnection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbConnection$$ExternalSyntheticLambda0;->f$0:Lio/github/muntashirakon/adb/AdbConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbConnection$$ExternalSyntheticLambda0;->f$0:Lio/github/muntashirakon/adb/AdbConnection;

    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbConnection;->lambda$createConnectionThread$0$io-github-muntashirakon-adb-AdbConnection()V

    return-void
.end method
