.class Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;
.super Ljava/lang/Object;


# static fields
.field static final D_MESG:S = -0x7e7fs

.field private static final D_PBLC:S = -0x7f80s

.field private static final ITER_J:I = 0x16

.field private static final ITER_K:I = 0x14

.field private static final ITER_PREV:I = 0x17

.field static final MAX_HASH:I = 0x20

.field static final SEED_RANDOMISER_INDEX:I = -0x3


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cksm([BILorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)I
    .locals 5

    const/4 v1, 0x0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v0

    const/4 v2, 0x1

    shl-int v0, v2, v0

    add-int/lit8 v3, v0, -0x1

    move v0, v1

    move v2, v1

    :goto_0
    mul-int/lit8 v1, p1, 0x8

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v4

    div-int/2addr v1, v4

    if-ge v0, v1, :cond_0

    add-int v1, v2, v3

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v2

    invoke-static {p0, v0, v2}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->coef([BII)I

    move-result v2

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getLs()I

    move-result v0

    shl-int v0, v2, v0

    return v0
.end method

.method public static coef([BII)I
    .locals 3

    mul-int v0, p1, p2

    div-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    div-int/2addr v1, p2

    xor-int/lit8 v2, p1, -0x1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    mul-int/2addr v1, p2

    const/4 v2, 0x1

    shl-int/2addr v2, p2

    add-int/lit8 v2, v2, -0x1

    aget-byte v0, p0, v0

    ushr-int/2addr v0, v1

    and-int/2addr v0, v2

    return v0
.end method

.method public static lm_ots_generate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    .locals 13

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getP()I

    move-result v4

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v5

    mul-int v0, v4, v3

    new-array v6, v0, [B

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v7

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getDerivationFunction()Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;

    move-result-object v8

    invoke-static {p1, v3, v2}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->cksm([BILorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)I

    move-result v0

    ushr-int/lit8 v1, v0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v3

    add-int/lit8 v1, v3, 0x1

    int-to-byte v0, v0

    aput-byte v0, p1, v1

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getI()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getQ()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    const/4 v1, 0x0

    add-int/lit8 v9, v3, 0x17

    invoke-virtual {v0, v1, v9}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->padUntil(II)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v9

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->setJ(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_2

    int-to-short v0, v1

    const/16 v10, 0x14

    invoke-static {v0, v9, v10}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    add-int/lit8 v0, v4, -0x1

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const/16 v10, 0x17

    invoke-virtual {v8, v9, v0, v10}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->deriveSeed([BZI)V

    invoke-static {p1, v1, v5}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->coef([BII)I

    move-result v10

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v10, :cond_1

    const/16 v11, 0x16

    int-to-byte v12, v0

    aput-byte v12, v9, v11

    const/4 v11, 0x0

    add-int/lit8 v12, v3, 0x17

    invoke-interface {v7, v9, v11, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/16 v11, 0x17

    invoke-interface {v7, v9, v11}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x17

    mul-int v10, v3, v1

    invoke-static {v9, v0, v6, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    invoke-direct {v0, v2, p2, v6}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[B[B)V

    return-object v0
.end method

.method public static lm_ots_generate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;[[B[BZ)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x22

    new-array v0, v0, [B

    if-nez p4, :cond_0

    invoke-virtual {p1, p0, p2}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getSignatureContext(Lorg/bouncycastle/pqc/crypto/lms/LMSigParameters;[[B)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v0

    array-length v1, p3

    invoke-static {p3, v3, v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BIILorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getC()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getQ()[B

    move-result-object v0

    :goto_0
    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_generate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;[B[B)Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v2

    new-array v1, v2, [B

    invoke-static {p3, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static lm_ots_validate_signature(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;[BZ)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/pqc/crypto/lms/LMSException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->getType()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMSException;

    const-string v1, "public key and signature ots types do not match"

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/LMSException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;[B)[B

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getK()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    return v0
.end method

.method public static lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;[B)[B
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->createOtsContext(Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;)Lorg/bouncycastle/pqc/crypto/lms/LMSContext;

    move-result-object v0

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BLorg/bouncycastle/crypto/Digest;)V

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)[B

    move-result-object v0

    return-object v0
.end method

.method public static lm_ots_validate_signature_calculate(Lorg/bouncycastle/pqc/crypto/lms/LMSContext;)[B
    .locals 15

    const/16 v14, 0x17

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getPublicKey()Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getSignature()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    if-eqz v4, :cond_0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getOtsSignature()Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    move-result-object v0

    :goto_0
    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v4

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v5

    invoke-virtual {v3}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getP()I

    move-result v6

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSContext;->getQ()[B

    move-result-object v7

    invoke-static {v7, v4, v3}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->cksm([BILorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)I

    move-result v8

    ushr-int/lit8 v9, v8, 0x8

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    aput-byte v9, v7, v4

    add-int/lit8 v9, v4, 0x1

    int-to-byte v8, v8

    aput-byte v8, v7, v9

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getI()[B

    move-result-object v8

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;->getQ()I

    move-result v1

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v9

    invoke-static {v8, v9}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->byteArray([BLorg/bouncycastle/crypto/Digest;)V

    invoke-static {v1, v9}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u32str(ILorg/bouncycastle/crypto/Digest;)V

    const/16 v10, -0x7f80

    invoke-static {v10, v9}, Lorg/bouncycastle/pqc/crypto/lms/LmsUtils;->u16str(SLorg/bouncycastle/crypto/Digest;)V

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v10

    invoke-virtual {v10, v8}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v8

    invoke-virtual {v8, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v1

    add-int/lit8 v8, v4, 0x17

    invoke-virtual {v1, v2, v8}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->padUntil(II)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v8

    const/4 v1, 0x1

    shl-int/2addr v1, v5

    add-int/lit8 v10, v1, -0x1

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;->getY()[B

    move-result-object v11

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    move v1, v2

    :goto_1
    if-ge v1, v6, :cond_2

    int-to-short v0, v1

    const/16 v12, 0x14

    invoke-static {v0, v8, v12}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    mul-int v0, v1, v4

    invoke-static {v11, v0, v8, v14, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v7, v1, v5}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->coef([BII)I

    move-result v0

    :goto_2
    if-ge v0, v10, :cond_1

    const/16 v12, 0x16

    int-to-byte v13, v0

    aput-byte v13, v8, v12

    add-int/lit8 v12, v4, 0x17

    invoke-interface {v3, v8, v2, v12}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-interface {v3, v8, v14}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsSignature;

    goto :goto_0

    :cond_1
    invoke-interface {v9, v8, v14, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    new-array v0, v4, [B

    invoke-interface {v9, v0, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method

.method public static lms_ots_generatePublicKey(Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;)Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;
    .locals 5

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getI()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getQ()I

    move-result v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getMasterSecret()[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/lms/LM_OTS;->lms_ots_generatePublicKey(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[BI[B)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getParameter()Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getI()[B

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPrivateKey;->getQ()I

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsPublicKey;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[BI[B)V

    return-object v1
.end method

.method static lms_ots_generatePublicKey(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;[BI[B)[B
    .locals 11

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    const/16 v1, -0x7f80

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u16str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v3}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->padUntil(II)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v3, v0

    invoke-interface {v2, v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v3

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes([B)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    invoke-virtual {v0, v1, v4}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->padUntil(II)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/DigestUtil;->getDigest(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    invoke-direct {v5, p1, p3, v0}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;-><init>([B[BLorg/bouncycastle/crypto/Digest;)V

    invoke-virtual {v5, p2}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->setQ(I)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->setJ(I)V

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getP()I

    move-result v6

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getN()I

    move-result v7

    const/4 v0, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->getW()I

    move-result v1

    shl-int/2addr v0, v1

    add-int/lit8 v8, v0, -0x1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v6, :cond_2

    add-int/lit8 v0, v6, -0x1

    if-ge v1, v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    const/16 v9, 0x17

    invoke-virtual {v5, v4, v0, v9}, Lorg/bouncycastle/pqc/crypto/lms/SeedDerive;->deriveSeed([BZI)V

    int-to-short v0, v1

    const/16 v9, 0x14

    invoke-static {v0, v4, v9}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S[BI)V

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v8, :cond_1

    const/16 v9, 0x16

    int-to-byte v10, v0

    aput-byte v10, v4, v9

    const/4 v9, 0x0

    array-length v10, v4

    invoke-interface {v3, v4, v9, v10}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    const/16 v9, 0x17

    invoke-interface {v3, v4, v9}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const/16 v0, 0x17

    invoke-interface {v2, v4, v0, v7}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    invoke-interface {v2, v0, v1}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    return-object v0
.end method
