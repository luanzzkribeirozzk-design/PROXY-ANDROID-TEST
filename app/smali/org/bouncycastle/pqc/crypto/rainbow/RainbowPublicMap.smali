.class Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;
.super Ljava/lang/Object;


# instance fields
.field private cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

.field private final num_gf_elements:I

.field private params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->num_gf_elements:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    return-void
.end method

.method private add_and_reduce([[S)[S
    .locals 10

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v7

    new-array v0, v7, [S

    move v5, v1

    move-object v6, v0

    :goto_0
    const/16 v0, 0x8

    if-ge v5, v0, :cond_2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    int-to-double v8, v5

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-int v4, v2

    new-array v2, v7, [S

    move v3, v4

    :goto_1
    const/16 v0, 0x100

    if-ge v3, v0, :cond_1

    move v0, v1

    :goto_2
    if-ge v0, v4, :cond_0

    iget-object v8, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    add-int v9, v3, v0

    aget-object v9, p1, v9

    invoke-virtual {v8, v2, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    mul-int/lit8 v0, v4, 0x2

    add-int/2addr v0, v3

    move v3, v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    int-to-short v4, v4

    invoke-virtual {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multVect(S[S)[S

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    add-int/lit8 v0, v5, 0x1

    move v5, v0

    move-object v6, v2

    goto :goto_0

    :cond_2
    return-object v6
.end method

.method private compute_accumulator([S[S[[[SI)[[S
    .locals 9

    const/4 v2, 0x0

    const/16 v0, 0x100

    filled-new-array {v0, p4}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    array-length v1, p2

    aget-object v3, p3, v2

    array-length v3, v3

    if-ne v1, v3, :cond_0

    array-length v1, p1

    aget-object v3, p3, v2

    aget-object v3, v3, v2

    array-length v3, v3

    if-ne v1, v3, :cond_0

    array-length v1, p3

    if-eq v1, p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Accumulator calculation not possible!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v1, v2

    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    aget-short v4, p2, v1

    invoke-virtual {v3, v4, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multVect(S[S)[S

    move-result-object v5

    move v3, v2

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_4

    move v4, v2

    :goto_2
    array-length v6, p3

    if-ge v4, v6, :cond_3

    aget-short v6, v5, v3

    if-eqz v6, :cond_2

    aget-object v7, v0, v6

    aget-object v6, v0, v6

    aget-short v6, v6, v4

    aget-object v8, p3, v4

    aget-object v8, v8, v1

    aget-short v8, v8, v3

    invoke-static {v6, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v6

    aput-short v6, v7, v4

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method


# virtual methods
.method public publicMap(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S
    .locals 2

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v1

    invoke-direct {p0, p2, p2, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->add_and_reduce([[S)[S

    move-result-object v0

    return-object v0
.end method

.method public publicMap_cyclic(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S
    .locals 12

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->params:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    const/16 v0, 0x100

    add-int v4, v2, v3

    filled-new-array {v0, v4}, [I

    move-result-object v0

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v4, 0x0

    invoke-static {p2, v4, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v4

    add-int v5, v1, v2

    invoke-static {p2, v1, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v5

    add-int v6, v1, v2

    array-length v7, p2

    invoke-static {p2, v6, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v6

    new-instance v7, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    iget-object v8, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v9

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    const/4 v8, 0x1

    invoke-static {v7, v2, v1, v1, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v8

    invoke-direct {p0, v4, v4, v8, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v2, v1, v2, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v9

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {p0, v5, v4, v9, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v9

    invoke-virtual {v10, v8, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v10, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-direct {p0, v6, v4, v10, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v10, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-direct {p0, v5, v5, v10, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v10, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-direct {p0, v6, v5, v10, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v10, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-direct {p0, v6, v6, v10, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v3, v1, v1, v9}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v9

    invoke-direct {p0, v4, v4, v9, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v7, v3, v1, v2, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v10

    iget-object v11, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {p0, v5, v4, v10, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v10

    invoke-virtual {v11, v9, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v7, v3, v1, v3, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v1

    iget-object v10, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {p0, v6, v4, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v1

    invoke-virtual {v10, v9, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    const/4 v4, 0x1

    invoke-static {v7, v3, v2, v2, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v4

    iget-object v9, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {p0, v5, v5, v4, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v4

    invoke-virtual {v9, v1, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v7, v3, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->generate_random(Ljava/security/SecureRandom;IIIZ)[[[S

    move-result-object v2

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {p0, v6, v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-direct {p0, v6, v6, v4, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->compute_accumulator([S[S[[[SI)[[S

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    const/16 v3, 0x100

    if-ge v1, v3, :cond_0

    aget-object v3, v8, v1

    aget-object v4, v2, v1

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->concatenate([S[S)[S

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->add_and_reduce([[S)[S

    move-result-object v0

    return-object v0
.end method
