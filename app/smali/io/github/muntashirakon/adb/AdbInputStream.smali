.class public Lio/github/muntashirakon/adb/AdbInputStream;
.super Ljava/io/InputStream;
.source "AdbInputStream.java"


# instance fields
.field public mAdbStream:Lio/github/muntashirakon/adb/AdbStream;


# direct methods
.method public constructor <init>(Lio/github/muntashirakon/adb/AdbStream;)V
    .locals 0
    .param p1, "adbStream"    # Lio/github/muntashirakon/adb/AdbStream;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 12
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbInputStream;->mAdbStream:Lio/github/muntashirakon/adb/AdbStream;

    .line 13
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbInputStream;->mAdbStream:Lio/github/muntashirakon/adb/AdbStream;

    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 17
    const/4 v2, 0x1

    new-array v0, v2, [B

    .line 18
    .local v0, "bytes":[B
    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AdbInputStream;->read([B)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 21
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    aget-byte v1, v0, v1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lio/github/muntashirakon/adb/AdbInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbInputStream;->mAdbStream:Lio/github/muntashirakon/adb/AdbStream;

    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbStream;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    .line 32
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbInputStream;->mAdbStream:Lio/github/muntashirakon/adb/AdbStream;

    invoke-virtual {v0, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbStream;->read([BII)I

    move-result v0

    goto :goto_0
.end method
