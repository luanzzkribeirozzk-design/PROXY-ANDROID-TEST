.class Lorg/bouncycastle/crypto/hpke/HKDF;
.super Ljava/lang/Object;


# static fields
.field private static final versionLabel:Ljava/lang/String; = "HPKE-v1"


# instance fields
.field private final hashLength:I

.field private final kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;


# direct methods
.method constructor <init>(S)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid kdf id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    :goto_0
    new-instance v1, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    return-void

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected Expand([B[BI)[B
    .locals 4

    const/high16 v0, 0x10000

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expand length cannot be larger than 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    new-array v0, p3, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    return-object v0
.end method

.method protected Extract([B[B)[B
    .locals 1

    if-nez p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    new-array p1, v0, [B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->extractPRK([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method protected LabeledExpand([B[BLjava/lang/String;[BI)[B
    .locals 4

    const/high16 v0, 0x10000

    if-le p5, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expand length cannot be larger than 2^16"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    int-to-short v0, p5

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v0

    const-string v1, "HPKE-v1"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, p2, v2}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-static {v0, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/params/HKDFParameters;->skipExtractParameters([B[B)Lorg/bouncycastle/crypto/params/HKDFParameters;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    new-array v0, p5, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->generateBytes([BII)I

    return-object v0
.end method

.method protected LabeledExtract([B[BLjava/lang/String;[B)[B
    .locals 2

    if-nez p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    new-array p1, v0, [B

    :cond_0
    const-string v0, "HPKE-v1"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v0, p2, v1, p4}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->kdf:Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;

    invoke-virtual {v1, p1, v0}, Lorg/bouncycastle/crypto/generators/HKDFBytesGenerator;->extractPRK([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method getHashSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/hpke/HKDF;->hashLength:I

    return v0
.end method
