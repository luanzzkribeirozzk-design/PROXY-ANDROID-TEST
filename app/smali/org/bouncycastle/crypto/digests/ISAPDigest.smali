.class public Lorg/bouncycastle/crypto/digests/ISAPDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# instance fields
.field private buffer:Ljava/io/ByteArrayOutputStream;

.field private t0:J

.field private t1:J

.field private t2:J

.field private t3:J

.field private t4:J

.field private x0:J

.field private x1:J

.field private x2:J

.field private x3:J

.field private x4:J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method private P12()V
    .locals 2

    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROUND(J)V

    return-void
.end method

.method private ROTR(JJ)J
    .locals 5

    long-to-int v0, p3

    ushr-long v0, p1, v0

    const-wide/16 v2, 0x40

    sub-long/2addr v2, p3

    long-to-int v2, v2

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private ROUND(J)V
    .locals 11

    const-wide/16 v8, -0x1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v4, v6

    xor-long/2addr v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v2, v4

    xor-long/2addr v2, p1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    xor-long/2addr v0, v2

    xor-long/2addr v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    xor-long/2addr v2, v8

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v4, v6

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    const-wide/16 v4, 0x13

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    const-wide/16 v4, 0x1c

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    const-wide/16 v4, 0x27

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    const-wide/16 v4, 0x3d

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    const-wide/16 v4, 0x1

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    const-wide/16 v4, 0x6

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    xor-long/2addr v0, v8

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    const-wide/16 v4, 0xa

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    const-wide/16 v4, 0x11

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    const-wide/16 v4, 0x7

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    const-wide/16 v4, 0x29

    invoke-direct {p0, v2, v3, v4, v5}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    return-void
.end method


# virtual methods
.method protected U64BIG(J)J
    .locals 7

    const-wide/16 v0, 0x8

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v0

    const-wide v2, -0xffffff01000000L

    and-long/2addr v0, v2

    const-wide/16 v2, 0x18

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff0000L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x28

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ff00L

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    const-wide/16 v2, 0x38

    invoke-direct {p0, p1, p2, v2, v3}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->ROTR(JJ)J

    move-result-wide v2

    const-wide v4, 0xff000000ffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public doFinal([BI)I
    .locals 12

    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x20

    array-length v2, p1

    if-le v1, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t4:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t3:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t2:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t1:J

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->t0:J

    const-wide v2, -0x116c675524980fc3L    # -4.533484413786092E224

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    const-wide v2, -0x744de7ce39f0effeL

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x1:J

    const-wide v2, -0x4b756d24672a259eL    # -1.3546972168863344E-55

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x2:J

    const-wide v2, 0x43189921b8f8e3e8L    # 1.730942389336314E15

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x3:J

    const-wide v2, 0x348fa5c9d525e140L    # 1.613361697436867E-55

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x4:J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    array-length v1, v4

    shr-int/lit8 v2, v1, 0x3

    new-array v5, v2, [J

    array-length v2, v5

    invoke-static {v4, v0, v5, v0, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[JII)V

    move v2, v0

    :goto_0
    const/16 v3, 0x8

    if-lt v1, v3, :cond_1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    add-int/lit8 v3, v2, 0x1

    aget-wide v8, v5, v2

    invoke-virtual {p0, v8, v9}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v8

    xor-long/2addr v6, v8

    iput-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    add-int/lit8 v1, v1, -0x8

    move v2, v3

    goto :goto_0

    :cond_1
    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    const-wide/16 v8, 0x80

    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x3

    shl-long/2addr v8, v3

    xor-long/2addr v6, v8

    iput-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    :goto_1
    if-lez v1, :cond_2

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    shl-int/lit8 v3, v2, 0x3

    add-int/lit8 v1, v1, -0x1

    add-int/2addr v3, v1

    aget-byte v3, v4, v3

    int-to-long v8, v3

    const-wide/16 v10, 0xff

    and-long/2addr v8, v10

    rsub-int/lit8 v3, v1, 0x7

    shl-int/lit8 v3, v3, 0x3

    shl-long/2addr v8, v3

    xor-long/2addr v6, v8

    iput-wide v6, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    const/4 v1, 0x4

    new-array v1, v1, [J

    :goto_2
    const/4 v2, 0x3

    if-ge v0, v2, :cond_3

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->P12()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->x0:J

    invoke-virtual {p0, v2, v3}, Lorg/bouncycastle/crypto/digests/ISAPDigest;->U64BIG(J)J

    move-result-wide v2

    aput-wide v2, v1, v0

    invoke-static {v1, p1, p2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    const/16 v0, 0x20

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "ISAP Hash"

    return-object v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public update([BII)V
    .locals 2

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/ISAPDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
