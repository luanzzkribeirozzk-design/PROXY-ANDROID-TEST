.class public Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;
.super Lorg/bouncycastle/asn1/ASN1Object;


# instance fields
.field private final certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

.field private privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

.field private publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 4

    const/4 v3, 0x1

    const/16 v2, 0x80

    const/4 v1, 0x2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/cmp/CertOrEncCert;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v3}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-virtual {p1, v1}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;)V
    .locals 2

    const/4 v1, 0x0

    move-object v0, v1

    check-cast v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;-><init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;Lorg/bouncycastle/asn1/crmf/EncryptedKey;Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;Lorg/bouncycastle/asn1/crmf/EncryptedKey;Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certOrEncCert\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    iput-object p2, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/CertOrEncCert;Lorg/bouncycastle/asn1/crmf/EncryptedValue;Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'certOrEncCert\' cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    if-eqz p2, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {v0, p2}, Lorg/bouncycastle/asn1/crmf/EncryptedKey;-><init>(Lorg/bouncycastle/asn1/crmf/EncryptedValue;)V

    :goto_0
    iput-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    iput-object p3, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCertOrEncCert()Lorg/bouncycastle/asn1/cmp/CertOrEncCert;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    return-object v0
.end method

.method public getPrivateKey()Lorg/bouncycastle/asn1/crmf/EncryptedKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    return-object v0
.end method

.method public getPublicationInfo()Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Lorg/bouncycastle/asn1/ASN1EncodableVector;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;-><init>(I)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->certOrEncCert:Lorg/bouncycastle/asn1/cmp/CertOrEncCert;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    if-eqz v1, :cond_0

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->privateKey:Lorg/bouncycastle/asn1/crmf/EncryptedKey;

    invoke-direct {v1, v4, v2, v3}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    if-eqz v1, :cond_1

    new-instance v1, Lorg/bouncycastle/asn1/DERTaggedObject;

    iget-object v2, p0, Lorg/bouncycastle/asn1/cmp/CertifiedKeyPair;->publicationInfo:Lorg/bouncycastle/asn1/crmf/PKIPublicationInfo;

    invoke-direct {v1, v4, v4, v2}, Lorg/bouncycastle/asn1/DERTaggedObject;-><init>(ZILorg/bouncycastle/asn1/ASN1Encodable;)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1EncodableVector;->add(Lorg/bouncycastle/asn1/ASN1Encodable;)V

    :cond_1
    new-instance v1, Lorg/bouncycastle/asn1/DERSequence;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/DERSequence;-><init>(Lorg/bouncycastle/asn1/ASN1EncodableVector;)V

    return-object v1
.end method
