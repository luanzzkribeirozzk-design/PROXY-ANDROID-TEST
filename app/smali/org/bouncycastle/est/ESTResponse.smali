.class public Lorg/bouncycastle/est/ESTResponse;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;
    }
.end annotation


# static fields
.field private static final ZERO:Ljava/lang/Long;


# instance fields
.field private HttpVersion:Ljava/lang/String;

.field private absoluteReadLimit:Ljava/lang/Long;

.field private contentLength:Ljava/lang/Long;

.field private final headers:Lorg/bouncycastle/est/HttpUtil$Headers;

.field private inputStream:Ljava/io/InputStream;

.field private final lineBuffer:[B

.field private final originalRequest:Lorg/bouncycastle/est/ESTRequest;

.field private read:J

.field private final source:Lorg/bouncycastle/est/Source;

.field private statusCode:I

.field private statusMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/est/ESTResponse;->ZERO:Ljava/lang/Long;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    iput-object p1, p0, Lorg/bouncycastle/est/ESTResponse;->originalRequest:Lorg/bouncycastle/est/ESTRequest;

    iput-object p2, p0, Lorg/bouncycastle/est/ESTResponse;->source:Lorg/bouncycastle/est/Source;

    instance-of v0, p2, Lorg/bouncycastle/est/LimitedSource;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/est/LimitedSource;

    invoke-interface {v0}, Lorg/bouncycastle/est/LimitedSource;->getAbsoluteReadLimit()Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    :cond_0
    const-string v0, "org.bouncycastle.debug.est"

    invoke-static {v0}, Lorg/bouncycastle/util/Properties;->asKeySet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    const-string v1, "input"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "all"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;

    invoke-interface {p2}, Lorg/bouncycastle/est/Source;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/est/ESTResponse$PrintingInputStream;-><init>(Ljava/io/InputStream;Lorg/bouncycastle/est/ESTResponse$1;)V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    :goto_0
    new-instance v0, Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-direct {v0}, Lorg/bouncycastle/est/HttpUtil$Headers;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    invoke-direct {p0}, Lorg/bouncycastle/est/ESTResponse;->process()V

    return-void

    :cond_2
    invoke-interface {p2}, Lorg/bouncycastle/est/Source;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    goto :goto_0
.end method

.method static synthetic access$100(Lorg/bouncycastle/est/ESTResponse;)J
    .locals 2

    iget-wide v0, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    return-wide v0
.end method

.method static synthetic access$108(Lorg/bouncycastle/est/ESTResponse;)J
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/est/ESTResponse;->read:J

    return-wide v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/est/ESTResponse;)Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    return-object v0
.end method

.method private process()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xcc

    const/16 v1, 0x20

    const/16 v6, 0xa

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->HttpVersion:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    invoke-virtual {p0, v6}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusMessage:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lorg/bouncycastle/est/HttpUtil$Headers;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, v6}, Lorg/bouncycastle/est/ESTResponse;->readStringIncluding(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    const-string v1, "Transfer-Encoding"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    :goto_1
    iget v1, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    if-eq v1, v7, :cond_2

    iget v1, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    const/16 v2, 0xca

    if-ne v1, v2, :cond_3

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    if-nez v1, :cond_5

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    if-nez v1, :cond_6

    new-instance v0, Ljava/io/IOException;

    const-string v1, "No Content-length header."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0}, Lorg/bouncycastle/est/ESTResponse;->getContentLength()Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    goto :goto_1

    :cond_5
    iget v1, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    if-ne v1, v7, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Got HTTP status 204 but Content-length > 0."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    sget-object v2, Lorg/bouncycastle/est/ESTResponse;->ZERO:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/Long;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez v0, :cond_7

    new-instance v1, Lorg/bouncycastle/est/ESTResponse$1;

    invoke-direct {v1, p0}, Lorg/bouncycastle/est/ESTResponse$1;-><init>(Lorg/bouncycastle/est/ESTResponse;)V

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    :cond_7
    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, v2, v4

    if-gez v1, :cond_8

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server returned negative content length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_9

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content length longer than absolute read limit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {p0, v1, v2}, Lorg/bouncycastle/est/ESTResponse;->wrapWithCounter(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_a

    new-instance v1, Lorg/bouncycastle/est/CTEChunkedInputStream;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Lorg/bouncycastle/est/CTEChunkedInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    :cond_a
    const-string v1, "base64"

    const-string v2, "content-transfer-encoding"

    invoke-virtual {p0, v2}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz v0, :cond_c

    new-instance v0, Lorg/bouncycastle/est/CTEBase64InputStream;

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    :cond_b
    :goto_2
    return-void

    :cond_c
    new-instance v0, Lorg/bouncycastle/est/CTEBase64InputStream;

    iget-object v1, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->contentLength:Ljava/lang/Long;

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    goto :goto_2
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->source:Lorg/bouncycastle/est/Source;

    invoke-interface {v0}, Lorg/bouncycastle/est/Source;->close()V

    return-void
.end method

.method public getAbsoluteReadLimit()J
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    if-nez v0, :cond_0

    const-wide v0, 0x7fffffffffffffffL

    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->absoluteReadLimit:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getContentLength()Ljava/lang/Long;
    .locals 5

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    const-string v1, "Content-Length"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content Length: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' invalid. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderOrEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/est/HttpUtil$Headers;->getFirstValueOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Lorg/bouncycastle/est/HttpUtil$Headers;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->headers:Lorg/bouncycastle/est/HttpUtil$Headers;

    return-object v0
.end method

.method public getHttpVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->HttpVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getOriginalRequest()Lorg/bouncycastle/est/ESTRequest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->originalRequest:Lorg/bouncycastle/est/ESTRequest;

    return-object v0
.end method

.method public getSource()Lorg/bouncycastle/est/Source;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->source:Lorg/bouncycastle/est/Source;

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusCode:I

    return v0
.end method

.method public getStatusMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->statusMessage:Ljava/lang/String;

    return-object v0
.end method

.method protected readStringIncluding(C)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    const/4 v6, -0x1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->inputStream:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    iget-object v4, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v5, v3

    aput-byte v5, v4, v0

    iget-object v0, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    array-length v0, v0

    if-lt v2, v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server sent line > "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eq v3, p1, :cond_1

    if-gt v3, v6, :cond_3

    :cond_1
    if-ne v3, v6, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lorg/bouncycastle/est/ESTResponse;->lineBuffer:[B

    invoke-direct {v0, v3, v1, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method protected wrapWithCounter(Ljava/io/InputStream;Ljava/lang/Long;)Ljava/io/InputStream;
    .locals 1

    new-instance v0, Lorg/bouncycastle/est/ESTResponse$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/bouncycastle/est/ESTResponse$2;-><init>(Lorg/bouncycastle/est/ESTResponse;Ljava/io/InputStream;Ljava/lang/Long;)V

    return-object v0
.end method
