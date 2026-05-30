.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public B:I

.field public N:I

.field beta:D

.field public betaSq:D

.field bitsF:I

.field public d:I

.field public d1:I

.field public d2:I

.field public d3:I

.field public hashAlg:Lorg/bouncycastle/crypto/Digest;

.field normBound:D

.field public normBoundSq:D

.field public q:I

.field public signFailTolerance:I


# direct methods
.method public constructor <init>(IIIIDDLorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    iput p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    iput-wide p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    iput-wide p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    iput-object p9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->init()V

    return-void
.end method

.method public constructor <init>(IIIIIIDDDLorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    iput p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    iput p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    iput p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    iput-wide p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    iput-wide p9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    iput-object p13, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    const/4 v0, 0x6

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->init()V

    return-void

    :cond_1
    const-string v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    goto :goto_0
.end method

.method private init()V
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->betaSq:D

    iget-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;
    .locals 11

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    iget v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    iget v5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    iget-wide v6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    iget-wide v8, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    iget-object v10, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-direct/range {v1 .. v10}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;-><init>(IIIIDDLorg/bouncycastle/crypto/Digest;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-nez p1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    instance-of v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    if-nez v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->betaSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->betaSq:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v2, :cond_d

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v2, :cond_e

    move v0, v1

    goto :goto_0

    :cond_d
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    move v0, v1

    goto/16 :goto_0

    :cond_e
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_f

    move v0, v1

    goto/16 :goto_0

    :cond_f
    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_10

    move v0, v1

    goto/16 :goto_0

    :cond_10
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    if-eq v2, v3, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 7

    const/16 v6, 0x20

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->betaSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBoundSq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v0, v0, 0x1f

    ushr-long v4, v2, v6

    xor-long/2addr v2, v4

    long-to-int v1, v2

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SignatureParameters(N="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " q="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " B="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " beta="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " normBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " hashAlg="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->N:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->q:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d1:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d2:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->d3:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->B:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->beta:D

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget-wide v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->normBound:D

    invoke-virtual {v0, v2, v3}, Ljava/io/DataOutputStream;->writeDouble(D)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->signFailTolerance:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->bitsF:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUSigningParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
