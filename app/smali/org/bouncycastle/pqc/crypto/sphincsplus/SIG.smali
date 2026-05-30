.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;
.super Ljava/lang/Object;


# instance fields
.field private final r:[B

.field private final sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

.field private final sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;


# direct methods
.method public constructor <init>(IIIIII[B)V
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p1, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    invoke-static {p7, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-array v0, p2, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    move v3, v1

    move v2, p1

    :goto_0
    if-eq v3, p2, :cond_1

    new-array v4, p1, [B

    invoke-static {p7, v2, v4, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    new-array v5, p3, [[B

    move v0, v1

    :goto_1
    if-eq v0, p3, :cond_0

    new-array v6, p1, [B

    aput-object v6, v5, v0

    aget-object v6, v5, v0

    invoke-static {p7, v2, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;-><init>([B[[B)V

    aput-object v6, v0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    new-array v0, p4, [Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    move v3, v1

    :goto_2
    if-eq v3, p4, :cond_3

    mul-int v0, p6, p1

    new-array v4, v0, [B

    array-length v0, v4

    invoke-static {p7, v2, v4, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v4

    add-int/2addr v2, v0

    new-array v5, p5, [[B

    move v0, v1

    :goto_3
    if-eq v0, p5, :cond_2

    new-array v6, p1, [B

    aput-object v6, v5, v0

    aget-object v6, v5, v0

    invoke-static {p7, v2, v6, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    invoke-direct {v6, v4, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;-><init>([B[[B)V

    aput-object v6, v0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    :cond_3
    array-length v0, p7

    if-eq v2, v0, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "signature wrong length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method


# virtual methods
.method public getR()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->r:[B

    return-object v0
.end method

.method public getSIG_FORS()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_fors:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_FORS;

    return-object v0
.end method

.method public getSIG_HT()[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG;->sig_ht:[Lorg/bouncycastle/pqc/crypto/sphincsplus/SIG_XMSS;

    return-object v0
.end method
