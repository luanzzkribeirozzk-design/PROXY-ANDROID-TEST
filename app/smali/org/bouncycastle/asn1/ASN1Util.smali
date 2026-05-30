.class public abstract Lorg/bouncycastle/asn1/ASN1Util;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkContextTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method static checkContextTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method static checkContextTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method static checkContextTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method static checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 5

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " tag but found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object p0
.end method

.method static checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 5

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " tag but found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object p0
.end method

.method static checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 5

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTagClass(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " tag but found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object p0
.end method

.method static checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 5

    invoke-interface {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTagClass(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " tag but found "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return-object p0
.end method

.method public static getBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static getContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->getBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->getExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->getExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;III)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->getImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static getTagClassText(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "UNIVERSAL"

    :goto_0
    return-object v0

    :sswitch_0
    const-string v0, "APPLICATION"

    goto :goto_0

    :sswitch_1
    const-string v0, "CONTEXT"

    goto :goto_0

    :sswitch_2
    const-string v0, "PRIVATE"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch
.end method

.method static getTagClassText(Lorg/bouncycastle/asn1/ASN1Tag;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Tag;->getTagClass()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagClassText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagClassText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagClass()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/asn1/ASN1Util;->getTagClassText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagText(II)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNIVERSAL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[APPLICATION "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[CONTEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[PRIVATE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0xc0 -> :sswitch_2
    .end sparse-switch
.end method

.method static getTagText(Lorg/bouncycastle/asn1/ASN1Tag;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Tag;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1Tag;->getTagNumber()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagClass()I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getTagNo()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTagText(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagClass()I

    move-result v0

    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->getTagNo()I

    move-result v1

    invoke-static {v0, v1}, Lorg/bouncycastle/asn1/ASN1Util;->getTagText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static parseContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->parseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->checkTagClass(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->parseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1Util;->checkTag(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static parseImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->parseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryGetContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IZI)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIZI)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTagClass(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryGetExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1Object;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;I)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static tryGetImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObject;->getImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryGetImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;III)Lorg/bouncycastle/asn1/ASN1TaggedObject;
    .locals 1

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryGetImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObject;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObject;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseBaseUniversal(ZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryParseContextBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IZI)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseBaseUniversal(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIZI)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTagClass(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseExplicitBaseTagged()Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryParseExplicitContextBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseObject(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseExplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;I)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseExplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method

.method public static tryParseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0, p1, p2}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->hasTag(II)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0, p3, p4}, Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;->parseImplicitBaseTagged(II)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    goto :goto_0
.end method

.method public static tryParseImplicitContextBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;III)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x80

    invoke-static {p0, v0, p1, p2, p3}, Lorg/bouncycastle/asn1/ASN1Util;->tryParseImplicitBaseTagged(Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;IIII)Lorg/bouncycastle/asn1/ASN1TaggedObjectParser;

    move-result-object v0

    return-object v0
.end method
