.class public final Lorg/conscrypt/CertificatePriorityComparator;
.super Ljava/lang/Object;
.source "CertificatePriorityComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/security/cert/X509Certificate;",
        ">;"
    }
.end annotation


# static fields
.field private static final ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_MD5:Ljava/lang/Integer;

.field private static final PRIORITY_SHA1:Ljava/lang/Integer;

.field private static final PRIORITY_SHA224:Ljava/lang/Integer;

.field private static final PRIORITY_SHA256:Ljava/lang/Integer;

.field private static final PRIORITY_SHA384:Ljava/lang/Integer;

.field private static final PRIORITY_SHA512:Ljava/lang/Integer;

.field private static final PRIORITY_UNKNOWN:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_MD5:Ljava/lang/Integer;

    .line 54
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    .line 55
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    .line 56
    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    .line 57
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    .line 58
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    .line 59
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    .line 63
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.13"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.12"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.11"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.14"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.5"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.113549.1.1.4"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_MD5:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.4"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA512:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.3"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA384:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.2"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.3.1"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA224:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    const-string v1, "1.2.840.10045.4.1"

    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_SHA1:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private compareKeyAlgorithm(Ljava/security/PublicKey;Ljava/security/PublicKey;)I
    .locals 3
    .param p1, "lhs"    # Ljava/security/PublicKey;
    .param p2, "rhs"    # Ljava/security/PublicKey;

    .prologue
    .line 120
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "lhsAlgorithm":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "rhsAlgorithm":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 124
    const/4 v2, 0x0

    .line 131
    :goto_0
    return v2

    .line 128
    :cond_0
    const-string v2, "EC"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const/4 v2, 0x1

    goto :goto_0

    .line 131
    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private compareKeySize(Ljava/security/PublicKey;Ljava/security/PublicKey;)I
    .locals 6
    .param p1, "lhs"    # Ljava/security/PublicKey;
    .param p2, "rhs"    # Ljava/security/PublicKey;

    .prologue
    .line 136
    invoke-interface {p1}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "lhsAlgorithm":Ljava/lang/String;
    invoke-interface {p2}, Ljava/security/PublicKey;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "rhsAlgorithm":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Keys are not of the same type"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lorg/conscrypt/CertificatePriorityComparator;->getKeySize(Ljava/security/PublicKey;)I

    move-result v1

    .line 142
    .local v1, "lhsSize":I
    invoke-direct {p0, p2}, Lorg/conscrypt/CertificatePriorityComparator;->getKeySize(Ljava/security/PublicKey;)I

    move-result v3

    .line 143
    .local v3, "rhsSize":I
    sub-int v4, v1, v3

    return v4
.end method

.method private compareSignatureAlgorithm(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 4
    .param p1, "lhs"    # Ljava/security/cert/X509Certificate;
    .param p2, "rhs"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 158
    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 159
    .local v0, "lhsPriority":Ljava/lang/Integer;
    sget-object v2, Lorg/conscrypt/CertificatePriorityComparator;->ALGORITHM_OID_PRIORITY_MAP:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 160
    .local v1, "rhsPriority":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 161
    sget-object v0, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    .line 163
    :cond_0
    if-nez v1, :cond_1

    .line 164
    sget-object v1, Lorg/conscrypt/CertificatePriorityComparator;->PRIORITY_UNKNOWN:Ljava/lang/Integer;

    .line 166
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    sub-int/2addr v2, v3

    return v2
.end method

.method private compareStrength(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 5
    .param p1, "lhs"    # Ljava/security/cert/X509Certificate;
    .param p2, "rhs"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 106
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 107
    .local v0, "lhsPublicKey":Ljava/security/PublicKey;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    .line 108
    .local v3, "rhsPublicKey":Ljava/security/PublicKey;
    invoke-direct {p0, v0, v3}, Lorg/conscrypt/CertificatePriorityComparator;->compareKeyAlgorithm(Ljava/security/PublicKey;Ljava/security/PublicKey;)I

    move-result v1

    .line 109
    .local v1, "result":I
    if-eqz v1, :cond_0

    move v2, v1

    .end local v1    # "result":I
    .local v2, "result":I
    move v4, v1

    .line 116
    :goto_0
    return v4

    .line 112
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_0
    invoke-direct {p0, v0, v3}, Lorg/conscrypt/CertificatePriorityComparator;->compareKeySize(Ljava/security/PublicKey;Ljava/security/PublicKey;)I

    move-result v1

    .line 113
    if-eqz v1, :cond_1

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    move v4, v1

    .line 114
    goto :goto_0

    .line 116
    .end local v2    # "result":I
    .restart local v1    # "result":I
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/CertificatePriorityComparator;->compareSignatureAlgorithm(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v4

    move v2, v1

    .end local v1    # "result":I
    .restart local v2    # "result":I
    goto :goto_0
.end method

.method private getKeySize(Ljava/security/PublicKey;)I
    .locals 3
    .param p1, "pkey"    # Ljava/security/PublicKey;

    .prologue
    .line 147
    instance-of v0, p1, Ljava/security/interfaces/ECPublicKey;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Ljava/security/interfaces/ECPublicKey;

    .end local p1    # "pkey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/security/interfaces/ECPublicKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/EllipticCurve;->getField()Ljava/security/spec/ECField;

    move-result-object v0

    invoke-interface {v0}, Ljava/security/spec/ECField;->getFieldSize()I

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 149
    .restart local p1    # "pkey":Ljava/security/PublicKey;
    :cond_0
    instance-of v0, p1, Ljava/security/interfaces/RSAPublicKey;

    if-eqz v0, :cond_1

    .line 150
    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    .end local p1    # "pkey":Ljava/security/PublicKey;
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    goto :goto_0

    .line 152
    .restart local p1    # "pkey":Ljava/security/PublicKey;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported public key type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 153
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 41
    check-cast p1, Ljava/security/cert/X509Certificate;

    check-cast p2, Ljava/security/cert/X509Certificate;

    invoke-virtual {p0, p1, p2}, Lorg/conscrypt/CertificatePriorityComparator;->compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v0

    return v0
.end method

.method public compare(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I
    .locals 9
    .param p1, "lhs"    # Ljava/security/cert/X509Certificate;
    .param p2, "rhs"    # Ljava/security/cert/X509Certificate;

    .prologue
    .line 80
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 81
    .local v2, "lhsSelfSigned":Z
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 83
    .local v6, "rhsSelfSigned":Z
    if-eq v2, v6, :cond_2

    .line 84
    if-eqz v6, :cond_1

    const/4 v7, 0x1

    :goto_0
    move v3, v7

    .line 101
    :cond_0
    :goto_1
    return v3

    .line 84
    :cond_1
    const/4 v7, -0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-direct {p0, p2, p1}, Lorg/conscrypt/CertificatePriorityComparator;->compareStrength(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)I

    move-result v3

    .line 88
    .local v3, "result":I
    if-nez v3, :cond_0

    .line 92
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    .line 93
    .local v0, "lhsNotAfter":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v4

    .line 94
    .local v4, "rhsNotAfter":Ljava/util/Date;
    invoke-virtual {v4, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    .line 95
    if-nez v3, :cond_0

    .line 99
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v1

    .line 100
    .local v1, "lhsNotBefore":Ljava/util/Date;
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v5

    .line 101
    .local v5, "rhsNotBefore":Ljava/util/Date;
    invoke-virtual {v5, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    goto :goto_1
.end method
