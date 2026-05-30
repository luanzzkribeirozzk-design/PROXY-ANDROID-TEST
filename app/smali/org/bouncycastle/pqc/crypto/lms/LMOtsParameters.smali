.class public Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
.super Ljava/lang/Object;


# static fields
.field public static final reserved:I

.field public static final sha256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field public static final shake256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

.field private static final suppliers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final ls:I

.field private final n:I

.field private final p:I

.field private final sigLen:I

.field private final type:I

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/4 v1, 0x1

    const/16 v13, 0x8

    const/16 v2, 0x20

    const/16 v12, 0x18

    const/4 v11, 0x4

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v4, 0x109

    const/4 v5, 0x7

    const/16 v6, 0x2144

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x2

    const/4 v6, 0x2

    const/16 v7, 0x85

    const/4 v8, 0x6

    const/16 v9, 0x10c4

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v5, v2

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x3

    const/16 v7, 0x43

    const/16 v9, 0x884

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v5, v2

    move v6, v11

    move v8, v11

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v7, 0x22

    const/4 v8, 0x0

    const/16 v9, 0x464

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v4, v11

    move v5, v2

    move v6, v13

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x5

    const/16 v7, 0xc8

    const/16 v9, 0x153c

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v5, v12

    move v6, v1

    move v8, v13

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x6

    const/4 v6, 0x2

    const/16 v7, 0x65

    const/4 v8, 0x6

    const/16 v9, 0xb7c

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v5, v12

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/4 v4, 0x7

    const/16 v7, 0x33

    const/16 v9, 0x5dc

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v5, v12

    move v6, v11

    move v8, v11

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v7, 0x1a

    const/4 v8, 0x0

    const/16 v9, 0x3fc

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v4, v13

    move v5, v12

    move v6, v13

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sha256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v4, 0x9

    const/16 v7, 0x109

    const/4 v8, 0x7

    const/16 v9, 0x2144

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v5, v2

    move v6, v1

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v4, 0xa

    const/4 v6, 0x2

    const/16 v7, 0x85

    const/4 v8, 0x6

    const/16 v9, 0x10c4

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v5, v2

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v4, 0xb

    const/16 v7, 0x43

    const/16 v9, 0x884

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v5, v2

    move v6, v11

    move v8, v11

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v4, 0xc

    const/16 v7, 0x22

    const/4 v8, 0x0

    const/16 v9, 0x464

    sget-object v10, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v5, v2

    move v6, v13

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v3, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n32_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v3, 0xd

    const/16 v6, 0xc8

    const/16 v8, 0x153c

    sget-object v9, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v4, v12

    move v5, v1

    move v7, v13

    invoke-direct/range {v2 .. v9}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v2, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w1:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v1, 0xe

    const/4 v3, 0x2

    const/16 v4, 0x65

    const/4 v5, 0x6

    const/16 v6, 0xb7c

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v2, v12

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w2:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v1, 0xf

    const/16 v4, 0x33

    const/16 v6, 0x5dc

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v2, v12

    move v3, v11

    move v5, v11

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w4:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    const/16 v1, 0x10

    const/16 v4, 0x1a

    const/4 v5, 0x0

    const/16 v6, 0x3fc

    sget-object v7, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_shake256_len:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move v2, v12

    move v3, v13

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;-><init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->shake256_n24_w8:Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters$1;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->suppliers:Ljava/util/Map;

    return-void
.end method

.method protected constructor <init>(IIIIIILorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->w:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->p:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->ls:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sigLen:I

    iput-object p7, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    return v0
.end method

.method public static getParametersForType(I)Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;
    .locals 2

    sget-object v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->suppliers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;

    return-object v0
.end method


# virtual methods
.method public getDigestOID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->digestOID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getLs()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->ls:I

    return v0
.end method

.method public getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->n:I

    return v0
.end method

.method public getP()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->p:I

    return v0
.end method

.method public getSigLen()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->sigLen:I

    return v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->type:I

    return v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/LMOtsParameters;->w:I

    return v0
.end method
