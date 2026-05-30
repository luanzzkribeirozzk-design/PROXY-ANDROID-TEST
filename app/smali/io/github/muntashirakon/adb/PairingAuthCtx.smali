.class Lio/github/muntashirakon/adb/PairingAuthCtx;
.super Ljava/lang/Object;
.source "PairingAuthCtx.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x9
.end annotation


# static fields
.field private static final CLIENT_NAME:[B

.field public static final GCM_IV_LENGTH:I = 0xc

.field private static final HKDF_KEY_LENGTH:I = 0x10

.field private static final INFO:[B

.field private static final SERVER_NAME:[B


# instance fields
.field private mDecIv:J

.field private mEncIv:J

.field private mIsDestroyed:Z

.field private final mMsg:[B

.field private final mSecretKey:[B

.field private final mSpake2Ctx:Lio/github/muntashirakon/crypto/spake2/Spake2Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    const-string v0, "adb pair client\u0000"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lio/github/muntashirakon/adb/PairingAuthCtx;->CLIENT_NAME:[B

    .line 36
    const-string v0, "adb pair server\u0000"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lio/github/muntashirakon/adb/PairingAuthCtx;->SERVER_NAME:[B

    .line 40
    const-string v0, "adb pairing_auth aes-128-gcm key"

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lio/github/muntashirakon/adb/PairingAuthCtx;->INFO:[B

    return-void
.end method

.method private constructor <init>(Lio/github/muntashirakon/crypto/spake2/Spake2Context;[B)V
    .locals 4
    .param p1, "spake25519"    # Lio/github/muntashirakon/crypto/spake2/Spake2Context;
    .param p2, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    .line 47
    iput-wide v2, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mDecIv:J

    .line 48
    iput-wide v2, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mEncIv:J

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    .line 74
    iput-object p1, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSpake2Ctx:Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    .line 75
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSpake2Ctx:Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    invoke-virtual {v0, p2}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->generateMessage([B)[B

    move-result-object v0

    iput-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mMsg:[B

    .line 76
    return-void
.end method

.method public static createAlice([B)Lio/github/muntashirakon/adb/PairingAuthCtx;
    .locals 5
    .param p0, "password"    # [B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 53
    new-instance v1, Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    sget-object v2, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->Alice:Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    sget-object v3, Lio/github/muntashirakon/adb/PairingAuthCtx;->CLIENT_NAME:[B

    sget-object v4, Lio/github/muntashirakon/adb/PairingAuthCtx;->SERVER_NAME:[B

    invoke-direct {v1, v2, v3, v4}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;-><init>(Lio/github/muntashirakon/crypto/spake2/Spake2Role;[B[B)V

    .line 55
    .local v1, "spake25519":Lio/github/muntashirakon/crypto/spake2/Spake2Context;
    :try_start_0
    new-instance v2, Lio/github/muntashirakon/adb/PairingAuthCtx;

    invoke-direct {v2, v1, p0}, Lio/github/muntashirakon/adb/PairingAuthCtx;-><init>(Lio/github/muntashirakon/crypto/spake2/Spake2Context;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v2

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 56
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static createBob([B)Lio/github/muntashirakon/adb/PairingAuthCtx;
    .locals 5
    .param p0, "password"    # [B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 64
    new-instance v1, Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    sget-object v2, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->Bob:Lio/github/muntashirakon/crypto/spake2/Spake2Role;

    sget-object v3, Lio/github/muntashirakon/adb/PairingAuthCtx;->SERVER_NAME:[B

    sget-object v4, Lio/github/muntashirakon/adb/PairingAuthCtx;->CLIENT_NAME:[B

    invoke-direct {v1, v2, v3, v4}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;-><init>(Lio/github/muntashirakon/crypto/spake2/Spake2Role;[B[B)V

    .line 66
    .local v1, "spake25519":Lio/github/muntashirakon/crypto/spake2/Spake2Context;
    :try_start_0
    new-instance v2, Lio/github/muntashirakon/adb/PairingAuthCtx;

    invoke-direct {v2, v1, p0}, Lio/github/muntashirakon/adb/PairingAuthCtx;-><init>(Lio/github/muntashirakon/crypto/spake2/Spake2Context;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object v2

    .line 67
    :catch_0
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 67
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private encryptDecrypt(Z[B[B)[B
    .locals 10
    .param p1, "forEncryption"    # Z
    .param p2, "in"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "iv"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v2, 0x0

    .line 118
    iget-boolean v1, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    move-object v4, v9

    .line 129
    :goto_0
    return-object v4

    .line 119
    :cond_0
    new-instance v8, Lorg/bouncycastle/crypto/params/AEADParameters;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v3, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    invoke-direct {v1, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    iget-object v3, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x8

    invoke-direct {v8, v1, v3, p3}, Lorg/bouncycastle/crypto/params/AEADParameters;-><init>(Lorg/bouncycastle/crypto/params/KeyParameter;I[B)V

    .line 120
    .local v8, "spec":Lorg/bouncycastle/crypto/params/AEADParameters;
    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/GCMModeCipher;

    move-result-object v0

    .line 121
    .local v0, "cipher":Lorg/bouncycastle/crypto/modes/GCMModeCipher;
    invoke-interface {v0, p1, v8}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    .line 122
    array-length v1, p2

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->getOutputSize(I)I

    move-result v1

    new-array v4, v1, [B

    .line 123
    .local v4, "out":[B
    array-length v3, p2

    move-object v1, p2

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->processBytes([BII[BI)I

    move-result v7

    .line 125
    .local v7, "newOffset":I
    :try_start_0
    invoke-interface {v0, v4, v7}, Lorg/bouncycastle/crypto/modes/GCMModeCipher;->doFinal([BI)I
    :try_end_0
    .catch Lorg/bouncycastle/crypto/InvalidCipherTextException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v6

    .local v6, "e":Lorg/bouncycastle/crypto/InvalidCipherTextException;
    move-object v4, v9

    .line 127
    goto :goto_0
.end method


# virtual methods
.method public decrypt([B)[B
    .locals 6
    .param p1, "in"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 101
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mDecIv:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mDecIv:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 100
    invoke-direct {p0, v0, p1, v1}, Lio/github/muntashirakon/adb/PairingAuthCtx;->encryptDecrypt(Z[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    .line 112
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 113
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSpake2Ctx:Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    invoke-virtual {v0}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->destroy()V

    .line 114
    return-void
.end method

.method public encrypt([B)[B
    .locals 6
    .param p1, "in"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 95
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-wide v2, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mEncIv:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mEncIv:J

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    .line 94
    invoke-direct {p0, v0, p1, v1}, Lio/github/muntashirakon/adb/PairingAuthCtx;->encryptDecrypt(Z[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getMsg()[B
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mMsg:[B

    return-object v0
.end method

.method public initCipher([B)Z
    .locals 6
    .param p1, "theirMsg"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 83
    iget-boolean v3, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    if-eqz v3, :cond_1

    .line 89
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    iget-object v3, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSpake2Ctx:Lio/github/muntashirakon/crypto/spake2/Spake2Context;

    invoke-virtual {v3, p1}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->processMessage([B)[B

    move-result-object v1

    .line 85
    .local v1, "keyMaterial":[B
    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    new-instance v3, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v3}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    .line 87
    .local v0, "hkdf":Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;
    new-instance v3, Lorg/bouncycastle/crypto/params/HKDFParameters;

    const/4 v4, 0x0

    sget-object v5, Lio/github/muntashirakon/adb/PairingAuthCtx;->INFO:[B

    invoke-direct {v3, v1, v4, v5}, Lorg/bouncycastle/crypto/params/HKDFParameters;-><init>([B[B[B)V

    invoke-virtual {v0, v3}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    .line 88
    iget-object v3, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    iget-object v4, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mSecretKey:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v2, v4}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    .line 89
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lio/github/muntashirakon/adb/PairingAuthCtx;->mIsDestroyed:Z

    return v0
.end method
