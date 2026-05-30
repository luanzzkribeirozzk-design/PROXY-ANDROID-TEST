.class abstract Lorg/bouncycastle/math/ec/rfc8032/Wnaf;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSignedVar([II[B)V
    .locals 8

    const/4 v1, 0x0

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x2

    new-array v5, v0, [I

    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget v0, p0, v0

    shr-int/lit8 v3, v0, 0x1f

    array-length v2, p0

    array-length v0, v5

    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    aget v4, p0, v2

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v6, v4, 0x10

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v6

    aput v3, v5, v0

    add-int/lit8 v0, v0, -0x1

    aput v4, v5, v0

    move v3, v4

    goto :goto_0

    :cond_0
    rsub-int/lit8 v4, p1, 0x20

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    array-length v1, v5

    if-ge v0, v1, :cond_3

    aget v6, v5, v0

    move v1, v2

    :goto_2
    const/16 v2, 0x10

    if-ge v3, v2, :cond_2

    ushr-int v2, v6, v3

    and-int/lit8 v7, v2, 0x1

    if-ne v7, v1, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    or-int/lit8 v1, v2, 0x1

    shl-int v2, v1, v4

    ushr-int/lit8 v1, v2, 0x1f

    shl-int/lit8 v7, v0, 0x4

    add-int/2addr v7, v3

    shr-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, p2, v7

    add-int/2addr v3, p1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v3, v3, -0x10

    move v2, v1

    goto :goto_1

    :cond_3
    return-void
.end method
