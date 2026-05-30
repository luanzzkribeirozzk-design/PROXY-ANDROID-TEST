.class public Lorg/bouncycastle/crypto/hpke/AEAD;
.super Ljava/lang/Object;


# instance fields
.field private final aeadId:S

.field private final baseNonce:[B

.field private cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

.field private final key:[B

.field private seq:J


# direct methods
.method public constructor <init>(S[B[B)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    iput-object p2, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->key:[B

    iput-object p3, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->baseNonce:[B

    iput-short p1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->aeadId:S

    iput-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;

    new-instance v1, Lorg/bouncycastle/crypto/engines/AESEngine;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/engines/AESEngine;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/modes/GCMBlockCipher;-><init>(Lorg/bouncycastle/crypto/BlockCipher;)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    goto :goto_0

    :pswitch_1
    new-instance v0, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/modes/ChaCha20Poly1305;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private ComputeNonce()[B
    .locals 7

    iget-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->baseNonce:[B

    array-length v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->baseNonce:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v3

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x8

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v2, -0x8

    add-int/2addr v4, v0

    aget-byte v5, v3, v4

    aget-byte v6, v1, v0

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method


# virtual methods
.method public open([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/hpke/AEAD;->open([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public open([B[BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v5, 0x0

    if-ltz p3, :cond_0

    array-length v0, p2

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid offset"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->aeadId:S

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Export only mode, cannot be used to seal/open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->key:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/hpke/AEAD;->ComputeNonce()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v1, v5, v0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    array-length v1, p1

    invoke-interface {v0, p1, v5, v1}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p4}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v1, v4, v0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I

    move-result v1

    add-int/2addr v0, v1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public seal([B[B)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p2

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/bouncycastle/crypto/hpke/AEAD;->seal([B[BII)[B

    move-result-object v0

    return-object v0
.end method

.method public seal([B[BII)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v5, 0x0

    if-ltz p3, :cond_0

    array-length v0, p2

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid offset"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int v0, p3, p4

    array-length v1, p2

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->aeadId:S

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Export only mode, cannot be used to seal/open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    iget-object v2, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->key:[B

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-direct {p0}, Lorg/bouncycastle/crypto/hpke/AEAD;->ComputeNonce()[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    const/4 v2, 0x1

    invoke-interface {v1, v2, v0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    array-length v1, p1

    invoke-interface {v0, p1, v5, v1}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processAADBytes([BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v0, p4}, Lorg/bouncycastle/crypto/modes/AEADCipher;->getOutputSize(I)I

    move-result v0

    new-array v4, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    move-object v1, p2

    move v2, p3

    move v3, p4

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/modes/AEADCipher;->processBytes([BII[BI)I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->cipher:Lorg/bouncycastle/crypto/modes/AEADCipher;

    invoke-interface {v1, v4, v0}, Lorg/bouncycastle/crypto/modes/AEADCipher;->doFinal([BI)I

    iget-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/hpke/AEAD;->seq:J

    return-object v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
