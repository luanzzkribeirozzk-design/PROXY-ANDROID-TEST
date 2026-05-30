.class public Lorg/bouncycastle/cert/crmf/CertificateReqMessages;
.super Ljava/lang/Object;


# instance fields
.field private final reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/crmf/CertReqMessages;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->toCertReqMsgArray()[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    return-void
.end method

.method public static fromPKIBody(Lorg/bouncycastle/asn1/cmp/PKIBody;)Lorg/bouncycastle/cert/crmf/CertificateReqMessages;
    .locals 3

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->isCertificateRequestMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content of PKIBody wrong type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/cmp/PKIBody;->getContent()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v1

    invoke-static {v1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMessages;)V

    return-object v0
.end method

.method public static isCertificateRequestMessages(I)Z
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_0
        0x7 -> :sswitch_0
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getRequests()[Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    array-length v0, v0

    new-array v1, v0, [Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;

    iget-object v3, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lorg/bouncycastle/cert/crmf/CertificateRequestMessage;-><init>(Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public toASN1Structure()Lorg/bouncycastle/asn1/crmf/CertReqMessages;
    .locals 2

    new-instance v0, Lorg/bouncycastle/asn1/crmf/CertReqMessages;

    iget-object v1, p0, Lorg/bouncycastle/cert/crmf/CertificateReqMessages;->reqs:[Lorg/bouncycastle/asn1/crmf/CertReqMsg;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/crmf/CertReqMessages;-><init>([Lorg/bouncycastle/asn1/crmf/CertReqMsg;)V

    return-object v0
.end method
