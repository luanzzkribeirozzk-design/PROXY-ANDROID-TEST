.class final Lio/github/muntashirakon/adb/AdbProtocol;
.super Ljava/lang/Object;
.source "AdbProtocol.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/AdbProtocol$Message;
    }
.end annotation


# static fields
.field public static final ADB_AUTH_RSAPUBLICKEY:I = 0x3

.field public static final ADB_AUTH_SIGNATURE:I = 0x2

.field public static final ADB_AUTH_TOKEN:I = 0x1

.field public static final ADB_HEADER_LENGTH:I = 0x18

.field public static final A_AUTH:I = 0x48545541

.field public static final A_CLSE:I = 0x45534c43

.field public static final A_CNXN:I = 0x4e584e43

.field public static final A_OKAY:I = 0x59414b4f

.field public static final A_OPEN:I = 0x4e45504f

.field public static final A_STLS:I = 0x534c5453

.field public static final A_STLS_VERSION:I = 0x1000000

.field public static final A_STLS_VERSION_MIN:I = 0x1000000

.field public static final A_SYNC:I = 0x434e5953

.field public static final A_VERSION:I = 0x1000000

.field public static final A_VERSION_MIN:I = 0x1000000

.field public static final A_VERSION_SKIP_CHECKSUM:I = 0x1000001

.field public static final A_WRTE:I = 0x45545257

.field public static final MAX_PAYLOAD:I = 0x1000

.field public static final MAX_PAYLOAD_V1:I = 0x1000

.field public static final MAX_PAYLOAD_V2:I = 0x40000

.field public static final MAX_PAYLOAD_V3:I = 0x100000

.field public static final SYSTEM_IDENTITY_STRING_HOST:[B


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "host::\u0000"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lio/github/muntashirakon/adb/AdbProtocol;->SYSTEM_IDENTITY_STRING_HOST:[B

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000([B)I
    .locals 1
    .param p0, "x0"    # [B

    .prologue
    .line 24
    invoke-static {p0}, Lio/github/muntashirakon/adb/AdbProtocol;->getPayloadChecksum([B)I

    move-result v0

    return v0
.end method

.method public static generateAuth(I[B)[B
    .locals 2
    .param p0, "type"    # I
    .param p1, "data"    # [B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 269
    const v0, 0x48545541

    const/4 v1, 0x0

    invoke-static {v0, p0, v1, p1}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateClose(II)[B
    .locals 2
    .param p0, "localId"    # I
    .param p1, "remoteId"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 329
    const v0, 0x45534c43

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateConnect(I)[B
    .locals 4
    .param p0, "api"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 255
    const v0, 0x4e584e43    # 9.072519E8f

    invoke-static {p0}, Lio/github/muntashirakon/adb/AdbProtocol;->getProtocolVersion(I)I

    move-result v1

    invoke-static {p0}, Lio/github/muntashirakon/adb/AdbProtocol;->getMaxData(I)I

    move-result v2

    sget-object v3, Lio/github/muntashirakon/adb/AdbProtocol;->SYSTEM_IDENTITY_STRING_HOST:[B

    invoke-static {v0, v1, v2, v3}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateMessage(III[B)[B
    .locals 6
    .param p0, "command"    # I
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 190
    if-nez p3, :cond_0

    move v5, v4

    :goto_0
    move v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    array-length v5, p3

    goto :goto_0
.end method

.method public static generateMessage(III[BII)[B
    .locals 4
    .param p0, "command"    # I
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .param p3, "data"    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 218
    if-eqz p3, :cond_1

    .line 219
    add-int/lit8 v1, p5, 0x18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 224
    .local v0, "message":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 225
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 226
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 228
    if-eqz p3, :cond_2

    .line 229
    invoke-virtual {v0, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 230
    invoke-static {p3, p4, p5}, Lio/github/muntashirakon/adb/AdbProtocol;->getPayloadChecksum([BII)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 236
    :goto_1
    xor-int/lit8 v1, p0, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 238
    if-eqz p3, :cond_0

    .line 239
    invoke-virtual {v0, p3, p4, p5}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 242
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1

    .line 221
    .end local v0    # "message":Ljava/nio/ByteBuffer;
    :cond_1
    const/16 v1, 0x18

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .restart local v0    # "message":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 233
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public static generateOpen(ILjava/lang/String;)[B
    .locals 4
    .param p0, "localId"    # I
    .param p1, "destination"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 296
    .local v0, "bbuf":Ljava/nio/ByteBuffer;
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 297
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 298
    const v1, 0x4e45504f    # 8.2759366E8f

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v1, p0, v3, v2}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object v1

    return-object v1
.end method

.method public static generateReady(II)[B
    .locals 2
    .param p0, "localId"    # I
    .param p1, "remoteId"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 343
    const v0, 0x59414b4f

    const/4 v1, 0x0

    invoke-static {v0, p0, p1, v1}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateStls()[B
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 281
    const v0, 0x534c5453

    const/high16 v1, 0x1000000

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[B)[B

    move-result-object v0

    return-object v0
.end method

.method public static generateWrite(II[BII)[B
    .locals 6
    .param p0, "localId"    # I
    .param p1, "remoteId"    # I
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 315
    const v0, 0x45545257

    move v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lio/github/muntashirakon/adb/AdbProtocol;->generateMessage(III[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public static getMaxData(I)I
    .locals 1
    .param p0, "api"    # I

    .prologue
    .line 137
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    .line 138
    const/high16 v0, 0x100000

    .line 143
    :goto_0
    return v0

    .line 140
    :cond_0
    const/16 v0, 0x18

    if-lt p0, v0, :cond_1

    .line 141
    const/high16 v0, 0x40000

    goto :goto_0

    .line 143
    :cond_1
    const/16 v0, 0x1000

    goto :goto_0
.end method

.method private static getPayloadChecksum([B)I
    .locals 2
    .param p0, "data"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lio/github/muntashirakon/adb/AdbProtocol;->getPayloadChecksum([BII)I

    move-result v0

    return v0
.end method

.method private static getPayloadChecksum([BII)I
    .locals 3
    .param p0, "data"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "checksum":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_0

    .line 174
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v0, v2

    .line 173
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return v0
.end method

.method public static getProtocolVersion(I)I
    .locals 1
    .param p0, "api"    # I

    .prologue
    .line 147
    const/16 v0, 0x1c

    if-lt p0, v0, :cond_0

    .line 148
    const v0, 0x1000001

    .line 150
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x1000000

    goto :goto_0
.end method
