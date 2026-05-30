.class public Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;


# instance fields
.field private H:[B

.field private T:[[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([B)V
    .locals 9

    const/16 v8, 0x100

    const/4 v1, 0x2

    const/4 v7, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    if-nez v0, :cond_1

    filled-new-array {v1, v8, v1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    :cond_0
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([B[B)V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    aget-object v3, v0, v2

    if-nez v2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    aget-object v4, v3, v7

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B[J)V

    aget-object v0, v3, v7

    aget-object v4, v3, v7

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP7([J[J)V

    :goto_1
    move v0, v1

    :goto_2
    if-ge v0, v8, :cond_4

    shr-int/lit8 v4, v0, 0x1

    aget-object v4, v3, v4

    aget-object v5, v3, v0

    invoke-static {v4, v5}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->divideP([J[J)V

    aget-object v4, v3, v0

    aget-object v5, v3, v7

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v3, v6

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->xor([J[J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->H:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->areEqual([B[B)B

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    add-int/lit8 v4, v2, -0x1

    aget-object v0, v0, v4

    aget-object v0, v0, v7

    aget-object v4, v3, v7

    invoke-static {v0, v4}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiplyP8([J[J)V

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public multiplyH([B)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/4 v3, 0x0

    aget-object v3, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/crypto/modes/gcm/Tables8kGCMMultiplier;->T:[[[J

    const/4 v4, 0x1

    aget-object v8, v2, v4

    const/16 v2, 0xe

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    aget-object v2, v3, v2

    const/16 v4, 0xf

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    aget-object v4, v8, v4

    const/4 v5, 0x0

    aget-wide v6, v2, v5

    const/4 v5, 0x0

    aget-wide v10, v4, v5

    xor-long/2addr v6, v10

    const/4 v5, 0x1

    aget-wide v10, v2, v5

    const/4 v2, 0x1

    aget-wide v4, v4, v2

    xor-long/2addr v4, v10

    const/16 v2, 0xc

    :goto_0
    if-ltz v2, :cond_0

    aget-byte v9, p1, v2

    and-int/lit16 v9, v9, 0xff

    aget-object v9, v3, v9

    add-int/lit8 v10, v2, 0x1

    aget-byte v10, p1, v10

    and-int/lit16 v10, v10, 0xff

    aget-object v10, v8, v10

    const/16 v11, 0x30

    shl-long v12, v4, v11

    const/4 v11, 0x1

    aget-wide v14, v9, v11

    const/4 v11, 0x1

    aget-wide v16, v10, v11

    xor-long v14, v14, v16

    const/16 v11, 0x10

    ushr-long/2addr v4, v11

    const/16 v11, 0x30

    shl-long v16, v6, v11

    or-long v4, v4, v16

    xor-long/2addr v4, v14

    const/4 v11, 0x0

    aget-wide v14, v9, v11

    const/4 v9, 0x0

    aget-wide v10, v10, v9

    xor-long/2addr v10, v14

    const/16 v9, 0x10

    ushr-long/2addr v6, v9

    xor-long/2addr v6, v10

    xor-long/2addr v6, v12

    const/4 v9, 0x1

    ushr-long v10, v12, v9

    xor-long/2addr v6, v10

    const/4 v9, 0x2

    ushr-long v10, v12, v9

    xor-long/2addr v6, v10

    const/4 v9, 0x7

    ushr-long v10, v12, v9

    xor-long/2addr v6, v10

    add-int/lit8 v2, v2, -0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v6, v7, v0, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    const/16 v2, 0x8

    move-object/from16 v0, p1

    invoke-static {v4, v5, v0, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    return-void
.end method
