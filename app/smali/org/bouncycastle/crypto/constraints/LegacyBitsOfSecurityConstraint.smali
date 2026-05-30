.class public Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;
.super Lorg/bouncycastle/crypto/constraints/ServicesConstraint;


# instance fields
.field private final legacyRequiredBitsOfSecurity:I

.field private final requiredBitsOfSecurity:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;-><init>(Ljava/util/Set;)V

    iput p1, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    iput p2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    return-void
.end method

.method public constructor <init>(IILjava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/constraints/ServicesConstraint;-><init>(Ljava/util/Set;)V

    iput p1, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    iput p2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    return-void
.end method

.method public constructor <init>(ILjava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;-><init>(IILjava/util/Set;)V

    return-void
.end method


# virtual methods
.method public check(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V
    .locals 3

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->isException(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getPurpose()Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint$1;->$SwitchMap$org$bouncycastle$crypto$CryptoServicePurpose:[I

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    if-ge v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service does not provide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->requiredBitsOfSecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits of security only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    if-ge v1, v2, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "service does not provide "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->legacyRequiredBitsOfSecurity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bits of security only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->bitsOfSecurity()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/CryptoServiceConstraintsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sget-object v1, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    if-eq v0, v1, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->LOG:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/constraints/LegacyBitsOfSecurityConstraint;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "usage of legacy cryptography service for algorithm "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/bouncycastle/crypto/CryptoServiceProperties;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
