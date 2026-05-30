.class public abstract Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/cms/RecipientInfoGenerator;


# instance fields
.field private issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

.field private subjectKeyIdentifier:[B

.field protected final wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;


# direct methods
.method protected constructor <init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;Lorg/bouncycastle/cms/KEMKeyWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    iput-object p2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    return-void
.end method

.method protected constructor <init>([BLorg/bouncycastle/cms/KEMKeyWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->subjectKeyIdentifier:[B

    iput-object p2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    return-void
.end method


# virtual methods
.method public final generate(Lorg/bouncycastle/operator/GenericKey;)Lorg/bouncycastle/asn1/cms/RecipientInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cms/CMSException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/cms/KEMKeyWrapper;->generateWrappedKey(Lorg/bouncycastle/operator/GenericKey;)[B
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    iget-object v0, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    if-eqz v0, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    iget-object v0, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->issuerAndSerial:Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/cms/IssuerAndSerialNumber;)V

    :goto_0
    new-instance v10, Lorg/bouncycastle/asn1/cms/RecipientInfo;

    new-instance v11, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;

    sget-object v12, Lorg/bouncycastle/asn1/cms/CMSObjectIdentifiers;->id_ori_kem:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;

    iget-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v2}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v2

    new-instance v3, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v4, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v4}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getEncapsulation()[B

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    iget-object v4, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v4}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getKdfAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/asn1/ASN1Integer;

    iget-object v6, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v6}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getKekLength()I

    move-result v6

    int-to-long v6, v6

    invoke-direct {v5, v6, v7}, Lorg/bouncycastle/asn1/ASN1Integer;-><init>(J)V

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->wrapper:Lorg/bouncycastle/cms/KEMKeyWrapper;

    invoke-virtual {v7}, Lorg/bouncycastle/cms/KEMKeyWrapper;->getWrapAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v7

    new-instance v8, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v8, v9}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/asn1/cms/KEMRecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/RecipientIdentifier;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1OctetString;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    invoke-direct {v11, v12, v0}, Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-direct {v10, v11}, Lorg/bouncycastle/asn1/cms/RecipientInfo;-><init>(Lorg/bouncycastle/asn1/cms/OtherRecipientInfo;)V

    return-object v10

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/cms/CMSException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception wrapping content key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/cms/CMSException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;

    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    iget-object v2, p0, Lorg/bouncycastle/cms/KEMRecipientInfoGenerator;->subjectKeyIdentifier:[B

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/cms/RecipientIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1OctetString;)V

    goto :goto_0
.end method
