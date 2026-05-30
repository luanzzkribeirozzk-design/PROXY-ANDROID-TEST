.class Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;
.super Ljava/io/OutputStream;
.source "ConscryptFileDescriptorSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/ConscryptFileDescriptorSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SSLOutputStream"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

.field private final writeLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lorg/conscrypt/ConscryptFileDescriptorSocket;)V
    .locals 1

    .prologue
    .line 601
    iput-object p1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 599
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    .line 602
    return-void
.end method


# virtual methods
.method awaitPendingOps()V
    .locals 2

    .prologue
    .line 659
    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    monitor-exit v1

    .line 660
    return-void

    .line 659
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public write(I)V
    .locals 3
    .param p1, "oneByte"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 610
    const/4 v1, 0x1

    new-array v0, v1, [B

    .line 611
    .local v0, "buffer":[B
    const/4 v1, 0x0

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 612
    invoke-virtual {p0, v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->write([B)V

    .line 613
    return-void
.end method

.method public write([BII)V
    .locals 8
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "byteCount"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 621
    invoke-static {}, Lorg/conscrypt/Platform;->blockGuardOnNetwork()V

    .line 622
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-virtual {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->checkOpen()V

    .line 623
    array-length v0, p1

    invoke-static {v0, p2, p3}, Lorg/conscrypt/ArrayUtils;->checkOffsetAndCount(III)V

    .line 624
    if-nez p3, :cond_0

    .line 648
    :goto_0
    return-void

    .line 628
    :cond_0
    iget-object v6, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->writeLock:Ljava/lang/Object;

    monitor-enter v6

    .line 629
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 630
    :try_start_1
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    if-ne v0, v7, :cond_1

    .line 631
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 647
    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 637
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 639
    :try_start_4
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v0

    iget-object v1, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    iget-object v1, v1, Lorg/conscrypt/ConscryptFileDescriptorSocket;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lorg/conscrypt/Platform;->getFileDescriptor(Ljava/net/Socket;)Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    .line 640
    invoke-static {v2}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$300(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v5

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 639
    invoke-virtual/range {v0 .. v5}, Lorg/conscrypt/NativeSsl;->write(Ljava/io/FileDescriptor;[BIII)V

    .line 642
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$100(Lorg/conscrypt/ConscryptFileDescriptorSocket;)Lorg/conscrypt/NativeSsl;

    move-result-object v1

    monitor-enter v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 643
    :try_start_5
    iget-object v0, p0, Lorg/conscrypt/ConscryptFileDescriptorSocket$SSLOutputStream;->this$0:Lorg/conscrypt/ConscryptFileDescriptorSocket;

    invoke-static {v0}, Lorg/conscrypt/ConscryptFileDescriptorSocket;->access$200(Lorg/conscrypt/ConscryptFileDescriptorSocket;)I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 644
    new-instance v0, Ljava/net/SocketException;

    const-string v2, "socket is closed"

    invoke-direct {v0, v2}, Ljava/net/SocketException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
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

    .line 647
    :try_start_8
    monitor-exit v6
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_0
.end method
