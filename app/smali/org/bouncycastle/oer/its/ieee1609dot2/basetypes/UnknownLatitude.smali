.class public Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;
.super Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;


# static fields
.field public static INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;-><init>()V

    sput-object v0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;->INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-wide/32 v0, 0x35a4e901

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/Latitude;-><init>(J)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;
    .locals 4

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Integer;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Integer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    const v2, 0x35a4e901

    if-eq v1, v2, :cond_1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1Integer;->getValue()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " is not unknown value of 900000001"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    sget-object p0, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;->INSTANCE:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/UnknownLatitude;

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    goto :goto_0
.end method
