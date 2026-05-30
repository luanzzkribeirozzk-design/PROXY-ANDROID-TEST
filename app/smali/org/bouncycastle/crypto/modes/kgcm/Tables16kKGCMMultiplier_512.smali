.class public Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/kgcm/KGCMMultiplier;


# instance fields
.field private T:[[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init([J)V
    .locals 7

    const/16 v6, 0x100

    const/4 v5, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    if-nez v0, :cond_1

    const/16 v0, 0x8

    filled-new-array {v6, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[J

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    aget-object v0, v0, v5

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->copy([J[J)V

    const/4 v0, 0x2

    :goto_0
    if-ge v0, v6, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    shr-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->multiplyX([J[J)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    aget-object v1, v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    aget-object v2, v2, v5

    iget-object v3, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-static {v1, v2, v3}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->add([J[J[J)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    aget-object v0, v0, v5

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->equal([J[J)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    return-void
.end method

.method public multiplyH([J)V
    .locals 6

    const/16 v0, 0x8

    new-array v1, v0, [J

    iget-object v0, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    const/4 v2, 0x7

    aget-wide v2, p1, v2

    const/16 v4, 0x38

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    and-int/lit16 v2, v2, 0xff

    aget-object v0, v0, v2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->copy([J[J)V

    const/16 v0, 0x3e

    :goto_0
    if-ltz v0, :cond_0

    invoke-static {v1, v1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->multiplyX8([J[J)V

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/kgcm/Tables16kKGCMMultiplier_512;->T:[[J

    ushr-int/lit8 v3, v0, 0x3

    aget-wide v4, p1, v3

    and-int/lit8 v3, v0, 0x7

    shl-int/lit8 v3, v3, 0x3

    ushr-long/2addr v4, v3

    long-to-int v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-object v2, v2, v3

    invoke-static {v2, v1, v1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->add([J[J[J)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, p1}, Lorg/bouncycastle/crypto/modes/kgcm/KGCMUtil_512;->copy([J[J)V

    return-void
.end method
