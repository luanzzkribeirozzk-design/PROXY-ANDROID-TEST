.class public Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId8;-><init>([B)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;

    invoke-virtual {p0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/HashedId;->getHashBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;-><init>([B)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1OctetString;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1OctetString;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1OctetString;->getOctets()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PreSharedKeyRecipientInfo;-><init>([B)V

    move-object p0, v0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method
