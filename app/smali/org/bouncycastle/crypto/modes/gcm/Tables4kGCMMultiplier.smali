.class public Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 7

    const/16 v6, 0x100

    const/4 v1, 0x2

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    if-nez v0, :cond_1

    filled-new-array {v6, v1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v2, v2, v5

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v0, v0, v5

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v2, v2, v5

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP7([J[J)V

    move v0, v1

    :goto_0
    if-ge v0, v6, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    shr-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-object v2, v2, v5

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([B[B)B

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method public multiplyH([B)V
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    const/16 v1, 0xf

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-wide v4, v0, v1

    const/4 v1, 0x1

    aget-wide v2, v0, v1

    const/16 v0, 0xe

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;->T:[[J

    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0xff

    aget-object v1, v1, v6

    const/16 v6, 0x38

    shl-long v6, v2, v6

    const/4 v8, 0x1

    aget-wide v8, v1, v8

    const/16 v10, 0x8

    ushr-long/2addr v2, v10

    const/16 v10, 0x38

    shl-long v10, v4, v10

    or-long/2addr v2, v10

    xor-long/2addr v2, v8

    const/4 v8, 0x0

    aget-wide v8, v1, v8

    const/16 v1, 0x8

    ushr-long/2addr v4, v1

    xor-long/2addr v4, v8

    xor-long/2addr v4, v6

    const/4 v1, 0x1

    ushr-long v8, v6, v1

    xor-long/2addr v4, v8

    const/4 v1, 0x2

    ushr-long v8, v6, v1

    xor-long/2addr v4, v8

    const/4 v1, 0x7

    ushr-long/2addr v6, v1

    xor-long/2addr v4, v6

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v4, v5, p1, v0}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    const/16 v0, 0x8

    invoke-static {v2, v3, p1, v0}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
