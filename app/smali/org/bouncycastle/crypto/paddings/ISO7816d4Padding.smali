.class public Lorg/bouncycastle/crypto/paddings/ISO7816d4Padding;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/paddings/BlockCipherPadding;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPadding([BI)I
    .locals 3

    array-length v0, p1

    sub-int v1, v0, p2

    const/16 v0, -0x80

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getPaddingName()Ljava/lang/String;
    .locals 1

    const-string v0, "ISO7816-4"

    return-object v0
.end method

.method public init(Ljava/security/SecureRandom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    return-void
.end method

.method public padCount([B)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v2, -0x1

    array-length v0, p1

    move v1, v2

    move v3, v2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    xor-int/lit8 v4, v2, 0x0

    add-int/lit8 v4, v4, -0x1

    shr-int/lit8 v4, v4, 0x1f

    xor-int/lit16 v2, v2, 0x80

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v2, v2, 0x1f

    xor-int v5, v0, v3

    and-int/2addr v2, v1

    and-int/2addr v2, v5

    xor-int/2addr v2, v3

    and-int/2addr v1, v4

    move v3, v2

    goto :goto_0

    :cond_0
    if-gez v3, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "pad block corrupted"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    sub-int/2addr v0, v3

    return v0
.end method
