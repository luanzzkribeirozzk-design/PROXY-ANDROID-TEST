.class Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
.super Ljava/lang/Object;
.source "PairingConnectionCtx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/muntashirakon/adb/PairingConnectionCtx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PairingPacketHeader"
.end annotation


# static fields
.field public static final CURRENT_KEY_HEADER_VERSION:B = 0x1t

.field public static final MAX_PAYLOAD_SIZE:I = 0x4000

.field public static final MAX_SUPPORTED_KEY_HEADER_VERSION:B = 0x1t

.field public static final MIN_SUPPORTED_KEY_HEADER_VERSION:B = 0x1t

.field public static final PAIRING_PACKET_HEADER_SIZE:B = 0x6t

.field public static final PEER_INFO:B = 0x1t

.field public static final SPAKE2_MSG:B


# instance fields
.field private final payloadSize:I

.field private final type:B

.field private final version:B


# direct methods
.method public constructor <init>(BBI)V
    .locals 0
    .param p1, "version"    # B
    .param p2, "type"    # B
    .param p3, "payloadSize"    # I

    .prologue
    .line 364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    iput-byte p1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->version:B

    .line 366
    iput-byte p2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->type:B

    .line 367
    iput p3, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->payloadSize:I

    .line 368
    return-void
.end method

.method static synthetic access$000(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)B
    .locals 1
    .param p0, "x0"    # Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    .prologue
    .line 328
    iget-byte v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->type:B

    return v0
.end method

.method static synthetic access$100(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)I
    .locals 1
    .param p0, "x0"    # Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    .prologue
    .line 328
    iget v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->payloadSize:I

    return v0
.end method

.method public static readFrom(Ljava/nio/ByteBuffer;)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    .locals 7
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 341
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    .line 342
    .local v2, "version":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 343
    .local v1, "type":B
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    .line 344
    .local v0, "payload":I
    if-lt v2, v4, :cond_0

    if-le v2, v4, :cond_1

    .line 345
    :cond_0
    sget-object v4, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "PairingPacketHeader version mismatch (us=1 them="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :goto_0
    return-object v3

    .line 349
    :cond_1
    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_2

    .line 350
    sget-object v4, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown PairingPacket type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 353
    :cond_2
    if-lez v0, :cond_3

    const/16 v4, 0x4000

    if-le v0, v4, :cond_4

    .line 354
    :cond_3
    sget-object v4, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Header payload not within a safe payload size (size="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 357
    :cond_4
    new-instance v3, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    invoke-direct {v3, v2, v1, v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;-><init>(BBI)V

    goto :goto_0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PairingPacketHeader{version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->version:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->type:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", payloadSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->payloadSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 371
    iget-byte v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->version:B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-byte v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->type:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->payloadSize:I

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 372
    return-void
.end method
