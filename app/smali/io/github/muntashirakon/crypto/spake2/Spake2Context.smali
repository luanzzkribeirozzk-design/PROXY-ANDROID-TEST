.class public Lio/github/muntashirakon/crypto/spake2/Spake2Context;
.super Ljava/lang/Object;
.source "Spake2Context.java"

# interfaces
.implements Ljavax/security/auth/Destroyable;


# static fields
.field public static final MAX_KEY_SIZE:I = 0x40

.field public static final MAX_MSG_SIZE:I = 0x20


# instance fields
.field private final mCtx:J

.field private mDisablePasswordScalarHack:Z

.field private mIsDestroyed:Z

.field private final mMyMsg:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string v0, "spake2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Lio/github/muntashirakon/crypto/spake2/Spake2Role;[B[B)V
    .locals 4
    .param p1, "myRole"    # Lio/github/muntashirakon/crypto/spake2/Spake2Role;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "myName"    # [B
    .param p3, "theirName"    # [B

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mMyMsg:[B

    .line 37
    invoke-virtual {p1}, Lio/github/muntashirakon/crypto/spake2/Spake2Role;->ordinal()I

    move-result v0

    invoke-static {v0, p2, p3}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->allocNewContext(I[B[B)J

    move-result-wide v0

    iput-wide v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mCtx:J

    .line 38
    iget-wide v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mCtx:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Could not allocate native context"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_0
    return-void
.end method

.method private static native allocNewContext(I[B[B)J
.end method

.method private static native destroy(J)V
.end method

.method private static native generateMessage(J[B)[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method private static native processMessage(J[B)[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mIsDestroyed:Z

    .line 98
    iget-wide v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mCtx:J

    invoke-static {v0, v1}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->destroy(J)V

    .line 99
    return-void
.end method

.method public generateMessage([B)[B
    .locals 5
    .param p1, "password"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 63
    iget-boolean v1, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    .line 64
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The context was destroyed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 66
    :cond_0
    iget-wide v2, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mCtx:J

    invoke-static {v2, v3, p1}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->generateMessage(J[B)[B

    move-result-object v0

    .line 67
    .local v0, "myMsg":[B
    if-nez v0, :cond_1

    .line 68
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Generated empty message"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 70
    :cond_1
    iget-object v1, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mMyMsg:[B

    const/16 v2, 0x20

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    return-object v0
.end method

.method public getMyMsg()[B
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mMyMsg:[B

    return-object v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mIsDestroyed:Z

    return v0
.end method

.method public isDisablePasswordScalarHack()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mDisablePasswordScalarHack:Z

    return v0
.end method

.method public processMessage([B)[B
    .locals 4
    .param p1, "theirMessage"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 80
    iget-boolean v1, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mIsDestroyed:Z

    if-eqz v1, :cond_0

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The context was destroyed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 83
    :cond_0
    iget-wide v2, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mCtx:J

    invoke-static {v2, v3, p1}, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->processMessage(J[B)[B

    move-result-object v0

    .line 84
    .local v0, "key":[B
    if-nez v0, :cond_1

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No key was returned"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 87
    :cond_1
    return-object v0
.end method

.method public setDisablePasswordScalarHack(Z)V
    .locals 2
    .param p1, "disablePasswordScalarHack"    # Z

    .prologue
    .line 53
    iput-boolean p1, p0, Lio/github/muntashirakon/crypto/spake2/Spake2Context;->mDisablePasswordScalarHack:Z

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not implemented yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
