.class final Lio/github/muntashirakon/adb/AdbProtocol$Message;
.super Ljava/lang/Object;
.source "AdbProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/AdbProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Message"
.end annotation


# instance fields
.field public final arg0:I

.field public final arg1:I

.field public final command:I

.field public final dataCheck:I

.field public final dataLength:I

.field public final magic:I

.field public payload:[B


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "header"    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 444
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    .line 445
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 446
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 447
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    .line 448
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    .line 449
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 450
    return-void
.end method

.method public static parse(Ljava/io/InputStream;II)Lio/github/muntashirakon/adb/AdbProtocol$Message;
    .locals 11
    .param p0, "in"    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "protocolVersion"    # I
    .param p2, "maxData"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v10, 0x4e584e43    # 9.072519E8f

    const/high16 v9, 0x1000000

    const/16 v7, 0x18

    const/4 v6, 0x1

    const/4 v8, 0x0

    .line 392
    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 395
    .local v2, "header":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    .line 397
    .local v1, "dataRead":I
    :cond_0
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    rsub-int/lit8 v5, v1, 0x18

    invoke-virtual {p0, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 398
    .local v0, "bytesRead":I
    if-gez v0, :cond_1

    .line 399
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Stream closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 400
    :cond_1
    add-int/2addr v1, v0

    .line 401
    if-lt v1, v7, :cond_0

    .line 403
    new-instance v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;

    invoke-direct {v3, v2}, Lio/github/muntashirakon/adb/AdbProtocol$Message;-><init>(Ljava/nio/ByteBuffer;)V

    .line 406
    .local v3, "msg":Lio/github/muntashirakon/adb/AdbProtocol$Message;
    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    iget v5, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    xor-int/lit8 v5, v5, -0x1

    if-eq v4, v5, :cond_2

    .line 407
    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string v5, "Invalid header: Invalid magic 0x%x."

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 409
    :cond_2
    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    const v5, 0x434e5953

    if-eq v4, v5, :cond_3

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    if-eq v4, v10, :cond_3

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    const v5, 0x4e45504f    # 8.2759366E8f

    if-eq v4, v5, :cond_3

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    const v5, 0x59414b4f

    if-eq v4, v5, :cond_3

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    const v5, 0x45534c43

    if-eq v4, v5, :cond_3

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    const v5, 0x45545257

    if-eq v4, v5, :cond_3

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    const v5, 0x48545541

    if-eq v4, v5, :cond_3

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    const v5, 0x534c5453

    if-eq v4, v5, :cond_3

    .line 412
    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string v5, "Invalid header: Invalid command 0x%x."

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 414
    :cond_3
    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    if-ltz v4, :cond_4

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    if-le v4, p2, :cond_5

    .line 415
    :cond_4
    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string v5, "Invalid header: Invalid data length %d"

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 418
    :cond_5
    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    if-nez v4, :cond_7

    .line 440
    :cond_6
    return-object v3

    .line 424
    :cond_7
    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    new-array v4, v4, [B

    iput-object v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 425
    const/4 v1, 0x0

    .line 427
    :cond_8
    iget-object v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    iget v5, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    sub-int/2addr v5, v1

    invoke-virtual {p0, v4, v1, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 428
    if-gez v0, :cond_9

    .line 429
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Stream closed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 430
    :cond_9
    add-int/2addr v1, v0

    .line 431
    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    if-lt v1, v4, :cond_8

    .line 434
    if-le p1, v9, :cond_a

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    if-ne v4, v10, :cond_6

    iget v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    if-gt v4, v9, :cond_6

    :cond_a
    iget-object v4, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 435
    invoke-static {v4}, Lio/github/muntashirakon/adb/AdbProtocol;->access$000([B)I

    move-result v4

    iget v5, v3, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    if-eq v4, v5, :cond_6

    .line 437
    new-instance v4, Ljava/io/StreamCorruptedException;

    const-string v5, "Invalid header: Checksum mismatched."

    invoke-direct {v4, v5}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v4
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 456
    iget v1, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->command:I

    sparse-switch v1, :sswitch_data_0

    .line 482
    const-string v0, "????"

    .line 485
    .local v0, "tag":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message{command="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arg0=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg0:I

    .line 487
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arg1=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->arg1:I

    .line 488
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", payloadLength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", checksum="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->dataCheck:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", magic=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->magic:I

    .line 491
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", payload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/github/muntashirakon/adb/AdbProtocol$Message;->payload:[B

    .line 492
    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 485
    return-object v1

    .line 458
    .end local v0    # "tag":Ljava/lang/String;
    :sswitch_0
    const-string v0, "SYNC"

    .line 459
    .restart local v0    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 461
    .end local v0    # "tag":Ljava/lang/String;
    :sswitch_1
    const-string v0, "CNXN"

    .line 462
    .restart local v0    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 464
    .end local v0    # "tag":Ljava/lang/String;
    :sswitch_2
    const-string v0, "OPEN"

    .line 465
    .restart local v0    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 467
    .end local v0    # "tag":Ljava/lang/String;
    :sswitch_3
    const-string v0, "OKAY"

    .line 468
    .restart local v0    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 470
    .end local v0    # "tag":Ljava/lang/String;
    :sswitch_4
    const-string v0, "CLSE"

    .line 471
    .restart local v0    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 473
    .end local v0    # "tag":Ljava/lang/String;
    :sswitch_5
    const-string v0, "WRTE"

    .line 474
    .restart local v0    # "tag":Ljava/lang/String;
    goto/16 :goto_0

    .line 476
    .end local v0    # "tag":Ljava/lang/String;
    :sswitch_6
    const-string v0, "AUTH"

    .line 477
    .restart local v0    # "tag":Ljava/lang/String;
    goto/16 :goto_0

    .line 479
    .end local v0    # "tag":Ljava/lang/String;
    :sswitch_7
    const-string v0, "STLS"

    .line 480
    .restart local v0    # "tag":Ljava/lang/String;
    goto/16 :goto_0

    .line 456
    :sswitch_data_0
    .sparse-switch
        0x434e5953 -> :sswitch_0
        0x45534c43 -> :sswitch_4
        0x45545257 -> :sswitch_5
        0x48545541 -> :sswitch_6
        0x4e45504f -> :sswitch_2
        0x4e584e43 -> :sswitch_1
        0x534c5453 -> :sswitch_7
        0x59414b4f -> :sswitch_3
    .end sparse-switch
.end method
