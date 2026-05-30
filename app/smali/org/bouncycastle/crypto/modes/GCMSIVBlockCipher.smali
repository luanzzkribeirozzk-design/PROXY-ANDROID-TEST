.class public Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADBlockCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;,
        Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;
    }
.end annotation


# static fields
.field private static final ADD:B = -0x1ft

.field private static final AEAD_COMPLETE:I = 0x2

.field private static final BUFLEN:I = 0x10

.field private static final HALFBUFLEN:I = 0x8

.field private static final INIT:I = 0x1

.field private static final MASK:B = -0x80t

.field private static final MAX_DATALEN:I = 0x7fffffe7

.field private static final NONCELEN:I = 0xc


# instance fields
.field private forEncryption:Z

.field private macBlock:[B

.field private final theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private final theCipher:Lorg/bouncycastle/crypto/BlockCipher;

.field private final theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

.field private theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private theFlags:I

.field private final theGHash:[B

.field private theInitialAEAD:[B

.field private final theMultiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

.field private theNonce:[B

.field private thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

.field private final theReverse:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/gcm/Tables4kGCMMultiplier;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/BlockCipher;Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;)V
    .locals 3

    const/4 v2, 0x0

    const/16 v1, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    invoke-interface {p1}, Lorg/bouncycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v0

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cipher required with a block size of 16."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    iput-object p2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$1;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-direct {v0, p0, v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;-><init>(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$1;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theReverse:[B

    return-object v0
.end method

.method static synthetic access$200([BII[B)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    return-void
.end method

.method static synthetic access$300(Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    return-void
.end method

.method private static bufLength([B)I
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, p0

    goto :goto_0
.end method

.method private calculateTag()[B
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->completePolyVal()[B

    move-result-object v2

    const/16 v0, 0x10

    new-array v3, v0, [B

    move v0, v1

    :goto_0
    const/16 v4, 0xc

    if-ge v0, v4, :cond_0

    aget-byte v4, v2, v0

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    aget-byte v5, v5, v0

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0xf

    aget-byte v4, v2, v0

    and-int/lit16 v4, v4, -0x81

    int-to-byte v4, v4

    aput-byte v4, v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v0, v2, v1, v3, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    return-object v3
.end method

.method private checkAEADStatus(I)V
    .locals 6

    const-wide/high16 v4, -0x8000000000000000L

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher is not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AEAD data cannot be processed after ordinary data"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v0

    add-long/2addr v0, v4

    const v2, 0x7fffffe7

    sub-int/2addr v2, p1

    int-to-long v2, v2

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AEAD byte count exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private static checkBuffer([BIIZ)V
    .locals 3

    invoke-static {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->bufLength([B)I

    move-result v1

    add-int v2, p1, p2

    if-ltz p2, :cond_0

    if-ltz p1, :cond_0

    if-gez v2, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    if-le v2, v1, :cond_4

    :cond_1
    if-eqz p3, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "Output buffer too short."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "Input buffer too short."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method private checkStatus(I)V
    .locals 8

    const-wide/high16 v6, -0x8000000000000000L

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cipher is not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->completeHash()V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    :cond_1
    const-wide/32 v2, 0x7fffffe7

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    int-to-long v0, v0

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-nez v4, :cond_2

    const-wide/16 v0, 0x10

    add-long/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    int-to-long v0, v0

    :cond_2
    add-long/2addr v0, v6

    int-to-long v4, p1

    sub-long/2addr v2, v4

    add-long/2addr v2, v6

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "byte count exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    return-void
.end method

.method private completePolyVal()[B
    .locals 4

    const/16 v3, 0x10

    new-array v0, v3, [B

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHashLengths()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    const/4 v2, 0x0

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    return-object v0
.end method

.method private decryptPlain()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/16 v9, 0x10

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    add-int/lit8 v2, v0, -0x10

    if-gez v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Data too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int/lit8 v0, v2, 0x10

    invoke-static {v3, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v5

    const/16 v0, 0xf

    aget-byte v6, v5, v0

    or-int/lit8 v6, v6, -0x80

    int-to-byte v6, v6

    aput-byte v6, v5, v0

    new-array v6, v9, [B

    move v0, v1

    :goto_0
    if-lez v2, :cond_1

    iget-object v7, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v7, v5, v1, v6, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v9, v2}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v6, v3, v0, v7}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v8, v6, v1, v7}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v8, v6, v1, v7}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    sub-int/2addr v2, v7

    add-int/2addr v0, v7

    invoke-static {v5}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v0

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->reset()V

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "mac check failed"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length v3, v3

    invoke-static {v0, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private deriveKeys(Lorg/bouncycastle/crypto/params/KeyParameter;)V
    .locals 11

    const/4 v10, 0x1

    const/16 v9, 0x10

    const/16 v8, 0x8

    const/4 v7, 0x0

    new-array v0, v9, [B

    new-array v1, v9, [B

    new-array v2, v9, [B

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v3

    new-array v3, v3, [B

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    const/4 v5, 0x4

    const/16 v6, 0xc

    invoke-static {v4, v7, v0, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v10, p1}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v0, v7, v1, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v1, v7, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v4, v0, v7

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v0, v7, v1, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v1, v7, v2, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v4, v0, v7

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v0, v7, v1, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v1, v7, v3, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v4, v0, v7

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v0, v7, v1, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v1, v7, v3, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_0

    aget-byte v4, v0, v7

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    iget-object v4, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v4, v0, v7, v1, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v1, v7, v3, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v4, v0, v7

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    aput-byte v4, v0, v7

    const/16 v4, 0x18

    iget-object v5, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v5, v0, v7, v1, v7}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v1, v7, v3, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    new-instance v4, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v4, v3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v0, v10, v4}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    invoke-static {v2, v7, v9, v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->fillReverse([BII[B)V

    invoke-static {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->mulX([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->init([B)V

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    return-void
.end method

.method private encryptPlain([B[BI)I
    .locals 9

    const/16 v8, 0x10

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v3

    invoke-static {p1}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v4

    const/16 v0, 0xf

    aget-byte v2, v4, v0

    or-int/lit8 v2, v2, -0x80

    int-to-byte v2, v2

    aput-byte v2, v4, v0

    new-array v5, v8, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v2

    move v0, v1

    :goto_0
    if-lez v2, :cond_0

    iget-object v6, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v6, v4, v1, v5, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    invoke-static {v8, v2}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v3, v0, v6}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[BII)V

    add-int v7, p3, v0

    invoke-static {v5, v1, p2, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int/2addr v2, v6

    add-int/2addr v0, v6

    invoke-static {v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->incrementCounter([B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    return v0
.end method

.method private static fillReverse([BII[B)V
    .locals 3

    const/4 v1, 0x0

    const/16 v0, 0xf

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, p1, v1

    aget-byte v2, p0, v2

    aput-byte v2, p3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private gHASH([B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-static {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->xorBlock([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theMultiplier:Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMMultiplier;->multiplyH([B)V

    return-void
.end method

.method private gHashLengths()V
    .locals 6

    const-wide/16 v4, 0x8

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v2

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->getBytesProcessed()J

    move-result-wide v2

    mul-long/2addr v2, v4

    const/16 v1, 0x8

    invoke-static {v2, v3, v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->gHASH([B)V

    return-void
.end method

.method private static incrementCounter([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static mulX([B)V
    .locals 5

    const/4 v1, 0x0

    move v2, v1

    move v0, v1

    :goto_0
    const/16 v3, 0x10

    if-ge v2, v3, :cond_1

    aget-byte v3, p0, v2

    shr-int/lit8 v4, v3, 0x1

    and-int/lit8 v4, v4, 0x7f

    or-int/2addr v0, v4

    int-to-byte v0, v0

    aput-byte v0, p0, v2

    and-int/lit8 v0, v3, 0x1

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, -0x80

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    aget-byte v0, p0, v1

    xor-int/lit8 v0, v0, -0x1f

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    :cond_2
    return-void
.end method

.method private resetStreams()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->clearBuffer()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->reset()V

    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    iget v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theFlags:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theGHash:[B

    invoke-static {v0, v3}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;-><init>()V

    goto :goto_0
.end method

.method private static xorBlock([B[B)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    aget-byte v2, p1, v0

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static xorBlock([B[BII)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v1, p0, v0

    add-int v2, v0, p2

    aget-byte v2, p1, v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->getOutputSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->calculateTag()[B

    move-result-object v1

    invoke-direct {p0, v1, p1, p2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->encryptPlain([B[BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x10

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v2

    add-int/2addr v2, p2

    const/16 v3, 0x10

    invoke-static {v1, v4, p1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    array-length v3, v3

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->decryptPlain()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->getBuffer()[B

    move-result-object v1

    invoke-static {v1, v4, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/BlockCipher;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-GCM-SIV"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->macBlock:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x10

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->size()I

    move-result v0

    add-int/2addr v0, p1

    const/16 v1, 0x10

    if-le v0, v1, :cond_1

    add-int/lit8 v0, v0, -0x10

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUnderlyingCipher()Lorg/bouncycastle/crypto/BlockCipher;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theCipher:Lorg/bouncycastle/crypto/BlockCipher;

    return-object v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, 0x0

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v2

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    array-length v3, v1

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid nonce"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to GCM-SIV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_5

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v3

    const/16 v4, 0x20

    if-eq v3, v4, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    iput-object v2, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theInitialAEAD:[B

    iput-object v1, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theNonce:[B

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->deriveKeys(Lorg/bouncycastle/crypto/params/KeyParameter;)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    return-void
.end method

.method public processAADByte(B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 1

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkAEADStatus(I)V

    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theAEADHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    return-void
.end method

.method public processByte(B[BI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash(B)V

    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write(I)V

    goto :goto_0
.end method

.method public processBytes([BII[BI)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkStatus(I)V

    invoke-static {p1, p2, p3, v1}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->checkBuffer([BIIZ)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->forEncryption:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->thePlain:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theDataHasher:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVHasher;->updateHash([BII)V

    :goto_0
    return v1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->theEncData:Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher$GCMSIVCache;->write([BII)V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/modes/GCMSIVBlockCipher;->resetStreams()V

    return-void
.end method
