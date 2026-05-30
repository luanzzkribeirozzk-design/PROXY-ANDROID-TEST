.class Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;
.super Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Aes128MatrixGenerator"
.end annotation


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;-><init>(II)V

    return-void
.end method


# virtual methods
.method genMatrix([B)[S
    .locals 11

    const/16 v3, 0x10

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    mul-int/2addr v0, v2

    new-array v4, v0, [S

    new-array v5, v3, [B

    new-array v6, v3, [B

    new-instance v7, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v7}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    const/4 v0, 0x1

    new-instance v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-interface {v7, v0, v2}, Lorg/bouncycastle/crypto/BlockCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    if-ge v0, v2, :cond_2

    int-to-short v2, v0

    invoke-static {v2, v5, v1}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    move v2, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    if-ge v2, v3, :cond_1

    int-to-short v3, v2

    const/4 v8, 0x2

    invoke-static {v3, v5, v8}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    invoke-interface {v7, v5, v1, v6, v1}, Lorg/bouncycastle/crypto/BlockCipher;->processBlock([BI[BI)I

    move v3, v1

    :goto_2
    const/16 v8, 0x8

    if-ge v3, v8, :cond_0

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->n:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v2

    add-int/2addr v8, v3

    mul-int/lit8 v9, v3, 0x2

    invoke-static {v6, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToShort([BI)S

    move-result v9

    iget v10, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;->q:I

    add-int/lit8 v10, v10, -0x1

    and-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x8

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object v4
.end method
