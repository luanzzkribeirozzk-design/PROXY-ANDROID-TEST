.class Lorg/bouncycastle/mime/LineReader;
.super Ljava/lang/Object;


# instance fields
.field private lastC:I

.field private final src:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    iput-object p1, p0, Lorg/bouncycastle/mime/LineReader;->src:Ljava/io/InputStream;

    return-void
.end method


# virtual methods
.method readLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xa

    const/4 v3, -0x1

    const/16 v2, 0xd

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget v0, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    if-eq v0, v3, :cond_1

    iget v0, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    if-ne v0, v2, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    iput v3, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    :goto_1
    if-ltz v0, :cond_2

    if-eq v0, v2, :cond_2

    if-eq v0, v4, :cond_2

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/mime/LineReader;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/mime/LineReader;->src:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    iget-object v2, p0, Lorg/bouncycastle/mime/LineReader;->src:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v2, v4, :cond_3

    if-ltz v2, :cond_3

    iput v2, p0, Lorg/bouncycastle/mime/LineReader;->lastC:I

    :cond_3
    if-gez v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->fromUTF8ByteArray([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
