.class Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/util/Encodable;


# instance fields
.field private final lMinus1:I

.field private final signature:Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

.field private final signedPubKey:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;


# direct methods
.method public constructor <init>(I[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->lMinus1:I

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signedPubKey:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signature:Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/io/DataInputStream;

    if-eqz v0, :cond_4

    move-object v0, p0

    check-cast v0, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    add-int/lit8 v0, p1, -0x1

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "nspk exceeded maxNspk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v2, v1, [Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    new-instance v3, Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    move-result-object v4

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;-><init>(Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;Lorg/bouncycastle/pqc/crypto/lms/LMSPublicKeyParameters;)V

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    move-result-object v0

    new-instance p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;-><init>(I[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;)V

    goto :goto_0

    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_6

    const/4 v2, 0x0

    :try_start_0
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    check-cast p0, [B

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v1, p1}, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object p0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0

    :cond_6
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_7

    check-cast p0, Ljava/io/InputStream;

    invoke-static {p0}, Lorg/bouncycastle/util/io/Streams;->readAll(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-static {v0, p1}, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->getInstance(Ljava/lang/Object;I)Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;

    move-result-object p0

    goto :goto_0

    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot parse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->lMinus1:I

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->lMinus1:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signedPubKey:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signedPubKey:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signature:Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signature:Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Objects;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public getEncoded()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->compose()Lorg/bouncycastle/pqc/crypto/lms/Composer;

    move-result-object v1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->lMinus1:I

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->u32str(I)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signedPubKey:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signedPubKey:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    invoke-virtual {v1, v4}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signature:Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    invoke-virtual {v1, v0}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->bytes(Lorg/bouncycastle/util/Encodable;)Lorg/bouncycastle/pqc/crypto/lms/Composer;

    invoke-virtual {v1}, Lorg/bouncycastle/pqc/crypto/lms/Composer;->build()[B

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signature:Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    return-object v0
.end method

.method public getSignedPubKey()[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signedPubKey:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    return-object v0
.end method

.method public getlMinus1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->lMinus1:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->lMinus1:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signedPubKey:[Lorg/bouncycastle/pqc/crypto/lms/LMSSignedPubKey;

    invoke-static {v1}, Lorg/bouncycastle/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/lms/HSSSignature;->signature:Lorg/bouncycastle/pqc/crypto/lms/LMSSignature;

    invoke-static {v1}, Lorg/bouncycastle/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
