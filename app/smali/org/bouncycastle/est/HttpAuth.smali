.class public Lorg/bouncycastle/est/HttpAuth;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/est/ESTAuth;


# static fields
.field private static final digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

.field private static final validParts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

.field private final nonceGenerator:Ljava/security/SecureRandom;

.field private final password:[C

.field private final realm:Ljava/lang/String;

.field private final username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;

    invoke-direct {v0}, Lorg/bouncycastle/operator/DefaultDigestAlgorithmIdentifierFinder;-><init>()V

    sput-object v0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const-string v1, "realm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "nonce"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "opaque"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "algorithm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v1, "qop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/HttpAuth;->validParts:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    iput-object p2, p0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    iput-object p4, p0, Lorg/bouncycastle/est/HttpAuth;->nonceGenerator:Ljava/security/SecureRandom;

    iput-object p5, p0, Lorg/bouncycastle/est/HttpAuth;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/est/HttpAuth;-><init>(Ljava/lang/String;Ljava/lang/String;[CLjava/security/SecureRandom;Lorg/bouncycastle/operator/DigestCalculatorProvider;)V

    return-void
.end method

.method static synthetic access$000(Lorg/bouncycastle/est/HttpAuth;Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/bouncycastle/est/HttpAuth;->doDigestFunction(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lorg/bouncycastle/est/HttpAuth;)[C
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    return-object v0
.end method

.method private doDigestFunction(Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->close()V

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v6

    :try_start_0
    const-string v1, "Digest"

    const-string v2, "WWW-Authenticate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bouncycastle/est/HttpUtil;->splitCSL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    :try_start_1
    invoke-virtual {v6}, Lorg/bouncycastle/est/ESTRequest;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getPath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lorg/bouncycastle/est/HttpAuth;->validParts:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unrecognised entry in WWW-Authenticate header: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    new-instance v2, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Parsing WWW-Authentication header: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    const-string v6, "WWW-Authenticate"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, v1, v4, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to process URL in request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-virtual {v6}, Lorg/bouncycastle/est/ESTRequest;->getMethod()Ljava/lang/String;

    move-result-object v8

    const-string v1, "realm"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "nonce"

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "opaque"

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "algorithm"

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v9, "qop"

    invoke-interface {v5, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v2, Lorg/bouncycastle/est/ESTException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Supplied realm \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/est/HttpAuth;->realm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' does not match server realm \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/16 v4, 0x191

    const/4 v5, 0x0

    invoke-direct {v2, v1, v3, v4, v5}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v2

    :cond_2
    if-nez v4, :cond_3

    const-string v4, "MD5"

    :cond_3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    const-string v2, "WWW-Authenticate no algorithm defined."

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    invoke-static {v4}, Lorg/bouncycastle/util/Strings;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_5

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    const-string v2, "QoP value is empty."

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    invoke-static {v5}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    :goto_0
    array-length v11, v5

    if-eq v4, v11, :cond_9

    aget-object v11, v5, v4

    const-string v12, "auth"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    aget-object v11, v5, v4

    const-string v12, "auth-int"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QoP value unknown: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    aget-object v11, v5, v4

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    invoke-interface {v9, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    new-instance v1, Lorg/bouncycastle/est/ESTException;

    const-string v2, "Qop is not defined in WWW-Authenticate header."

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/bouncycastle/est/HttpAuth;->lookupDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v4

    if-nez v4, :cond_b

    :cond_a
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auth digest algorithm unknown: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v11

    const/16 v12, 0xa

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lorg/bouncycastle/est/HttpAuth;->makeNonce(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v13, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v1}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v13, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/est/HttpAuth;->password:[C

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v13}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;[C)V

    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    const-string v11, "-SESS"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v11

    invoke-interface {v11}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-interface {v11}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    :cond_c
    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v13

    invoke-interface {v13}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v14

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v15, "auth-int"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v4

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v15

    invoke-virtual {v6, v15}, Lorg/bouncycastle/est/ESTRequest;->writeData(Ljava/io/OutputStream;)V

    invoke-virtual {v15}, Ljava/io/OutputStream;->close()V

    invoke-interface {v4}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v8, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v8, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    :cond_d
    :goto_2
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V

    invoke-interface {v13}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v5}, Lorg/bouncycastle/est/HttpAuth;->getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;

    move-result-object v5

    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v13

    const-string v4, "missing"

    invoke-interface {v9, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v13}, Ljava/io/OutputStream;->close()V

    invoke-interface {v5}, Lorg/bouncycastle/operator/DigestCalculator;->getDigest()[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v8, "username"

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/est/HttpAuth;->username:Ljava/lang/String;

    invoke-interface {v5, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v8, "realm"

    invoke-interface {v5, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nonce"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "uri"

    invoke-interface {v5, v1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "response"

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "auth-int"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    const-string v1, "qop"

    const-string v2, "auth-int"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nc"

    const-string v2, "00000001"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cnonce"

    invoke-interface {v5, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    :goto_4
    const-string v1, "algorithm"

    invoke-interface {v5, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v3, :cond_f

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_10

    :cond_f
    const-string v1, "opaque"

    const/16 v2, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lorg/bouncycastle/est/HttpAuth;->makeNonce(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_10
    new-instance v1, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-direct {v1, v6}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v1

    const-string v2, "Authorization"

    const-string v3, "Digest"

    invoke-static {v3, v5}, Lorg/bouncycastle/est/HttpUtil;->mergeCSL(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {v6}, Lorg/bouncycastle/est/ESTRequest;->getClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v2

    invoke-virtual {v1}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v1

    invoke-interface {v2, v1}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v1

    return-object v1

    :cond_11
    const/4 v4, 0x0

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v15, "auth"

    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v7}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    invoke-direct {v0, v13, v11}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v2}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, "00000001"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v12}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v11, "auth-int"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13

    const-string v4, "auth-int"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_5
    const-string v4, ":"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v8}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_13
    const-string v4, "auth"

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v4}, Lorg/bouncycastle/est/HttpAuth;->update(Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_5

    :cond_14
    const/4 v1, 0x0

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "auth"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "qop"

    const-string v2, "auth"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nc"

    const-string v2, "00000001"

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "cnonce"

    invoke-interface {v5, v1, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4
.end method

.method private getDigestCalculator(Ljava/lang/String;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/est/HttpAuth;->digestCalculatorProvider:Lorg/bouncycastle/operator/DigestCalculatorProvider;

    invoke-interface {v0, p2}, Lorg/bouncycastle/operator/DigestCalculatorProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/operator/DigestCalculator;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot create digest calculator for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/operator/OperatorCreationException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private lookupDigest(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 3

    const-string v0, "-SESS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const-string v2, "-SESS"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "SHA-512-256"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha512_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lorg/bouncycastle/est/HttpAuth;->digestAlgorithmIdentifierFinder:Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/DigestAlgorithmIdentifierFinder;->find(Ljava/lang/String;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v0

    goto :goto_0
.end method

.method private makeNonce(I)Ljava/lang/String;
    .locals 2

    new-array v0, p1, [B

    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth;->nonceGenerator:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->toHexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private update(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private update(Ljava/io/OutputStream;[C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lorg/bouncycastle/util/Strings;->toUTF8ByteArray([C)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V
    .locals 1

    new-instance v0, Lorg/bouncycastle/est/HttpAuth$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/HttpAuth$1;-><init>(Lorg/bouncycastle/est/HttpAuth;)V

    invoke-virtual {p1, v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    return-void
.end method
