.class public Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;
.super Ljava/lang/Object;


# instance fields
.field public gcd:I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculate(II)Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;
    .locals 7

    const/4 v3, 0x1

    const/4 v1, 0x0

    move v0, v1

    move v2, v3

    move v4, v3

    move v5, v1

    :goto_0
    if-eqz p1, :cond_0

    div-int v1, p0, p1

    rem-int v6, p0, p1

    mul-int v3, v1, v5

    sub-int v3, v4, v3

    mul-int/2addr v1, v2

    sub-int v1, v0, v1

    move v0, v2

    move v4, v5

    move p0, p1

    move v5, v3

    move p1, v6

    move v2, v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;

    invoke-direct {v1}, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;-><init>()V

    iput v4, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->x:I

    iput v0, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->y:I

    iput p0, v1, Lorg/bouncycastle/pqc/legacy/math/ntru/euclid/IntEuclidean;->gcd:I

    return-object v1
.end method
