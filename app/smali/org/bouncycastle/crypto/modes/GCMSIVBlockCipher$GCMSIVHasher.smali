.class Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GCMSIVHasher"
.end annotation


# instance fields
.field private numActive:I

.field private numHashed:J

.field private final theBuffer:[B

.field private final theByte:[B

.field final synthetic this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)V
    .locals 1

    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theByte:[B

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)V

    return-void
.end method


# virtual methods
.method completeHash()V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v0

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v2

    invoke-static {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$200([BII[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$300(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V

    :cond_0
    return-void
.end method

.method getBytesProcessed()J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    return-wide v0
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    return-void
.end method

.method updateHash(B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    return-void
.end method

.method updateHash([BII)V
    .locals 5

    const/16 v4, 0x10

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    rsub-int/lit8 v0, v0, 0x10

    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    if-lez v1, :cond_2

    if-lt p3, v0, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    invoke-static {p1, p2, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v3

    invoke-static {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$200([BII[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v3

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$300(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V

    add-int v1, v2, v0

    sub-int v0, p3, v0

    iput v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    :goto_0
    if-lt v0, v4, :cond_0

    add-int v2, p2, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v3

    invoke-static {p1, v2, v4, v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$200([BII[B)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->this$0:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;

    invoke-static {v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B

    move-result-object v3

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->access$300(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V

    add-int/lit8 v1, v1, 0x10

    add-int/lit8 v0, v0, -0x10

    goto :goto_0

    :cond_0
    if-lez v0, :cond_1

    add-int/2addr v1, p2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->theBuffer:[B

    iget v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    invoke-static {p1, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numActive:I

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->numHashed:J

    return-void

    :cond_2
    move v0, p3

    move v1, v2

    goto :goto_0
.end method
