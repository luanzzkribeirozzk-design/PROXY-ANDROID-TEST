.class public Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;
.super Lorg/bouncycastle/asn1/ASN1Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    }
.end annotation


# instance fields
.field private final chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

.field private final minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

.field private final subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/ASN1Sequence;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "expected sequence size of 4"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v0

    const-class v1, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/oer/OEROptional;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    iput-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/asn1/ASN1Integer;Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    iput-object p2, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    iput-object p4, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    return-void
.end method

.method public static builder()Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;
    .locals 1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;

    invoke-direct {v0}, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions$Builder;-><init>()V

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;

    :goto_0
    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;

    invoke-static {p0}, Lorg/bouncycastle/asn1/ASN1Sequence;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/ASN1Sequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getChainLengthRange()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getEeType()Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    return-object v0
.end method

.method public getMinChainLength()Lorg/bouncycastle/asn1/ASN1Integer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    return-object v0
.end method

.method public getSubjectPermissions()Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    return-object v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 4

    new-instance v0, Lorg/bouncycastle/asn1/DERSequence;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/bouncycastle/asn1/ASN1Encodable;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->subjectPermissions:Lorg/bouncycastle/oer/its/ieee1609dot2/SubjectPermissions;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->minChainLength:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v3}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->chainLengthRange:Lorg/bouncycastle/asn1/ASN1Integer;

    invoke-static {v3}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/bouncycastle/oer/its/ieee1609dot2/PsidGroupPermissions;->eeType:Lorg/bouncycastle/oer/its/ieee1609dot2/EndEntityType;

    invoke-static {v3}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/DERSequence;-><init>([Lorg/bouncycastle/asn1/ASN1Encodable;)V

    return-object v0
.end method
