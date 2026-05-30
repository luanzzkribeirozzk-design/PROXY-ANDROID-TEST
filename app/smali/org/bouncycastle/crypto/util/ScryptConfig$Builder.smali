.class public Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/ScryptConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final blockSize:I

.field private final costParameter:I

.field private final parallelizationParameter:I

.field private saltLength:I


# direct methods
.method public constructor <init>(III)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->saltLength:I

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    invoke-static {p1}, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->isPowerOf2(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cost parameter N must be > 1 and a power of 2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->costParameter:I

    iput p2, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->blockSize:I

    iput p3, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->parallelizationParameter:I

    return-void
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->costParameter:I

    return v0
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->blockSize:I

    return v0
.end method

.method static synthetic access$300(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->parallelizationParameter:I

    return v0
.end method

.method static synthetic access$400(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->saltLength:I

    return v0
.end method

.method private static isPowerOf2(I)Z
    .locals 1

    add-int/lit8 v0, p0, -0x1

    and-int/2addr v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/util/ScryptConfig;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/util/ScryptConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/bouncycastle/crypto/util/ScryptConfig;-><init>(Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;Lorg/bouncycastle/crypto/util/ScryptConfig$1;)V

    return-object v0
.end method

.method public withSaltLength(I)Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/util/ScryptConfig$Builder;->saltLength:I

    return-object p0
.end method
