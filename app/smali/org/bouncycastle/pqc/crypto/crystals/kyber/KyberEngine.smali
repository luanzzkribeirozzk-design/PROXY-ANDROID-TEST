.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;
.super Ljava/lang/Object;


# static fields
.field private static final KyberEta2:I = 0x2

.field private static final KyberIndCpaMsgBytes:I = 0x20

.field public static final KyberN:I = 0x100

.field public static final KyberPolyBytes:I = 0x180

.field public static final KyberQ:I = 0xd01

.field public static final KyberQinv:I = 0xf301

.field private static final KyberSharedSecretBytes:I = 0x20

.field public static final KyberSymBytes:I = 0x20


# instance fields
.field private final CryptoBytes:I

.field private final CryptoCipherTextBytes:I

.field private final CryptoPublicKeyBytes:I

.field private final CryptoSecretKeyBytes:I

.field private final KyberCipherTextBytes:I

.field private final KyberEta1:I

.field private final KyberIndCpaBytes:I

.field private final KyberIndCpaPublicKeyBytes:I

.field private final KyberIndCpaSecretKeyBytes:I

.field private final KyberK:I

.field private final KyberPolyCompressedBytes:I

.field private final KyberPolyVecBytes:I

.field private final KyberPolyVecCompressedBytes:I

.field private final KyberPublicKeyBytes:I

.field private final KyberSecretKeyBytes:I

.field private indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

.field private random:Ljava/security/SecureRandom;

.field private final sessionKeyLength:I

.field private final symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;


# direct methods
.method public constructor <init>(IZ)V
    .locals 3

    const/16 v1, 0x80

    const/4 v0, 0x2

    const/16 v2, 0x20

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberK:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "K: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not supported for Crystals Kyber"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/4 v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    mul-int/lit16 v0, p1, 0x140

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    :goto_0
    mul-int/lit16 v0, p1, 0x180

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoSecretKeyBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoPublicKeyBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoCipherTextBytes:I

    if-eqz p2, :cond_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$AesSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    :goto_1
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    return-void

    :pswitch_1
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    mul-int/lit16 v0, p1, 0x140

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    goto :goto_0

    :pswitch_2
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    const/16 v0, 0xa0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    mul-int/lit16 v0, p1, 0x160

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric$ShakeSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private cmov([B[BIZ)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-static {p2, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static getKyberEta2()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public static getKyberIndCpaMsgBytes()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method


# virtual methods
.method public generateKemKeyPair()[[B
    .locals 8

    const/16 v5, 0x20

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->generateKeyPair()[[B

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    new-array v1, v1, [B

    aget-object v2, v0, v7

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    invoke-static {v2, v6, v1, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v2, v5, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    aget-object v4, v0, v6

    invoke-virtual {v3, v2, v4, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    new-array v3, v5, [B

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v4, v3}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    new-array v4, v4, [B

    aget-object v0, v0, v6

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    invoke-static {v0, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x5

    new-array v0, v0, [[B

    array-length v5, v4

    add-int/lit8 v5, v5, -0x20

    invoke-static {v4, v6, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    aput-object v5, v0, v6

    array-length v5, v4

    add-int/lit8 v5, v5, -0x20

    array-length v6, v4

    invoke-static {v4, v5, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    aput-object v4, v0, v7

    const/4 v4, 0x2

    aput-object v1, v0, v4

    const/4 v1, 0x3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    aput-object v3, v0, v1

    return-object v0
.end method

.method public getCryptoBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoBytes:I

    return v0
.end method

.method public getCryptoCipherTextBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoCipherTextBytes:I

    return v0
.end method

.method public getCryptoPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoPublicKeyBytes:I

    return v0
.end method

.method public getCryptoSecretKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->CryptoSecretKeyBytes:I

    return v0
.end method

.method public getKyberCipherTextBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberCipherTextBytes:I

    return v0
.end method

.method public getKyberEta1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberEta1:I

    return v0
.end method

.method public getKyberIndCpaBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaBytes:I

    return v0
.end method

.method public getKyberIndCpaPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    return v0
.end method

.method public getKyberIndCpaSecretKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    return v0
.end method

.method public getKyberK()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberK:I

    return v0
.end method

.method public getKyberPolyCompressedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyCompressedBytes:I

    return v0
.end method

.method public getKyberPolyVecBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecBytes:I

    return v0
.end method

.method public getKyberPolyVecCompressedBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPolyVecCompressedBytes:I

    return v0
.end method

.method public getKyberPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberPublicKeyBytes:I

    return v0
.end method

.method public getKyberSecretKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    return v0
.end method

.method public getRandomBytes([B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v0, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-void
.end method

.method public getSymmetric()Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public kemDecrypt([B[B)[B
    .locals 7

    const/16 v2, 0x40

    const/4 v1, 0x0

    const/16 v6, 0x20

    new-array v0, v2, [B

    new-array v2, v2, [B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaSecretKeyBytes:I

    array-length v4, p2

    invoke-static {p2, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v4, p1, p2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->decrypt([B[B)[B

    move-result-object v4

    invoke-static {v4, v1, v0, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    add-int/lit8 v4, v4, -0x40

    invoke-static {p2, v4, v0, v6, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v4, v2, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_g([B[B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-static {v0, v1, v6}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v5, v2

    invoke-static {v2, v6, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->encrypt([B[B[B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v3, v2, p1, v6}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    add-int/lit8 v3, v3, -0x20

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberSecretKeyBytes:I

    invoke-static {p2, v3, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {p0, v2, v3, v6, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->cmov([B[BIZ)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    invoke-static {v2, v1, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public kemEncrypt([B)[[B
    .locals 6

    const/16 v3, 0x40

    const/16 v5, 0x20

    const/4 v4, 0x0

    array-length v0, p1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->KyberIndCpaPublicKeyBytes:I

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input validation Error: Type check failed for ml-kem encapsulation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->unpackPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->packPublicKey(Lorg/bouncycastle/pqc/crypto/crystals/kyber/PolyVec;[B)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input validation: Modulus check failed for ml-kem encapsulation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-array v0, v3, [B

    new-array v1, v3, [B

    new-array v2, v5, [B

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->random:Ljava/security/SecureRandom;

    invoke-virtual {v3, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v2, v4, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v2, v0, p1, v5}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_h([B[BI)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->symmetric:Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;

    invoke-virtual {v2, v1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Symmetric;->hash_g([B[B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->indCpa:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;

    invoke-static {v0, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    array-length v3, v1

    invoke-static {v1, v5, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-virtual {v2, v0, p1, v3}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberIndCpa;->encrypt([B[B[B)[B

    move-result-object v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberEngine;->sessionKeyLength:I

    new-array v2, v2, [B

    array-length v3, v2

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x2

    new-array v1, v1, [[B

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object v0, v1, v2

    return-object v1
.end method
