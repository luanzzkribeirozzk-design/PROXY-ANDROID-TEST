.class abstract Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/crypto/Xof;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/digests/Kangaroo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "KangarooBase"
.end annotation


# static fields
.field private static final BLKSIZE:I = 0x2000

.field private static final FINAL:[B

.field private static final FIRST:[B

.field private static final INTERMEDIATE:[B

.field private static final SINGLE:[B


# instance fields
.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

.field private final singleByte:[B

.field private squeezing:Z

.field private final theChainLen:I

.field private theCurrNode:I

.field private final theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

.field private thePersonal:[B

.field private theProcessed:I

.field private final theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v0, v3, [B

    const/4 v1, 0x7

    aput-byte v1, v0, v2

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->SINGLE:[B

    new-array v0, v3, [B

    const/16 v1, 0xb

    aput-byte v1, v0, v2

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->INTERMEDIATE:[B

    const/4 v0, 0x3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FINAL:[B

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FIRST:[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x3t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(IIILorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->singleByte:[B

    new-instance v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;-><init>(II)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    new-instance v0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;-><init>(II)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    shr-int/lit8 v0, p1, 0x2

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->buildPersonal([B)V

    iput-object p4, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, p1, p4}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method private buildPersonal([B)V
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    int-to-long v2, v0

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->lengthEncode(J)[B

    move-result-object v3

    if-nez p1, :cond_1

    array-length v2, v3

    add-int/2addr v2, v0

    new-array v2, v2, [B

    :goto_1
    iput-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->thePersonal:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->thePersonal:[B

    array-length v4, v3

    invoke-static {v3, v1, v2, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void

    :cond_0
    array-length v0, p1

    goto :goto_0

    :cond_1
    array-length v2, v3

    add-int/2addr v2, v0

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    goto :goto_1
.end method

.method private static lengthEncode(J)[B
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    cmp-long v0, p0, v6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move-wide v2, p0

    :goto_0
    const/16 v4, 0x8

    shr-long/2addr v2, v4

    cmp-long v4, v2, v6

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    move v0, v1

    :cond_1
    add-int/lit8 v2, v0, 0x1

    new-array v2, v2, [B

    aput-byte v0, v2, v0

    :goto_1
    if-ge v1, v0, :cond_2

    sub-int v3, v0, v1

    add-int/lit8 v3, v3, -0x1

    mul-int/lit8 v3, v3, 0x8

    shr-long v4, p0, v3

    long-to-int v3, v4

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method

.method private processData([BII)V
    .locals 5

    const/16 v4, 0x2000

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->squeezing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "attempt to absorb while squeezing"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    rsub-int v1, v1, 0x2000

    if-lt v1, p3, :cond_3

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    goto :goto_0

    :cond_3
    if-lez v1, :cond_4

    invoke-static {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    :cond_4
    move v0, v1

    :goto_1
    if-ge v0, p3, :cond_1

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    if-ne v1, v4, :cond_5

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchLeaf(Z)V

    :cond_5
    sub-int v1, p3, v0

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    add-int v3, p2, v0

    invoke-static {v2, p1, v3, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    add-int/2addr v2, v1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    add-int/2addr v0, v1

    goto :goto_1
.end method

.method private switchFinal()V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchLeaf(Z)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->lengthEncode(J)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    array-length v2, v0

    invoke-static {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    sget-object v1, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FINAL:[B

    sget-object v2, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FINAL:[B

    array-length v2, v2

    invoke-static {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$500(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    return-void
.end method

.method private switchLeaf(Z)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    sget-object v1, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FIRST:[B

    sget-object v2, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->FIRST:[B

    array-length v2, v2

    invoke-static {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    :goto_0
    if-eqz p1, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    :cond_0
    iput v3, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    return-void

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    sget-object v1, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->INTERMEDIATE:[B

    sget-object v2, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->INTERMEDIATE:[B

    array-length v2, v2

    invoke-static {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    invoke-static {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$200(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    iget v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    invoke-static {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$400(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    goto :goto_0
.end method

.method private switchSingle()V
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    sget-object v1, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->SINGLE:[B

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$300(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$500(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    return-void
.end method

.method private switchToSqueezing()V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->thePersonal:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->thePersonal:[B

    array-length v2, v2

    invoke-direct {p0, v0, v1, v2}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->processData([BII)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchSingle()V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchFinal()V

    goto :goto_0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->getDigestSize()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->doFinal([BII)I

    move-result v0

    return v0
.end method

.method public doFinal([BII)I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->squeezing:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already outputting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->doOutput([BII)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->reset()V

    return v0
.end method

.method public doOutput([BII)I
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->squeezing:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->switchToSqueezing()V

    :cond_0
    if-gez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid output length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$200(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;[BII)V

    return p3
.end method

.method public getByteLength()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$100(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)I

    move-result v0

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theChainLen:I

    shr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public init(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;)V
    .locals 1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooParameters;->getPersonalisation()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->buildPersonal([B)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->reset()V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theTree:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$400(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theLeaf:Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;->access$400(Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooSponge;)V

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theCurrNode:I

    iput v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->theProcessed:I

    iput-boolean v1, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->squeezing:Z

    return-void
.end method

.method public update(B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->singleByte:[B

    aput-byte p1, v0, v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->singleByte:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->update([BII)V

    return-void
.end method

.method public update([BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/digests/Kangaroo$KangarooBase;->processData([BII)V

    return-void
.end method
