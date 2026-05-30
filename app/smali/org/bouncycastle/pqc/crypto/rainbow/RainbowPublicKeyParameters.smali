.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;


# instance fields
.field l1_Q3:[[[S

.field l1_Q5:[[[S

.field l1_Q6:[[[S

.field l1_Q9:[[[S

.field l2_Q9:[[[S

.field pk:[[[S

.field pk_seed:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B)V
    .locals 9

    const/4 v4, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v5

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v6

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    if-ne v0, v1, :cond_3

    filled-new-array {v5, v6, v6}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    move v4, v2

    move v0, v2

    :goto_0
    if-ge v4, v6, :cond_4

    move v3, v2

    :goto_1
    if-ge v3, v6, :cond_2

    move v1, v2

    :goto_2
    if-ge v1, v5, :cond_1

    if-le v4, v3, :cond_0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v1

    aget-object v7, v7, v4

    aput-short v2, v7, v3

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v1

    aget-object v7, v7, v4

    aget-byte v8, p2, v0

    and-int/lit16 v8, v8, 0xff

    int-to-short v8, v8

    aput-short v8, v7, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v0

    invoke-static {p2, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v3

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v3

    filled-new-array {v0, v1, v3}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_pkseed()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-static {v1, p2, v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-static {v1, p2, v0, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-static {v1, p2, v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-static {v1, p2, v0, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-static {v1, p2, v0, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->loadEncoded([[[S[BIZ)I

    move-result v1

    add-int/2addr v0, v1

    array-length v1, p2

    if-eq v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unparsed data in key encoding"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[B[[[S[[[S[[[S[[[S[[[S)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    invoke-virtual {p2}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    invoke-static {p3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-static {p4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-static {p5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-static {p6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-static {p7}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    return-void
.end method

.method constructor <init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S[[[S)V
    .locals 9

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v2

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v3

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v4

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v0

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v1

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v5

    filled-new-array {v0, v1, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_3

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_0

    aget-object v5, p2, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v1

    aget-object v7, v7, v0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p3, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v1

    aget-object v7, v7, v0

    invoke-static {v5, v6, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p4, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v1

    aget-object v7, v7, v0

    add-int v8, v2, v3

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_1

    aget-object v5, p5, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v1

    add-int v8, v0, v2

    aget-object v7, v7, v8

    invoke-static {v5, v6, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p6, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v1

    add-int v8, v0, v2

    aget-object v7, v7, v8

    add-int v8, v2, v3

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v4, :cond_2

    aget-object v5, p7, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    aget-object v7, v7, v1

    add-int v8, v0, v2

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    add-int v8, v2, v3

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    move v1, v0

    :goto_4
    if-ge v1, v4, :cond_7

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v2, :cond_4

    aget-object v5, p8, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v1, v3

    aget-object v7, v7, v8

    aget-object v7, v7, v0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p9, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v1, v3

    aget-object v7, v7, v8

    aget-object v7, v7, v0

    invoke-static {v5, v6, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p10, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v1, v3

    aget-object v7, v7, v8

    aget-object v7, v7, v0

    add-int v8, v2, v3

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_6
    if-ge v0, v3, :cond_5

    aget-object v5, p11, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v1, v3

    aget-object v7, v7, v8

    add-int v8, v0, v2

    aget-object v7, v7, v8

    invoke-static {v5, v6, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v5, p12, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v1, v3

    aget-object v7, v7, v8

    add-int v8, v0, v2

    aget-object v7, v7, v8

    add-int v8, v2, v3

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    :goto_7
    if-ge v0, v4, :cond_6

    aget-object v5, p13, v1

    aget-object v5, v5, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    add-int v8, v1, v3

    aget-object v7, v7, v8

    add-int v8, v0, v2

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    add-int v8, v2, v3

    invoke-static {v5, v6, v7, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_7
    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk_seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q3:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q5:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q6:[[[S

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l1_Q9:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->l2_Q9:[[[S

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v1

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    invoke-static {v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->getEncoded([[[SZ)[B

    move-result-object v0

    goto :goto_0
.end method

.method public getPk()[[[S
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;->pk:[[[S

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->cloneArray([[[S)[[[S

    move-result-object v0

    return-object v0
.end method
