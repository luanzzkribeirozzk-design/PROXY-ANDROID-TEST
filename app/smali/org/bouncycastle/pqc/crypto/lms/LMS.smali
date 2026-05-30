.class Lorg/bouncycastle/pqc/crypto/lms/LMS;
.super Ljava/lang/Object;


# static fields
.field static final D_INTR:S = -0x7c7ds

.field static final D_LEAF:S = -0x7d7es


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateKeys(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "root seed is less than "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getM()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v1

    shl-int v5, v0, v1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;I[BI[B)V

    return-object v0
.end method

.method public static generateSign(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getPrivateKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getQ()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getC()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_generate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getPrivateKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getQ()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getSigParams()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getPath()[[B

    move-result-object v4

    invoke-direct {v1, v2, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;-><init>(ILorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;[[B)V

    return-object v1
.end method

.method public static generateSign(Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;[B)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPrivateKeyParameters;->generateLMSContext()Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->update([BII)V

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->generateSign(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    move-result-object v0

    return-object v0
.end method

.method public static verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Z
    .locals 11

    const/16 v10, -0x7c7d

    const/4 v9, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getSignature()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;

    move-result-object v3

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;->getH()I

    move-result v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getY()[[B

    move-result-object v4

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)[B

    move-result-object v5

    shl-int v2, v9, v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getQ()I

    move-result v0

    add-int/2addr v2, v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->getI()[B

    move-result-object v6

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v7, v0, [B

    array-length v0, v6

    invoke-interface {v3, v6, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    const/16 v0, -0x7d7e

    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    array-length v0, v5

    invoke-interface {v3, v5, v1, v0}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v7, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move v0, v1

    :cond_0
    if-le v2, v9, :cond_2

    and-int/lit8 v5, v2, 0x1

    if-ne v5, v9, :cond_1

    array-length v5, v6

    invoke-interface {v3, v6, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    div-int/lit8 v5, v2, 0x2

    invoke-static {v5, v3}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    invoke-static {v10, v3}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    aget-object v5, v4, v0

    aget-object v8, v4, v0

    array-length v8, v8

    invoke-interface {v3, v5, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    array-length v5, v7

    invoke-interface {v3, v7, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v7, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    :goto_0
    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v0, v0, 0x1

    array-length v5, v4

    if-ne v0, v5, :cond_0

    if-le v2, v9, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_1
    array-length v5, v6

    invoke-interface {v3, v6, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    div-int/lit8 v5, v2, 0x2

    invoke-static {v5, v3}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    invoke-static {v10, v3}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    array-length v5, v7

    invoke-interface {v3, v7, v1, v5}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    aget-object v5, v4, v0

    aget-object v8, v4, v0

    array-length v8, v8

    invoke-interface {v3, v5, v1, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v7, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v7}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->matchesT1([B)Z

    move-result v0

    goto :goto_1
.end method

.method public static verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;[B)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->generateOtsContext(Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BLorg/bouncycastle/crypto/Digest;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Z

    move-result v0

    return v0
.end method

.method public static verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;[B[B)Z
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->generateLMSContext([B)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BLorg/bouncycastle/crypto/Digest;)V

    invoke-static {p0, v0}, Lorg/bouncycastle/pqc/crypto/lms/LMS;->verifySignature(Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)Z

    move-result v0

    return v0
.end method
