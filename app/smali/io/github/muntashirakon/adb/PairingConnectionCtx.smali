.class public final Lio/github/muntashirakon/adb/PairingConnectionCtx;
.super Ljava/lang/Object;
.source "PairingConnectionCtx.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;,
        Lio/github/muntashirakon/adb/PairingConnectionCtx$State;,
        Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;,
        Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    }
.end annotation


# static fields
.field public static final EXPORTED_KEY_LABEL:Ljava/lang/String; = "adb-label\u0000"

.field public static final EXPORT_KEY_SIZE:I = 0x40

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final mHost:Ljava/lang/String;

.field private mInputStream:Ljava/io/DataInputStream;

.field private mOutputStream:Ljava/io/DataOutputStream;

.field private mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

.field private final mPeerInfo:Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

.field private final mPort:I

.field private final mPswd:[B

.field private final mRole:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

.field private final mSslContext:Ljavax/net/ssl/SSLContext;

.field private mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lio/github/muntashirakon/adb/PairingConnectionCtx;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLio/github/muntashirakon/adb/KeyPair;Ljava/lang/String;)V
    .locals 4
    .param p1, "host"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "port"    # I
    .param p3, "pswd"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "keyPair"    # Lio/github/muntashirakon/adb/KeyPair;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "deviceName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Client:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mRole:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    .line 66
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->Ready:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 71
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mHost:Ljava/lang/String;

    .line 72
    iput p2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPort:I

    .line 73
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    .line 74
    new-instance v2, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

    const/4 v3, 0x0

    .line 75
    invoke-virtual {p4}, Lio/github/muntashirakon/adb/KeyPair;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPublicKey;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 74
    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/AndroidPubkey;->encodeWithName(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;-><init>(B[B)V

    iput-object v2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPeerInfo:Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

    .line 76
    invoke-static {p4}, Lio/github/muntashirakon/adb/SslUtils;->getSslContext(Lio/github/muntashirakon/adb/KeyPair;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mSslContext:Ljavax/net/ssl/SSLContext;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/security/PrivateKey;Ljava/security/cert/Certificate;Ljava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "port"    # I
    .param p3, "pswd"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "privateKey"    # Ljava/security/PrivateKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "certificate"    # Ljava/security/cert/Certificate;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "deviceName"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 82
    new-instance v4, Lio/github/muntashirakon/adb/KeyPair;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/PrivateKey;

    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/Certificate;

    invoke-direct {v4, v0, v1}, Lio/github/muntashirakon/adb/KeyPair;-><init>(Ljava/security/PrivateKey;Ljava/security/cert/Certificate;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lio/github/muntashirakon/adb/PairingConnectionCtx;-><init>(Ljava/lang/String;I[BLio/github/muntashirakon/adb/KeyPair;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method private checkHeaderType(BB)Z
    .locals 3
    .param p1, "expected"    # B
    .param p2, "actual"    # B

    .prologue
    .line 204
    if-eq p1, p2, :cond_0

    .line 205
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected header type (expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " actual="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    .line 208
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createHeader(BI)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    .locals 2
    .param p1, "type"    # B
    .param p2, "payloadSize"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 200
    new-instance v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1, p2}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;-><init>(BBI)V

    return-object v0
.end method

.method private doExchangeMsgs()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 212
    iget-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    invoke-virtual {v6}, Lio/github/muntashirakon/adb/PairingAuthCtx;->getMsg()[B

    move-result-object v1

    .line 214
    .local v1, "msg":[B
    array-length v6, v1

    invoke-direct {p0, v5, v6}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->createHeader(BI)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    move-result-object v2

    .line 216
    .local v2, "ourHeader":Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    invoke-direct {p0, v2, v1}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->writeHeader(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;[B)V

    .line 219
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->readHeader()Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    move-result-object v3

    .line 220
    .local v3, "theirHeader":Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    if-eqz v3, :cond_0

    invoke-static {v3}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->access$000(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)B

    move-result v6

    invoke-direct {p0, v5, v6}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->checkHeaderType(BB)Z

    move-result v6

    if-nez v6, :cond_1

    .line 227
    :cond_0
    :goto_0
    return v5

    .line 223
    :cond_1
    invoke-static {v3}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->access$100(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)I

    move-result v5

    new-array v4, v5, [B

    .line 224
    .local v4, "theirMsg":[B
    iget-object v5, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5, v4}, Ljava/io/DataInputStream;->readFully([B)V

    .line 227
    :try_start_0
    iget-object v5, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    invoke-virtual {v5, v4}, Lio/github/muntashirakon/adb/PairingAuthCtx;->initCipher([B)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    const-string v6, "..................................."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v5, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v5

    check-cast v5, Ljava/io/IOException;

    throw v5
.end method

.method private doExchangePeerInfo()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v11, 0x2000

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 237
    invoke-static {v11}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v9

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v9, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 238
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-object v9, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPeerInfo:Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

    invoke-virtual {v9, v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 239
    iget-object v9, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lio/github/muntashirakon/adb/PairingAuthCtx;->encrypt([B)[B

    move-result-object v3

    .line 240
    .local v3, "outBuffer":[B
    if-nez v3, :cond_1

    .line 241
    sget-object v8, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    const-string v9, "..........................."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    :goto_0
    return v7

    .line 246
    :cond_1
    array-length v9, v3

    invoke-direct {p0, v8, v9}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->createHeader(BI)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    move-result-object v2

    .line 248
    .local v2, "ourHeader":Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    invoke-direct {p0, v2, v3}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->writeHeader(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;[B)V

    .line 251
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->readHeader()Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    move-result-object v4

    .line 252
    .local v4, "theirHeader":Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    if-eqz v4, :cond_0

    invoke-static {v4}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->access$000(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)B

    move-result v9

    invoke-direct {p0, v8, v9}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->checkHeaderType(BB)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 255
    invoke-static {v4}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->access$100(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;)I

    move-result v9

    new-array v5, v9, [B

    .line 256
    .local v5, "theirMsg":[B
    iget-object v9, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v9, v5}, Ljava/io/DataInputStream;->readFully([B)V

    .line 259
    iget-object v9, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    invoke-virtual {v9, v5}, Lio/github/muntashirakon/adb/PairingAuthCtx;->decrypt([B)[B

    move-result-object v1

    .line 260
    .local v1, "decryptedMsg":[B
    if-nez v1, :cond_2

    .line 261
    sget-object v8, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    const-string v9, "..............................................."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 266
    :cond_2
    array-length v9, v1

    if-eq v9, v11, :cond_3

    .line 267
    sget-object v8, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Got size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    array-length v10, v1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " PeerInfo.size="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 271
    :cond_3
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-static {v7}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->readFrom(Ljava/nio/ByteBuffer;)Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;

    move-result-object v6

    .line 272
    .local v6, "theirPeerInfo":Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;
    sget-object v7, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    invoke-virtual {v6}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PeerInfo;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v8

    .line 273
    goto :goto_0
.end method

.method private exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;I)[B
    .locals 8
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "length"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 162
    :try_start_0
    invoke-static {}, Lio/github/muntashirakon/adb/SslUtils;->isCustomConscrypt()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 163
    const-string v4, "org.conscrypt.Conscrypt"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 171
    .local v0, "conscryptClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-string v4, "exportKeyingMaterial"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljavax/net/ssl/SSLSocket;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 173
    .local v2, "exportKeyingMaterial":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    const-string v7, "adb-label\u0000"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    return-object v4

    .line 164
    .end local v0    # "conscryptClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "exportKeyingMaterial":Ljava/lang/reflect/Method;
    :cond_0
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1d

    if-ge v4, v5, :cond_1

    .line 167
    new-instance v4, Ljavax/net/ssl/SSLException;

    const-string v5, "TLSv1.3 isn\'t supported on your platform. Use custom Conscrypt library instead."

    invoke-direct {v4, v5}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 174
    :catch_0
    move-exception v1

    .line 175
    .local v1, "e":Ljavax/net/ssl/SSLException;
    throw v1

    .line 169
    .end local v1    # "e":Ljavax/net/ssl/SSLException;
    :cond_1
    :try_start_1
    const-string v4, "com.android.org.conscrypt.Conscrypt"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljavax/net/ssl/SSLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .restart local v0    # "conscryptClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0

    .line 176
    .end local v0    # "conscryptClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v3

    .line 177
    .local v3, "th":Ljava/lang/Throwable;
    new-instance v4, Ljavax/net/ssl/SSLException;

    invoke-direct {v4, v3}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private notifyResult()V
    .locals 1

    .prologue
    .line 120
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->Stopped:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 121
    return-void
.end method

.method private readHeader()Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 192
    const/4 v2, 0x6

    new-array v1, v2, [B

    .line 193
    .local v1, "bytes":[B
    iget-object v2, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 194
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 195
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->readFrom(Ljava/nio/ByteBuffer;)Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;

    move-result-object v2

    return-object v2
.end method

.method private setupTlsConnection()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 125
    iget-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mRole:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    sget-object v7, Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;->Server:Lio/github/muntashirakon/adb/PairingConnectionCtx$Role;

    if-ne v6, v7, :cond_0

    .line 126
    iget-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v6

    iget v7, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPort:I

    invoke-virtual {v6, v7}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLServerSocket;

    .line 127
    .local v4, "sslServerSocket":Ljavax/net/ssl/SSLServerSocket;
    invoke-virtual {v4}, Ljavax/net/ssl/SSLServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 132
    .end local v4    # "sslServerSocket":Ljavax/net/ssl/SSLServerSocket;
    .local v3, "socket":Ljava/net/Socket;
    :goto_0
    invoke-virtual {v3, v10}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 135
    iget-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mSslContext:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v6}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v6

    iget-object v7, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mHost:Ljava/lang/String;

    iget v8, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPort:I

    invoke-virtual {v6, v3, v7, v8, v10}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v5

    check-cast v5, Ljavax/net/ssl/SSLSocket;

    .line 136
    .local v5, "sslSocket":Ljavax/net/ssl/SSLSocket;
    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 137
    sget-object v6, Lio/github/muntashirakon/adb/PairingConnectionCtx;->TAG:Ljava/lang/String;

    const-string v7, "...................."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    new-instance v6, Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    .line 140
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljavax/net/ssl/SSLSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mOutputStream:Ljava/io/DataOutputStream;

    .line 144
    const/16 v6, 0x40

    invoke-direct {p0, v5, v6}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->exportKeyingMaterial(Ljavax/net/ssl/SSLSocket;I)[B

    move-result-object v0

    .line 145
    .local v0, "keyMaterial":[B
    iget-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    array-length v6, v6

    array-length v7, v0

    add-int/2addr v6, v7

    new-array v2, v6, [B

    .line 146
    .local v2, "passwordBytes":[B
    iget-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    iget-object v7, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    array-length v7, v7

    invoke-static {v6, v9, v2, v9, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    iget-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    array-length v6, v6

    array-length v7, v0

    invoke-static {v0, v9, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    invoke-static {v2}, Lio/github/muntashirakon/adb/PairingAuthCtx;->createAlice([B)Lio/github/muntashirakon/adb/PairingAuthCtx;

    move-result-object v1

    .line 150
    .local v1, "pairingAuthCtx":Lio/github/muntashirakon/adb/PairingAuthCtx;
    if-nez v1, :cond_1

    .line 151
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Unable to create PairingAuthCtx."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 130
    .end local v0    # "keyMaterial":[B
    .end local v1    # "pairingAuthCtx":Lio/github/muntashirakon/adb/PairingAuthCtx;
    .end local v2    # "passwordBytes":[B
    .end local v3    # "socket":Ljava/net/Socket;
    .end local v5    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_0
    new-instance v3, Ljava/net/Socket;

    iget-object v6, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mHost:Ljava/lang/String;

    iget v7, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPort:I

    invoke-direct {v3, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    .restart local v3    # "socket":Ljava/net/Socket;
    goto :goto_0

    .line 153
    .restart local v0    # "keyMaterial":[B
    .restart local v1    # "pairingAuthCtx":Lio/github/muntashirakon/adb/PairingAuthCtx;
    .restart local v2    # "passwordBytes":[B
    .restart local v5    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    :cond_1
    iput-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    .line 154
    return-void
.end method

.method private writeHeader(Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;[B)V
    .locals 3
    .param p1, "header"    # Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "payload"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    const/4 v1, 0x6

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 183
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 184
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {p1, v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$PairingPacketHeader;->writeTo(Ljava/nio/ByteBuffer;)V

    .line 186
    iget-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->write([B)V

    .line 187
    iget-object v1, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v1, p2}, Ljava/io/DataOutputStream;->write([B)V

    .line 188
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPswd:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 280
    :try_start_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :goto_0
    :try_start_1
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mOutputStream:Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    :goto_1
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    sget-object v1, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->Ready:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    if-eq v0, v1, :cond_0

    .line 288
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mPairingAuthCtx:Lio/github/muntashirakon/adb/PairingAuthCtx;

    invoke-virtual {v0}, Lio/github/muntashirakon/adb/PairingAuthCtx;->destroy()V

    .line 290
    :cond_0
    return-void

    .line 285
    :catch_0
    move-exception v0

    goto :goto_1

    .line 281
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public start()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    sget-object v1, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->Ready:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    if-eq v0, v1, :cond_0

    .line 88
    new-instance v0, Ljava/io/IOException;

    const-string v1, "............................"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->ExchangingMsgs:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    .line 94
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->setupTlsConnection()V

    .line 97
    :goto_0
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    invoke-virtual {v0}, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 114
    :pswitch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, ".............................."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :pswitch_1
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->doExchangeMsgs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->notifyResult()V

    .line 101
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Exchanging message wasn\'t successful."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_1
    sget-object v0, Lio/github/muntashirakon/adb/PairingConnectionCtx$State;->ExchangingPeerInfo:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingConnectionCtx;->mState:Lio/github/muntashirakon/adb/PairingConnectionCtx$State;

    goto :goto_0

    .line 106
    :pswitch_2
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->doExchangePeerInfo()Z

    move-result v0

    if-nez v0, :cond_2

    .line 107
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->notifyResult()V

    .line 108
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not exchange peer info."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    invoke-direct {p0}, Lio/github/muntashirakon/adb/PairingConnectionCtx;->notifyResult()V

    .line 111
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
