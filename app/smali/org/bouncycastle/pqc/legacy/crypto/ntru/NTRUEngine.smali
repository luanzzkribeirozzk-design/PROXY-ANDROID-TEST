.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/AsymmetricBlockCipher;


# instance fields
.field private forEncryption:Z

.field private params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

.field private privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

.field private pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

.field private random:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 11

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    mul-int v0, p3, v2

    new-array v1, v0, [B

    if-eqz p4, :cond_0

    invoke-direct {p0, v8, p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B

    move-result-object p1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    const/4 v3, 0x0

    array-length v4, p1

    invoke-interface {v8, p1, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, v8, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-direct {p0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v3

    const/4 v4, 0x0

    mul-int v5, v0, v2

    invoke-static {v3, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-direct {v4, p2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;-><init>(I)V

    :goto_1
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_2
    array-length v5, v1

    if-eq v2, v5, :cond_6

    aget-byte v5, v1, v2

    and-int/lit16 v6, v5, 0xff

    const/16 v5, 0xf3

    if-lt v6, v5, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    move v7, v3

    :goto_3
    const/4 v3, 0x4

    if-ge v5, v3, :cond_5

    rem-int/lit8 v3, v6, 0x3

    iget-object v9, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v10, v3, -0x1

    aput v10, v9, v7

    add-int/lit8 v7, v7, 0x1

    if-ne v7, p2, :cond_4

    move-object v0, v4

    :goto_4
    return-object v0

    :cond_4
    sub-int v3, v6, v3

    div-int/lit8 v6, v3, 0x3

    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_3

    :cond_5
    iget-object v3, v4, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->coeffs:[I

    add-int/lit8 v5, v6, -0x1

    aput v5, v3, v7

    add-int/lit8 v3, v7, 0x1

    if-ne v3, p2, :cond_2

    move-object v0, v4

    goto :goto_4

    :cond_6
    if-lt v3, p2, :cond_7

    move-object v0, v4

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    array-length v2, p1

    invoke-interface {v8, p1, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0, v8, v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->putInt(Lorg/bouncycastle/crypto/Digest;I)V

    invoke-direct {p0, v8}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->calcHash(Lorg/bouncycastle/crypto/Digest;)[B

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private buildSData([B[BI[B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    add-int/2addr v0, p3

    array-length v1, p4

    add-int/2addr v0, v1

    array-length v1, p5

    add-int/2addr v0, v1

    new-array v0, v0, [B

    array-length v1, p1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    array-length v2, p2

    invoke-static {p2, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p4

    invoke-static {p4, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    array-length v2, p2

    add-int/2addr v1, v2

    array-length v2, p4

    add-int/2addr v1, v2

    array-length v2, p5

    invoke-static {p5, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;)[B
    .locals 2

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private calcHash(Lorg/bouncycastle/crypto/Digest;[B)[B
    .locals 3

    const/4 v2, 0x0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    array-length v1, p2

    invoke-interface {p1, p2, v2, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {p1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private copyOf([BI)[B
    .locals 3

    const/4 v2, 0x0

    new-array v0, p2, [B

    array-length v1, p1

    if-ge p2, v1, :cond_0

    :goto_0
    invoke-static {p1, v2, v0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    array-length p2, p1

    goto :goto_0
.end method

.method private decrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-object v0, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->t:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    iget-object v2, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->fp:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v7, p2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v3, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v8, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v4, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v5, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v6, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v9, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v10, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v11, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    const/16 v12, 0xff

    if-le v5, v12, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "maxMsgLenBytes values bigger than 255 are not supported"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    div-int/lit8 v12, v4, 0x8

    invoke-static {p1, v3, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary([BII)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v4

    invoke-virtual {p0, v4, v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->decrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v2

    const/4 v0, -0x1

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v0

    if-ge v0, v6, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal -1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v0

    if-ge v0, v6, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 0"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v0

    if-ge v0, v6, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Less than dm0 coefficients equal 1"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    invoke-virtual {v6, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v6, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    invoke-direct {p0, v0, v3, v10, v11}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->sub(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary3Sves()[B

    move-result-object v0

    new-array v4, v12, [B

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v4, v3, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v2, v0, v12

    and-int/lit16 v3, v2, 0xff

    if-le v3, v5, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-array v2, v3, [B

    add-int/lit8 v5, v12, 0x1

    const/4 v10, 0x0

    invoke-static {v0, v5, v2, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v0

    add-int/lit8 v10, v12, 0x1

    add-int/2addr v10, v3

    sub-int/2addr v5, v10

    new-array v5, v5, [B

    add-int/lit8 v10, v12, 0x1

    add-int/2addr v10, v3

    const/4 v11, 0x0

    array-length v12, v5

    invoke-static {v0, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v5

    new-array v0, v0, [B

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "The message is not followed by zeroes"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v7, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v0

    div-int/lit8 v5, v9, 0x8

    invoke-direct {p0, v0, v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0, v8}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    invoke-virtual {v0, v6}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "Invalid message encoding"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v2
.end method

.method private encrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B
    .locals 21

    move-object/from16 v0, p2

    iget-object v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->h:Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v10, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v11, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v12, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v13, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v14, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v15, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-object v4, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    move-object/from16 v0, p1

    array-length v6, v0

    const/16 v3, 0xff

    if-le v12, v3, :cond_0

    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "llen values bigger than 1 are not supported"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-le v6, v12, :cond_1

    new-instance v3, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message too long: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    div-int/lit8 v3, v13, 0x8

    new-array v7, v3, [B

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v7}, Ljava/security/SecureRandom;->nextBytes([B)V

    add-int/lit8 v3, v12, 0x1

    sub-int/2addr v3, v6

    new-array v3, v3, [B

    div-int/lit8 v5, v14, 0x8

    new-array v0, v5, [B

    move-object/from16 v19, v0

    const/4 v5, 0x0

    const/4 v8, 0x0

    array-length v0, v7

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v7, v5, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, v7

    int-to-byte v8, v6

    aput-byte v8, v19, v5

    const/4 v5, 0x0

    array-length v8, v7

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-static {v0, v5, v1, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v5, 0x0

    array-length v8, v7

    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v20, v0

    add-int v8, v8, v20

    array-length v0, v3

    move/from16 v20, v0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v3, v5, v0, v8, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v19

    invoke-static {v0, v10}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->fromBinary3Sves([BI)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v20

    invoke-virtual {v9, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v3

    div-int/lit8 v5, v16, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->copyOf([BI)[B

    move-result-object v8

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct/range {v3 .. v8}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->buildSData([B[BI[B[B)[B

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v3, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;

    move-result-object v3

    invoke-interface {v3, v9, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->modPositive(I)V

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v3

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v3, v10, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->MGF([BIIZ)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual/range {v20 .. v20}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    const/4 v3, -0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v3

    if-lt v3, v15, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v3

    if-lt v3, v15, :cond_1

    const/4 v3, 0x1

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->count(I)I

    move-result v3

    if-lt v3, v15, :cond_1

    move-object/from16 v0, v20

    invoke-virtual {v5, v0, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    invoke-virtual {v5, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    invoke-virtual {v5, v11}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->toBinary(I)[B

    move-result-object v3

    return-object v3
.end method

.method private generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    new-array v2, v0, [I

    const/4 v0, -0x1

    move v1, v0

    :goto_0
    const/4 v0, 0x1

    if-gt v1, v0, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_1
    if-ge v0, p2, :cond_1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->nextIndex()I

    move-result v3

    aget v4, v2, v3

    if-nez v4, :cond_0

    aput v1, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method private generateBlindingPoly([B[B)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;
    .locals 5

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;-><init>([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance v2, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v3, v3, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance v3, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    iget-object v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v4, v4, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/ProductFormPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v2, v2, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->generateBlindingCoeffs(Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;I)[I

    move-result-object v1

    if-eqz v2, :cond_1

    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/SparseTernaryPolynomial;-><init>([I)V

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>([I)V

    goto :goto_0
.end method

.method private log2(I)I
    .locals 2

    const/16 v0, 0x800

    if-ne p1, v0, :cond_0

    const/16 v0, 0xb

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "log2 not fully implemented"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private putInt(Lorg/bouncycastle/crypto/Digest;I)V
    .locals 1

    shr-int/lit8 v0, p2, 0x18

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x10

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    shr-int/lit8 v0, p2, 0x8

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte v0, p2

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    return-void
.end method


# virtual methods
.method protected decrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 3

    const/4 v2, 0x3

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mult(I)V

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->mod3()V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget-boolean v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->center0(I)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Polynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;

    invoke-direct {v1, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;-><init>(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)V

    invoke-virtual {v1, p3, v2}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/DenseTernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    goto :goto_1
.end method

.method protected encrypt(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-interface {p2, p3, v0}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/TernaryPolynomial;->mult(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, p1, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->add(Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/IntegerPolynomial;->ensurePositive(I)V

    return-object v0
.end method

.method public getInputBlockSize()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public getOutputBlockSize()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v1, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->log2(I)I

    move-result v1

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v1

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    :goto_0
    if-eqz p1, :cond_0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    invoke-static {v1}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    :goto_1
    return-void

    :cond_0
    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->params:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iput-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->random:Ljava/security/SecureRandom;

    goto :goto_1

    :cond_1
    move-object v1, v2

    move-object v0, p2

    goto :goto_0
.end method

.method public processBlock([BII)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    new-array v0, p3, [B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->forEncryption:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->pubKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->encrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPublicKeyParameters;)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->privKey:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEngine;->decrypt([BLorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionPrivateKeyParameters;)[B

    move-result-object v0

    goto :goto_0
.end method
