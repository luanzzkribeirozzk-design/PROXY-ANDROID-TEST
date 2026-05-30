.class Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
.super Ljava/lang/Object;


# static fields
.field static final allReasons:Lorg/bouncycastle/pkix/jcajce/ReasonsMask;


# instance fields
.field private _reasons:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    const v1, 0x80ff

    invoke-direct {v0, v1}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>(I)V

    sput-object v0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->allReasons:Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/asn1/x509/ReasonFlags;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/ReasonFlags;->intValue()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    return-void
.end method


# virtual methods
.method addReasons(Lorg/bouncycastle/pkix/jcajce/ReasonsMask;)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->getReasons()I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    return-void
.end method

.method getReasons()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    return v0
.end method

.method hasNewReasons(Lorg/bouncycastle/pkix/jcajce/ReasonsMask;)Z
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->getReasons()I

    move-result v1

    iget v2, p0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    xor-int/2addr v1, v2

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method intersect(Lorg/bouncycastle/pkix/jcajce/ReasonsMask;)Lorg/bouncycastle/pkix/jcajce/ReasonsMask;
    .locals 4

    new-instance v0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    invoke-direct {v0}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>()V

    new-instance v1, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    iget v2, p0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    invoke-virtual {p1}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->getReasons()I

    move-result v3

    and-int/2addr v2, v3

    invoke-direct {v1, v2}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->addReasons(Lorg/bouncycastle/pkix/jcajce/ReasonsMask;)V

    return-object v0
.end method

.method isAllReasons()Z
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    sget-object v1, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->allReasons:Lorg/bouncycastle/pkix/jcajce/ReasonsMask;

    iget v1, v1, Lorg/bouncycastle/pkix/jcajce/ReasonsMask;->_reasons:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
