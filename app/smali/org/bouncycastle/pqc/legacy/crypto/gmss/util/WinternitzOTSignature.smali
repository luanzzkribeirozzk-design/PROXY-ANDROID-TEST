.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;
.super Ljava/lang/Object;


# instance fields
.field private checksumsize:I

.field private gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

.field private keysize:I

.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private messagesize:I

.field private privateKeyOTS:[[B

.field private w:I


# direct methods
.method public constructor <init>([BLorg/bouncycastle/crypto/Digest;I)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v1, p3

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    shl-int/2addr v1, p3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->getLog(I)I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    add-int/2addr v2, p3

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, p3

    add-int/2addr v1, v2

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    new-array v1, v1, [[B

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v1, v1, [B

    array-length v2, v1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->gmssRandom:Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;

    invoke-virtual {v3, v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/GMSSRandom;->nextSeed([B)[B

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private hashPrivateKeyBlock(II[BI)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v0, v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v0, v3, p3, p4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v1, v1, p1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p3, p4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_0
    add-int/lit8 p2, p2, -0x1

    if-lez p2, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-interface {v0, p3, p4, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p3, p4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto :goto_0
.end method


# virtual methods
.method public getLog(I)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x2

    :goto_0
    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getPrivateKey()[[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v0, v2

    new-array v3, v0, [B

    const/4 v0, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v0, v2

    add-int/lit8 v4, v0, -0x1

    move v0, v1

    move v2, v1

    :goto_0
    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    if-ge v0, v5, :cond_0

    invoke-direct {p0, v0, v4, v3, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v3

    invoke-interface {v0, v3, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v0, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public getSignature([B)[B
    .locals 18

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->keysize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v2, v3

    new-array v11, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v12, v2, [B

    const/4 v4, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    move-object/from16 v0, p1

    array-length v6, v0

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v5, v6}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    invoke-interface {v2, v12, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int/2addr v2, v5

    if-nez v2, :cond_2

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    div-int v6, v2, v5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v5

    add-int/lit8 v7, v2, -0x1

    const/4 v2, 0x0

    :goto_0
    array-length v5, v12

    if-ge v2, v5, :cond_1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_0

    aget-byte v8, v12, v2

    and-int/2addr v8, v7

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v9, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11, v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    aget-byte v8, v12, v2

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v12, v2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v5

    sub-int v3, v2, v3

    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v2, v5, :cond_f

    and-int v5, v3, v7

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v6, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v11, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v2, v5

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v5, 0x8

    if-ge v2, v5, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    div-int v13, v2, v5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v5

    add-int/lit8 v14, v2, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v10, v2

    move v8, v3

    move v9, v4

    :goto_3
    if-ge v10, v13, :cond_5

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    move v3, v5

    :goto_4
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    if-ge v2, v4, :cond_3

    aget-byte v4, v12, v3

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v5, v2, 0x3

    shl-int/2addr v4, v5

    int-to-long v4, v4

    xor-long/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move-wide v6, v4

    goto :goto_4

    :cond_3
    const/4 v2, 0x0

    :goto_5
    const/16 v4, 0x8

    if-ge v2, v4, :cond_4

    long-to-int v4, v6

    and-int/2addr v4, v14

    add-int/2addr v8, v4

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v5, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v11, v5}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v6, v4

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v5, v3

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    rem-int v3, v2, v3

    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v3, :cond_6

    aget-byte v4, v12, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v10, v2, 0x3

    shl-int/2addr v4, v10

    int-to-long v0, v4

    move-wide/from16 v16, v0

    xor-long v6, v6, v16

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_6
    shl-int/lit8 v5, v3, 0x3

    const/4 v2, 0x0

    move v3, v8

    move v4, v9

    :goto_7
    if-ge v2, v5, :cond_7

    long-to-int v8, v6

    and-int/2addr v8, v14

    add-int/2addr v3, v8

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v9, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v8, v11, v9}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-long/2addr v6, v8

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v2, v8

    goto :goto_7

    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v5

    sub-int v3, v2, v3

    const/4 v2, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v2, v5, :cond_f

    and-int v5, v3, v14

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v6, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v11, v6}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->hashPrivateKeyBlock(II[BI)V

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int/2addr v3, v5

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v2, v5

    goto :goto_8

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    const/16 v5, 0x39

    if-ge v2, v5, :cond_f

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    shl-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    sub-int v9, v2, v5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v2, v5

    add-int/lit8 v10, v2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    new-array v13, v2, [B

    const/4 v2, 0x0

    move v5, v2

    move v6, v3

    move v7, v4

    :goto_9
    if-gt v5, v9, :cond_b

    ushr-int/lit8 v2, v5, 0x3

    rem-int/lit8 v14, v5, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int v8, v5, v3

    add-int/lit8 v3, v8, 0x7

    ushr-int/lit8 v15, v3, 0x3

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_a
    if-ge v2, v15, :cond_9

    aget-byte v16, v12, v2

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    shl-int/lit8 v17, v3, 0x3

    shl-int v16, v16, v17

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    xor-long v4, v4, v16

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_9
    ushr-long v2, v4, v14

    int-to-long v4, v10

    and-long/2addr v2, v4

    int-to-long v4, v6

    add-long/2addr v4, v2

    long-to-int v6, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v4, v4, v7

    const/4 v5, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v4, v5, v13, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_b
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    array-length v14, v13

    invoke-interface {v4, v13, v5, v14}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    invoke-interface {v4, v13, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    goto :goto_b

    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v3, v7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v13, v2, v11, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    move v5, v8

    goto :goto_9

    :cond_b
    ushr-int/lit8 v2, v5, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v2, v3, :cond_10

    rem-int/lit8 v8, v5, 0x8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_c
    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    if-ge v2, v9, :cond_c

    aget-byte v9, v12, v2

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v14, v3, 0x3

    shl-int/2addr v9, v14

    int-to-long v14, v9

    xor-long/2addr v4, v14

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_c
    ushr-long v2, v4, v8

    int-to-long v4, v10

    and-long/2addr v4, v2

    int-to-long v2, v6

    add-long/2addr v2, v4

    long-to-int v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v3, v3, v7

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v3, v6, v13, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_d
    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-lez v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v6, 0x0

    array-length v8, v13

    invoke-interface {v3, v13, v6, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v6, 0x0

    invoke-interface {v3, v13, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v8, 0x1

    sub-long/2addr v4, v8

    goto :goto_d

    :cond_d
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v13, v3, v11, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v7, 0x1

    :goto_e
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messagesize:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    shl-int/2addr v4, v5

    sub-int/2addr v4, v2

    const/4 v2, 0x0

    move v5, v3

    :goto_f
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->checksumsize:I

    if-ge v2, v3, :cond_f

    and-int v3, v4, v10

    int-to-long v6, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->privateKeyOTS:[[B

    aget-object v3, v3, v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v3, v8, v13, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_10
    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_e

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v9, v13

    invoke-interface {v3, v13, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v3, v13, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    goto :goto_10

    :cond_e
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    mul-int/2addr v6, v5

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->mdsize:I

    invoke-static {v13, v3, v11, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    ushr-int v3, v4, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSignature;->w:I

    add-int/2addr v2, v4

    move v4, v3

    goto :goto_f

    :cond_f
    return-object v11

    :cond_10
    move v2, v6

    move v3, v7

    goto :goto_e
.end method
