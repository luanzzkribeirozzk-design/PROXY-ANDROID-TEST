.class public Lorg/bouncycastle/operator/MacCaptureStream;
.super Ljava/io/OutputStream;


# instance fields
.field private final cOut:Ljava/io/OutputStream;

.field private final mac:[B

.field macIndex:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    iput-object p1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    new-array v0, p2, [B

    iput-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    return-void
.end method


# virtual methods
.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    iget v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    aget-byte v0, v0, v5

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v4, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-byte v3, p1

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    if-lt p3, v1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    iget-object v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget v3, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/OutputStream;->write([BII)V

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    iput v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->macIndex:I

    add-int v1, p2, p3

    iget-object v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v2, v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    iget-object v3, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v3, v3

    invoke-static {p1, v1, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/operator/MacCaptureStream;->cOut:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/operator/MacCaptureStream;->mac:[B

    array-length v1, v1

    sub-int v1, p3, v1

    invoke-virtual {v0, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    return-void

    :cond_1
    :goto_0
    if-eq v0, p3, :cond_0

    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/operator/MacCaptureStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
