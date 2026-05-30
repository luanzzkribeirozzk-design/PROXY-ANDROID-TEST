.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/EncapsulatedSecretExtractor;


# instance fields
.field private engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

.field private key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->initCipher(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    return-void
.end method

.method private initCipher(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getEngine()Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    return-void
.end method


# virtual methods
.method public extractSecret([B)[B
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->getSessionKeySize()I

    move-result v0

    new-array v1, v0, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->key:Lorg/bouncycastle/pqc/crypto/frodo/FrodoKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoPrivateKeyParameters;->getPrivateKey()[B

    move-result-object v0

    invoke-virtual {v2, v1, p1, v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->kem_dec([B[B[B)V

    return-object v1
.end method

.method public getEncapsulationLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoKEMExtractor;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;->getCipherTextSize()I

    move-result v0

    return v0
.end method
