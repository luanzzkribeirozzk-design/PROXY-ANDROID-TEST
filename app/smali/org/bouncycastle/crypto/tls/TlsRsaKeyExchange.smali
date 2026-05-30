.class public abstract Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;
.super Ljava/lang/Object;


# static fields
.field private static final ONE:Ljava/math/BigInteger;

.field public static final PRE_MASTER_SECRET_LENGTH:I = 0x30


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static caddTo(II[B[B)I
    .locals 5

    and-int/lit16 v2, p1, 0xff

    const/4 v1, 0x0

    add-int/lit8 v0, p0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v3, p3, v0

    and-int/lit16 v3, v3, 0xff

    aget-byte v4, p2, v0

    and-int/2addr v4, v2

    add-int/2addr v3, v4

    add-int/2addr v1, v3

    int-to-byte v3, v1

    aput-byte v3, p3, v0

    ushr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static checkPkcs1Encoding2([BII)I
    .locals 5

    sub-int v0, p1, p2

    add-int/lit8 v1, v0, -0xa

    array-length v0, p0

    sub-int v2, v0, p1

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    sub-int v3, v0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-byte v4, p0, v0

    and-int/lit16 v4, v4, 0xff

    neg-int v4, v4

    or-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    xor-int/lit8 v0, v0, 0x2

    neg-int v0, v0

    or-int/2addr v1, v0

    add-int/lit8 v0, v2, 0x1

    :goto_1
    if-ge v0, v3, :cond_1

    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, -0x1

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    neg-int v0, v0

    or-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private static convertInput(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;
    .locals 2

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/BigIntegers;->fromUnsignedByteArray([BII)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v1

    if-gez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input too large for RSA cipher."

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decryptPreMasterSecret([BIILorg/bouncycastle/crypto/params/RSAKeyParameters;ILjava/security/SecureRandom;)[B
    .locals 9

    const v7, 0xffff

    const/4 v0, 0x0

    const/16 v8, 0x30

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    if-lt p2, v1, :cond_0

    invoke-static {p3}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->getInputLimit(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)I

    move-result v1

    if-gt p2, v1, :cond_0

    if-ltz p1, :cond_0

    array-length v1, p0

    sub-int/2addr v1, p2

    if-le p1, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input not a valid EncryptedPreMasterSecret"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->isPrivate()Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'privateKey\' must be an RSA private key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p3}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    const/16 v3, 0x200

    if-ge v2, v3, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'privateKey\' must be at least 512 bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v1}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Ljava/math/BigInteger;)I

    move-result v3

    new-instance v4, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const-string v5, "RSA"

    sget-object v6, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v4, v5, v3, p3, v6}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v4}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    and-int v3, p4, v7

    if-eq v3, p4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'protocolVersion\' must be a 16 bit value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-static {p5}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom(Ljava/security/SecureRandom;)Ljava/security/SecureRandom;

    move-result-object v3

    new-array v4, v8, [B

    invoke-virtual {v3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    :try_start_0
    invoke-static {v1, p0, p1, p2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->convertInput(Ljava/math/BigInteger;[BII)Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {p3, v1, v3}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->rsaBlinded(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;Ljava/security/SecureRandom;)[B

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x8

    array-length v3, v1

    add-int/lit8 v3, v3, -0x30

    const/16 v5, 0x30

    invoke-static {v1, v2, v5}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->checkPkcs1Encoding2([BII)I

    move-result v2

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToShort([BI)S

    move-result v5

    xor-int/2addr v5, p4

    and-int/2addr v5, v7

    neg-int v5, v5

    shr-int/lit8 v5, v5, 0x1f

    or-int/2addr v2, v5

    :goto_0
    if-ge v0, v8, :cond_5

    aget-byte v5, v4, v0

    and-int/2addr v5, v2

    add-int v6, v3, v0

    aget-byte v6, v1, v6

    xor-int/lit8 v7, v2, -0x1

    and-int/2addr v6, v7

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-object v4

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static getInputLimit(Lorg/bouncycastle/crypto/params/RSAKeyParameters;)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method private static rsa(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method private static rsaBlinded(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;Ljava/security/SecureRandom;)[B
    .locals 6

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v0, 0x1

    instance-of v0, p0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    if-eqz v3, :cond_0

    sget-object v4, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    sget-object v5, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    invoke-static {v4, v5, p2}, Lorg/bouncycastle/util/BigIntegers;->createRandomInRange(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/security/SecureRandom;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v1, v4}, Lorg/bouncycastle/util/BigIntegers;->modOddInverse(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, p1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->rsaCrt(Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v3, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v3}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object v4

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object v1

    invoke-static {v3, v2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    invoke-static {v2, v4, v0}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->subFrom(I[B[B)I

    move-result v3

    invoke-static {v2, v3, v1, v0}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->caddTo(II[B[B)I

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->rsa(Lorg/bouncycastle/crypto/params/RSAKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/crypto/tls/TlsRsaKeyExchange;->toBytes(Ljava/math/BigInteger;I)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static rsaCrt(Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 7

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getP()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQ()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDP()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getDQ()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getQInv()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v3, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->remainder(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/params/RSAPrivateCrtKeyParameters;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RSA engine faulty decryption/signing detected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v1
.end method

.method private static subFrom(I[B[B)I
    .locals 4

    const/4 v1, 0x0

    add-int/lit8 v0, p0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    aget-byte v2, p2, v0

    and-int/lit16 v2, v2, 0xff

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    sub-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-byte v2, v1

    aput-byte v2, p2, v0

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private static toBytes(Ljava/math/BigInteger;I)[B
    .locals 5

    invoke-virtual {p0}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    new-array v1, p1, [B

    const/4 v2, 0x0

    array-length v3, v1

    array-length v4, v0

    sub-int/2addr v3, v4

    array-length v4, v0

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method
