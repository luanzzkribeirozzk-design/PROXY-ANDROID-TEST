.class public Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;
.super Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/jcajce/provider/Rainbow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Mappings"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/jcajce/provider/util/AsymmetricAlgorithmProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public configure(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;)V
    .locals 3

    const-string v0, "KeyFactory.RAINBOW"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyFactorySpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "KeyPairGenerator.RAINBOW"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi"

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;->addAlgorithm(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "RAINBOW-III-CLASSIC"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowIIIclassic"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_classic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-III-CIRCUMZENITHAL"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowIIIcircum"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_circumzenithal:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-III-COMPRESSED"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowIIIcomp"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_compressed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-V-CLASSIC"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowVclassic"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_classic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-V-CIRCUMZENITHAL"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowVcircum"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_circumzenithal:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-V-COMPRESSED"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.RainbowKeyPairGeneratorSpi$RainbowVcomp"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_compressed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addKeyPairGeneratorAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$Base"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-III-CLASSIC"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowIIIclassic"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_classic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-III-CIRCUMZENITHAL"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowIIIcircum"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_circumzenithal:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-III-COMPRESSED"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowIIIcomp"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_compressed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-V-CLASSIC"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowVclassic"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_classic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-V-CIRCUMZENITHAL"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowVcircum"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_circumzenithal:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    const-string v0, "RAINBOW-v-COMPRESSED"

    const-string v1, "org.bouncycastle.pqc.jcajce.provider.rainbow.SignatureSpi$RainbowVcomp"

    sget-object v2, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_compressed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {p0, p1, v0, v1, v2}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->addSignatureAlgorithm(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Ljava/lang/String;Ljava/lang/String;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/jcajce/provider/rainbow/RainbowKeyFactorySpi;-><init>()V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_classic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RAINBOW"

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->registerKeyFactoryOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_circumzenithal:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RAINBOW"

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->registerKeyFactoryOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_III_compressed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RAINBOW"

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->registerKeyFactoryOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_classic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RAINBOW"

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->registerKeyFactoryOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_circumzenithal:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RAINBOW"

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->registerKeyFactoryOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    sget-object v1, Lorg/bouncycastle/asn1/bc/BCObjectIdentifiers;->rainbow_V_compressed:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "RAINBOW"

    invoke-virtual {p0, p1, v1, v2, v0}, Lorg/bouncycastle/pqc/jcajce/provider/Rainbow$Mappings;->registerKeyFactoryOid(Lorg/bouncycastle/jcajce/provider/config/ConfigurableProvider;Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Ljava/lang/String;Lorg/bouncycastle/jcajce/provider/util/AsymmetricKeyInfoConverter;)V

    return-void
.end method
