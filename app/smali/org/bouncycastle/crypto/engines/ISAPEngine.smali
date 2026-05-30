.class public Lorg/bouncycastle/crypto/engines/ISAPEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;,
        Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;
    }
.end annotation


# instance fields
.field final CRYPTO_KEYBYTES:I

.field final CRYPTO_NPUBBYTES:I

.field private ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

.field final ISAP_STATE_SZ:I

.field private ISAP_rH:I

.field private ISAP_rH_SZ:I

.field private aadData:Ljava/io/ByteArrayOutputStream;

.field private ad:[B

.field private algorithmName:Ljava/lang/String;

.field private c:[B

.field private forEncryption:Z

.field private initialised:Z

.field private k:[B

.field private mac:[B

.field private final message:Ljava/io/ByteArrayOutputStream;

.field private npub:[B

.field private final outputStream:Ljava/io/ByteArrayOutputStream;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;)V
    .locals 2

    const/16 v0, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->CRYPTO_KEYBYTES:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->CRYPTO_NPUBBYTES:I

    const/16 v0, 0x28

    iput v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_STATE_SZ:I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    sget-object v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$ISAPEngine$IsapType:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/ISAPEngine$IsapType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string v0, "ISAP-A-128A AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128A;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string v0, "ISAP-K-128A AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_A_128;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string v0, "ISAP-A-128 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAPAEAD_K_128;-><init>(Lorg/bouncycastle/crypto/engines/ISAPEngine;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    const-string v0, "ISAP-K-128 AEAD"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic access$000(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I

    return v0
.end method

.method static synthetic access$002(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH:I

    return p1
.end method

.method static synthetic access$100(Lorg/bouncycastle/crypto/engines/ISAPEngine;)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    return v0
.end method

.method static synthetic access$102(Lorg/bouncycastle/crypto/engines/ISAPEngine;I)I
    .locals 0

    iput p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    return p1
.end method

.method static synthetic access$200(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    return-object v0
.end method

.method static synthetic access$300(Lorg/bouncycastle/crypto/engines/ISAPEngine;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/16 v11, 0x10

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    array-length v3, v1

    add-int v0, p2, v3

    add-int/lit8 v0, v0, 0x10

    array-length v4, p1

    if-le v0, v4, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    array-length v6, p1

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_enc([BII[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int v0, p2, v3

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    new-array v1, v11, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    array-length v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    array-length v8, v1

    iget-object v9, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    move v10, v2

    invoke-interface/range {v4 .. v10}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_mac([BI[BI[BI)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    invoke-static {v1, v2, p1, v0, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v3, 0x10

    :goto_0
    return v7

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    new-array v0, v11, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    array-length v0, v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    array-length v1, v1

    sub-int v7, v0, v1

    add-int v0, v7, p2

    array-length v1, p1

    if-le v0, v1, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ad:[B

    array-length v5, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    move v9, v2

    invoke-interface/range {v3 .. v9}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_mac([BI[BI[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->reset()V

    move v0, v2

    :goto_1
    if-ge v0, v11, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    aget-byte v1, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    add-int v4, v7, v0

    aget-byte v3, v3, v4

    if-eq v1, v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Mac does not match"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->c:[B

    array-length v6, p1

    move v3, v7

    move-object v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_enc([BII[BII)V

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    return v0
.end method

.method public getIVBytesSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->mac:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 1

    add-int/lit8 v0, p1, 0x10

    return v0
.end method

.method public getUpdateOutputSize(I)I
    .locals 0

    return p1
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v3, 0x10

    const/4 v6, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ISAP AEAD init parameters must include an IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-eq v2, v3, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ISAP AEAD requires exactly 12 bytes of IV"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ISAP AEAD init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    array-length v2, v0

    if-eq v2, v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ISAP AEAD key must be 128 bits long"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v5

    invoke-direct {v2, v3, v4, p2, v5}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    array-length v2, v1

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    array-length v2, v0

    new-array v2, v2, [B

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->npub:[B

    array-length v3, v1

    invoke-static {v1, v6, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->k:[B

    array-length v2, v0

    invoke-static {v0, v6, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->init()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->reset()V

    return-void
.end method

.method public processAADByte(B)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 3

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v1, Lorg/bouncycastle/crypto/DataLengthException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "input buffer too short"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    if-eqz v0, :cond_0

    const-string v0, "encryption"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const-string v0, "decryption"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public processByte(B[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v1, v3, [B

    aput-byte p1, v1, v2

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/ISAPEngine;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->forEncryption:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    div-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAP_rH_SZ:I

    mul-int v3, v0, v1

    add-int v0, p5, v3

    array-length v1, p4

    if-le v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer is too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    array-length v6, p4

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v6}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->isap_enc([BII[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p4, p5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    array-length v2, v1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_0
    return v3

    :cond_3
    move v3, v2

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Need call init function before encryption/decryption"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->aadData:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->ISAPAEAD:Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/engines/ISAPEngine$ISAP_AEAD;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->message:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ISAPEngine;->outputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method
