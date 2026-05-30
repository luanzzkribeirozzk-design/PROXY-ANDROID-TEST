.class public Lorg/bouncycastle/oer/BitBuilder;
.super Ljava/lang/Object;


# static fields
.field private static final bits:[B


# instance fields
.field buf:[B

.field pos:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/oer/BitBuilder;->bits:[B

    return-void

    :array_0
    .array-data 1
        -0x80t
        0x40t
        0x20t
        0x10t
        0x8t
        0x4t
        0x2t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    return-void
.end method


# virtual methods
.method public pad()V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    return-void
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return v0
.end method

.method public write7BitBytes(I)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x4

    :goto_0
    if-ltz v1, :cond_2

    if-nez v0, :cond_0

    const/high16 v2, -0x2000000

    and-int/2addr v2, p1

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v2

    int-to-long v4, p1

    const/16 v3, 0x20

    const/4 v6, 0x7

    invoke-virtual {v2, v4, v5, v3, v6}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JII)Lorg/bouncycastle/oer/BitBuilder;

    :cond_1
    shl-int/lit8 p1, p1, 0x7

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public write7BitBytes(Ljava/math/BigInteger;)V
    .locals 9

    const/4 v8, 0x7

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    rem-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x8

    const-wide/16 v0, 0xfe

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    mul-int/lit8 v1, v2, 0x8

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v3

    const/4 v0, 0x0

    move v1, v2

    :goto_0
    if-ltz v1, :cond_2

    if-nez v0, :cond_0

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v5, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/math/BigInteger;->and(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    mul-int/lit8 v5, v2, 0x8

    add-int/lit8 v5, v5, -0x8

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {p0, v1}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    int-to-long v6, v4

    const/16 v4, 0x8

    invoke-virtual {v5, v6, v7, v4, v8}, Lorg/bouncycastle/oer/BitBuilder;->writeBits(JII)Lorg/bouncycastle/oer/BitBuilder;

    :cond_1
    invoke-virtual {p1, v8}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object p1

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public writeAndClear(Ljava/io/OutputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/OutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {p0}, Lorg/bouncycastle/oer/BitBuilder;->zero()V

    return v0
.end method

.method public writeBit(I)Lorg/bouncycastle/oer/BitBuilder;
    .locals 5

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    iget v2, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v2, v2, 0x8

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iput-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    sget-object v3, Lorg/bouncycastle/oer/BitBuilder;->bits:[B

    iget v4, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v4, v4, 0x8

    aget-byte v3, v3, v4

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_0
    iget v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    return-object p0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    iget v1, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    div-int/lit8 v1, v1, 0x8

    aget-byte v2, v0, v1

    sget-object v3, Lorg/bouncycastle/oer/BitBuilder;->bits:[B

    iget v4, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    rem-int/lit8 v4, v4, 0x8

    aget-byte v3, v3, v4

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_0
.end method

.method public writeBits(JI)Lorg/bouncycastle/oer/BitBuilder;
    .locals 7

    add-int/lit8 v0, p3, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public writeBits(JII)Lorg/bouncycastle/oer/BitBuilder;
    .locals 7

    add-int/lit8 v0, p3, -0x1

    move v1, v0

    :goto_0
    sub-int v0, p3, p4

    if-lt v1, v0, :cond_1

    const-wide/16 v2, 0x1

    shl-long/2addr v2, v1

    and-long/2addr v2, p1

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p0, v0}, Lorg/bouncycastle/oer/BitBuilder;->writeBit(I)Lorg/bouncycastle/oer/BitBuilder;

    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    return-object p0
.end method

.method public zero()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/oer/BitBuilder;->buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/oer/BitBuilder;->pos:I

    return-void
.end method
