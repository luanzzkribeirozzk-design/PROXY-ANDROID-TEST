.class public Lorg/bouncycastle/mime/smime/SMIMESignedWriter;
.super Lorg/bouncycastle/mime/MimeWriter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;,
        Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;
    }
.end annotation


# static fields
.field public static final RFC3851_MICALGS:Ljava/util/Map;

.field public static final RFC5751_MICALGS:Ljava/util/Map;

.field public static final STANDARD_MICALGS:Ljava/util/Map;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final contentTransferEncoding:Ljava/lang/String;

.field private final mimeOut:Ljava/io/OutputStream;

.field private final sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "md5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha-224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha-384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "gostr3411-94"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "gostr3411-2012-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "gostr3411-2012-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->RFC5751_MICALGS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->MD5:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "md5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA224:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha224"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha384"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->SHA512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "sha512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "gostr3411-94"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "gostr3411-2012-256"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lorg/bouncycastle/cms/CMSAlgorithm;->GOST3411_2012_512:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    const-string v2, "gostr3411-2012-512"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->RFC3851_MICALGS:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->RFC5751_MICALGS:Ljava/util/Map;

    sput-object v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->STANDARD_MICALGS:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/mime/Headers;

    invoke-static {p2}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mapToLines(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/bouncycastle/mime/MimeWriter;-><init>(Lorg/bouncycastle/mime/Headers;)V

    invoke-static {p1}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->access$100(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;)Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    iget-object v0, p1, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;->contentTransferEncoding:Ljava/lang/String;

    iput-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->contentTransferEncoding:Ljava/lang/String;

    iput-object p3, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    iput-object p4, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;Lorg/bouncycastle/mime/smime/SMIMESignedWriter$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;-><init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter$Builder;Ljava/util/Map;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void
.end method

.method static synthetic access$200(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getContentStream()Ljava/io/OutputStream;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->headers:Lorg/bouncycastle/mime/Headers;

    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/mime/Headers;->dumpHeaders(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v1, "This is an S/MIME signed message\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v1, "\r\n--"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->boundary:Ljava/lang/String;

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    const-string v1, "\r\n"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v5, Lorg/bouncycastle/mime/encoding/Base64OutputStream;

    invoke-direct {v5, v4}, Lorg/bouncycastle/mime/encoding/Base64OutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->sigGen:Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    invoke-static {v3}, Lorg/bouncycastle/mime/smime/SMimeUtils;->createUnclosable(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-virtual {v1, v5, v2, v3}, Lorg/bouncycastle/cms/CMSSignedDataStreamGenerator;->open(Ljava/io/OutputStream;ZLjava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/mime/smime/SMIMESignedWriter;->mimeOut:Ljava/io/OutputStream;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/mime/smime/SMIMESignedWriter$ContentOutputStream;-><init>(Lorg/bouncycastle/mime/smime/SMIMESignedWriter;Ljava/io/OutputStream;Ljava/io/OutputStream;Ljava/io/ByteArrayOutputStream;Ljava/io/OutputStream;)V

    goto :goto_0
.end method
