.class public Lio/github/muntashirakon/adb/AdbOutputStream;
.super Ljava/io/OutputStream;
.source "AdbOutputStream.java"


# instance fields
.field private final mAdbStream:Lio/github/muntashirakon/adb/AdbStream;


# direct methods
.method public constructor <init>(Lio/github/muntashirakon/adb/AdbStream;)V
    .locals 0
    .param p1, "adbStream"    # Lio/github/muntashirakon/adb/AdbStream;

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 12
    iput-object p1, p0, Lio/github/muntashirakon/adb/AdbOutputStream;->mAdbStream:Lio/github/muntashirakon/adb/AdbStream;

    .line 13
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    invoke-virtual {p0}, Lio/github/muntashirakon/adb/AdbOutputStream;->flush()V

    .line 38
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbOutputStream;->mAdbStream:Lio/github/muntashirakon/adb/AdbStream;

    invoke-virtual {v0}, Lio/github/muntashirakon/adb/AdbStream;->flush()V

    .line 33
    return-void
.end method

.method public write(I)V
    .locals 3
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    invoke-virtual {p0, v0}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([B)V

    .line 18
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lio/github/muntashirakon/adb/AdbOutputStream;->write([BII)V

    .line 23
    return-void
.end method

.method public write([BII)V
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
    .line 27
    iget-object v0, p0, Lio/github/muntashirakon/adb/AdbOutputStream;->mAdbStream:Lio/github/muntashirakon/adb/AdbStream;

    invoke-virtual {v0, p1, p2, p3}, Lio/github/muntashirakon/adb/AdbStream;->write([BII)V

    .line 28
    return-void
.end method
