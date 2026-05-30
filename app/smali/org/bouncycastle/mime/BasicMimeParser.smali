.class public Lorg/bouncycastle/mime/BasicMimeParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/mime/MimeParser;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private final defaultContentTransferEncoding:Ljava/lang/String;

.field private headers:Lorg/bouncycastle/mime/Headers;

.field private isMultipart:Z

.field private final parserContext:Lorg/bouncycastle/mime/MimeParserContext;

.field private final src:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Lorg/bouncycastle/mime/Headers;

    const-string v2, "7bit"

    invoke-direct {v1, p1, v2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, p1}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/MimeParserContext;Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lorg/bouncycastle/mime/Headers;

    invoke-interface {p1}, Lorg/bouncycastle/mime/MimeParserContext;->getDefaultContentTransferEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0, p2}, Lorg/bouncycastle/mime/BasicMimeParser;-><init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->isMultipart:Z

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->isMultipart()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->isMultipart:Z

    invoke-virtual {p2}, Lorg/bouncycastle/mime/Headers;->getBoundary()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    :goto_0
    iput-object p2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    iput-object p1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    iput-object p3, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/bouncycastle/mime/MimeParserContext;->getDefaultContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->defaultContentTransferEncoding:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "7bit"

    goto :goto_1
.end method

.method private processStream(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/mime/Headers;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "base64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/mime/encoding/Base64InputStream;

    invoke-direct {v0, p2}, Lorg/bouncycastle/mime/encoding/Base64InputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    :cond_0
    :goto_0
    return-object p2

    :cond_1
    invoke-virtual {p1}, Lorg/bouncycastle/mime/Headers;->getContentTransferEncoding()Ljava/lang/String;

    move-result-object v0

    const-string v1, "quoted-printable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;

    invoke-direct {v0, p2}, Lorg/bouncycastle/mime/encoding/QuotedPrintableInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p2, v0

    goto :goto_0
.end method


# virtual methods
.method public isMultipart()Z
    .locals 1

    iget-boolean v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->isMultipart:Z

    return v0
.end method

.method public parse(Lorg/bouncycastle/mime/MimeParserListener;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    iget-object v1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    invoke-interface {p1, v0, v1}, Lorg/bouncycastle/mime/MimeParserListener;->createContext(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;)Lorg/bouncycastle/mime/MimeContext;

    move-result-object v0

    iget-boolean v1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->isMultipart:Z

    if-eqz v1, :cond_4

    check-cast v0, Lorg/bouncycastle/mime/MimeMultipartContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/bouncycastle/mime/LineReader;

    iget-object v1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    invoke-direct {v5, v1}, Lorg/bouncycastle/mime/LineReader;-><init>(Ljava/io/InputStream;)V

    move v1, v2

    move v3, v2

    :cond_0
    :goto_0
    invoke-virtual {v5}, Lorg/bouncycastle/mime/LineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    const-string v6, "--"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v3, :cond_2

    new-instance v6, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;

    iget-object v2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    iget-object v7, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    invoke-direct {v6, v2, v7}, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v7, Lorg/bouncycastle/mime/Headers;

    iget-object v2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->defaultContentTransferEncoding:Ljava/lang/String;

    invoke-direct {v7, v6, v2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v1}, Lorg/bouncycastle/mime/MimeMultipartContext;->createContext(I)Lorg/bouncycastle/mime/MimeContext;

    move-result-object v1

    invoke-interface {v1, v7, v6}, Lorg/bouncycastle/mime/MimeContext;->applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v6, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    invoke-direct {p0, v7, v1}, Lorg/bouncycastle/mime/BasicMimeParser;->processStream(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Lorg/bouncycastle/mime/MimeParserListener;->object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MIME object not fully processed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    new-instance v6, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;

    iget-object v2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    iget-object v7, p0, Lorg/bouncycastle/mime/BasicMimeParser;->boundary:Ljava/lang/String;

    invoke-direct {v6, v2, v7}, Lorg/bouncycastle/mime/BoundaryLimitedInputStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    new-instance v7, Lorg/bouncycastle/mime/Headers;

    iget-object v2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->defaultContentTransferEncoding:Ljava/lang/String;

    invoke-direct {v7, v6, v2}, Lorg/bouncycastle/mime/Headers;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v1}, Lorg/bouncycastle/mime/MimeMultipartContext;->createContext(I)Lorg/bouncycastle/mime/MimeContext;

    move-result-object v1

    invoke-interface {v1, v7, v6}, Lorg/bouncycastle/mime/MimeContext;->applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v1

    iget-object v6, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    invoke-direct {p0, v7, v1}, Lorg/bouncycastle/mime/BasicMimeParser;->processStream(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v8

    invoke-interface {p1, v6, v7, v8}, Lorg/bouncycastle/mime/MimeParserListener;->object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "MIME object not fully processed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    iget-object v2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->src:Ljava/io/InputStream;

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/mime/MimeContext;->applyContext(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/mime/BasicMimeParser;->parserContext:Lorg/bouncycastle/mime/MimeParserContext;

    iget-object v2, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    iget-object v3, p0, Lorg/bouncycastle/mime/BasicMimeParser;->headers:Lorg/bouncycastle/mime/Headers;

    invoke-direct {p0, v3, v0}, Lorg/bouncycastle/mime/BasicMimeParser;->processStream(Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Lorg/bouncycastle/mime/MimeParserListener;->object(Lorg/bouncycastle/mime/MimeParserContext;Lorg/bouncycastle/mime/Headers;Ljava/io/InputStream;)V

    :cond_5
    return-void
.end method
