.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;
.super Ljava/lang/Object;


# instance fields
.field private mdsize:I

.field private messDigestOTS:Lorg/bouncycastle/crypto/Digest;

.field private w:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    iput-object p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    return-void
.end method

.method private hashSignatureBlock([BII[BI)V
    .locals 2

    const/4 v0, 0x1

    if-ge p3, v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {p1, p2, p4, p5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p4, p5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_0
    add-int/lit8 p3, p3, -0x1

    if-lez p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-interface {v0, p4, p5, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0, p4, p5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto :goto_0
.end method


# virtual methods
.method public Verify([B[B)[B
    .locals 20

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v15, v2, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v15, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    shl-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v3, v3, -0x1

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v16, v2, v3

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v16, v2

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v2, v2, v17

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v2, v3

    add-int v2, v2, v16

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v2, v3

    move-object/from16 v0, p2

    array-length v3, v0

    if-eq v2, v3, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-array v6, v2, [B

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int/2addr v2, v5

    if-nez v2, :cond_3

    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v12, v2, v5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int/2addr v2, v5

    add-int/lit8 v13, v2, -0x1

    const/4 v2, 0x0

    move v8, v2

    :goto_1
    array-length v2, v15

    if-ge v8, v2, :cond_2

    const/4 v2, 0x0

    move v10, v2

    move v9, v3

    :goto_2
    if-ge v10, v12, :cond_1

    aget-byte v2, v15, v8

    and-int/2addr v2, v13

    add-int v11, v4, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v4, v9, v3

    sub-int v5, v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v7, v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    aget-byte v2, v15, v8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v15, v8

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v4, v11

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    move v3, v9

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v16, v2

    sub-int v4, v2, v4

    const/4 v2, 0x0

    move v8, v2

    move v9, v3

    move v10, v4

    :goto_3
    move/from16 v0, v17

    if-ge v8, v0, :cond_10

    and-int v2, v10, v13

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v4, v9, v3

    sub-int v5, v13, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v7, v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int v4, v10, v2

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v8

    move v8, v2

    move v9, v3

    move v10, v4

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v5, 0x8

    if-ge v2, v5, :cond_9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int v18, v2, v5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int/2addr v2, v5

    add-int/lit8 v19, v2, -0x1

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v14, v2

    move v9, v3

    move v7, v4

    :goto_4
    move/from16 v0, v18

    if-ge v14, v0, :cond_6

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    move v8, v5

    :goto_5
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    if-ge v2, v3, :cond_4

    aget-byte v3, v15, v8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, v2, 0x3

    shl-int/2addr v3, v4

    int-to-long v4, v3

    xor-long/2addr v4, v10

    add-int/lit8 v3, v8, 0x1

    add-int/lit8 v2, v2, 0x1

    move v8, v3

    move-wide v10, v4

    goto :goto_5

    :cond_4
    const/4 v2, 0x0

    move v12, v2

    :goto_6
    const/16 v2, 0x8

    if-ge v12, v2, :cond_5

    move/from16 v0, v19

    int-to-long v2, v0

    and-long/2addr v2, v10

    long-to-int v2, v2

    add-int v13, v7, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v4, v9, v3

    sub-int v5, v19, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v7, v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long/2addr v10, v2

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v2, v12, 0x1

    move v12, v2

    move v7, v13

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v14, 0x1

    move v14, v2

    move v5, v8

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    rem-int v3, v2, v3

    const-wide/16 v10, 0x0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_7

    aget-byte v4, v15, v5

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v8, v2, 0x3

    shl-int/2addr v4, v8

    int-to-long v12, v4

    xor-long/2addr v10, v12

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    shl-int/lit8 v13, v3, 0x3

    const/4 v2, 0x0

    move v8, v2

    move v3, v7

    :goto_8
    if-ge v8, v13, :cond_8

    move/from16 v0, v19

    int-to-long v4, v0

    and-long/2addr v4, v10

    long-to-int v2, v4

    add-int v12, v3, v2

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v4, v9, v3

    sub-int v5, v19, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v7, v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-long v4, v10, v2

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v8

    move v8, v2

    move-wide v10, v4

    move v3, v12

    goto :goto_8

    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v16, v2

    sub-int v3, v2, v3

    const/4 v2, 0x0

    move v8, v2

    move v10, v3

    :goto_9
    move/from16 v0, v17

    if-ge v8, v0, :cond_10

    and-int v2, v10, v19

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v4, v9, v3

    sub-int v5, v19, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int v7, v9, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->hashSignatureBlock([BII[BI)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int v4, v10, v2

    add-int/lit8 v3, v9, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v8

    move v8, v2

    move v9, v3

    move v10, v4

    goto :goto_9

    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    const/16 v5, 0x39

    if-ge v2, v5, :cond_10

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    shl-int/lit8 v2, v2, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    sub-int v10, v2, v5

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int/2addr v2, v5

    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v12, v2, [B

    const/4 v2, 0x0

    move v5, v2

    move v7, v3

    move v8, v4

    :goto_a
    if-gt v5, v10, :cond_c

    ushr-int/lit8 v2, v5, 0x3

    rem-int/lit8 v13, v5, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int v9, v5, v3

    add-int/lit8 v3, v9, 0x7

    ushr-int/lit8 v14, v3, 0x3

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_b
    if-ge v2, v14, :cond_a

    aget-byte v18, v15, v2

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    shl-int/lit8 v19, v3, 0x3

    shl-int v18, v18, v19

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    xor-long v4, v4, v18

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_a
    ushr-long v2, v4, v13

    int-to-long v4, v11

    and-long/2addr v2, v4

    int-to-long v4, v8

    add-long/2addr v4, v2

    long-to-int v8, v4

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v4, v7

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move-object/from16 v0, p2

    invoke-static {v0, v4, v12, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_c
    int-to-long v4, v11

    cmp-long v4, v2, v4

    if-gez v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    array-length v13, v12

    invoke-interface {v4, v12, v5, v13}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v5, 0x0

    invoke-interface {v4, v12, v5}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v3, v7

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {v12, v2, v6, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    move v5, v9

    goto :goto_a

    :cond_c
    ushr-int/lit8 v2, v5, 0x3

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v2, v3, :cond_11

    rem-int/lit8 v9, v5, 0x8

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    :goto_d
    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    if-ge v2, v10, :cond_d

    aget-byte v10, v15, v2

    and-int/lit16 v10, v10, 0xff

    shl-int/lit8 v13, v3, 0x3

    shl-int/2addr v10, v13

    int-to-long v0, v10

    move-wide/from16 v18, v0

    xor-long v4, v4, v18

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_d
    ushr-long v2, v4, v9

    int-to-long v4, v11

    and-long/2addr v4, v2

    int-to-long v2, v8

    add-long/2addr v2, v4

    long-to-int v3, v2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v2, v7

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move-object/from16 v0, p2

    invoke-static {v0, v2, v12, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_e
    int-to-long v8, v11

    cmp-long v2, v4, v8

    if-gez v2, :cond_e

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    array-length v9, v12

    invoke-interface {v2, v12, v8, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v8, 0x0

    invoke-interface {v2, v12, v8}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    goto :goto_e

    :cond_e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v4, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {v12, v2, v6, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v7, 0x1

    :goto_f
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v4, v16, v4

    sub-int v7, v4, v3

    const/4 v3, 0x0

    move v4, v3

    move v5, v2

    :goto_10
    move/from16 v0, v17

    if-ge v4, v0, :cond_10

    and-int v2, v7, v11

    int-to-long v2, v2

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v8, v5

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    move-object/from16 v0, p2

    invoke-static {v0, v8, v12, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_11
    int-to-long v8, v11

    cmp-long v8, v2, v8

    if-gez v8, :cond_f

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v9, 0x0

    array-length v10, v12

    invoke-interface {v8, v12, v9, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v9, 0x0

    invoke-interface {v8, v12, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    const-wide/16 v8, 0x1

    add-long/2addr v2, v8

    goto :goto_11

    :cond_f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    mul-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    invoke-static {v12, v2, v6, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    ushr-int/2addr v7, v2

    add-int/lit8 v3, v5, 0x1

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v4

    move v4, v2

    move v5, v3

    goto :goto_10

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    array-length v4, v6

    invoke-interface {v2, v6, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->mdsize:I

    new-array v2, v2, [B

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    const/4 v4, 0x0

    invoke-interface {v3, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto/16 :goto_0

    :cond_11
    move v2, v7

    move v3, v8

    goto :goto_f
.end method

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

.method public getSignatureLength()I
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->messDigestOTS:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    shl-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    shl-int v2, v1, v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->getLog(I)I

    move-result v2

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/util/WinternitzOTSVerify;->w:I

    div-int/2addr v2, v3

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
