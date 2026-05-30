.class public Lorg/bouncycastle/crypto/digests/AsconDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;
    }
.end annotation


# instance fields
.field private final ASCON_PB_ROUNDS:I

.field private final CRYPTO_BYTES:I

.field private final algorithmName:Ljava/lang/String;

.field asconParameters:Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

.field private final buffer:Ljava/io/ByteArrayOutputStream;

.field private x0:J

.field private x1:J

.field private x2:J

.field private x3:J

.field private x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->CRYPTO_BYTES:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->asconParameters:Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    sget-object v0, Lorg/bouncycastle/crypto/digests/AsconDigest$1;->$SwitchMap$org$bouncycastle$crypto$digests$AsconDigest$AsconParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid parameter settings for Ascon Hash"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    const-string v0, "Ascon-Hash"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconDigest;->reset()V

    return-void

    :pswitch_1
    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    const-string v0, "Ascon-HashA"

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private LOADBYTES([BII)J
    .locals 8

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    add-int v1, v0, p2

    aget-byte v1, p1, v1

    int-to-long v4, v1

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    rsub-int/lit8 v1, v0, 0x7

    shl-int/lit8 v1, v1, 0x3

    shl-long/2addr v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method private P(I)V
    .locals 2

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    :cond_0
    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    :cond_1
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROUND(J)V

    return-void
.end method

.method private PAD(I)J
    .locals 3

    const-wide/16 v0, 0x80

    shl-int/lit8 v2, p1, 0x3

    rsub-int/lit8 v2, v2, 0x38

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private ROR(JI)J
    .locals 5

    ushr-long v0, p1, p3

    rsub-int/lit8 v2, p3, 0x40

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private ROUND(J)V
    .locals 15

    iget-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v0, v2

    xor-long v0, v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v4, v6

    xor-long v4, v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v2, v4

    xor-long v2, v2, p1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v4, v6

    xor-long v4, v4, p1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v4, v6

    xor-long v4, v4, p1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    xor-long/2addr v6, v8

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    xor-long/2addr v6, v8

    xor-long v6, v6, p1

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    iget-wide v12, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v10, v12

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-wide v8, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    iget-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v12, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    xor-long/2addr v10, v12

    iget-wide v12, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    and-long/2addr v10, v12

    xor-long/2addr v8, v10

    const/16 v10, 0x13

    invoke-direct {p0, v0, v1, v10}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v10

    xor-long/2addr v10, v0

    const/16 v12, 0x1c

    invoke-direct {p0, v0, v1, v12}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v0

    xor-long/2addr v0, v10

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const/16 v0, 0x27

    invoke-direct {p0, v2, v3, v0}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v0

    xor-long/2addr v0, v2

    const/16 v10, 0x3d

    invoke-direct {p0, v2, v3, v10}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    const/4 v0, 0x1

    invoke-direct {p0, v4, v5, v0}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v0

    xor-long/2addr v0, v4

    const/4 v2, 0x6

    invoke-direct {p0, v4, v5, v2}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    const/16 v0, 0xa

    invoke-direct {p0, v6, v7, v0}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v0

    xor-long/2addr v0, v6

    const/16 v2, 0x11

    invoke-direct {p0, v6, v7, v2}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    const/4 v0, 0x7

    invoke-direct {p0, v8, v9, v0}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v0

    xor-long/2addr v0, v8

    const/16 v2, 0x29

    invoke-direct {p0, v8, v9, v2}, Lorg/bouncycastle/crypto/digests/AsconDigest;->ROR(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    return-void
.end method

.method private STOREBYTES([BIJI)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, v0, p2

    rsub-int/lit8 v2, v0, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long v2, p3, v2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 10

    const/16 v7, 0x20

    const/16 v6, 0x8

    add-int/lit8 v0, p2, 0x20

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-lt v1, v6, :cond_1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v2, v0, v6}, Lorg/bouncycastle/crypto/digests/AsconDigest;->LOADBYTES([BII)J

    move-result-wide v8

    xor-long/2addr v4, v8

    iput-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget v3, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    add-int/2addr v0, v6

    sub-int/2addr v1, v6

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v2, v0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->LOADBYTES([BII)J

    move-result-wide v2

    xor-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->PAD(I)J

    move-result-wide v0

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    move v0, v7

    move v3, p2

    :goto_1
    if-le v0, v6, :cond_2

    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/digests/AsconDigest;->STOREBYTES([BIJI)V

    iget v1, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->ASCON_PB_ROUNDS:I

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/AsconDigest;->P(I)V

    add-int/2addr v3, v6

    sub-int/2addr v0, v6

    goto :goto_1

    :cond_2
    iget-wide v4, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    move-object v1, p0

    move-object v2, p1

    move v6, v0

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/crypto/digests/AsconDigest;->STOREBYTES([BIJI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/AsconDigest;->reset()V

    return v7
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    sget-object v0, Lorg/bouncycastle/crypto/digests/AsconDigest$1;->$SwitchMap$org$bouncycastle$crypto$digests$AsconDigest$AsconParameters:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->asconParameters:Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/AsconDigest$AsconParameters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-wide v0, 0x1470194fc6528a6L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const-wide v0, 0x738ec38ac0adffa7L    # 4.301965536445435E248

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    const-wide v0, 0x2ec8e3296c76384cL    # 2.5621814324380113E-83

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    const-wide v0, -0x29095ab280adc883L    # -8.509507695364991E110

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    const-wide v0, -0x5ec3bd5ddc417279L

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    goto :goto_0

    :pswitch_1
    const-wide v0, -0x116c675524980fc3L    # -4.533484413786092E224

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x0:J

    const-wide v0, -0x744de7ce39f0effeL

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x1:J

    const-wide v0, -0x4b756d24672a259eL    # -1.3546972168863344E-55

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x2:J

    const-wide v0, 0x43189921b8f8e3e8L    # 1.730942389336314E15

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x3:J

    const-wide v0, 0x348fa5c9d525e140L    # 1.613361697436867E-55

    iput-wide v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->x4:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public update(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

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
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/AsconDigest;->buffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method
