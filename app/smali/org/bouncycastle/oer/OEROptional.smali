.class public Lorg/bouncycastle/oer/OEROptional;
.super Lorg/bouncycastle/asn1/ASN1Object;


# static fields
.field public static final ABSENT:Lorg/bouncycastle/oer/OEROptional;


# instance fields
.field private final defined:Z

.field private final value:Lorg/bouncycastle/asn1/ASN1Encodable;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/oer/OEROptional;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/oer/OEROptional;-><init>(ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    sput-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    return-void
.end method

.method private constructor <init>(ZLorg/bouncycastle/asn1/ASN1Encodable;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Object;-><init>()V

    iput-boolean p1, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    iput-object p2, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/oer/OEROptional;)Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    return-object v0
.end method

.method public static getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;
    .locals 2

    instance-of v0, p0, Lorg/bouncycastle/oer/OEROptional;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/bouncycastle/oer/OEROptional;

    :goto_0
    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/oer/OEROptional;

    const/4 v1, 0x1

    check-cast p0, Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-direct {v0, v1, p0}, Lorg/bouncycastle/oer/OEROptional;-><init>(ZLorg/bouncycastle/asn1/ASN1Encodable;)V

    move-object p0, v0

    goto :goto_0

    :cond_1
    sget-object p0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    goto :goto_0
.end method

.method public static getValue(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-static {p1}, Lorg/bouncycastle/oer/OEROptional;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/oer/OEROptional;

    move-result-object v0

    iget-boolean v1, v0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p0}, Lorg/bouncycastle/oer/OEROptional;->getObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    invoke-super {p0, p1}, Lorg/bouncycastle/asn1/ASN1Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    check-cast p1, Lorg/bouncycastle/oer/OEROptional;

    iget-boolean v2, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    iget-boolean v3, p1, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    iget-object v1, p1, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_2
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_1
.end method

.method public get()Lorg/bouncycastle/asn1/ASN1Encodable;
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/oer/OEROptional;->ABSENT:Lorg/bouncycastle/oer/OEROptional;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    goto :goto_0
.end method

.method public getObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/bouncycastle/oer/OEROptional$1;

    invoke-direct {v0, p0, p1}, Lorg/bouncycastle/oer/OEROptional$1;-><init>(Lorg/bouncycastle/oer/OEROptional;Ljava/lang/Class;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    invoke-super {p0}, Lorg/bouncycastle/asn1/ASN1Object;->hashCode()I

    move-result v0

    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public isDefined()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    return v0
.end method

.method public toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-nez v0, :cond_0

    sget-object v0, Lorg/bouncycastle/asn1/ASN1Absent;->INSTANCE:Lorg/bouncycastle/asn1/ASN1Absent;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/oer/OEROptional;->get()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    invoke-interface {v0}, Lorg/bouncycastle/asn1/ASN1Encodable;->toASN1Primitive()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/oer/OEROptional;->defined:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPTIONAL("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/oer/OEROptional;->value:Lorg/bouncycastle/asn1/ASN1Encodable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "ABSENT"

    goto :goto_0
.end method
