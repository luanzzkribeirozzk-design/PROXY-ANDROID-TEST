.class final Lorg/conscrypt/ConscryptEngine;
.super Lorg/conscrypt/AbstractConscryptEngine;
.source "ConscryptEngine.java"

# interfaces
.implements Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;
.implements Lorg/conscrypt/SSLParametersImpl$AliasChooser;
.implements Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;


# static fields
.field private static final CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

.field private static final NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

.field private static defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;


# instance fields
.field private activeSession:Lorg/conscrypt/ActiveSession;

.field private bufferAllocator:Lorg/conscrypt/BufferAllocator;

.field private channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

.field private closedSession:Lorg/conscrypt/SessionSnapshot;

.field private final externalSession:Ljavax/net/ssl/SSLSession;

.field private handshakeFinished:Z

.field private handshakeListener:Lorg/conscrypt/HandshakeListener;

.field private lazyDirectBuffer:Ljava/nio/ByteBuffer;

.field private maxSealOverhead:I

.field private final networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

.field private peerHostname:Ljava/lang/String;

.field private final peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

.field private final singleDstBuffer:[Ljava/nio/ByteBuffer;

.field private final singleSrcBuffer:[Ljava/nio/ByteBuffer;

.field private final ssl:Lorg/conscrypt/NativeSsl;

.field private final sslParameters:Lorg/conscrypt/SSLParametersImpl;

.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 105
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 107
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 109
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    .line 110
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    .line 112
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    sget-object v1, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v0, v1, v2, v3, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    .line 115
    const/4 v0, 0x0

    sput-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lorg/conscrypt/SSLParametersImpl;

    .prologue
    const/4 v2, 0x1

    .line 189
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 118
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    .line 160
    new-instance v0, Lorg/conscrypt/ExternalSession;

    new-instance v1, Lorg/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptEngine$1;-><init>(Lorg/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 161
    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 178
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 179
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 190
    iput-object p3, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 191
    invoke-static {p1, p2}, Lorg/conscrypt/PeerInfoProvider;->forHostAndPort(Ljava/lang/String;I)Lorg/conscrypt/PeerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 192
    invoke-static {p3, p0, p0}, Lorg/conscrypt/ConscryptEngine;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;Lorg/conscrypt/SSLParametersImpl$AliasChooser;)Lorg/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 193
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->newBio()Lorg/conscrypt/NativeSsl$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    .line 194
    return-void
.end method

.method constructor <init>(Lorg/conscrypt/SSLParametersImpl;)V
    .locals 3
    .param p1, "sslParameters"    # Lorg/conscrypt/SSLParametersImpl;

    .prologue
    const/4 v2, 0x1

    .line 182
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 118
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    .line 160
    new-instance v0, Lorg/conscrypt/ExternalSession;

    new-instance v1, Lorg/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptEngine$1;-><init>(Lorg/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 161
    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 178
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 179
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 183
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 184
    invoke-static {}, Lorg/conscrypt/PeerInfoProvider;->nullProvider()Lorg/conscrypt/PeerInfoProvider;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 185
    invoke-static {p1, p0, p0}, Lorg/conscrypt/ConscryptEngine;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;Lorg/conscrypt/SSLParametersImpl$AliasChooser;)Lorg/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 186
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->newBio()Lorg/conscrypt/NativeSsl$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    .line 187
    return-void
.end method

.method constructor <init>(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/PeerInfoProvider;Lorg/conscrypt/SSLParametersImpl$AliasChooser;)V
    .locals 3
    .param p1, "sslParameters"    # Lorg/conscrypt/SSLParametersImpl;
    .param p2, "peerInfoProvider"    # Lorg/conscrypt/PeerInfoProvider;
    .param p3, "aliasChooser"    # Lorg/conscrypt/SSLParametersImpl$AliasChooser;

    .prologue
    const/4 v2, 0x1

    .line 197
    invoke-direct {p0}, Lorg/conscrypt/AbstractConscryptEngine;-><init>()V

    .line 118
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    .line 133
    const/4 v0, 0x0

    iput v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    .line 160
    new-instance v0, Lorg/conscrypt/ExternalSession;

    new-instance v1, Lorg/conscrypt/ConscryptEngine$1;

    invoke-direct {v1, p0}, Lorg/conscrypt/ConscryptEngine$1;-><init>(Lorg/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v1}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    .line 161
    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    .line 178
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    .line 179
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    .line 198
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 199
    const-string v0, "peerInfoProvider"

    invoke-static {p2, v0}, Lorg/conscrypt/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/PeerInfoProvider;

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    .line 200
    invoke-static {p1, p0, p3}, Lorg/conscrypt/ConscryptEngine;->newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;Lorg/conscrypt/SSLParametersImpl$AliasChooser;)Lorg/conscrypt/NativeSsl;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 201
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->newBio()Lorg/conscrypt/NativeSsl$BioWrapper;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    .line 202
    return-void
.end method

.method static synthetic access$000(Lorg/conscrypt/ConscryptEngine;)Lorg/conscrypt/ConscryptSession;
    .locals 1
    .param p0, "x0"    # Lorg/conscrypt/ConscryptEngine;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/conscrypt/ConscryptEngine;)Lorg/conscrypt/ConscryptSession;
    .locals 1
    .param p0, "x0"    # Lorg/conscrypt/ConscryptEngine;

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->provideHandshakeSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    return-object v0
.end method

.method private beginHandshakeInternal()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 407
    iget v5, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    packed-switch v5, :pswitch_data_0

    .line 459
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 409
    :pswitch_1
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Client/server mode must be set before handshake"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 418
    :pswitch_2
    new-instance v5, Ljavax/net/ssl/SSLHandshakeException;

    const-string v6, "Engine has already been closed"

    invoke-direct {v5, v6}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 424
    :pswitch_3
    const/4 v5, 0x2

    invoke-direct {p0, v5}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 426
    const/4 v4, 0x1

    .line 429
    .local v4, "releaseResources":Z
    :try_start_0
    iget-object v5, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lorg/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

    invoke-virtual {v5, v6, v7}, Lorg/conscrypt/NativeSsl;->initialize(Ljava/lang/String;Lorg/conscrypt/OpenSSLKey;)V

    .line 433
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 434
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->clientSessionContext()Lorg/conscrypt/ClientSessionContext;

    move-result-object v5

    .line 435
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getHostname()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v7

    iget-object v8, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    .line 434
    invoke-virtual {v5, v6, v7, v8}, Lorg/conscrypt/ClientSessionContext;->getCachedSession(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/NativeSslSession;

    move-result-object v0

    .line 436
    .local v0, "cachedSession":Lorg/conscrypt/NativeSslSession;
    if-eqz v0, :cond_1

    .line 437
    iget-object v5, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, v5}, Lorg/conscrypt/NativeSslSession;->offerToResume(Lorg/conscrypt/NativeSsl;)V

    .line 441
    .end local v0    # "cachedSession":Lorg/conscrypt/NativeSslSession;
    :cond_1
    iget-object v5, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v5}, Lorg/conscrypt/NativeSsl;->getMaxSealOverhead()I

    move-result v5

    iput v5, p0, Lorg/conscrypt/ConscryptEngine;->maxSealOverhead:I

    .line 442
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    const/4 v4, 0x0

    .line 455
    if-eqz v4, :cond_0

    .line 456
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    goto :goto_0

    .line 444
    :catch_0
    move-exception v1

    .line 446
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 448
    .local v3, "message":Ljava/lang/String;
    const-string v5, "unexpected CCS"

    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 449
    const-string v5, "ssl_unexpected_ccs: host=%s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 450
    .local v2, "logMessage":Ljava/lang/String;
    invoke-static {v2}, Lorg/conscrypt/Platform;->logEvent(Ljava/lang/String;)V

    .line 452
    .end local v2    # "logMessage":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 453
    invoke-static {v1}, Lorg/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v5

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "message":Ljava/lang/String;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_3

    .line 456
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    :cond_3
    throw v5

    .line 407
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static calcDstsLength([Ljava/nio/ByteBuffer;II)I
    .locals 6
    .param p0, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p1, "dstsOffset"    # I
    .param p2, "dstsLength"    # I

    .prologue
    .line 945
    const/4 v0, 0x0

    .line 946
    .local v0, "capacity":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_3

    .line 947
    aget-object v1, p0, v2

    .line 948
    .local v1, "dst":Ljava/nio/ByteBuffer;
    if-eqz v1, :cond_0

    const/4 v3, 0x1

    :goto_1
    const-string v4, "dsts[%d] is null"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 949
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    new-instance v3, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v3}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v3

    .line 948
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 952
    :cond_1
    if-lt v2, p1, :cond_2

    add-int v3, p1, p2

    if-ge v2, v3, :cond_2

    .line 953
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    add-int/2addr v0, v3

    .line 946
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 956
    .end local v1    # "dst":Ljava/nio/ByteBuffer;
    :cond_3
    return v0
.end method

.method private static calcSrcsLength([Ljava/nio/ByteBuffer;II)J
    .locals 7
    .param p0, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p1, "srcsOffset"    # I
    .param p2, "srcsEndOffset"    # I

    .prologue
    .line 960
    const-wide/16 v2, 0x0

    .line 961
    .local v2, "len":J
    move v0, p1

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_1

    .line 962
    aget-object v1, p0, v0

    .line 963
    .local v1, "src":Ljava/nio/ByteBuffer;
    if-nez v1, :cond_0

    .line 964
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "srcs["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 966
    :cond_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 961
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    .end local v1    # "src":Ljava/nio/ByteBuffer;
    :cond_1
    return-wide v2
.end method

.method private clientSessionContext()Lorg/conscrypt/ClientSessionContext;
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getClientSessionContext()Lorg/conscrypt/ClientSessionContext;

    move-result-object v0

    return-object v0
.end method

.method private closeAll()V
    .locals 0

    .prologue
    .line 1351
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->closeOutbound()V

    .line 1352
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->closeInbound()V

    .line 1353
    return-void
.end method

.method private closeAndFreeResources()V
    .locals 1

    .prologue
    .line 1672
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 1673
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    if-eqz v0, :cond_0

    .line 1674
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->close()V

    .line 1676
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    if-eqz v0, :cond_1

    .line 1677
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl$BioWrapper;->close()V

    .line 1679
    :cond_1
    return-void
.end method

.method private convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 1137
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_1

    .line 1138
    :cond_0
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v0

    .line 1140
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->toSSLException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v0

    goto :goto_0
.end method

.method private directByteBufferAddress(Ljava/nio/ByteBuffer;I)J
    .locals 4
    .param p1, "directBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I

    .prologue
    .line 1219
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    int-to-long v2, p2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private finishHandshake()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 1009
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeListener:Lorg/conscrypt/HandshakeListener;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeListener:Lorg/conscrypt/HandshakeListener;

    invoke-virtual {v0}, Lorg/conscrypt/HandshakeListener;->onHandshakeFinished()V

    .line 1012
    :cond_0
    return-void
.end method

.method private freeIfDone()V
    .locals 1

    .prologue
    .line 1356
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->isInboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->isOutboundDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1357
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V

    .line 1359
    :cond_0
    return-void
.end method

.method static getDefaultBufferAllocator()Lorg/conscrypt/BufferAllocator;
    .locals 1

    .prologue
    .line 226
    sget-object v0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    return-object v0
.end method

.method private getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;
    .locals 1

    .prologue
    .line 1340
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_0

    .line 1346
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    :goto_0
    return-object v0

    .line 1344
    :pswitch_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .param p1, "pending"    # I

    .prologue
    .line 1336
    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0
.end method

.method private getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 3

    .prologue
    .line 544
    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-eqz v0, :cond_0

    .line 545
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 559
    :goto_0
    return-object v0

    .line 547
    :cond_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_0

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected engine state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 549
    :pswitch_0
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    invoke-static {v0}, Lorg/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    goto :goto_0

    .line 551
    :pswitch_1
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 559
    :pswitch_2
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0

    .line 547
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 1210
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    .line 1211
    const/16 v0, 0x4000

    const/16 v1, 0x4145

    .line 1212
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1211
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    .line 1214
    :cond_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1215
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->lazyDirectBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 976
    :try_start_0
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v2}, Lorg/conscrypt/NativeSsl;->doHandshake()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 977
    .local v1, "ssl_error_code":I
    packed-switch v1, :pswitch_data_0

    .line 997
    :try_start_1
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/conscrypt/ActiveSession;->onPeerCertificateAvailable(Ljava/lang/String;I)V

    .line 999
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->finishHandshake()V

    .line 1000
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v2

    .line 979
    :pswitch_0
    :try_start_2
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v2

    invoke-static {v2}, Lorg/conscrypt/ConscryptEngine;->pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    goto :goto_0

    .line 981
    :pswitch_1
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 987
    .end local v1    # "ssl_error_code":I
    :catch_0
    move-exception v0

    .line 990
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 991
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1001
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 1002
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lorg/conscrypt/SSLUtils;->toSSLHandshakeException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLHandshakeException;

    move-result-object v2

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isHandshakeStarted()Z
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    packed-switch v0, :pswitch_data_0

    .line 364
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 362
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .param p1, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1326
    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p1, v0, :cond_0

    .line 1329
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p1

    .line 1331
    .end local p1    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_0
    return-object p1
.end method

.method private newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .param p1, "bytesConsumed"    # I
    .param p2, "bytesProduced"    # I
    .param p3, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1370
    new-instance v0, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v1

    .line 1371
    sget-object v2, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p3, v2, :cond_0

    .end local p3    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_0
    invoke-direct {p0, p3}, Lorg/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 1370
    return-object v0

    .line 1371
    .restart local p3    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p3

    goto :goto_0
.end method

.method private static newSsl(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;Lorg/conscrypt/SSLParametersImpl$AliasChooser;)Lorg/conscrypt/NativeSsl;
    .locals 2
    .param p0, "sslParameters"    # Lorg/conscrypt/SSLParametersImpl;
    .param p1, "engine"    # Lorg/conscrypt/ConscryptEngine;
    .param p2, "aliasChooser"    # Lorg/conscrypt/SSLParametersImpl$AliasChooser;

    .prologue
    .line 207
    :try_start_0
    invoke-static {p0, p1, p2, p1}, Lorg/conscrypt/NativeSsl;->newInstance(Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/NativeCrypto$SSLHandshakeCallbacks;Lorg/conscrypt/SSLParametersImpl$AliasChooser;Lorg/conscrypt/SSLParametersImpl$PSKCallbacks;)Lorg/conscrypt/NativeSsl;
    :try_end_0
    .catch Ljavax/net/ssl/SSLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljavax/net/ssl/SSLException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;
    .locals 1
    .param p1, "err"    # Ljava/lang/String;

    .prologue
    .line 1362
    iget-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v0, :cond_0

    .line 1363
    new-instance v0, Ljavax/net/ssl/SSLException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    .line 1365
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/net/ssl/SSLHandshakeException;

    invoke-direct {v0, p1}, Ljavax/net/ssl/SSLHandshakeException;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private pendingInboundCleartextBytes()I
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getPendingReadableBytes()I

    move-result v0

    return v0
.end method

.method private static pendingStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 1
    .param p0, "pendingOutboundBytes"    # I

    .prologue
    .line 576
    if-lez p0, :cond_0

    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_0
.end method

.method private provideAfterHandshakeSession()Lorg/conscrypt/ConscryptSession;
    .locals 2

    .prologue
    .line 630
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 631
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    .line 630
    :goto_0
    return-object v0

    .line 632
    :cond_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->provideSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    goto :goto_0
.end method

.method private provideHandshakeSession()Lorg/conscrypt/ConscryptSession;
    .locals 3

    .prologue
    .line 621
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 622
    :try_start_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    .line 623
    :goto_0
    monitor-exit v1

    .line 622
    return-object v0

    .line 623
    :cond_0
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    goto :goto_0

    .line 624
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private provideSession()Lorg/conscrypt/ConscryptSession;
    .locals 3

    .prologue
    .line 608
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 609
    :try_start_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 610
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->closedSession:Lorg/conscrypt/SessionSnapshot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->closedSession:Lorg/conscrypt/SessionSnapshot;

    :goto_0
    monitor-exit v1

    .line 616
    :goto_1
    return-object v0

    .line 610
    :cond_0
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    goto :goto_0

    .line 612
    :cond_1
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    .line 614
    invoke-static {}, Lorg/conscrypt/SSLNullSession;->getNullSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    monitor-exit v1

    goto :goto_1

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 616
    :cond_2
    :try_start_1
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private readEncryptedData(Ljava/nio/ByteBuffer;I)I
    .locals 6
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pending"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1266
    const/4 v0, 0x0

    .line 1267
    .local v0, "bytesRead":I
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1268
    .local v4, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-lt v5, p2, :cond_0

    .line 1269
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 1270
    .local v3, "limit":I
    sub-int v5, v3, v4

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1271
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1272
    invoke-direct {p0, p1, v4, v2}, Lorg/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 1274
    if-lez v0, :cond_0

    .line 1275
    add-int v5, v4, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1283
    .end local v2    # "len":I
    .end local v3    # "limit":I
    :cond_0
    :goto_0
    return v0

    .line 1279
    .restart local v2    # "len":I
    .restart local v3    # "limit":I
    :cond_1
    invoke-direct {p0, p1, v2}, Lorg/conscrypt/ConscryptEngine;->readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1284
    .end local v2    # "len":I
    .end local v3    # "limit":I
    .end local v4    # "pos":I
    :catch_0
    move-exception v1

    .line 1285
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5
.end method

.method private readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1290
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Lorg/conscrypt/NativeSsl$BioWrapper;->readDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private readEncryptedDataHeap(Ljava/nio/ByteBuffer;I)I
    .locals 5
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1294
    const/4 v0, 0x0

    .line 1297
    .local v0, "allocatedBuffer":Lorg/conscrypt/AllocatedBuffer;
    :try_start_0
    iget-object v4, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    if-eqz v4, :cond_2

    .line 1298
    iget-object v4, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    invoke-virtual {v4, p2}, Lorg/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1299
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1307
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1308
    .local v3, "bytesToRead":I
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lorg/conscrypt/ConscryptEngine;->readEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 1309
    .local v2, "bytesRead":I
    if-lez v2, :cond_0

    .line 1310
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1311
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1312
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1317
    :cond_0
    if-eqz v0, :cond_1

    .line 1319
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    .line 1315
    :cond_1
    return v2

    .line 1304
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesRead":I
    .end local v3    # "bytesToRead":I
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1317
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 1319
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_3
    throw v4
.end method

.method private readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "bytesConsumed"    # I
    .param p3, "bytesProduced"    # I
    .param p4, "status"    # Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1226
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v2

    .line 1227
    .local v2, "pendingNet":I
    if-lez v2, :cond_4

    .line 1229
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1230
    .local v0, "capacity":I
    if-ge v0, v2, :cond_1

    .line 1231
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    sget-object v5, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1233
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v6, :cond_0

    .line 1232
    .end local p4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_0
    invoke-direct {p0, p4}, Lorg/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-direct {v4, v5, v6, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    .line 1255
    .end local v0    # "capacity":I
    :goto_1
    return-object v4

    .line 1233
    .restart local v0    # "capacity":I
    .restart local p4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_0
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object p4

    goto :goto_0

    .line 1238
    :cond_1
    invoke-direct {p0, p1, v2}, Lorg/conscrypt/ConscryptEngine;->readEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v3

    .line 1240
    .local v3, "produced":I
    if-gtz v3, :cond_2

    .line 1244
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->SSL_clear_error()V

    .line 1250
    :goto_2
    new-instance v4, Ljavax/net/ssl/SSLEngineResult;

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v5

    .line 1252
    sget-object v6, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne p4, v6, :cond_3

    .line 1251
    .end local p4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_3
    invoke-direct {p0, p4}, Lorg/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v6

    invoke-direct {v4, v5, v6, p2, p3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1256
    .end local v0    # "capacity":I
    .end local v2    # "pendingNet":I
    .end local v3    # "produced":I
    :catch_0
    move-exception v1

    .line 1257
    .local v1, "e":Ljava/lang/Exception;
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v4

    throw v4

    .line 1246
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "capacity":I
    .restart local v2    # "pendingNet":I
    .restart local v3    # "produced":I
    .restart local p4    # "status":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_2
    add-int/2addr p3, v3

    .line 1247
    sub-int/2addr v2, v3

    goto :goto_2

    .line 1252
    :cond_3
    :try_start_1
    invoke-direct {p0, v2}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus(I)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p4

    goto :goto_3

    .line 1255
    .end local v0    # "capacity":I
    .end local v3    # "produced":I
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private readPlaintextData(Ljava/nio/ByteBuffer;)I
    .locals 7
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1079
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    .line 1080
    .local v4, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 1081
    .local v3, "limit":I
    const/16 v5, 0x4145

    sub-int v6, v3, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1082
    .local v2, "len":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1083
    invoke-direct {p0, p1, v4, v2}, Lorg/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 1084
    .local v0, "bytesRead":I
    if-lez v0, :cond_0

    .line 1085
    add-int v5, v4, v0

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1091
    .end local v0    # "bytesRead":I
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1, v2}, Lorg/conscrypt/ConscryptEngine;->readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 1092
    .end local v2    # "len":I
    .end local v3    # "limit":I
    .end local v4    # "pos":I
    :catch_0
    move-exception v1

    .line 1093
    .local v1, "e":Ljava/security/cert/CertificateException;
    invoke-direct {p0, v1}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v5

    throw v5
.end method

.method private readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1099
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Lorg/conscrypt/NativeSsl;->readDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private readPlaintextDataHeap(Ljava/nio/ByteBuffer;I)I
    .locals 5
    .param p1, "dst"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1104
    const/4 v0, 0x0

    .line 1107
    .local v0, "allocatedBuffer":Lorg/conscrypt/AllocatedBuffer;
    :try_start_0
    iget-object v4, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    if-eqz v4, :cond_2

    .line 1108
    iget-object v4, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    invoke-virtual {v4, p2}, Lorg/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1109
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1118
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1119
    .local v3, "bytesToRead":I
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v3}, Lorg/conscrypt/ConscryptEngine;->readPlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 1120
    .local v2, "bytesRead":I
    if-lez v2, :cond_0

    .line 1122
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1123
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1124
    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1129
    :cond_0
    if-eqz v0, :cond_1

    .line 1131
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    .line 1127
    :cond_1
    return v2

    .line 1114
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesRead":I
    .end local v3    # "bytesToRead":I
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1129
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_3

    .line 1131
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_3
    throw v4
.end method

.method private resetSingleDstBuffer()V
    .locals 3

    .prologue
    .line 1810
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1811
    return-void
.end method

.method private resetSingleSrcBuffer()V
    .locals 3

    .prologue
    .line 1801
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1802
    return-void
.end method

.method private sendSSLShutdown()V
    .locals 1

    .prologue
    .line 1664
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->shutdown()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1669
    :goto_0
    return-void

    .line 1665
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sessionContext()Lorg/conscrypt/AbstractSessionContext;
    .locals 1

    .prologue
    .line 1818
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object v0

    return-object v0
.end method

.method static setDefaultBufferAllocator(Lorg/conscrypt/BufferAllocator;)V
    .locals 0
    .param p0, "bufferAllocator"    # Lorg/conscrypt/BufferAllocator;

    .prologue
    .line 218
    sput-object p0, Lorg/conscrypt/ConscryptEngine;->defaultBufferAllocator:Lorg/conscrypt/BufferAllocator;

    .line 219
    return-void
.end method

.method private singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1805
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1806
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 1796
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1797
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer:[Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method private transitionTo(I)V
    .locals 3
    .param p1, "newState"    # I

    .prologue
    .line 1822
    sparse-switch p1, :sswitch_data_0

    .line 1840
    :cond_0
    :goto_0
    iput p1, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    .line 1841
    return-void

    .line 1824
    :sswitch_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    .line 1825
    new-instance v0, Lorg/conscrypt/ActiveSession;

    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v2}, Lorg/conscrypt/SSLParametersImpl;->getSessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ActiveSession;-><init>(Lorg/conscrypt/NativeSsl;Lorg/conscrypt/AbstractSessionContext;)V

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    goto :goto_0

    .line 1829
    :sswitch_1
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 1830
    new-instance v0, Lorg/conscrypt/SessionSnapshot;

    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-direct {v0, v1}, Lorg/conscrypt/SessionSnapshot;-><init>(Lorg/conscrypt/ConscryptSession;)V

    iput-object v0, p0, Lorg/conscrypt/ConscryptEngine;->closedSession:Lorg/conscrypt/SessionSnapshot;

    goto :goto_0

    .line 1822
    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method private writeEncryptedData(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1148
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    .line 1150
    .local v2, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1151
    invoke-direct {p0, p1, v2, p2}, Lorg/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 1156
    .local v0, "bytesWritten":I
    :goto_0
    if-lez v0, :cond_0

    .line 1157
    add-int v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1160
    :cond_0
    return v0

    .line 1153
    .end local v0    # "bytesWritten":I
    :cond_1
    invoke-direct {p0, p1, v2, p2}, Lorg/conscrypt/ConscryptEngine;->writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .restart local v0    # "bytesWritten":I
    goto :goto_0

    .line 1161
    .end local v0    # "bytesWritten":I
    .end local v2    # "pos":I
    :catch_0
    move-exception v1

    .line 1162
    .local v1, "e":Ljava/io/IOException;
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 1163
    new-instance v3, Ljavax/net/ssl/SSLException;

    invoke-direct {v3, v1}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1168
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Lorg/conscrypt/NativeSsl$BioWrapper;->writeDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private writeEncryptedDataHeap(Ljava/nio/ByteBuffer;II)I
    .locals 7
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1172
    const/4 v0, 0x0

    .line 1175
    .local v0, "allocatedBuffer":Lorg/conscrypt/AllocatedBuffer;
    :try_start_0
    iget-object v5, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    if-eqz v5, :cond_1

    .line 1176
    iget-object v5, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    invoke-virtual {v5, p3}, Lorg/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1177
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1185
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    .line 1186
    .local v4, "limit":I
    sub-int v5, v4, p2

    invoke-static {v5, p3}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1187
    .local v2, "bytesToCopy":I
    add-int v5, p2, v2

    invoke-virtual {p1, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1188
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1190
    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1193
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1195
    const/4 v5, 0x0

    invoke-direct {p0, v1, v5, v2}, Lorg/conscrypt/ConscryptEngine;->writeEncryptedDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v3

    .line 1198
    .local v3, "bytesWritten":I
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1202
    if-eqz v0, :cond_0

    .line 1204
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    .line 1200
    :cond_0
    return v3

    .line 1182
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToCopy":I
    .end local v3    # "bytesWritten":I
    .end local v4    # "limit":I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1202
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_2

    .line 1204
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_2
    throw v5
.end method

.method private writePlaintextData(Ljava/nio/ByteBuffer;I)I
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1021
    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 1023
    .local v1, "pos":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1024
    invoke-direct {p0, p1, v1, p2}, Lorg/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I

    move-result v2

    .line 1028
    .local v2, "sslWrote":I
    :goto_0
    if-lez v2, :cond_0

    .line 1029
    add-int v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1031
    :cond_0
    return v2

    .line 1026
    .end local v2    # "sslWrote":I
    :cond_1
    invoke-direct {p0, p1, v1, p2}, Lorg/conscrypt/ConscryptEngine;->writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .restart local v2    # "sslWrote":I
    goto :goto_0

    .line 1032
    .end local v1    # "pos":I
    .end local v2    # "sslWrote":I
    :catch_0
    move-exception v0

    .line 1033
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v3

    throw v3
.end method

.method private writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    .locals 4
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1038
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ConscryptEngine;->directByteBufferAddress(Ljava/nio/ByteBuffer;I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p3}, Lorg/conscrypt/NativeSsl;->writeDirectByteBuffer(JI)I

    move-result v0

    return v0
.end method

.method private writePlaintextDataHeap(Ljava/nio/ByteBuffer;II)I
    .locals 5
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "pos"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1042
    const/4 v0, 0x0

    .line 1045
    .local v0, "allocatedBuffer":Lorg/conscrypt/AllocatedBuffer;
    :try_start_0
    iget-object v4, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    if-eqz v4, :cond_1

    .line 1046
    iget-object v4, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    invoke-virtual {v4, p3}, Lorg/conscrypt/BufferAllocator;->allocateDirectBuffer(I)Lorg/conscrypt/AllocatedBuffer;

    move-result-object v0

    .line 1047
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1056
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    .line 1057
    .local v3, "limit":I
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-static {p3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1058
    .local v2, "bytesToWrite":I
    add-int v4, p2, v2

    invoke-virtual {p1, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1059
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1060
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1062
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1063
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1065
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4, v2}, Lorg/conscrypt/ConscryptEngine;->writePlaintextDataDirect(Ljava/nio/ByteBuffer;II)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    .line 1067
    if-eqz v0, :cond_0

    .line 1069
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    .line 1065
    :cond_0
    return v4

    .line 1052
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    .end local v2    # "bytesToWrite":I
    .end local v3    # "limit":I
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .restart local v1    # "buffer":Ljava/nio/ByteBuffer;
    goto :goto_0

    .line 1067
    .end local v1    # "buffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 1069
    invoke-virtual {v0}, Lorg/conscrypt/AllocatedBuffer;->release()Lorg/conscrypt/AllocatedBuffer;

    :cond_2
    throw v4
.end method


# virtual methods
.method public beginHandshake()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 401
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 402
    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    .line 403
    monitor-exit v1

    .line 404
    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public chooseClientAlias(Ljavax/net/ssl/X509KeyManager;[Ljavax/security/auth/x500/X500Principal;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "issuers"    # [Ljavax/security/auth/x500/X500Principal;
    .param p3, "keyTypes"    # [Ljava/lang/String;

    .prologue
    .line 1703
    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1704
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1705
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p3, p2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    .line 1707
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    invoke-interface {p1, p3, p2, v1}, Ljavax/net/ssl/X509KeyManager;->chooseClientAlias([Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public chooseClientPSKIdentity(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lorg/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;

    .prologue
    .line 1720
    invoke-interface {p1, p2, p0}, Lorg/conscrypt/PSKKeyManager;->chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public chooseServerAlias(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "keyManager"    # Ljavax/net/ssl/X509KeyManager;
    .param p2, "keyType"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1692
    instance-of v1, p1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 1693
    check-cast v0, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 1694
    .local v0, "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    invoke-virtual {v0, p2, v2, p0}, Ljavax/net/ssl/X509ExtendedKeyManager;->chooseEngineServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v1

    .line 1696
    .end local v0    # "ekm":Ljavax/net/ssl/X509ExtendedKeyManager;
    :goto_0
    return-object v1

    :cond_0
    invoke-interface {p1, p2, v2, v2}, Ljavax/net/ssl/X509KeyManager;->chooseServerAlias(Ljava/lang/String;[Ljava/security/Principal;Ljava/net/Socket;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public chooseServerPSKIdentityHint(Lorg/conscrypt/PSKKeyManager;)Ljava/lang/String;
    .locals 1
    .param p1, "keyManager"    # Lorg/conscrypt/PSKKeyManager;

    .prologue
    .line 1714
    invoke-interface {p1, p0}, Lorg/conscrypt/PSKKeyManager;->chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public clientCertificateRequested([B[I[[B)V
    .locals 1
    .param p1, "keyTypeBytes"    # [B
    .param p2, "signatureAlgs"    # [I
    .param p3, "asn1DerEncodedPrincipals"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1659
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->chooseClientCertificate([B[I[[B)V

    .line 1660
    return-void
.end method

.method public clientPSKKeyRequested(Ljava/lang/String;[B[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # [B
    .param p3, "key"    # [B

    .prologue
    .line 1558
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->clientPSKKeyRequested(Ljava/lang/String;[B[B)I

    move-result v0

    return v0
.end method

.method public closeInbound()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x6

    .line 463
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 464
    :try_start_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-ne v0, v2, :cond_1

    .line 465
    :cond_0
    monitor-exit v1

    .line 479
    :goto_0
    return-void

    .line 467
    :cond_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 468
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    .line 469
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 473
    :goto_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 478
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 471
    :cond_2
    const/4 v0, 0x6

    :try_start_1
    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_1

    .line 476
    :cond_3
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public closeOutbound()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x7

    .line 483
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 484
    :try_start_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-ne v0, v2, :cond_1

    .line 485
    :cond_0
    monitor-exit v1

    .line 500
    :goto_0
    return-void

    .line 487
    :cond_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 488
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2

    .line 489
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 493
    :goto_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->sendSSLShutdown()V

    .line 494
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 499
    :goto_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 491
    :cond_2
    const/4 v0, 0x7

    :try_start_1
    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_1

    .line 497
    :cond_3
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method exportKeyingMaterial(Ljava/lang/String;[BI)[B
    .locals 3
    .param p1, "label"    # Ljava/lang/String;
    .param p2, "context"    # [B
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1762
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 1763
    :try_start_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x3

    if-lt v0, v2, :cond_0

    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-ne v0, v2, :cond_1

    .line 1764
    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    .line 1767
    :goto_0
    return-object v0

    .line 1766
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1767
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->exportKeyingMaterial(Ljava/lang/String;[BI)[B

    move-result-object v0

    goto :goto_0

    .line 1766
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 1684
    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->closeAndFreeResources()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1686
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1688
    return-void

    .line 1686
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getApplicationProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1785
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->provideAfterHandshakeSession()Lorg/conscrypt/ConscryptSession;

    move-result-object v0

    invoke-interface {v0}, Lorg/conscrypt/ConscryptSession;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getApplicationProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1741
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getApplicationProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getChannelId()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 282
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 283
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not allowed in client mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 287
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 288
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Channel ID is only available after handshake completes"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_1
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getTlsChannelId()[B

    move-result-object v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0
.end method

.method public getDelegatedTask()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 505
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnableSessionCreation()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnableSessionCreation()Z

    move-result v0

    return v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnabledProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHandshakeApplicationProtocol()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1790
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 1791
    :try_start_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1792
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .locals 2

    .prologue
    .line 538
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 539
    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 540
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getHostname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lorg/conscrypt/PeerInfoProvider;->getHostname()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNeedClientAuth()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getPSKKey(Lorg/conscrypt/PSKKeyManager;Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/SecretKey;
    .locals 1
    .param p1, "keyManager"    # Lorg/conscrypt/PSKKeyManager;
    .param p2, "identityHint"    # Ljava/lang/String;
    .param p3, "identity"    # Ljava/lang/String;

    .prologue
    .line 1726
    invoke-interface {p1, p2, p3, p0}, Lorg/conscrypt/PSKKeyManager;->getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;

    move-result-object v0

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lorg/conscrypt/PeerInfoProvider;->getHostnameOrIP()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->peerInfoProvider:Lorg/conscrypt/PeerInfoProvider;

    invoke-virtual {v0}, Lorg/conscrypt/PeerInfoProvider;->getPort()I

    move-result v0

    return v0
.end method

.method public getSSLParameters()Ljavax/net/ssl/SSLParameters;
    .locals 2

    .prologue
    .line 525
    invoke-super {p0}, Lorg/conscrypt/AbstractConscryptEngine;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 526
    .local v0, "params":Ljavax/net/ssl/SSLParameters;
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-static {v0, v1, p0}, Lorg/conscrypt/Platform;->getSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V

    .line 527
    return-object v0
.end method

.method public getSession()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->externalSession:Ljavax/net/ssl/SSLSession;

    return-object v0
.end method

.method public getSupportedCipherSuites()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 637
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->getSupportedCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedProtocols()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 642
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->getSupportedProtocols()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getTlsUnique()[B
    .locals 1

    .prologue
    .line 1757
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->getTlsUnique()[B

    move-result-object v0

    return-object v0
.end method

.method public getUseClientMode()Z
    .locals 1

    .prologue
    .line 647
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getUseClientMode()Z

    move-result v0

    return v0
.end method

.method public getWantClientAuth()Z
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0}, Lorg/conscrypt/SSLParametersImpl;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method handshakeSession()Ljavax/net/ssl/SSLSession;
    .locals 3

    .prologue
    .line 589
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 590
    :try_start_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 591
    new-instance v0, Lorg/conscrypt/ExternalSession;

    new-instance v2, Lorg/conscrypt/ConscryptEngine$2;

    invoke-direct {v2, p0}, Lorg/conscrypt/ConscryptEngine$2;-><init>(Lorg/conscrypt/ConscryptEngine;)V

    invoke-direct {v0, v2}, Lorg/conscrypt/ExternalSession;-><init>(Lorg/conscrypt/ExternalSession$Provider;)V

    invoke-static {v0}, Lorg/conscrypt/Platform;->wrapSSLSession(Lorg/conscrypt/ExternalSession;)Ljavax/net/ssl/SSLSession;

    move-result-object v0

    monitor-exit v1

    .line 598
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isInboundDone()Z
    .locals 3

    .prologue
    .line 657
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 658
    :try_start_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 660
    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->wasShutdownReceived()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 661
    :cond_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    .line 658
    return v0

    .line 661
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 662
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isOutboundDone()Z
    .locals 3

    .prologue
    .line 667
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 668
    :try_start_0
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    .line 670
    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->wasShutdownSent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 671
    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    .line 668
    return v0

    .line 671
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 672
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method maxSealOverhead()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->maxSealOverhead:I

    return v0
.end method

.method public onNewSessionEstablished(J)V
    .locals 5
    .param p1, "sslSessionNativePtr"    # J

    .prologue
    .line 1602
    :try_start_0
    invoke-static {p1, p2}, Lorg/conscrypt/NativeCrypto;->SSL_SESSION_up_ref(J)V

    .line 1607
    new-instance v2, Lorg/conscrypt/NativeRef$SSL_SESSION;

    invoke-direct {v2, p1, p2}, Lorg/conscrypt/NativeRef$SSL_SESSION;-><init>(J)V

    .line 1609
    .local v2, "ref":Lorg/conscrypt/NativeRef$SSL_SESSION;
    iget-object v3, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-static {v2, v3}, Lorg/conscrypt/NativeSslSession;->newInstance(Lorg/conscrypt/NativeRef$SSL_SESSION;Lorg/conscrypt/ConscryptSession;)Lorg/conscrypt/NativeSslSession;

    move-result-object v1

    .line 1612
    .local v1, "nativeSession":Lorg/conscrypt/NativeSslSession;
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->sessionContext()Lorg/conscrypt/AbstractSessionContext;

    move-result-object v0

    .line 1613
    .local v0, "ctx":Lorg/conscrypt/AbstractSessionContext;
    invoke-virtual {v0, v1}, Lorg/conscrypt/AbstractSessionContext;->cacheSession(Lorg/conscrypt/NativeSslSession;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1617
    .end local v0    # "ctx":Lorg/conscrypt/AbstractSessionContext;
    .end local v1    # "nativeSession":Lorg/conscrypt/NativeSslSession;
    .end local v2    # "ref":Lorg/conscrypt/NativeRef$SSL_SESSION;
    :goto_0
    return-void

    .line 1614
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public onSSLStateChange(II)V
    .locals 4
    .param p1, "type"    # I
    .param p2, "val"    # I

    .prologue
    const/4 v2, 0x2

    .line 1568
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 1569
    sparse-switch p1, :sswitch_data_0

    .line 1588
    :goto_0
    :try_start_0
    monitor-exit v1

    .line 1589
    return-void

    .line 1573
    :sswitch_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    goto :goto_0

    .line 1588
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1577
    :sswitch_1
    :try_start_1
    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    if-eq v0, v2, :cond_0

    iget v0, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    .line 1579
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Completed handshake while in mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1582
    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1569
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method pendingOutboundEncryptedBytes()I
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->networkBio:Lorg/conscrypt/NativeSsl$BioWrapper;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl$BioWrapper;->getPendingWrittenBytes()I

    move-result v0

    return v0
.end method

.method public selectApplicationProtocol([B)I
    .locals 2
    .param p1, "protocols"    # [B

    .prologue
    .line 1776
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v1}, Lorg/conscrypt/SSLParametersImpl;->getApplicationProtocolSelector()Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    move-result-object v0

    .line 1777
    .local v0, "adapter":Lorg/conscrypt/ApplicationProtocolSelectorAdapter;
    if-nez v0, :cond_0

    .line 1778
    const/4 v1, 0x3

    .line 1780
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0, p1}, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;->selectApplicationProtocol([B)I

    move-result v1

    goto :goto_0
.end method

.method public serverCertificateRequested()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1593
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 1594
    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0}, Lorg/conscrypt/NativeSsl;->configureServerCertificate()V

    .line 1595
    monitor-exit v1

    .line 1596
    return-void

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1
    .param p1, "identityHint"    # Ljava/lang/String;
    .param p2, "identity"    # Ljava/lang/String;
    .param p3, "key"    # [B

    .prologue
    .line 1563
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/conscrypt/NativeSsl;->serverPSKKeyRequested(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    return v0
.end method

.method public serverSessionRequested([B)J
    .locals 2
    .param p1, "id"    # [B

    .prologue
    .line 1622
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelector;)V
    .locals 1
    .param p1, "selector"    # Lorg/conscrypt/ApplicationProtocolSelector;

    .prologue
    .line 1751
    .line 1752
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1751
    :goto_0
    invoke-virtual {p0, v0}, Lorg/conscrypt/ConscryptEngine;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1753
    return-void

    .line 1752
    :cond_0
    new-instance v0, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    invoke-direct {v0, p0, p1}, Lorg/conscrypt/ApplicationProtocolSelectorAdapter;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/conscrypt/ApplicationProtocolSelector;)V

    goto :goto_0
.end method

.method setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V
    .locals 1
    .param p1, "adapter"    # Lorg/conscrypt/ApplicationProtocolSelectorAdapter;

    .prologue
    .line 1771
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setApplicationProtocolSelector(Lorg/conscrypt/ApplicationProtocolSelectorAdapter;)V

    .line 1772
    return-void
.end method

.method setApplicationProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 1746
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setApplicationProtocols([Ljava/lang/String;)V

    .line 1747
    return-void
.end method

.method setBufferAllocator(Lorg/conscrypt/BufferAllocator;)V
    .locals 3
    .param p1, "bufferAllocator"    # Lorg/conscrypt/BufferAllocator;

    .prologue
    .line 231
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 232
    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 233
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not set buffer allocator after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 236
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->bufferAllocator:Lorg/conscrypt/BufferAllocator;

    .line 237
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    return-void
.end method

.method setChannelIdEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 258
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 259
    :try_start_0
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Not allowed in client mode"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 262
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 263
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Could not enable/disable Channel ID after the initial handshake has begun."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_1
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    iput-boolean p1, v0, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 267
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 268
    return-void
.end method

.method setChannelIdPrivateKey(Ljava/security/PrivateKey;)V
    .locals 5
    .param p1, "privateKey"    # Ljava/security/PrivateKey;

    .prologue
    .line 309
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not allowed in server mode"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 313
    :cond_0
    iget-object v3, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v3

    .line 314
    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 315
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v4, "Could not change Channel ID private key after the initial handshake has begun."

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 341
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 319
    :cond_1
    if-nez p1, :cond_2

    .line 320
    :try_start_1
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const/4 v4, 0x0

    iput-boolean v4, v2, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z

    .line 321
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;

    .line 322
    monitor-exit v3

    .line 342
    :goto_0
    return-void

    .line 325
    :cond_2
    iget-object v2, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    const/4 v4, 0x1

    iput-boolean v4, v2, Lorg/conscrypt/SSLParametersImpl;->channelIdEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 327
    const/4 v1, 0x0

    .line 328
    .local v1, "ecParams":Ljava/security/spec/ECParameterSpec;
    :try_start_2
    instance-of v2, p1, Ljava/security/interfaces/ECKey;

    if-eqz v2, :cond_3

    .line 329
    move-object v0, p1

    check-cast v0, Ljava/security/interfaces/ECKey;

    move-object v2, v0

    invoke-interface {v2}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 331
    :cond_3
    if-nez v1, :cond_4

    .line 333
    const-string v2, "prime256v1"

    .line 334
    invoke-static {v2}, Lorg/conscrypt/OpenSSLECGroupContext;->getCurveByName(Ljava/lang/String;)Lorg/conscrypt/OpenSSLECGroupContext;

    move-result-object v2

    invoke-virtual {v2}, Lorg/conscrypt/OpenSSLECGroupContext;->getECParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    .line 337
    :cond_4
    invoke-static {p1, v1}, Lorg/conscrypt/OpenSSLKey;->fromECPrivateKeyForTLSStackOnly(Ljava/security/PrivateKey;Ljava/security/spec/ECParameterSpec;)Lorg/conscrypt/OpenSSLKey;

    move-result-object v2

    iput-object v2, p0, Lorg/conscrypt/ConscryptEngine;->channelIdPrivateKey:Lorg/conscrypt/OpenSSLKey;
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 341
    :goto_1
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public setEnableSessionCreation(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 687
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnableSessionCreation(Z)V

    .line 688
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "suites"    # [Ljava/lang/String;

    .prologue
    .line 677
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 678
    return-void
.end method

.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 1
    .param p1, "protocols"    # [Ljava/lang/String;

    .prologue
    .line 682
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setEnabledProtocols([Ljava/lang/String;)V

    .line 683
    return-void
.end method

.method setHandshakeListener(Lorg/conscrypt/HandshakeListener;)V
    .locals 3
    .param p1, "handshakeListener"    # Lorg/conscrypt/HandshakeListener;

    .prologue
    .line 349
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 350
    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Handshake listener must be set before starting the handshake."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 355
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 354
    :cond_0
    :try_start_1
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->handshakeListener:Lorg/conscrypt/HandshakeListener;

    .line 355
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 356
    return-void
.end method

.method setHostname(Ljava/lang/String;)V
    .locals 2
    .param p1, "hostname"    # Ljava/lang/String;

    .prologue
    .line 375
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lorg/conscrypt/SSLParametersImpl;->setUseSni(Z)V

    .line 376
    iput-object p1, p0, Lorg/conscrypt/ConscryptEngine;->peerHostname:Ljava/lang/String;

    .line 377
    return-void

    .line 375
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "need"    # Z

    .prologue
    .line 692
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setNeedClientAuth(Z)V

    .line 693
    return-void
.end method

.method public setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    .locals 1
    .param p1, "p"    # Ljavax/net/ssl/SSLParameters;

    .prologue
    .line 532
    invoke-super {p0, p1}, Lorg/conscrypt/AbstractConscryptEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 533
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-static {p1, v0, p0}, Lorg/conscrypt/Platform;->setSSLParameters(Ljavax/net/ssl/SSLParameters;Lorg/conscrypt/SSLParametersImpl;Lorg/conscrypt/ConscryptEngine;)V

    .line 534
    return-void
.end method

.method public setUseClientMode(Z)V
    .locals 4
    .param p1, "mode"    # Z

    .prologue
    .line 697
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 698
    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->isHandshakeStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not change mode after handshake: state == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/conscrypt/ConscryptEngine;->state:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 704
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 702
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-direct {p0, v0}, Lorg/conscrypt/ConscryptEngine;->transitionTo(I)V

    .line 703
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setUseClientMode(Z)V

    .line 704
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 705
    return-void
.end method

.method setUseSessionTickets(Z)V
    .locals 1
    .param p1, "useSessionTickets"    # Z

    .prologue
    .line 1736
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setUseSessionTickets(Z)V

    .line 1737
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "want"    # Z

    .prologue
    .line 709
    iget-object v0, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v0, p1}, Lorg/conscrypt/SSLParametersImpl;->setWantClientAuth(Z)V

    .line 710
    return-void
.end method

.method public unwrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 3
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 714
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 716
    :try_start_0
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-direct {p0, p2}, Lorg/conscrypt/ConscryptEngine;->singleDstBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lorg/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 718
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 719
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V

    monitor-exit v1

    .line 716
    return-object v0

    .line 718
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    .line 719
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleDstBuffer()V

    throw v0

    .line 721
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 726
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 728
    :try_start_0
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 730
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v1

    .line 728
    return-object v0

    .line 730
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    throw v0

    .line 732
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public unwrap(Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 8
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 738
    iget-object v7, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v7

    .line 740
    :try_start_0
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 742
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v7

    .line 740
    return-object v0

    .line 742
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    throw v0

    .line 744
    :catchall_1
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;
    .locals 31
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dsts"    # [Ljava/nio/ByteBuffer;
    .param p5, "dstsOffset"    # I
    .param p6, "dstsLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 758
    if-eqz p1, :cond_0

    const/16 v25, 0x1

    :goto_0
    const-string v26, "srcs is null"

    invoke-static/range {v25 .. v26}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 759
    if-eqz p4, :cond_1

    const/16 v25, 0x1

    :goto_1
    const-string v26, "dsts is null"

    invoke-static/range {v25 .. v26}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 760
    add-int v25, p2, p3

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, p2

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 761
    add-int v25, p5, p6

    move-object/from16 v0, p4

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, p5

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-static {v0, v1, v2}, Lorg/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 764
    invoke-static/range {p4 .. p6}, Lorg/conscrypt/ConscryptEngine;->calcDstsLength([Ljava/nio/ByteBuffer;II)I

    move-result v10

    .line 765
    .local v10, "dstLength":I
    add-int v12, p5, p6

    .line 767
    .local v12, "endOffset":I
    add-int v21, p2, p3

    .line 768
    .local v21, "srcsEndOffset":I
    move-object/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Lorg/conscrypt/ConscryptEngine;->calcSrcsLength([Ljava/nio/ByteBuffer;II)J

    move-result-wide v22

    .line 770
    .local v22, "srcLength":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    move-object/from16 v27, v0

    monitor-enter v27

    .line 771
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/conscrypt/ConscryptEngine;->state:I

    move/from16 v25, v0

    packed-switch v25, :pswitch_data_0

    .line 788
    :goto_2
    :pswitch_0
    sget-object v13, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 789
    .local v13, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    move/from16 v25, v0

    if-nez v25, :cond_3

    .line 790
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v13

    .line 791
    sget-object v25, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v25

    if-ne v13, v0, :cond_2

    .line 792
    sget-object v25, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v27

    .line 940
    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_3
    return-object v25

    .line 758
    .end local v10    # "dstLength":I
    .end local v12    # "endOffset":I
    .end local v21    # "srcsEndOffset":I
    .end local v22    # "srcLength":J
    :cond_0
    const/16 v25, 0x0

    goto :goto_0

    .line 759
    :cond_1
    const/16 v25, 0x0

    goto :goto_1

    .line 774
    .restart local v10    # "dstLength":I
    .restart local v12    # "endOffset":I
    .restart local v21    # "srcsEndOffset":I
    .restart local v22    # "srcLength":J
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    goto :goto_2

    .line 941
    :catchall_0
    move-exception v25

    monitor-exit v27
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 778
    :pswitch_2
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 780
    new-instance v25, Ljavax/net/ssl/SSLEngineResult;

    sget-object v26, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v27

    goto :goto_3

    .line 782
    :pswitch_3
    new-instance v25, Ljava/lang/IllegalStateException;

    const-string v26, "Client/server mode must be set before calling unwrap"

    invoke-direct/range {v25 .. v26}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 794
    .restart local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/conscrypt/ConscryptEngine;->state:I

    move/from16 v25, v0

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_3

    .line 795
    sget-object v25, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v27

    goto :goto_3

    .line 801
    :cond_3
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v25

    if-gtz v25, :cond_4

    const/16 v16, 0x1

    .line 802
    .local v16, "noCleartextDataAvailable":Z
    :goto_4
    const/4 v15, 0x0

    .line 803
    .local v15, "lenRemaining":I
    const-wide/16 v28, 0x0

    cmp-long v25, v22, v28

    if-lez v25, :cond_c

    if-eqz v16, :cond_c

    .line 804
    const-wide/16 v28, 0x5

    cmp-long v25, v22, v28

    if-gez v25, :cond_5

    .line 806
    new-instance v25, Ljavax/net/ssl/SSLEngineResult;

    sget-object v26, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v27

    goto :goto_3

    .line 801
    .end local v15    # "lenRemaining":I
    .end local v16    # "noCleartextDataAvailable":Z
    :cond_4
    const/16 v16, 0x0

    goto :goto_4

    .line 809
    .restart local v15    # "lenRemaining":I
    .restart local v16    # "noCleartextDataAvailable":Z
    :cond_5
    invoke-static/range {p1 .. p2}, Lorg/conscrypt/SSLUtils;->getEncryptedPacketLength([Ljava/nio/ByteBuffer;I)I

    move-result v17

    .line 810
    .local v17, "packetLength":I
    if-gez v17, :cond_6

    .line 811
    new-instance v25, Ljavax/net/ssl/SSLException;

    const-string v26, "Unable to parse TLS packet header"

    invoke-direct/range {v25 .. v26}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v25

    .line 814
    :cond_6
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v28, v0

    cmp-long v25, v22, v28

    if-gez v25, :cond_7

    .line 817
    new-instance v25, Ljavax/net/ssl/SSLEngineResult;

    sget-object v26, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v27

    goto/16 :goto_3

    .line 821
    :cond_7
    move/from16 v15, v17

    .line 828
    .end local v17    # "packetLength":I
    :cond_8
    const/4 v6, 0x0

    .line 829
    .local v6, "bytesConsumed":I
    if-lez v15, :cond_a

    move/from16 v0, p2

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 831
    :cond_9
    aget-object v20, p1, p2

    .line 832
    .local v20, "src":Ljava/nio/ByteBuffer;
    invoke-virtual/range {v20 .. v20}, Ljava/nio/ByteBuffer;->remaining()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v19

    .line 833
    .local v19, "remaining":I
    if-nez v19, :cond_d

    .line 836
    add-int/lit8 p2, p2, 0x1

    .line 866
    :goto_5
    move/from16 v0, p2

    move/from16 v1, v21

    if-lt v0, v1, :cond_9

    .line 870
    .end local v19    # "remaining":I
    .end local v20    # "src":Ljava/nio/ByteBuffer;
    :cond_a
    :goto_6
    const/4 v7, 0x0

    .line 872
    .local v7, "bytesProduced":I
    if-lez v10, :cond_13

    .line 874
    move/from16 v14, p5

    .local v14, "idx":I
    :goto_7
    if-ge v14, v12, :cond_10

    .line 875
    :try_start_2
    aget-object v9, p4, v14

    .line 876
    .local v9, "dst":Ljava/nio/ByteBuffer;
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v25

    if-nez v25, :cond_f

    .line 874
    :cond_b
    add-int/lit8 v14, v14, 0x1

    goto :goto_7

    .line 822
    .end local v6    # "bytesConsumed":I
    .end local v7    # "bytesProduced":I
    .end local v9    # "dst":Ljava/nio/ByteBuffer;
    .end local v14    # "idx":I
    :cond_c
    if-eqz v16, :cond_8

    .line 824
    :try_start_3
    new-instance v25, Ljavax/net/ssl/SSLEngineResult;

    sget-object v26, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_UNDERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatus()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v28

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v27

    goto/16 :goto_3

    .line 840
    .restart local v6    # "bytesConsumed":I
    .restart local v19    # "remaining":I
    .restart local v20    # "src":Ljava/nio/ByteBuffer;
    :cond_d
    move/from16 v0, v19

    invoke-static {v15, v0}, Ljava/lang/Math;->min(II)I

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/ConscryptEngine;->writeEncryptedData(Ljava/nio/ByteBuffer;I)I

    move-result v24

    .line 841
    .local v24, "written":I
    if-lez v24, :cond_e

    .line 842
    add-int v6, v6, v24

    .line 843
    sub-int v15, v15, v24

    .line 844
    if-eqz v15, :cond_a

    .line 849
    move/from16 v0, v24

    move/from16 v1, v19

    if-ne v0, v1, :cond_a

    .line 850
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 863
    :cond_e
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->SSL_clear_error()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    .line 880
    .end local v19    # "remaining":I
    .end local v20    # "src":Ljava/nio/ByteBuffer;
    .end local v24    # "written":I
    .restart local v7    # "bytesProduced":I
    .restart local v9    # "dst":Ljava/nio/ByteBuffer;
    .restart local v14    # "idx":I
    :cond_f
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lorg/conscrypt/ConscryptEngine;->readPlaintextData(Ljava/nio/ByteBuffer;)I

    move-result v8

    .line 881
    .local v8, "bytesRead":I
    if-lez v8, :cond_11

    .line 882
    add-int/2addr v7, v8

    .line 883
    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_4
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v25

    if-eqz v25, :cond_b

    .line 929
    .end local v8    # "bytesRead":I
    .end local v9    # "dst":Ljava/nio/ByteBuffer;
    .end local v14    # "idx":I
    :cond_10
    :goto_8
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    move/from16 v25, v0

    if-eqz v25, :cond_14

    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->pendingInboundCleartextBytes()I

    move-result v18

    .line 930
    .local v18, "pendingCleartextBytes":I
    :goto_9
    if-lez v18, :cond_16

    .line 933
    new-instance v25, Ljavax/net/ssl/SSLEngineResult;

    sget-object v26, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 934
    sget-object v28, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->FINISHED:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-object/from16 v0, v28

    if-ne v13, v0, :cond_15

    .end local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_a
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/conscrypt/ConscryptEngine;->mayFinishHandshake(Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v28

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_3

    .line 889
    .end local v18    # "pendingCleartextBytes":I
    .restart local v8    # "bytesRead":I
    .restart local v9    # "dst":Ljava/nio/ByteBuffer;
    .restart local v13    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    .restart local v14    # "idx":I
    :cond_11
    packed-switch v8, :pswitch_data_1

    .line 905
    :pswitch_4
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 906
    const-string v25, "SSL_read"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lorg/conscrypt/ConscryptEngine;->newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v25

    throw v25
    :try_end_6
    .catch Ljava/io/InterruptedIOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 917
    .end local v8    # "bytesRead":I
    .end local v9    # "dst":Ljava/nio/ByteBuffer;
    .end local v14    # "idx":I
    :catch_0
    move-exception v11

    .line 918
    .local v11, "e":Ljava/io/InterruptedIOException;
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v13}, Lorg/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v25

    monitor-exit v27
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_3

    .line 892
    .end local v11    # "e":Ljava/io/InterruptedIOException;
    .restart local v8    # "bytesRead":I
    .restart local v9    # "dst":Ljava/nio/ByteBuffer;
    .restart local v14    # "idx":I
    :pswitch_5
    :try_start_8
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v13}, Lorg/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_8
    .catch Ljava/io/InterruptedIOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v25

    :try_start_9
    monitor-exit v27
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_3

    .line 897
    :pswitch_6
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 898
    new-instance v25, Ljavax/net/ssl/SSLEngineResult;

    sget-object v28, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 899
    invoke-virtual/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->pendingOutboundEncryptedBytes()I

    move-result v26

    if-lez v26, :cond_12

    .line 900
    sget-object v26, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_WRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    :goto_b
    move-object/from16 v0, v25

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2, v6, v7}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V
    :try_end_a
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    monitor-exit v27
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3

    :cond_12
    :try_start_c
    sget-object v26, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    goto :goto_b

    .line 915
    .end local v8    # "bytesRead":I
    .end local v9    # "dst":Ljava/nio/ByteBuffer;
    .end local v14    # "idx":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lorg/conscrypt/NativeSsl;->forceRead()V
    :try_end_c
    .catch Ljava/io/InterruptedIOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_8

    .line 919
    :catch_1
    move-exception v11

    .line 922
    .local v11, "e":Ljava/io/IOException;
    :try_start_d
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 923
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/conscrypt/ConscryptEngine;->convertException(Ljava/lang/Throwable;)Ljavax/net/ssl/SSLException;

    move-result-object v25

    throw v25

    .line 929
    .end local v11    # "e":Ljava/io/IOException;
    :cond_14
    const/16 v18, 0x0

    goto :goto_9

    .line 936
    .restart local v18    # "pendingCleartextBytes":I
    :cond_15
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v13

    goto :goto_a

    .line 940
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v13}, Lorg/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v25

    monitor-exit v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_3

    .line 771
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 889
    :pswitch_data_1
    .packed-switch -0x6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method unwrap([Ljava/nio/ByteBuffer;[Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 7
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "dsts"    # [Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 749
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "srcs is null"

    invoke-static {v0, v3}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 750
    if-eqz p2, :cond_1

    :goto_1
    const-string v0, "dsts is null"

    invoke-static {v1, v0}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 751
    array-length v3, p1

    array-length v6, p2

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lorg/conscrypt/ConscryptEngine;->unwrap([Ljava/nio/ByteBuffer;II[Ljava/nio/ByteBuffer;II)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v2

    .line 749
    goto :goto_0

    :cond_1
    move v1, v2

    .line 750
    goto :goto_1
.end method

.method public verifyCertificateChain([[BLjava/lang/String;)V
    .locals 7
    .param p1, "certChain"    # [[B
    .param p2, "authMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 1629
    if-eqz p1, :cond_0

    :try_start_0
    array-length v4, p1

    if-nez v4, :cond_1

    .line 1630
    :cond_0
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "Peer sent no certificate"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1648
    :catch_0
    move-exception v1

    .line 1649
    .local v1, "e":Ljava/security/cert/CertificateException;
    throw v1

    .line 1632
    .end local v1    # "e":Ljava/security/cert/CertificateException;
    :cond_1
    :try_start_1
    invoke-static {p1}, Lorg/conscrypt/SSLUtils;->decodeX509CertificateChain([[B)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 1634
    .local v2, "peerCertChain":[Ljava/security/cert/X509Certificate;
    iget-object v4, p0, Lorg/conscrypt/ConscryptEngine;->sslParameters:Lorg/conscrypt/SSLParametersImpl;

    invoke-virtual {v4}, Lorg/conscrypt/SSLParametersImpl;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v3

    .line 1635
    .local v3, "x509tm":Ljavax/net/ssl/X509TrustManager;
    if-nez v3, :cond_2

    .line 1636
    new-instance v4, Ljava/security/cert/CertificateException;

    const-string v5, "No X.509 TrustManager"

    invoke-direct {v4, v5}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1650
    .end local v2    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .end local v3    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :catch_1
    move-exception v1

    .line 1651
    .local v1, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/security/cert/CertificateException;

    invoke-direct {v4, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 1640
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "peerCertChain":[Ljava/security/cert/X509Certificate;
    .restart local v3    # "x509tm":Ljavax/net/ssl/X509TrustManager;
    :cond_2
    :try_start_2
    iget-object v4, p0, Lorg/conscrypt/ConscryptEngine;->activeSession:Lorg/conscrypt/ActiveSession;

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerHost()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getPeerPort()I

    move-result v6

    invoke-virtual {v4, v5, v6, v2}, Lorg/conscrypt/ActiveSession;->onPeerCertificatesReceived(Ljava/lang/String;I[Ljava/security/cert/X509Certificate;)V

    .line 1642
    invoke-virtual {p0}, Lorg/conscrypt/ConscryptEngine;->getUseClientMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1643
    invoke-static {v3, v2, p2, p0}, Lorg/conscrypt/Platform;->checkServerTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/ConscryptEngine;)V

    .line 1653
    :goto_0
    return-void

    .line 1645
    :cond_3
    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-interface {v4}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 1646
    .local v0, "authType":Ljava/lang/String;
    invoke-static {v3, v2, v0, p0}, Lorg/conscrypt/Platform;->checkClientTrusted(Ljavax/net/ssl/X509TrustManager;[Ljava/security/cert/X509Certificate;Ljava/lang/String;Lorg/conscrypt/ConscryptEngine;)V
    :try_end_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0
.end method

.method public wrap(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 2
    .param p1, "src"    # Ljava/nio/ByteBuffer;
    .param p2, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1377
    iget-object v1, p0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v1

    .line 1379
    :try_start_0
    invoke-direct {p0, p1}, Lorg/conscrypt/ConscryptEngine;->singleSrcBuffer(Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lorg/conscrypt/ConscryptEngine;->wrap([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 1381
    :try_start_1
    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    monitor-exit v1

    .line 1379
    return-object v0

    .line 1381
    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lorg/conscrypt/ConscryptEngine;->resetSingleSrcBuffer()V

    throw v0

    .line 1383
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method public wrap([Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;)Ljavax/net/ssl/SSLEngineResult;
    .locals 18
    .param p1, "srcs"    # [Ljava/nio/ByteBuffer;
    .param p2, "srcsOffset"    # I
    .param p3, "srcsLength"    # I
    .param p4, "dst"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 1389
    if-eqz p1, :cond_0

    const/4 v11, 0x1

    :goto_0
    const-string v12, "srcs is null"

    invoke-static {v11, v12}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1390
    if-eqz p4, :cond_1

    const/4 v11, 0x1

    :goto_1
    const-string v12, "dst is null"

    invoke-static {v11, v12}, Lorg/conscrypt/Preconditions;->checkArgument(ZLjava/lang/String;)V

    .line 1391
    add-int v11, p2, p3

    move-object/from16 v0, p1

    array-length v12, v0

    move/from16 v0, p2

    invoke-static {v0, v11, v12}, Lorg/conscrypt/Preconditions;->checkPositionIndexes(III)V

    .line 1392
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->isReadOnly()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 1393
    new-instance v11, Ljava/nio/ReadOnlyBufferException;

    invoke-direct {v11}, Ljava/nio/ReadOnlyBufferException;-><init>()V

    throw v11

    .line 1389
    :cond_0
    const/4 v11, 0x0

    goto :goto_0

    .line 1390
    :cond_1
    const/4 v11, 0x0

    goto :goto_1

    .line 1396
    :cond_2
    if-nez p2, :cond_3

    move-object/from16 v0, p1

    array-length v11, v0

    move/from16 v0, p3

    if-eq v0, v11, :cond_4

    .line 1397
    :cond_3
    add-int v11, p2, p3

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v1, v11}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    .end local p1    # "srcs":[Ljava/nio/ByteBuffer;
    check-cast p1, [Ljava/nio/ByteBuffer;

    .line 1399
    .restart local p1    # "srcs":[Ljava/nio/ByteBuffer;
    :cond_4
    invoke-static/range {p1 .. p1}, Lorg/conscrypt/BufferUtils;->checkNotNull([Ljava/nio/ByteBuffer;)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    monitor-enter v12

    .line 1402
    :try_start_0
    move-object/from16 v0, p0

    iget v11, v0, Lorg/conscrypt/ConscryptEngine;->state:I

    packed-switch v11, :pswitch_data_0

    .line 1426
    :goto_2
    :pswitch_0
    sget-object v5, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1428
    .local v5, "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lorg/conscrypt/ConscryptEngine;->handshakeFinished:Z

    if-nez v11, :cond_7

    .line 1429
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->handshake()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v5

    .line 1430
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    if-ne v5, v11, :cond_6

    .line 1431
    sget-object v8, Lorg/conscrypt/ConscryptEngine;->NEED_UNWRAP_OK:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12

    .line 1552
    .end local v5    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :goto_3
    return-object v8

    .line 1405
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->beginHandshakeInternal()V

    goto :goto_2

    .line 1553
    :catchall_0
    move-exception v11

    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11

    .line 1411
    :pswitch_2
    const/4 v11, 0x0

    const/4 v13, 0x0

    :try_start_1
    sget-object v14, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    .line 1412
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v11, v13, v14}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    .line 1413
    .local v8, "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v8, :cond_5

    .line 1414
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->freeIfDone()V

    .line 1415
    monitor-exit v12

    goto :goto_3

    .line 1417
    :cond_5
    new-instance v8, Ljavax/net/ssl/SSLEngineResult;

    .end local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    sget-object v11, Ljavax/net/ssl/SSLEngineResult$Status;->CLOSED:Ljavax/net/ssl/SSLEngineResult$Status;

    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v8, v11, v13, v14, v15}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    goto :goto_3

    .line 1419
    :pswitch_3
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v13, "Client/server mode must be set before calling wrap"

    invoke-direct {v11, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 1434
    .restart local v5    # "handshakeStatus":Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;
    :cond_6
    move-object/from16 v0, p0

    iget v11, v0, Lorg/conscrypt/ConscryptEngine;->state:I

    const/16 v13, 0x8

    if-ne v11, v13, :cond_7

    .line 1435
    sget-object v8, Lorg/conscrypt/ConscryptEngine;->NEED_UNWRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    monitor-exit v12

    goto :goto_3

    .line 1440
    :cond_7
    invoke-static/range {p1 .. p1}, Lorg/conscrypt/BufferUtils;->remaining([Ljava/nio/ByteBuffer;)J

    move-result-wide v14

    const-wide/16 v16, 0x4000

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v14

    long-to-int v4, v14

    .line 1441
    .local v4, "dataLength":I
    invoke-virtual/range {p4 .. p4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v11

    invoke-static {v4}, Lorg/conscrypt/SSLUtils;->calculateOutNetBufSize(I)I

    move-result v13

    if-ge v11, v13, :cond_8

    .line 1442
    new-instance v8, Ljavax/net/ssl/SSLEngineResult;

    sget-object v11, Ljavax/net/ssl/SSLEngineResult$Status;->BUFFER_OVERFLOW:Ljavax/net/ssl/SSLEngineResult$Status;

    .line 1443
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getHandshakeStatusInternal()Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v8, v11, v13, v14, v15}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    monitor-exit v12

    goto :goto_3

    .line 1446
    :cond_8
    const/4 v3, 0x0

    .line 1447
    .local v3, "bytesProduced":I
    const/4 v2, 0x0

    .line 1448
    .local v2, "bytesConsumed":I
    if-lez v4, :cond_c

    .line 1453
    const/4 v6, 0x0

    .line 1454
    .local v6, "isCopy":Z
    const/16 v11, 0x4000

    .line 1455
    move-object/from16 v0, p1

    invoke-static {v0, v11}, Lorg/conscrypt/BufferUtils;->getBufferLargerThan([Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1456
    .local v7, "outputBuffer":Ljava/nio/ByteBuffer;
    if-nez v7, :cond_9

    .line 1465
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getOrCreateLazyDirectBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    const/16 v13, 0x4000

    .line 1464
    move-object/from16 v0, p1

    invoke-static {v0, v11, v13}, Lorg/conscrypt/BufferUtils;->copyNoConsume([Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 1466
    const/4 v6, 0x1

    .line 1470
    :cond_9
    const/16 v11, 0x4000

    .line 1471
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v13

    invoke-static {v11, v13}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 1470
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v11}, Lorg/conscrypt/ConscryptEngine;->writePlaintextData(Ljava/nio/ByteBuffer;I)I

    move-result v9

    .line 1472
    .local v9, "result":I
    if-lez v9, :cond_d

    .line 1473
    move v2, v9

    .line 1474
    if-eqz v6, :cond_a

    .line 1476
    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lorg/conscrypt/BufferUtils;->consume([Ljava/nio/ByteBuffer;I)V

    .line 1479
    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    .line 1481
    .restart local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v8, :cond_c

    .line 1482
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->getStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v11

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$Status;->OK:Ljavax/net/ssl/SSLEngineResult$Status;

    if-eq v11, v13, :cond_b

    .line 1483
    monitor-exit v12

    goto/16 :goto_3

    .line 1485
    :cond_b
    invoke-virtual {v8}, Ljavax/net/ssl/SSLEngineResult;->bytesProduced()I

    move-result v3

    .line 1545
    .end local v6    # "isCopy":Z
    .end local v7    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    .end local v9    # "result":I
    :cond_c
    if-nez v2, :cond_11

    .line 1546
    const/4 v11, 0x0

    .line 1547
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v11, v3, v5}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    .line 1548
    .restart local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v8, :cond_11

    .line 1549
    monitor-exit v12

    goto/16 :goto_3

    .line 1488
    .end local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    .restart local v6    # "isCopy":Z
    .restart local v7    # "outputBuffer":Ljava/nio/ByteBuffer;
    .restart local v9    # "result":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/conscrypt/ConscryptEngine;->ssl:Lorg/conscrypt/NativeSsl;

    invoke-virtual {v11, v9}, Lorg/conscrypt/NativeSsl;->getError(I)I

    move-result v10

    .line 1489
    .local v10, "sslError":I
    packed-switch v10, :pswitch_data_1

    .line 1537
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 1538
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SSL_write: error "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lorg/conscrypt/ConscryptEngine;->newSslExceptionWithMessage(Ljava/lang/String;)Ljavax/net/ssl/SSLException;

    move-result-object v11

    throw v11

    .line 1493
    :pswitch_5
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->closeAll()V

    .line 1494
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    .line 1496
    .restart local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v8, :cond_e

    .line 1497
    .end local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :goto_4
    monitor-exit v12

    goto/16 :goto_3

    .restart local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_e
    sget-object v8, Lorg/conscrypt/ConscryptEngine;->CLOSED_NOT_HANDSHAKING:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_4

    .line 1505
    .end local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :pswitch_6
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    .line 1507
    .restart local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v8, :cond_f

    .line 1509
    .end local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :goto_5
    monitor-exit v12

    goto/16 :goto_3

    .restart local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_f
    new-instance v8, Ljavax/net/ssl/SSLEngineResult;

    .end local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    invoke-direct/range {p0 .. p0}, Lorg/conscrypt/ConscryptEngine;->getEngineStatus()Ljavax/net/ssl/SSLEngineResult$Status;

    move-result-object v11

    sget-object v13, Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;->NEED_UNWRAP:Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;

    invoke-direct {v8, v11, v13, v2, v3}, Ljavax/net/ssl/SSLEngineResult;-><init>(Ljavax/net/ssl/SSLEngineResult$Status;Ljavax/net/ssl/SSLEngineResult$HandshakeStatus;II)V

    goto :goto_5

    .line 1531
    :pswitch_7
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1, v2, v3, v5}, Lorg/conscrypt/ConscryptEngine;->readPendingBytesFromBIO(Ljava/nio/ByteBuffer;IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    .line 1533
    .restart local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    if-eqz v8, :cond_10

    .line 1534
    .end local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :goto_6
    monitor-exit v12

    goto/16 :goto_3

    .restart local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    :cond_10
    sget-object v8, Lorg/conscrypt/ConscryptEngine;->NEED_WRAP_CLOSED:Ljavax/net/ssl/SSLEngineResult;

    goto :goto_6

    .line 1552
    .end local v6    # "isCopy":Z
    .end local v7    # "outputBuffer":Ljava/nio/ByteBuffer;
    .end local v8    # "pendingNetResult":Ljavax/net/ssl/SSLEngineResult;
    .end local v9    # "result":I
    .end local v10    # "sslError":I
    :cond_11
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v5}, Lorg/conscrypt/ConscryptEngine;->newResult(IILjavax/net/ssl/SSLEngineResult$HandshakeStatus;)Ljavax/net/ssl/SSLEngineResult;

    move-result-object v8

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1489
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_6
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
