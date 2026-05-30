.class Lorg/bouncycastle/pqc/crypto/crystals/kyber/Reduce;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static barretReduce(S)S
    .locals 4

    const-wide/32 v0, 0x4000000

    const-wide/16 v2, 0x680

    add-long/2addr v0, v2

    const-wide/16 v2, 0xd01

    div-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    mul-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x1a

    int-to-short v0, v0

    mul-int/lit16 v0, v0, 0xd01

    int-to-short v0, v0

    sub-int v0, p0, v0

    int-to-short v0, v0

    return v0
.end method

.method public static conditionalSubQ(S)S
    .locals 2

    add-int/lit16 v0, p0, -0xd01

    int-to-short v0, v0

    shr-int/lit8 v1, v0, 0xf

    and-int/lit16 v1, v1, 0xd01

    add-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method public static montgomeryReduce(I)S
    .locals 1

    const v0, 0xf301

    mul-int/2addr v0, p0

    int-to-short v0, v0

    mul-int/lit16 v0, v0, 0xd01

    sub-int v0, p0, v0

    shr-int/lit8 v0, v0, 0x10

    int-to-short v0, v0

    return v0
.end method
