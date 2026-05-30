.class public Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;


# instance fields
.field private final kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

.field private final xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;


# direct methods
.method constructor <init>(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;-><init>(Z)V

    check-cast p1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    check-cast p2, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/bouncycastle/pqc/crypto/xwing/XWingKeyParameters;-><init>(Z)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;->kyber768:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;

    array-length v2, p1

    add-int/lit8 v2, v2, -0x20

    invoke-static {p1, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;-><init>(Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberParameters;[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    new-instance v0, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    array-length v1, p1

    add-int/lit8 v1, v1, -0x20

    invoke-direct {v0, p1, v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;-><init>([BI)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;->getEncoded()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;->getEncoded()[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method getKyberPublicKey()Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->kybPub:Lorg/bouncycastle/pqc/crypto/crystals/kyber/KyberPublicKeyParameters;

    return-object v0
.end method

.method getXDHPublicKey()Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/xwing/XWingPublicKeyParameters;->xdhPub:Lorg/bouncycastle/crypto/params/X25519PublicKeyParameters;

    return-object v0
.end method
