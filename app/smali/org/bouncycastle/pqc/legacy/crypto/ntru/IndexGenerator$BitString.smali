.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BitString"
.end annotation


# instance fields
.field bytes:[B

.field lastByteBits:I

.field numBytes:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    return-void
.end method


# virtual methods
.method public appendBits(B)V
    .locals 6

    const/16 v2, 0x8

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator;->access$000([BI)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    aput-byte p1, v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    rsub-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v2, v2, -0x1

    aget-byte v3, v1, v2

    and-int/lit16 v4, p1, 0xff

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    shl-int/2addr v4, v5

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    and-int/lit16 v3, p1, 0xff

    shr-int v0, v3, v0

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto :goto_0
.end method

.method appendBits([B)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-eq v0, v1, :cond_0

    aget-byte v1, p1, v0

    invoke-virtual {p0, v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->appendBits(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBytes()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getLeadingAsInt(I)I
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v0, v0, -0x1

    mul-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    div-int/lit8 v3, v0, 0x8

    rem-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    ushr-int v2, v1, v0

    rsub-int/lit8 v1, v0, 0x8

    add-int/lit8 v0, v3, 0x1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v3, v3, v0

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getTrailing(I)Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;
    .locals 6

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;-><init>()V

    add-int/lit8 v0, p1, 0x7

    div-int/lit8 v0, v0, 0x8

    iput v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    iget v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    new-array v0, v0, [B

    iput-object v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    const/4 v0, 0x0

    :goto_0
    iget v2, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    if-ge v0, v2, :cond_0

    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    aget-byte v3, v3, v0

    aput-byte v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    rem-int/lit8 v0, p1, 0x8

    iput v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    iget v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    if-nez v0, :cond_1

    const/16 v0, 0x8

    iput v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    :goto_1
    return-object v1

    :cond_1
    iget v0, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->lastByteBits:I

    rsub-int/lit8 v0, v0, 0x20

    iget-object v2, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v3, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v3, v3, -0x1

    iget-object v4, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->bytes:[B

    iget v5, v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/IndexGenerator$BitString;->numBytes:I

    add-int/lit8 v5, v5, -0x1

    aget-byte v4, v4, v5

    shl-int/2addr v4, v0

    ushr-int v0, v4, v0

    int-to-byte v0, v0

    aput-byte v0, v2, v3

    goto :goto_1
.end method
