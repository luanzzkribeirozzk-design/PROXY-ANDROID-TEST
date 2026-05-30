.class public Lorg/bouncycastle/est/ESTException;
.super Ljava/io/IOException;


# static fields
.field private static final MAX_ERROR_BODY:J = 0x2000L


# instance fields
.field private body:Ljava/io/InputStream;

.field private cause:Ljava/lang/Throwable;

.field private statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/est/ESTException;->cause:Ljava/lang/Throwable;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/est/ESTException;->statusCode:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V
    .locals 8

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lorg/bouncycastle/est/ESTException;->cause:Ljava/lang/Throwable;

    iput p3, p0, Lorg/bouncycastle/est/ESTException;->statusCode:I

    if-eqz p4, :cond_2

    const/16 v0, 0x2000

    new-array v1, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v3

    add-int/2addr v3, v0

    int-to-long v4, v3

    const-wide/16 v6, 0x2000

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    rsub-int v0, v0, 0x2000

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iput-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    invoke-virtual {p4}, Ljava/io/InputStream;->close()V

    :goto_1
    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p4, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public getBody()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Lorg/bouncycastle/est/ESTException$1;

    invoke-direct {v0, p0}, Lorg/bouncycastle/est/ESTException$1;-><init>(Lorg/bouncycastle/est/ESTException;)V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/est/ESTException;->body:Ljava/io/InputStream;

    goto :goto_0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/est/ESTException;->cause:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " HTTP Status Code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/est/ESTException;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatusCode()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/est/ESTException;->statusCode:I

    return v0
.end method
