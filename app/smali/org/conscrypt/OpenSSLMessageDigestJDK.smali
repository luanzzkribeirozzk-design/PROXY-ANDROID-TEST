.class public Lorg/conscrypt/OpenSSLMessageDigestJDK;
.super Ljava/security/MessageDigestSpi;
.source "OpenSSLMessageDigestJDK.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/OpenSSLMessageDigestJDK$SHA512;,
        Lorg/conscrypt/OpenSSLMessageDigestJDK$SHA384;,
        Lorg/conscrypt/OpenSSLMessageDigestJDK$SHA256;,
        Lorg/conscrypt/OpenSSLMessageDigestJDK$SHA224;,
        Lorg/conscrypt/OpenSSLMessageDigestJDK$SHA1;,
        Lorg/conscrypt/OpenSSLMessageDigestJDK$MD5;
    }
.end annotation


# instance fields
.field private final ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

.field private digestInitializedInContext:Z

.field private final evp_md:J

.field private final singleByte:[B

.field private final size:I


# direct methods
.method private constructor <init>(JI)V
    .locals 5
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 43
    const/4 v1, 0x1

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 54
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    .line 55
    iput p3, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->size:I

    .line 56
    new-instance v0, Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    .line 57
    .local v0, "ctxLocal":Lorg/conscrypt/NativeRef$EVP_MD_CTX;
    iput-object v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    .line 58
    return-void
.end method

.method private constructor <init>(JILorg/conscrypt/NativeRef$EVP_MD_CTX;Z)V
    .locals 1
    .param p1, "evp_md"    # J
    .param p3, "size"    # I
    .param p4, "ctx"    # Lorg/conscrypt/NativeRef$EVP_MD_CTX;
    .param p5, "digestInitializedInContext"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/security/MessageDigestSpi;-><init>()V

    .line 43
    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    .line 62
    iput-wide p1, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    .line 63
    iput p3, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->size:I

    .line 64
    iput-object p4, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    .line 65
    iput-boolean p5, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    .line 66
    return-void
.end method

.method synthetic constructor <init>(JILorg/conscrypt/OpenSSLMessageDigestJDK$1;)V
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # I
    .param p4, "x2"    # Lorg/conscrypt/OpenSSLMessageDigestJDK$1;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lorg/conscrypt/OpenSSLMessageDigestJDK;-><init>(JI)V

    return-void
.end method

.method private declared-synchronized ensureDigestInitializedInContext()V
    .locals 4

    .prologue
    .line 69
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    if-nez v1, :cond_0

    .line 70
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    .line 71
    .local v0, "ctxLocal":Lorg/conscrypt/NativeRef$EVP_MD_CTX;
    iget-wide v2, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    invoke-static {v0, v2, v3}, Lorg/conscrypt/NativeCrypto;->EVP_DigestInit_ex(Lorg/conscrypt/NativeRef$EVP_MD_CTX;J)I

    .line 72
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .end local v0    # "ctxLocal":Lorg/conscrypt/NativeRef$EVP_MD_CTX;
    :cond_0
    monitor-exit p0

    return-void

    .line 69
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 7

    .prologue
    .line 196
    new-instance v5, Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {}, Lorg/conscrypt/NativeCrypto;->EVP_MD_CTX_create()J

    move-result-wide v0

    invoke-direct {v5, v0, v1}, Lorg/conscrypt/NativeRef$EVP_MD_CTX;-><init>(J)V

    .line 199
    .local v5, "ctxCopy":Lorg/conscrypt/NativeRef$EVP_MD_CTX;
    iget-boolean v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v5, v0}, Lorg/conscrypt/NativeCrypto;->EVP_MD_CTX_copy_ex(Lorg/conscrypt/NativeRef$EVP_MD_CTX;Lorg/conscrypt/NativeRef$EVP_MD_CTX;)I

    .line 202
    :cond_0
    new-instance v1, Lorg/conscrypt/OpenSSLMessageDigestJDK;

    iget-wide v2, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->evp_md:J

    iget v4, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->size:I

    iget-boolean v6, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z

    invoke-direct/range {v1 .. v6}, Lorg/conscrypt/OpenSSLMessageDigestJDK;-><init>(JILorg/conscrypt/NativeRef$EVP_MD_CTX;Z)V

    return-object v1
.end method

.method protected declared-synchronized engineDigest()[B
    .locals 3

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    .line 145
    iget v1, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->size:I

    new-array v0, v1, [B

    .line 146
    .local v0, "result":[B
    iget-object v1, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lorg/conscrypt/NativeCrypto;->EVP_DigestFinal_ex(Lorg/conscrypt/NativeRef$EVP_MD_CTX;[BI)I

    .line 153
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-object v0

    .line 144
    .end local v0    # "result":[B
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected engineGetDigestLength()I
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->size:I

    return v0
.end method

.method protected declared-synchronized engineReset()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    .line 82
    .local v0, "ctxLocal":Lorg/conscrypt/NativeRef$EVP_MD_CTX;
    invoke-static {v0}, Lorg/conscrypt/NativeCrypto;->EVP_MD_CTX_cleanup(Lorg/conscrypt/NativeRef$EVP_MD_CTX;)V

    .line 83
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->digestInitializedInContext:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    monitor-exit p0

    return-void

    .line 81
    .end local v0    # "ctxLocal":Lorg/conscrypt/NativeRef$EVP_MD_CTX;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized engineUpdate(B)V
    .locals 3
    .param p1, "input"    # B

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    .line 94
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->singleByte:[B

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lorg/conscrypt/OpenSSLMessageDigestJDK;->engineUpdate([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit p0

    return-void

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized engineUpdate(Ljava/nio/ByteBuffer;)V
    .locals 8
    .param p1, "input"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 109
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-nez v6, :cond_0

    .line 140
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v6

    if-nez v6, :cond_1

    .line 114
    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 109
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 118
    :cond_1
    :try_start_2
    invoke-static {p1}, Lorg/conscrypt/NativeCrypto;->getDirectBufferAddress(Ljava/nio/Buffer;)J

    move-result-wide v0

    .line 119
    .local v0, "baseAddress":J
    const-wide/16 v6, 0x0

    cmp-long v6, v0, v6

    if-nez v6, :cond_2

    .line 122
    invoke-super {p0, p1}, Ljava/security/MessageDigestSpi;->engineUpdate(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    .line 128
    .local v3, "position":I
    if-gez v3, :cond_3

    .line 129
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Negative position"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 131
    :cond_3
    int-to-long v6, v3

    add-long v4, v0, v6

    .line 132
    .local v4, "ptr":J
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 133
    .local v2, "len":I
    if-gez v2, :cond_4

    .line 134
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, "Negative remaining amount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 137
    :cond_4
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    .line 138
    iget-object v6, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v6, v4, v5, v2}, Lorg/conscrypt/NativeCrypto;->EVP_DigestUpdateDirect(Lorg/conscrypt/NativeRef$EVP_MD_CTX;JI)V

    .line 139
    add-int v6, v3, v2

    invoke-virtual {p1, v6}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected declared-synchronized engineUpdate([BII)V
    .locals 1
    .param p1, "input"    # [B
    .param p2, "offset"    # I
    .param p3, "len"    # I

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ensureDigestInitializedInContext()V

    .line 100
    iget-object v0, p0, Lorg/conscrypt/OpenSSLMessageDigestJDK;->ctx:Lorg/conscrypt/NativeRef$EVP_MD_CTX;

    invoke-static {v0, p1, p2, p3}, Lorg/conscrypt/NativeCrypto;->EVP_DigestUpdate(Lorg/conscrypt/NativeRef$EVP_MD_CTX;[BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    monitor-exit p0

    return-void

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
