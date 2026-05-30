.class public Lorg/bouncycastle/asn1/cmp/NestedMessageContent;
.super Lorg/bouncycastle/asn1/cmp/PKIMessages;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;-><init>(Lorg/bouncycastle/asn1/cmp/PKIMessage;)V

    return-void
.end method

.method public constructor <init>([Lorg/bouncycastle/asn1/cmp/PKIMessage;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/asn1/cmp/PKIMessages;-><init>([Lorg/bouncycastle/asn1/cmp/PKIMessage;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/cmp/NestedMessageContent;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/asn1/cmp/NestedMessageContent;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/asn1/cmp/NestedMessageContent;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/cmp/NestedMessageContent;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/cmp/NestedMessageContent;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method
