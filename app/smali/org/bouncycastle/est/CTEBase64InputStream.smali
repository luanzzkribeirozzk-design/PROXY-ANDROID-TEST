.class Lorg/bouncycastle/est/CTEBase64InputStream;
.super Ljava/io/InputStream;


# instance fields
.field protected final data:[B

.field protected final dataOutputStream:Ljava/io/OutputStream;

.field protected end:Z

.field protected final max:Ljava/lang/Long;

.field protected final rawBuf:[B

.field protected read:J

.field protected rp:I

.field protected final src:Ljava/io/InputStream;

.field protected wp:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/est/CTEBase64InputStream;-><init>(Ljava/io/InputStream;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/Long;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    const/16 v0, 0x300

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    iput-object p1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    new-instance v0, Lorg/bouncycastle/est/CTEBase64InputStream$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/CTEBase64InputStream$1;-><init>(Lorg/bouncycastle/est/CTEBase64InputStream;)V

    iput-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->dataOutputStream:Ljava/io/OutputStream;

    iput-object p2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method protected pullFromSrc()I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v8, 0x1

    const/16 v6, 0xa

    const/4 v0, 0x0

    const/4 v1, -0x1

    :cond_0
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    iget-object v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->max:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v3

    const/16 v2, 0x21

    if-ge v3, v2, :cond_2

    const/16 v2, 0xd

    if-eq v3, v2, :cond_2

    if-ne v3, v6, :cond_7

    :cond_2
    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    array-length v2, v2

    if-lt v0, v2, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Content Transfer Encoding, base64 line length > 1024"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    add-int/lit8 v2, v0, 0x1

    int-to-byte v5, v3

    aput-byte v5, v4, v0

    iget-wide v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    move v0, v2

    :cond_4
    :goto_1
    if-le v3, v1, :cond_5

    iget-object v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    array-length v2, v2

    if-ge v0, v2, :cond_5

    if-ne v3, v6, :cond_0

    :cond_5
    if-lez v0, :cond_8

    :try_start_0
    iget-object v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rawBuf:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->dataOutputStream:Ljava/io/OutputStream;

    invoke-static {v1, v2, v0, v3}, Lorg/bouncycastle/util/encoders/Base64;->decode([BIILjava/io/OutputStream;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    iget v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    goto :goto_0

    :cond_7
    if-ltz v3, :cond_4

    iget-wide v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    add-long/2addr v4, v8

    iput-wide v4, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->read:J

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Decode Base64 Content-Transfer-Encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    if-ne v3, v1, :cond_6

    move v0, v1

    goto :goto_0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    iget v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    iget v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    if-ne v0, v1, :cond_0

    iput v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    iput v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->wp:I

    invoke-virtual {p0}, Lorg/bouncycastle/est/CTEBase64InputStream;->pullFromSrc()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->data:[B

    iget v1, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/est/CTEBase64InputStream;->rp:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method
