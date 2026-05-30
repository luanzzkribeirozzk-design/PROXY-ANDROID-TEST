.class Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
.super Ljava/lang/Object;


# static fields
.field public static final SABER_EP:I = 0xa

.field private static final SABER_HASHBYTES:I = 0x20

.field private static final SABER_KEYBYTES:I = 0x20

.field public static final SABER_N:I = 0x100

.field private static final SABER_NOISE_SEEDBYTES:I = 0x20

.field private static final SABER_SEEDBYTES:I = 0x20


# instance fields
.field private final SABER_BYTES_CCA_DEC:I

.field private final SABER_EQ:I

.field private final SABER_ET:I

.field private final SABER_INDCPA_PUBLICKEYBYTES:I

.field private final SABER_INDCPA_SECRETKEYBYTES:I

.field private final SABER_L:I

.field private final SABER_MU:I

.field private final SABER_POLYBYTES:I

.field private final SABER_POLYCOINBYTES:I

.field private final SABER_POLYCOMPRESSEDBYTES:I

.field private final SABER_POLYVECBYTES:I

.field private final SABER_POLYVECCOMPRESSEDBYTES:I

.field private final SABER_PUBLICKEYBYTES:I

.field private final SABER_SCALEBYTES_KEM:I

.field private final SABER_SECRETKEYBYTES:I

.field private final defaultKeySize:I

.field private final h1:I

.field private final h2:I

.field private final poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

.field protected final symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

.field private final usingAES:Z

.field protected final usingEffectiveMasking:Z

.field private final utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;


# direct methods
.method public constructor <init>(IIZZ)V
    .locals 4

    const/4 v3, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    iput-boolean p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->usingAES:Z

    iput-boolean p4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->usingEffectiveMasking:Z

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/16 v0, 0xa

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    :goto_0
    if-eqz p3, :cond_2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    :goto_1
    if-eqz p4, :cond_3

    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    const/16 v0, 0x140

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOMPRESSEDBYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOMPRESSEDBYTES:I

    mul-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SCALEBYTES_KEM:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_PUBLICKEYBYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SCALEBYTES_KEM:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, -0x1

    shl-int v0, v2, v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x1

    shl-int v0, v2, v0

    rsub-int v0, v0, 0x100

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    add-int/lit8 v1, v1, -0xa

    add-int/lit8 v1, v1, -0x1

    shl-int v1, v2, v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h2:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/saber/Utils;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-direct {v0, p0}, Lorg/bouncycastle/pqc/crypto/saber/Poly;-><init>(Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    return-void

    :cond_0
    if-ne p1, v1, :cond_1

    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    const/4 v0, 0x4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    goto/16 :goto_0

    :cond_1
    iput v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    goto/16 :goto_0

    :cond_2
    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;

    invoke-direct {v0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$ShakeSymmetric;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    goto/16 :goto_1

    :cond_3
    const/16 v0, 0xd

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    mul-int/lit16 v0, v0, 0x100

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    goto/16 :goto_2
.end method

.method static cmov([B[BIIB)V
    .locals 5

    neg-int v0, p4

    int-to-byte v1, v0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    aget-byte v2, p0, v0

    add-int v3, v0, p2

    aget-byte v3, p1, v3

    aget-byte v4, p0, v0

    xor-int/2addr v3, v4

    and-int/2addr v3, v1

    xor-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private indcpa_kem_dec([B[B[B)V
    .locals 7

    const/4 v2, 0x0

    const/16 v6, 0x100

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v0, v6}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v1, v6}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    new-array v3, v6, [S

    new-array v4, v6, [S

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v5, p1, v2, v0}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECq([BI[[S)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v5, p2, v1}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECp([B[[S)V

    iget-object v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v5, v1, v0, v3}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->InnerProd([[S[[S[S)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-virtual {v0, p2, v1, v4}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLT([BI[S)V

    move v0, v2

    :goto_0
    if-ge v0, v6, :cond_0

    aget-short v1, v3, v0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h2:I

    add-int/2addr v1, v2

    aget-short v2, v4, v0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v5, v5, 0xa

    shl-int/2addr v2, v5

    sub-int/2addr v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x9

    int-to-short v1, v1

    aput-short v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v0, p3, v3}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLmsg2BS([B[S)V

    return-void
.end method

.method private indcpa_kem_enc([B[B[B[B)V
    .locals 10

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/16 v2, 0x100

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/16 v2, 0x100

    filled-new-array {v1, v2}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/16 v3, 0x100

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    const/16 v4, 0x100

    filled-new-array {v3, v4}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    const/16 v4, 0x100

    new-array v5, v4, [S

    const/16 v4, 0x100

    new-array v6, v4, [S

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    array-length v7, p3

    invoke-static {p3, v4, v7}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v7, v0, v4}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenMatrix([[[S[B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v4, v1, p2}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenSecret([[S[B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    const/4 v7, 0x0

    invoke-virtual {v4, v0, v1, v2, v7}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->MatrixVectorMul([[[S[[S[[SI)V

    const/4 v0, 0x0

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    if-ge v0, v4, :cond_1

    const/4 v4, 0x0

    :goto_1
    const/16 v7, 0x100

    if-ge v4, v7, :cond_0

    aget-object v7, v2, v0

    aget-object v8, v2, v0

    aget-short v8, v8, v4

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v8, v9

    const v9, 0xffff

    and-int/2addr v8, v9

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    add-int/lit8 v9, v9, -0xa

    ushr-int/2addr v8, v9

    int-to-short v8, v8

    aput-short v8, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v0, p4, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECp2BS([B[[S)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v0, p3, v3}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLVECp([B[[S)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v0, v3, v1, v6}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->InnerProd([[S[[S[S)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v0, p1, v5}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->BS2POLmsg([B[S)V

    const/4 v0, 0x0

    :goto_2
    const/16 v1, 0x100

    if-ge v0, v1, :cond_2

    aget-short v1, v6, v0

    aget-short v2, v5, v0

    shl-int/lit8 v2, v2, 0x9

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v1, v2

    const v2, 0xffff

    and-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    rsub-int/lit8 v2, v2, 0xa

    ushr-int/2addr v1, v2

    int-to-short v1, v1

    aput-short v1, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    invoke-virtual {v0, p4, v1, v6}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLT2BS([BI[S)V

    return-void
.end method

.method private indcpa_kem_keypair([B[BLjava/security/SecureRandom;)V
    .locals 10

    const/4 v3, 0x0

    const/16 v9, 0x100

    const/16 v7, 0x20

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v0, v1, v9}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v1, v9}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[S

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    filled-new-array {v2, v9}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    new-array v5, v7, [B

    new-array v4, v7, [B

    invoke-virtual {p3, v5}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v6, v5, v5, v7, v7}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->prf([B[BII)V

    invoke-virtual {p3, v4}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v6, v0, v5}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenMatrix([[[S[B)V

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    invoke-virtual {v6, v1, v4}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->GenSecret([[S[B)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->poly:Lorg/bouncycastle/pqc/crypto/saber/Poly;

    const/4 v6, 0x1

    invoke-virtual {v4, v0, v1, v2, v6}, Lorg/bouncycastle/pqc/crypto/saber/Poly;->MatrixVectorMul([[[S[[S[[SI)V

    move v0, v3

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    if-ge v0, v4, :cond_1

    move v4, v3

    :goto_1
    if-ge v4, v9, :cond_0

    aget-object v6, v2, v0

    aget-object v7, v2, v0

    aget-short v7, v7, v4

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->h1:I

    add-int/2addr v7, v8

    const v8, 0xffff

    and-int/2addr v7, v8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_EQ:I

    add-int/lit8 v8, v8, -0xa

    ushr-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v0, p2, v1}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECq2BS([B[[S)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Utils;->POLVECp2BS([B[[S)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECCOMPRESSEDBYTES:I

    array-length v1, v5

    invoke-static {v5, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static verify([B[BI)I
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-byte v1, p0, v0

    aget-byte v4, p1, v0

    xor-int/2addr v1, v4

    int-to-long v4, v1

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    neg-long v0, v2

    const/16 v2, 0x3f

    ushr-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public crypto_kem_dec([B[B[B)I
    .locals 9

    const/16 v4, 0x40

    const/16 v8, 0x20

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    new-array v2, v0, [B

    new-array v3, v4, [B

    new-array v4, v4, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    array-length v5, p3

    invoke-static {p3, v0, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v5

    invoke-direct {p0, p3, p2, v3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_dec([B[B[B)V

    move v0, v1

    :goto_0
    if-ge v0, v8, :cond_0

    add-int/lit8 v6, v0, 0x20

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    add-int/lit8 v7, v7, -0x40

    add-int/2addr v7, v0

    aget-byte v7, p3, v7

    aput-byte v7, v3, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v0, v4, v3}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_g([B[B)V

    array-length v0, v4

    invoke-static {v4, v8, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {p0, v3, v0, v5, v2}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_enc([B[B[B[B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    invoke-static {p2, v2, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->verify([B[BI)I

    move-result v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v2, v4, p2, v8}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    add-int/lit8 v2, v2, -0x20

    int-to-byte v0, v0

    invoke-static {v4, p3, v2, v8, v0}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->cmov([B[BIIB)V

    new-array v0, v8, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v2, v0, v4, v1}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 v2, v2, 0x8

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public crypto_kem_enc([B[B[BLjava/security/SecureRandom;)I
    .locals 6

    const/16 v1, 0x40

    const/16 v5, 0x20

    const/4 v4, 0x0

    new-array v0, v1, [B

    new-array v1, v1, [B

    new-array v2, v5, [B

    invoke-virtual {p4, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v3, v2, v2, v4}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    invoke-static {v2, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v2, v1, p3, v5}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v2, v0, v1}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_g([B[B)V

    array-length v2, v0

    invoke-static {v0, v5, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {p0, v1, v2, p3, p1}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_enc([B[B[B[B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v1, v0, p1, v5}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    new-array v1, v5, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    invoke-virtual {v2, v1, v0, v4}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 v0, v0, 0x8

    invoke-static {v1, v4, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v4
.end method

.method public crypto_kem_keypair([B[BLjava/security/SecureRandom;)I
    .locals 4

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->indcpa_kem_keypair([B[BLjava/security/SecureRandom;)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_PUBLICKEYBYTES:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_INDCPA_SECRETKEYBYTES:I

    add-int/2addr v2, v0

    aget-byte v3, p1, v0

    aput-byte v3, p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->symmetric:Lorg/bouncycastle/pqc/crypto/saber/Symmetric;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    add-int/lit8 v2, v2, -0x40

    invoke-virtual {v0, p2, p1, v2}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;->hash_h([B[BI)V

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-virtual {p3, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    add-int/lit8 v2, v2, -0x20

    array-length v3, v0

    invoke-static {v0, v1, p2, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v1
.end method

.method public getCipherTextSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_BYTES_CCA_DEC:I

    return v0
.end method

.method public getPrivateKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_SECRETKEYBYTES:I

    return v0
.end method

.method public getPublicKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_PUBLICKEYBYTES:I

    return v0
.end method

.method public getSABER_EP()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getSABER_ET()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_ET:I

    return v0
.end method

.method public getSABER_KEYBYTES()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getSABER_L()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_L:I

    return v0
.end method

.method public getSABER_MU()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_MU:I

    return v0
.end method

.method public getSABER_N()I
    .locals 1

    const/16 v0, 0x100

    return v0
.end method

.method public getSABER_NOISE_SEEDBYTES()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getSABER_POLYBYTES()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYBYTES:I

    return v0
.end method

.method public getSABER_POLYCOINBYTES()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYCOINBYTES:I

    return v0
.end method

.method public getSABER_POLYVECBYTES()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->SABER_POLYVECBYTES:I

    return v0
.end method

.method public getSABER_SEEDBYTES()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->defaultKeySize:I

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getUtils()Lorg/bouncycastle/pqc/crypto/saber/Utils;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;->utils:Lorg/bouncycastle/pqc/crypto/saber/Utils;

    return-object v0
.end method
