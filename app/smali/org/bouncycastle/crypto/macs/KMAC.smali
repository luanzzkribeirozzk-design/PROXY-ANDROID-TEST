.class public Lorg/bouncycastle/crypto/macs/KMAC;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Mac;
.implements Lorg/bouncycastle/crypto/Xof;


# static fields
.field private static final padding:[B


# instance fields
.field private final bitLength:I

.field private final cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

.field private firstOutput:Z

.field private initialised:Z

.field private key:[B

.field private final outputLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const-string v1, "KMAC"

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;-><init>(I[B[B)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    iput p1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->bitLength:I

    mul-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->outputLength:I

    return-void
.end method

.method private bytePad([BI)V
    .locals 4

    const/4 v3, 0x0

    int-to-long v0, p2

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p0, v0, v3, v1}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    invoke-static {p1}, Lorg/bouncycastle/crypto/macs/KMAC;->encode([B)[B

    move-result-object v1

    array-length v2, v1

    invoke-virtual {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    array-length v0, v0

    array-length v1, v1

    add-int/2addr v0, v1

    rem-int/2addr v0, p2

    sub-int v0, p2, v0

    if-lez v0, :cond_1

    if-eq v0, p2, :cond_1

    :goto_0
    sget-object v1, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    array-length v1, v1

    if-le v0, v1, :cond_0

    sget-object v1, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    sget-object v2, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    array-length v2, v2

    invoke-virtual {p0, v1, v3, v2}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    sget-object v1, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    array-length v1, v1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    sget-object v1, Lorg/bouncycastle/crypto/macs/KMAC;->padding:[B

    invoke-virtual {p0, v1, v3, v0}, Lorg/bouncycastle/crypto/macs/KMAC;->update([BII)V

    :cond_1
    return-void
.end method

.method private static encode([B)[B
    .locals 2

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->leftEncode(J)[B

    move-result-object v0

    invoke-static {v0, p0}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->getMacSize()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->getMacSize()I

    move-result v1

    invoke-virtual {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->reset()V

    return v0
.end method

.method public doFinal([BII)I
    .locals 4

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    mul-int/lit8 v0, p3, 0x8

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doFinal([BII)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->reset()V

    return v0
.end method

.method public doOutput([BII)I
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/XofUtils;->rightEncode(J)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    iput-boolean v3, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->doOutput([BII)I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->getByteLength()I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->outputLength:I

    return v0
.end method

.method public getMacSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->outputLength:I

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/CipherParameters;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    check-cast p1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/macs/KMAC;->reset()V

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->bitLength:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    const/16 v1, 0xa8

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/macs/KMAC;->bytePad([BI)V

    :cond_0
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->firstOutput:Z

    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->key:[B

    const/16 v1, 0x88

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/macs/KMAC;->bytePad([BI)V

    goto :goto_0
.end method

.method public update(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update(B)V

    return-void
.end method

.method public update([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->initialised:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "KMAC not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/macs/KMAC;->cshake:Lorg/bouncycastle/crypto/digests/CSHAKEDigest;

    invoke-virtual {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/CSHAKEDigest;->update([BII)V

    return-void
.end method
