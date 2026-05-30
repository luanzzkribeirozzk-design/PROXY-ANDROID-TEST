.class Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySource;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->get(I)Lorg/bouncycastle/crypto/prng/EntropySource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final numBytes:I

.field final synthetic this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

.field final synthetic val$bitsRequired:I


# direct methods
.method constructor <init>(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

    iput p2, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->val$bitsRequired:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->val$bitsRequired:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->numBytes:I

    return-void
.end method


# virtual methods
.method public entropySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->val$bitsRequired:I

    return v0
.end method

.method public getEntropy()[B
    .locals 2

    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->getEntropy(J)[B
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initial entropy fetch interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEntropy(J)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->numBytes:I

    new-array v2, v0, [B

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->numBytes:I

    div-int/lit8 v3, v3, 0x8

    if-ge v0, v3, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$100(J)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$200(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v3

    mul-int/lit8 v4, v0, 0x8

    array-length v5, v3

    invoke-static {v3, v1, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->numBytes:I

    iget v3, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->numBytes:I

    div-int/lit8 v3, v3, 0x8

    mul-int/lit8 v3, v3, 0x8

    sub-int/2addr v0, v3

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$100(J)V

    iget-object v3, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

    invoke-static {v3}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$200(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Ljava/security/SecureRandom;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/security/SecureRandom;->generateSeed(I)[B

    move-result-object v0

    array-length v3, v2

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v2
.end method

.method public isPredictionResistant()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider$1;->this$0:Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;

    invoke-static {v0}, Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;->access$000(Lorg/bouncycastle/jcajce/provider/drbg/IncrementalEntropySourceProvider;)Z

    move-result v0

    return v0
.end method
