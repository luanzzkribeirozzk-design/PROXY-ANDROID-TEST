.class Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;
.super Ljava/io/InputStream;
.source "ConscryptFileDescriptorSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLInputStream"
.end annotation


# instance fields
.field private final readLock:Ljava/lang/Object;

.field final synthetic this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;


# direct methods
.method constructor <init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V
    .locals 1

    .prologue
    .line 517
    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 515
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    .line 518
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .prologue
    .line 572
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getPendingReadableBytes()I

    move-result v0

    return v0
.end method

.method awaitPendingOps()V
    .locals 2

    .prologue
    .line 584
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 585
    return-void

    .line 584
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 527
    new-array v0, v4, [B

    .line 528
    .local v0, "buffer":[B
    invoke-virtual {p0, v0, v3, v4}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->read([BII)I

    move-result v1

    .line 529
    .local v1, "result":I
    if-eq v1, v2, :cond_0

    aget-byte v2, v0, v3

    and-int/lit16 v2, v2, 0xff

    :cond_0
    return v2
.end method

.method public read([BII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v8, 0x8

    .line 538
    invoke-static {}, Lorg/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 540
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 541
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lorg/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 542
    if-nez p3, :cond_0

    .line 543
    const/4 v6, 0x0

    .line 566
    :goto_0
    return v6

    .line 546
    :cond_0
    iget-object v7, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->readLock:Ljava/lang/Object;

    monitor-enter v7

    .line 547
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 548
    :try_start_1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    if-ne v0, v8, :cond_1

    .line 549
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 555
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 567
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 555
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 557
    :try_start_4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v0

    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v1, v1, Lorg/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    .line 558
    invoke-static {v1}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->getSoTimeout()I

    move-result v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 557
    invoke-virtual/range {v0 .. v5}, Lorg/conscrypt/NativeSsl;->read(Ljava/io/FileDescriptor;[BIII)I

    move-result v6

    .line 559
    .local v6, "ret":I
    const/4 v0, -0x1

    if-ne v6, v0, :cond_3

    .line 560
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 561
    :try_start_5
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLInputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    if-ne v0, v8, :cond_2

    .line 562
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 564
    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_2
    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 566
    :cond_3
    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method
