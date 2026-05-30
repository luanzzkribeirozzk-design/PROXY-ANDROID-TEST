.class public Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# instance fields
.field private privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

.field private publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

.field private secureRandom:Ljava/security/SecureRandom;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->getSignatureSize(I)I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    array-length v3, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->generateSignature([B[BII[BLjava/security/SecureRandom;)I

    :goto_0
    return-object v0

    :pswitch_1
    array-length v3, p1

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecret()[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->generateSignature([B[BII[BLjava/security/SecureRandom;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    :goto_0
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->validate(I)V

    :goto_1
    return-void

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->secureRandom:Ljava/security/SecureRandom;

    check-cast p2, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->privateKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPrivateKeyParameters;

    check-cast p2, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASecurityCategory;->validate(I)V

    goto :goto_1
.end method

.method public verifySignature([B[B)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown security category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getSecurityCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    array-length v1, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla1p;->verifying([B[BII[B)I

    move-result v1

    :goto_0
    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :pswitch_1
    array-length v1, p2

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLASigner;->publicKey:Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTESLAPublicKeyParameters;->getPublicData()[B

    move-result-object v2

    invoke-static {p1, p2, v0, v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/qtesla/QTesla3p;->verifying([B[BII[B)I

    move-result v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
