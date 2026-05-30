.class Lorg/bouncycastle/asn1/ConstructedOctetStream;
.super Ljava/io/InputStream;


# instance fields
.field private _currentStream:Ljava/io/InputStream;

.field private _first:Z

.field private final _parser:Lorg/bouncycastle/asn1/ASN1StreamParser;


# direct methods
.method constructor <init>(Lorg/bouncycastle/asn1/ASN1StreamParser;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    iput-object p1, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    return-void
.end method

.method private getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_parser:Lorg/bouncycastle/asn1/ASN1StreamParser;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1StreamParser;->readObject()Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown object encountered: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    iget-object v1, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    :cond_2
    :goto_1
    iget-object v1, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v1

    if-ltz v1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, -0x1

    iget-object v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-boolean v0, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_first:Z

    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    add-int v3, p2, v0

    sub-int v4, p3, v0

    invoke-virtual {v2, p1, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-ltz v2, :cond_3

    add-int/2addr v0, v2

    if-ne v0, p3, :cond_2

    move v1, v0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/bouncycastle/asn1/ConstructedOctetStream;->getNextParser()Lorg/bouncycastle/asn1/ASN1OctetStringParser;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    const/4 v2, 0x1

    if-ge v0, v2, :cond_4

    move v0, v1

    :cond_4
    move v1, v0

    goto :goto_0

    :cond_5
    invoke-interface {v2}, Lorg/bouncycastle/asn1/ASN1OctetStringParser;->getOctetStream()Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lorg/bouncycastle/asn1/ConstructedOctetStream;->_currentStream:Ljava/io/InputStream;

    goto :goto_1
.end method
