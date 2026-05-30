.class abstract Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;
.super Ljava/lang/Object;


# instance fields
.field protected KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

.field protected keyMatrices:[I

.field protected keyMatrices_full:[I

.field protected keyMatrices_inv:[I

.field protected linearMatrices:[I

.field protected linearMatrices_full:[I

.field protected linearMatrices_inv:[I

.field protected roundConstants:[I

.field protected roundConstants_full:[I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    invoke-direct {v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;)V

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getSize()I

    move-result v1

    mul-int/2addr v1, p2

    invoke-virtual {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->setMatrixPointer(I)V

    return-object v0
.end method

.method static ReadFromProperty(Ljava/util/Properties;Ljava/lang/String;I)[I
    .locals 4

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->removeCommas(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/encoders/Hex;->decode([B)[B

    move-result-object v1

    new-array v2, p2, [I

    const/4 v0, 0x0

    :goto_0
    array-length v3, v1

    div-int/lit8 v3, v3, 0x4

    if-ge v0, v3, :cond_0

    mul-int/lit8 v3, v0, 0x4

    invoke-static {v1, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method static readArray(Ljava/io/DataInputStream;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-eq v0, v2, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static removeCommas(Ljava/lang/String;)[B
    .locals 4

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected KMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 3

    const/4 v0, 0x0

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0x81

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected LMatrixInv(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_1

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;
    .locals 2

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_3

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0xff

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x100

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    invoke-direct {p0, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->GET_MAT(Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method
