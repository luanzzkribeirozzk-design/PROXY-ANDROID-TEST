.class Lorg/bouncycastle/crypto/engines/Utils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ENCRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->DECRYPTION:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    goto :goto_0
.end method
