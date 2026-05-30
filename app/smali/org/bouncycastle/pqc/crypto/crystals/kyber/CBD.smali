.class final Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertByteTo24BitUnsignedInt([BI)J
    .locals 5

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static convertByteTo32BitUnsignedInt([BI)J
    .locals 5

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    add-int/lit8 v2, p1, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    add-int/lit8 v2, p1, 0x3

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v2, v2

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static kyberCBD(Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;[BI)V
    .locals 10

    packed-switch p2, :pswitch_data_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/16 v0, 0x20

    if-ge v1, v0, :cond_2

    mul-int/lit8 v0, v1, 0x4

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;->convertByteTo32BitUnsignedInt([BI)J

    move-result-wide v2

    const-wide/32 v4, 0x55555555

    and-long/2addr v4, v2

    const/4 v0, 0x1

    shr-long/2addr v2, v0

    const-wide/32 v6, 0x55555555

    and-long/2addr v2, v6

    add-long/2addr v2, v4

    const/4 v0, 0x0

    :goto_1
    const/16 v4, 0x8

    if-ge v0, v4, :cond_1

    mul-int/lit8 v4, v0, 0x4

    add-int/lit8 v4, v4, 0x0

    shr-long v4, v2, v4

    const-wide/16 v6, 0x3

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-short v4, v4

    mul-int/lit8 v5, v0, 0x4

    add-int/2addr v5, p2

    shr-long v6, v2, v5

    const-wide/16 v8, 0x3

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-short v5, v5

    mul-int/lit8 v6, v1, 0x8

    add-int/2addr v6, v0

    sub-int/2addr v4, v5

    int-to-short v4, v4

    invoke-virtual {p0, v6, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v0, 0x40

    if-ge v1, v0, :cond_2

    mul-int/lit8 v0, v1, 0x3

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/CBD;->convertByteTo24BitUnsignedInt([BI)J

    move-result-wide v2

    const-wide/32 v4, 0x249249

    and-long/2addr v4, v2

    const/4 v0, 0x1

    shr-long v6, v2, v0

    const-wide/32 v8, 0x249249

    and-long/2addr v6, v8

    add-long/2addr v4, v6

    const/4 v0, 0x2

    shr-long/2addr v2, v0

    const-wide/32 v6, 0x249249

    and-long/2addr v2, v6

    add-long/2addr v2, v4

    const/4 v0, 0x0

    :goto_3
    const/4 v4, 0x4

    if-ge v0, v4, :cond_0

    mul-int/lit8 v4, v0, 0x6

    add-int/lit8 v4, v4, 0x0

    shr-long v4, v2, v4

    const-wide/16 v6, 0x7

    and-long/2addr v4, v6

    long-to-int v4, v4

    int-to-short v4, v4

    mul-int/lit8 v5, v0, 0x6

    add-int/lit8 v5, v5, 0x3

    shr-long v6, v2, v5

    const-wide/16 v8, 0x7

    and-long/2addr v6, v8

    long-to-int v5, v6

    int-to-short v5, v5

    mul-int/lit8 v6, v1, 0x4

    add-int/2addr v6, v0

    sub-int/2addr v4, v5

    int-to-short v4, v4

    invoke-virtual {p0, v6, v4}, Lorg/bouncycastle/pqc/crypto/crystals/kyber/Poly;->setCoeffIndex(IS)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
