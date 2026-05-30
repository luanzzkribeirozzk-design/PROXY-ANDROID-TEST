.class Lorg/bouncycastle/asn1/ASN1ObjectDescriptor$1;
.super Lorg/bouncycastle/asn1/ASN1UniversalType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1UniversalType;-><init>(Ljava/lang/Class;I)V

    return-void
.end method


# virtual methods
.method fromImplicitConstructed(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    sget-object v0, Lorg/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromImplicitConstructed(Lorg/bouncycastle/asn1/ASN1Sequence;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1GraphicString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1GraphicString;)V

    return-object v1
.end method

.method fromImplicitPrimitive(Lorg/bouncycastle/asn1/DEROctetString;)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 2

    new-instance v1, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;

    sget-object v0, Lorg/bouncycastle/asn1/ASN1GraphicString;->TYPE:Lorg/bouncycastle/asn1/ASN1UniversalType;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/asn1/ASN1UniversalType;->fromImplicitPrimitive(Lorg/bouncycastle/asn1/DEROctetString;)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1GraphicString;

    invoke-direct {v1, v0}, Lorg/bouncycastle/asn1/ASN1ObjectDescriptor;-><init>(Lorg/bouncycastle/asn1/ASN1GraphicString;)V

    return-object v1
.end method
