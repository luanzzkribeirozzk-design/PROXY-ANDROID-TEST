.class public final Lorg/bouncycastle/cms/InputStreamWithMAC;
.super Ljava/io/InputStream;


# instance fields
.field private final base:Ljava/io/InputStream;

.field private baseFinished:Z

.field private index:I

.field private mac:[B

.field private macProvider:Lorg/bouncycastle/cms/MACProvider;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/bouncycastle/cms/MACProvider;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->base:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    iput-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    iput v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->base:Ljava/io/InputStream;

    iput-object p2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iput-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    iput v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    return-void
.end method


# virtual methods
.method public getMAC()[B
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "input stream not fully processed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->base:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-gez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    invoke-interface {v0}, Lorg/bouncycastle/cms/MACProvider;->init()V

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    invoke-interface {v0}, Lorg/bouncycastle/cms/MACProvider;->getMAC()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "input array is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    add-int v1, p2, p3

    if-ge v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid off("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and len("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->base:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-gez v0, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->baseFinished:Z

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    invoke-interface {v0}, Lorg/bouncycastle/cms/MACProvider;->init()V

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->macProvider:Lorg/bouncycastle/cms/MACProvider;

    invoke-interface {v0}, Lorg/bouncycastle/cms/MACProvider;->getMAC()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v0, v0

    if-lt p3, v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v1, v1

    invoke-static {v0, v2, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length p3, v0

    :goto_0
    return p3

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    goto :goto_0

    :cond_5
    move p3, v0

    goto :goto_0

    :cond_6
    iget v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    iget-object v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v1, v1

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    sub-int/2addr v0, v1

    if-lt p3, v0, :cond_7

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    iget-object v2, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v2, v2

    iget v3, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    sub-int/2addr v2, v3

    invoke-static {v0, v1, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v0, v0

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    sub-int p3, v0, v1

    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    array-length v0, v0

    iput v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->mac:[B

    iget v1, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/cms/InputStreamWithMAC;->index:I

    goto :goto_0

    :cond_8
    const/4 p3, -0x1

    goto :goto_0
.end method
