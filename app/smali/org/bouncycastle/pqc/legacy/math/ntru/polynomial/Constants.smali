.class public Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Constants;
.super Ljava/lang/Object;


# static fields
.field static final BIGDEC_ONE:Ljava/math/BigDecimal;

.field static final BIGINT_ONE:Ljava/math/BigInteger;

.field static final BIGINT_ZERO:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide/16 v2, 0x1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Constants;->BIGINT_ZERO:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Constants;->BIGINT_ONE:Ljava/math/BigInteger;

    invoke-static {v2, v3}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/legacy/math/ntru/polynomial/Constants;->BIGDEC_ONE:Ljava/math/BigDecimal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
