.class public Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;
.super Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;


# direct methods
.method constructor <init>()V
    .locals 9

    const/16 v8, 0x26

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/16 v5, 0xff

    const/16 v4, 0x8

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;-><init>()V

    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/util/zip/GZIPInputStream;

    const-class v2, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    const-string v3, "lowmcL5.bin.properties"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->linearMatrices:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->roundConstants:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->keyMatrices:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->linearMatrices_full:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->keyMatrices_full:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->keyMatrices_inv:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->linearMatrices_inv:[I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->readArray(Ljava/io/DataInputStream;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->roundConstants_full:[I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v1, 0x100

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->linearMatrices:[I

    invoke-direct {v0, v8, v1, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->LMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/16 v1, 0x27

    const/16 v2, 0x100

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->keyMatrices:[I

    invoke-direct {v0, v1, v2, v4, v3}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->KMatrix:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->roundConstants:[I

    invoke-direct {v0, v8, v6, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->RConstants:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->linearMatrices_full:[I

    invoke-direct {v0, v7, v5, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->LMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->linearMatrices_inv:[I

    invoke-direct {v0, v7, v5, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->LMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    const/4 v1, 0x5

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->keyMatrices_full:[I

    invoke-direct {v0, v1, v5, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->KMatrix_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->keyMatrices_inv:[I

    invoke-direct {v0, v6, v5, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->KMatrix_inv:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->roundConstants_full:[I

    invoke-direct {v0, v7, v6, v4, v1}, Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;-><init>(III[I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstantsL5;->RConstants_full:Lorg/bouncycastle/pqc/crypto/picnic/KMatrices;

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to load Picnic properties: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Exceptions;->illegalStateException(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0
.end method
