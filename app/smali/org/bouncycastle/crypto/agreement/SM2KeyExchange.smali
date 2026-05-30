.class public Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;
.super Ljava/lang/Object;


# instance fields
.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

.field private ephemeralKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

.field private initiator:Z

.field private staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private staticPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

.field private userID:[B

.field private w:I


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SM3Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SM3Digest;-><init>()V

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    return-void
.end method

.method private S1(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B
    .locals 2

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    const/4 v0, 0x0

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digestDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method private S2(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B
    .locals 2

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    const/4 v0, 0x0

    array-length v1, p3

    invoke-interface {p1, p3, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digestDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method private addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V
    .locals 3

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-interface {p1, v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private addUserID(Lorg/bouncycastle/crypto/Digest;[B)V
    .locals 2

    array-length v0, p2

    mul-int/lit8 v0, v0, 0x8

    ushr-int/lit8 v1, v0, 0x8

    int-to-byte v1, v1

    invoke-interface {p1, v1}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    int-to-byte v0, v0

    invoke-interface {p1, v0}, Lorg/bouncycastle/crypto/Digest;->update(B)V

    const/4 v0, 0x0

    array-length v1, p2

    invoke-interface {p1, p2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    return-void
.end method

.method private calculateInnerHash(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B[BLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)[B
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    array-length v0, p3

    invoke-interface {p1, p3, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v0, p4

    invoke-interface {p1, p4, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-virtual {p5}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {p5}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {p6}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {p6}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digestDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method private calculateU(Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;)Lorg/bouncycastle/math/ec/ECPoint;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/bouncycastle/math/ec/ECAlgorithms;->cleanPoint(Lorg/bouncycastle/math/ec/ECCurve;Lorg/bouncycastle/math/ec/ECPoint;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->reduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/math/ec/ECFieldElement;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->reduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/math/ec/ECAlgorithms;->sumOfTwoMultiplies(Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;Lorg/bouncycastle/math/ec/ECPoint;Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    return-object v0
.end method

.method private digestDoFinal()[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method private getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addUserID(Lorg/bouncycastle/crypto/Digest;[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getA()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getB()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getG()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-virtual {p3}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digestDoFinal()[B

    move-result-object v0

    return-object v0
.end method

.method private kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B
    .locals 11

    const/4 v0, 0x0

    const/4 v10, 0x4

    const/4 v3, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v6, v1, [B

    add-int/lit8 v1, p4, 0x7

    div-int/lit8 v1, v1, 0x8

    new-array v7, v1, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    instance-of v1, v1, Lorg/bouncycastle/util/Memoable;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p2

    invoke-interface {v0, p2, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p3

    invoke-interface {v0, p3, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v1

    move-object v2, v0

    :goto_0
    move v0, v3

    move v4, v3

    :goto_1
    array-length v8, v7

    if-ge v4, v8, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    invoke-static {v0, v6, v3}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v6, v3, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v8, v6, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    array-length v8, v7

    sub-int/2addr v8, v4

    invoke-static {v5, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v6, v3, v7, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v8

    goto :goto_1

    :cond_0
    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p1}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineYCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->addFieldElement(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECFieldElement;)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v9, p2

    invoke-interface {v8, p2, v3, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v8, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    array-length v9, p3

    invoke-interface {v8, p3, v3, v9}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_2

    :cond_1
    return-object v7

    :cond_2
    move-object v1, v0

    move-object v2, v0

    goto :goto_0
.end method

.method private reduce(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4

    const-wide/16 v2, 0x1

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->w:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->w:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public calculateKey(ILorg/bouncycastle/crypto/CipherParameters;)[B
    .locals 4

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithID;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v1

    move-object p2, v0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v1

    invoke-direct {p0, p2}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateU(Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-boolean v3, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    if-eqz v3, :cond_1

    invoke-direct {p0, v2, v0, v1, p1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    check-cast p2, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2, v1, v0, p1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v0

    goto :goto_1
.end method

.method public calculateKeyWithConfirmation(I[BLorg/bouncycastle/crypto/CipherParameters;)[[B
    .locals 12

    instance-of v0, p3, Lorg/bouncycastle/crypto/params/ParametersWithID;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    check-cast p3, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v1

    move-object p3, v0

    :goto_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "if initiating, confirmationTag must be set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p3, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;

    const/4 v0, 0x0

    new-array v0, v0, [B

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    iget-object v3, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-direct {p0, v0, v2, v3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v3

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getStaticPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->getZ(Lorg/bouncycastle/crypto/Digest;[BLorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v4

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateU(Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    if-eqz v0, :cond_3

    invoke-direct {p0, v2, v3, v4, p1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v7

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v5, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateInnerHash(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B[BLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->S1(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object v0

    invoke-static {v0, p2}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "confirmation tag mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v3, 0x0

    aput-object v7, v0, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v4, v2, v1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->S2(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object v1

    aput-object v1, v0, v3

    :goto_1
    return-object v0

    :cond_3
    invoke-direct {p0, v2, v4, v3, p1}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->kdf(Lorg/bouncycastle/math/ec/ECPoint;[B[BI)[B

    move-result-object v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePublicParameters;->getEphemeralPublicKey()Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;->getQ()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v10

    iget-object v11, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    move-object v5, p0

    move-object v7, v2

    move-object v8, v4

    move-object v9, v3

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->calculateInnerHash(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B[BLorg/bouncycastle/math/ec/ECPoint;Lorg/bouncycastle/math/ec/ECPoint;)[B

    move-result-object v3

    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v4, 0x0

    aput-object v1, v0, v4

    const/4 v1, 0x1

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v4, v2, v3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->S1(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object v4

    aput-object v4, v0, v1

    const/4 v1, 0x2

    iget-object v4, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0, v4, v2, v3}, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->S2(Lorg/bouncycastle/crypto/Digest;Lorg/bouncycastle/math/ec/ECPoint;[B)[B

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_1
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/crypto/params/ParametersWithID;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;

    check-cast p1, Lorg/bouncycastle/crypto/params/ParametersWithID;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ParametersWithID;->getID()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->isInitiator()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->initiator:Z

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->getStaticPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->getEphemeralPrivateKey()Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->getStaticPublicPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;->getEphemeralPublicPoint()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ephemeralPubPoint:Lorg/bouncycastle/math/ec/ECPoint;

    iget-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->ecParams:Lorg/bouncycastle/crypto/params/ECDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->w:I

    const-string v0, "SM2KE"

    iget-object v1, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->staticKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/agreement/Utils;->getDefaultProperties(Ljava/lang/String;Lorg/bouncycastle/crypto/params/ECKeyParameters;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    :cond_0
    check-cast p1, Lorg/bouncycastle/crypto/params/SM2KeyExchangePrivateParameters;

    const/4 v0, 0x0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/agreement/SM2KeyExchange;->userID:[B

    move-object v0, p1

    goto :goto_0
.end method
