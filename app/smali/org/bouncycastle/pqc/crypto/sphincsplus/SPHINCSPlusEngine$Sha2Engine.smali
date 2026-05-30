.class Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sha2Engine"
.end annotation


# instance fields
.field private final bl:I

.field private final hmacBuf:[B

.field private final mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

.field private final msgDigest:Lorg/bouncycastle/crypto/Digest;

.field private final msgDigestBuf:[B

.field private msgMemo:Lorg/bouncycastle/util/Memoable;

.field private final sha256:Lorg/bouncycastle/crypto/Digest;

.field private final sha256Buf:[B

.field private sha256Memo:Lorg/bouncycastle/util/Memoable;

.field private final treeHMac:Lorg/bouncycastle/crypto/macs/HMac;


# direct methods
.method public constructor <init>(ZIIIIII)V
    .locals 2

    invoke-direct/range {p0 .. p7}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine;-><init>(ZIIIIII)V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    const/16 v0, 0x10

    if-ne p2, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bl:I

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/macs/HMac;->getMacSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->hmacBuf:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    return-void

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    new-instance v0, Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v0, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v1, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bl:I

    goto :goto_0
.end method

.method private compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 6

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/16 v0, 0x16

    new-array v0, v0, [B

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    invoke-static {v1, v5, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v2, 0x13

    const/16 v3, 0x9

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;->value:[B

    const/16 v2, 0x14

    const/16 v3, 0xa

    const/16 v4, 0xc

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public F([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->robust:Z

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bitmask256([B[B)[B

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Memo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0, v2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p3

    invoke-interface {v0, p3, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public H([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B[B)[B
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgMemo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0, v2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->robust:Z

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0, p3, p4}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bitmask([B[B[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v0

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p3

    invoke-interface {v0, p3, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p4

    invoke-interface {v0, p4, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    goto :goto_0
.end method

.method H_msg([B[B[B[B)Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;
    .locals 11

    const/4 v10, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->A:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->K:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->H:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->D:I

    div-int/2addr v1, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->H:I

    sub-int/2addr v2, v1

    add-int/lit8 v3, v1, 0x7

    div-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v2, 0x7

    div-int/lit8 v4, v4, 0x8

    add-int v5, v0, v3

    add-int/2addr v5, v4

    new-array v5, v5, [B

    iget-object v6, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v6}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v6

    new-array v6, v6, [B

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, p1

    invoke-interface {v7, p1, v10, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, p2

    invoke-interface {v7, p2, v10, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, p3

    invoke-interface {v7, p3, v10, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v8, p4

    invoke-interface {v7, p4, v10, v8}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v7, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v7, v6, v10}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    invoke-static {p1, p2, v6}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v6

    invoke-virtual {p0, v6, v5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bitmask([B[B)[B

    move-result-object v5

    const/16 v6, 0x8

    new-array v6, v6, [B

    rsub-int/lit8 v7, v4, 0x8

    invoke-static {v5, v0, v6, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v6

    const-wide/16 v8, -0x1

    rsub-int/lit8 v2, v2, 0x40

    ushr-long/2addr v8, v2

    and-long/2addr v6, v8

    const/4 v2, 0x4

    new-array v2, v2, [B

    add-int/2addr v4, v0

    rsub-int/lit8 v8, v3, 0x4

    invoke-static {v5, v4, v2, v8, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v2, v10}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    const/4 v3, -0x1

    rsub-int/lit8 v1, v1, 0x20

    ushr-int v1, v3, v1

    and-int/2addr v1, v2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;

    invoke-static {v5, v10, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v2, v6, v7, v1, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/IndexedDigest;-><init>(JI[B)V

    return-object v2
.end method

.method PRF([B[BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B
    .locals 5

    const/4 v4, 0x0

    array-length v1, p2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Memo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0, v2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    invoke-direct {p0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v3, v0

    invoke-interface {v2, v0, v4, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p2

    invoke-interface {v0, p2, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    invoke-interface {v0, v2, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Buf:[B

    invoke-static {v0, v4, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public PRF_msg([B[B[B)[B
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p1}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([B)V

    invoke-virtual {v0, v1}, Lorg/bouncycastle/crypto/macs/HMac;->init(Lorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v1, p2

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    array-length v1, p3

    invoke-virtual {v0, p3, v2, v1}, Lorg/bouncycastle/crypto/macs/HMac;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->treeHMac:Lorg/bouncycastle/crypto/macs/HMac;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->hmacBuf:[B

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/crypto/macs/HMac;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->hmacBuf:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method public T_l([BLorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;[B)[B
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->compressedADRS(Lorg/bouncycastle/pqc/crypto/sphincsplus/ADRS;)[B

    move-result-object v1

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->robust:Z

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bitmask([B[B)[B

    move-result-object p3

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgMemo:Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0, v2}, Lorg/bouncycastle/util/Memoable;->reset(Lorg/bouncycastle/util/Memoable;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, v1

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v1, p3

    invoke-interface {v0, p3, v3, v1}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    invoke-interface {v0, v1, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigestBuf:[B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    invoke-static {v0, v3, v1}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    return-object v0
.end method

.method protected bitmask([B[B)[B
    .locals 4

    array-length v0, p2

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    array-length v1, p2

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-object v0
.end method

.method protected bitmask([B[B[B)[B
    .locals 4

    const/4 v3, 0x0

    array-length v0, p2

    array-length v1, p3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->mgf1:Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    array-length v1, p2

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    array-length v1, p3

    array-length v2, p2

    invoke-static {v1, p3, v3, v0, v2}, Lorg/bouncycastle/util/Bytes;->xorTo(I[BI[BI)V

    return-object v0
.end method

.method protected bitmask256([B[B)[B
    .locals 4

    array-length v0, p2

    new-array v0, v0, [B

    new-instance v1, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;

    new-instance v2, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    new-instance v2, Lorg/bouncycastle/crypto/params/MGFParameters;

    invoke-direct {v2, p1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([B)V

    invoke-virtual {v1, v2}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->init(Lorg/bouncycastle/crypto/DerivationParameters;)V

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Lorg/bouncycastle/crypto/generators/MGF1BytesGenerator;->generateBytes([BII)I

    array-length v1, p2

    invoke-static {v1, p2, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-object v0
.end method

.method init([B)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bl:I

    new-array v1, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v0, p1, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->bl:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->N:I

    sub-int/2addr v2, v3

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgMemo:Lorg/bouncycastle/util/Memoable;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->msgDigest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    invoke-interface {v0, p1, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    array-length v2, p1

    rsub-int/lit8 v2, v2, 0x40

    invoke-interface {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    check-cast v0, Lorg/bouncycastle/util/Memoable;

    invoke-interface {v0}, Lorg/bouncycastle/util/Memoable;->copy()Lorg/bouncycastle/util/Memoable;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256Memo:Lorg/bouncycastle/util/Memoable;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusEngine$Sha2Engine;->sha256:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->reset()V

    return-void
.end method
