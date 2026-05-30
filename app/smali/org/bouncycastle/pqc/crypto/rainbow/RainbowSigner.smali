.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/MessageSigner;


# static fields
.field private static final MAXITS:I = 0x10000


# instance fields
.field private cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

.field private hashAlgo:Lorg/bouncycastle/crypto/Digest;

.field private key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

.field private random:Ljava/security/SecureRandom;

.field signableDocumentLength:I

.field private version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    return-void
.end method

.method private genSignature([B)[B
    .locals 29

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v2

    new-array v12, v2, [B

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    move-object/from16 v0, p1

    array-length v4, v0

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v3, v4}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    const/4 v3, 0x0

    invoke-interface {v2, v12, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getV1()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO1()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getO2()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->sk_seed:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v5}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v5

    new-array v5, v5, [B

    invoke-static {v3, v4, v12, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B

    move-result-object v3

    new-instance v4, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v5

    invoke-virtual {v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    new-array v0, v13, [S

    move-object/from16 v18, v0

    const/4 v5, 0x0

    new-array v0, v14, [S

    move-object/from16 v19, v0

    new-array v0, v15, [S

    move-object/from16 v20, v0

    new-array v0, v15, [S

    move-object/from16 v21, v0

    filled-new-array {v15, v14}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    filled-new-array {v15, v15}, [I

    move-result-object v4

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[S

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v6

    invoke-virtual {v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_salt()I

    move-result v6

    new-array v0, v6, [B

    move-object/from16 v22, v0

    move/from16 v0, v16

    new-array v0, v0, [S

    move-object/from16 v23, v0

    new-array v8, v14, [S

    const/4 v7, 0x0

    const/4 v6, 0x0

    move-object v11, v5

    :goto_0
    if-nez v11, :cond_4

    const/high16 v5, 0x10000

    if-ge v6, v5, :cond_4

    new-array v9, v13, [B

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {v5, v9}, Ljava/security/SecureRandom;->nextBytes([B)V

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v13, :cond_0

    aget-byte v10, v9, v5

    and-int/lit16 v10, v10, 0xff

    int-to-short v10, v10

    aput-short v10, v18, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    filled-new-array {v14, v14}, [I

    move-result-object v5

    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    const/4 v9, 0x0

    move v11, v9

    :goto_2
    if-ge v11, v13, :cond_3

    const/4 v9, 0x0

    move v10, v9

    :goto_3
    if-ge v10, v14, :cond_2

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v14, :cond_1

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F2:[[[S

    move-object/from16 v24, v0

    aget-object v24, v24, v10

    aget-object v24, v24, v11

    aget-short v24, v24, v9

    aget-short v25, v18, v11

    invoke-static/range {v24 .. v25}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v24

    aget-object v25, v5, v10

    aget-object v26, v5, v10

    aget-short v26, v26, v9

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v24

    aput-short v24, v25, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_1
    add-int/lit8 v9, v10, 0x1

    move v10, v9

    goto :goto_3

    :cond_2
    add-int/lit8 v9, v11, 0x1

    move v11, v9

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v9, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->inverse([[S)[[S

    move-result-object v5

    add-int/lit8 v6, v6, 0x1

    move-object v11, v5

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v9, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v10, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l1_F1:[[[S

    aget-object v10, v10, v5

    move-object/from16 v0, v18

    invoke-virtual {v9, v10, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix_quad([[S[S)S

    move-result v9

    aput-short v9, v19, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    move v10, v5

    :goto_6
    if-ge v10, v13, :cond_9

    const/4 v5, 0x0

    move v9, v5

    :goto_7
    if-ge v9, v15, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F1:[[[S

    move-object/from16 v24, v0

    aget-object v24, v24, v9

    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix_quad([[S[S)S

    move-result v5

    aput-short v5, v20, v9

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v14, :cond_6

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F2:[[[S

    move-object/from16 v24, v0

    aget-object v24, v24, v9

    aget-object v24, v24, v10

    aget-short v24, v24, v5

    aget-short v25, v18, v10

    invoke-static/range {v24 .. v25}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v24

    aget-object v25, v3, v9

    aget-object v26, v3, v9

    aget-short v26, v26, v5

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v24

    aput-short v24, v25, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_6
    const/4 v5, 0x0

    :goto_9
    if-ge v5, v15, :cond_7

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F3:[[[S

    move-object/from16 v24, v0

    aget-object v24, v24, v9

    aget-object v24, v24, v10

    aget-short v24, v24, v5

    aget-short v25, v18, v10

    invoke-static/range {v24 .. v25}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v24

    aget-object v25, v4, v9

    aget-object v26, v4, v9

    aget-short v26, v26, v5

    move/from16 v0, v26

    move/from16 v1, v24

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v24

    aput-short v24, v25, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_7
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto :goto_7

    :cond_8
    add-int/lit8 v5, v10, 0x1

    move v10, v5

    goto :goto_6

    :cond_9
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object/from16 v24, v0

    move v9, v6

    move-object v5, v7

    :goto_a
    if-nez v5, :cond_e

    const/high16 v6, 0x10000

    if-ge v9, v6, :cond_e

    filled-new-array {v15, v15}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[S

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v6, v12, v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v8, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->s1:[[S

    move/from16 v0, v16

    invoke-static {v6, v14, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-static {v6, v14}, Lorg/bouncycastle/util/Arrays;->copyOf([SI)[S

    move-result-object v10

    invoke-virtual {v8, v10, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v7

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v23

    invoke-static {v7, v8, v0, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, v23

    invoke-static {v6, v14, v0, v14, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v0, v23

    invoke-static {v0, v14}, Lorg/bouncycastle/util/Arrays;->copyOf([SI)[S

    move-result-object v7

    move-object/from16 v0, v19

    invoke-virtual {v6, v0, v7}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v7, v11, v6}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v6, v3, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v7

    const/4 v6, 0x0

    :goto_b
    if-ge v6, v15, :cond_a

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F5:[[[S

    move-object/from16 v25, v0

    aget-object v25, v25, v6

    move-object/from16 v0, v25

    invoke-virtual {v8, v0, v10}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix_quad([[S[S)S

    move-result v8

    aput-short v8, v21, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_b

    :cond_a
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v0, v21

    invoke-virtual {v6, v7, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v0, v20

    invoke-virtual {v7, v6, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v0, v23

    move/from16 v1, v16

    invoke-static {v0, v14, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([SII)[S

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v25

    const/4 v6, 0x0

    move v8, v6

    :goto_c
    if-ge v8, v14, :cond_d

    const/4 v6, 0x0

    move v7, v6

    :goto_d
    if-ge v7, v15, :cond_c

    const/4 v6, 0x0

    :goto_e
    if-ge v6, v15, :cond_b

    iget-object v0, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->l2_F6:[[[S

    move-object/from16 v26, v0

    aget-object v26, v26, v7

    aget-object v26, v26, v8

    aget-short v26, v26, v6

    aget-short v27, v10, v8

    invoke-static/range {v26 .. v27}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->multElem(SS)S

    move-result v26

    aget-object v27, v5, v7

    aget-object v28, v5, v7

    aget-short v28, v28, v6

    move/from16 v0, v28

    move/from16 v1, v26

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/GF2Field;->addElem(SS)S

    move-result v26

    aput-short v26, v27, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_b
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_d

    :cond_c
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_c

    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v6, v5, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addMatrix([[S[[S)[[S

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v0, v25

    invoke-virtual {v6, v5, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->solveEquation([[S[S)[S

    move-result-object v5

    add-int/lit8 v6, v9, 0x1

    move v9, v6

    move-object v8, v10

    goto/16 :goto_a

    :cond_e
    if-nez v5, :cond_f

    new-array v3, v15, [S

    :goto_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v5, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t1:[[S

    invoke-virtual {v4, v5, v8}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    move-object/from16 v0, v18

    invoke-virtual {v5, v0, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v6, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t4:[[S

    invoke-virtual {v5, v6, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPrivateKeyParameters;->t3:[[S

    invoke-virtual {v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->multiplyMatrix([[S[S)[S

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->cf:Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;

    invoke-virtual {v5, v8, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/ComputeInField;->addVect([S[S)[S

    move-result-object v2

    move/from16 v0, v17

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Arrays;->copyOf([SI)[S

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v2, v5, v4, v13, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v2, 0x0

    add-int v5, v14, v13

    invoke-static {v3, v2, v4, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/high16 v2, 0x10000

    if-ne v9, v2, :cond_10

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "unable to generate signature - LES not solvable"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_f
    move-object v3, v5

    goto :goto_f

    :cond_10
    invoke-static {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->convertArray([S)[B

    move-result-object v2

    move-object/from16 v0, v22

    invoke-static {v2, v0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v2

    return-object v2
.end method

.method private makeMessageRepresentative([B)[S
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    new-array v3, v0, [S

    move v0, v1

    move v2, v1

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    :cond_0
    return-object v3

    :cond_1
    aget-byte v1, p1, v2

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v3, v0

    add-int/lit8 v1, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    array-length v2, v3

    if-ge v0, v2, :cond_0

    move v2, v1

    goto :goto_0
.end method


# virtual methods
.method public generateSignature([B)[B
    .locals 1

    invoke-direct {p0, p1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->genSignature([B)[B

    move-result-object v0

    return-object v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 3

    if-eqz p1, :cond_1

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_0

    check-cast p2, Lorg/bouncycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getRandom()Ljava/security/SecureRandom;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    invoke-virtual {p2}, Lorg/bouncycastle/crypto/params/ParametersWithRandom;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    :goto_0
    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    :goto_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getDocLength()I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->signableDocumentLength:I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    return-void

    :cond_0
    check-cast p2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getLen_skseed()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getHash_algo()Lorg/bouncycastle/crypto/Digest;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowDRBG;-><init>([BLorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->random:Ljava/security/SecureRandom;

    move-object v0, p2

    goto :goto_0

    :cond_1
    check-cast p2, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    goto :goto_1
.end method

.method public verifySignature([B[B)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v1, p1, v6, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v6}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v1

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getM()I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->getN()I

    move-result v2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;->getParameters()Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;-><init>(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;)V

    array-length v4, p2

    invoke-static {p2, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->hashAlgo:Lorg/bouncycastle/crypto/Digest;

    new-array v1, v1, [B

    invoke-static {v5, v0, v4, v1}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->hash(Lorg/bouncycastle/crypto/Digest;[B[B[B)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->makeMessageRepresentative([B)[S

    move-result-object v1

    invoke-static {p2, v6, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->convertArray([B)[S

    move-result-object v2

    sget-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner$1;->$SwitchMap$org$bouncycastle$pqc$crypto$rainbow$Version:[I

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid version. Please choose one of the following: classic, circumzenithal, compressed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->publicMap(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S

    move-result-object v0

    :goto_0
    invoke-static {v1, v0}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowUtil;->equals([S[S)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowSigner;->key:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowKeyParameters;

    check-cast v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;

    invoke-virtual {v3, v0, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicMap;->publicMap_cyclic(Lorg/bouncycastle/pqc/crypto/rainbow/RainbowPublicKeyParameters;[S)[S

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
