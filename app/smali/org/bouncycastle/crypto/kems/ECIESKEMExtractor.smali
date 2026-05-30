.class public Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private CofactorMode:Z

.field private OldCofactorMode:Z

.field private SingleHashMode:Z

.field private final decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private kdf:Lorg/bouncycastle/crypto/DerivationFunction;

.field private keyLen:I


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->keyLen:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->SingleHashMode:Z

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;ILorg/bouncycastle/crypto/DerivationFunction;ZZZ)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    iput p2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->keyLen:I

    iput-object p3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iput-boolean p4, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    if-eqz p4, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    :goto_0
    iput-boolean p6, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->SingleHashMode:Z

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    const-string v1, "ECIESKem"

    iget-object v2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/constraints/ConstraintUtils;->bitsOfSecurityFor(Lorg/bouncycastle/math/ec/ECCurve;)I

    move-result v2

    sget-object v3, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {v0, v1, v2, p1, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void

    :cond_0
    iput-boolean p5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    goto :goto_0
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 6

    iget-object v1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getN()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getH()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v0, p1}, Lorg/bouncycastle/math/ec/ECCurve;->decodePoint([B)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->OldCofactorMode:Z

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual {v0, v4}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getD()Ljava/math/BigInteger;

    move-result-object v1

    iget-boolean v4, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->CofactorMode:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getHInv()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    :cond_2
    invoke-virtual {v0, v1}, Lorg/bouncycastle/math/ec/ECPoint;->multiply(Ljava/math/BigInteger;)Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->normalize()Lorg/bouncycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECPoint;->getAffineXCoord()Lorg/bouncycastle/math/ec/ECFieldElement;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECFieldElement;->getEncoded()[B

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->SingleHashMode:Z

    iget-object v2, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->kdf:Lorg/bouncycastle/crypto/DerivationFunction;

    iget v3, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->keyLen:I

    invoke-static {v1, v2, v3, p1, v0}, Lorg/bouncycastle/crypto/kems/ECIESKEMGenerator;->deriveKey(ZLorg/bouncycastle/crypto/DerivationFunction;I[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/kems/ECIESKEMExtractor;->decKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECDomainParameters;->getCurve()Lorg/bouncycastle/math/ec/ECCurve;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/math/ec/ECCurve;->getFieldSize()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
