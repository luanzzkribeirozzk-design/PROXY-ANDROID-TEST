.class public Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/StateAwareMessageSigner;


# instance fields
.field private final gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

.field private key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/Digest;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    instance-of v0, p1, Lorg/bouncycastle/util/Memoable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "digest must implement Memoable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/bouncycastle/util/Memoable;

    invoke-interface {p1}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    new-instance v2, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;

    invoke-direct {v2, p0, v0}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner$1;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;Lorg/bouncycastle/util/Memoable;)V

    invoke-direct {v1, v2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;-><init>(Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSDigestProvider;)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    return-void
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "signing key no longer usable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->generateSignature([B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;->nextKey()Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    return-object v0
.end method

.method public getUpdatedPrivateKey()Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    return-void

    :cond_1
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->key:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSPrivateKeyParameters;

    goto :goto_0
.end method

.method public verifySignature([B[B)Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSStateAwareSigner;->gmssSigner:Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/pqc/legacy/crypto/gmss/GMSSSigner;->verifySignature([B[B)Z

    move-result v0

    return v0
.end method
