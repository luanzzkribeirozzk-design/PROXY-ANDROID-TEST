.class public Lorg/conscrypt/ct/CTLogInfo;
.super Ljava/lang/Object;
.source "CTLogInfo.java"


# instance fields
.field private final description:Ljava/lang/String;

.field private final logId:[B

.field private final publicKey:Ljava/security/PublicKey;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "publicKey"    # Ljava/security/PublicKey;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    :try_start_0
    const-string v1, "SHA-256"

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 43
    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    iput-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->logId:[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    iput-object p1, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    .line 50
    iput-object p2, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    .line 52
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 75
    if-ne p0, p1, :cond_1

    .line 83
    :cond_0
    :goto_0
    return v1

    .line 78
    :cond_1
    instance-of v3, p1, Lorg/conscrypt/ct/CTLogInfo;

    if-nez v3, :cond_2

    move v1, v2

    .line 79
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 82
    check-cast v0, Lorg/conscrypt/ct/CTLogInfo;

    .line 83
    .local v0, "that":Lorg/conscrypt/ct/CTLogInfo;
    iget-object v3, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    iget-object v4, v0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    iget-object v4, v0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    iget-object v4, v0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    .line 86
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getID()[B
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->logId:[B

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 91
    const/4 v0, 0x1

    .line 92
    .local v0, "hash":I
    iget-object v1, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit8 v0, v1, 0x1f

    .line 93
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/conscrypt/ct/CTLogInfo;->description:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 94
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/conscrypt/ct/CTLogInfo;->url:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 96
    return v0
.end method

.method public verifySingleSCT(Lorg/conscrypt/ct/SignedCertificateTimestamp;Lorg/conscrypt/ct/CertificateEntry;)Lorg/conscrypt/ct/VerifiedSCT$Status;
    .locals 6
    .param p1, "sct"    # Lorg/conscrypt/ct/SignedCertificateTimestamp;
    .param p2, "entry"    # Lorg/conscrypt/ct/CertificateEntry;

    .prologue
    .line 107
    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getLogID()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/conscrypt/ct/CTLogInfo;->getID()[B

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v4

    if-nez v4, :cond_0

    .line 108
    sget-object v4, Lorg/conscrypt/ct/VerifiedSCT$Status;->UNKNOWN_LOG:Lorg/conscrypt/ct/VerifiedSCT$Status;

    .line 137
    :goto_0
    return-object v4

    .line 113
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->encodeTBS(Lorg/conscrypt/ct/CertificateEntry;)[B
    :try_end_0
    .catch Lorg/conscrypt/ct/SerializationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 120
    .local v3, "toVerify":[B
    :try_start_1
    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lorg/conscrypt/ct/DigitallySigned;

    move-result-object v4

    invoke-virtual {v4}, Lorg/conscrypt/ct/DigitallySigned;->getAlgorithm()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "algorithm":Ljava/lang/String;
    invoke-static {v0}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 127
    .local v2, "signature":Ljava/security/Signature;
    :try_start_2
    iget-object v4, p0, Lorg/conscrypt/ct/CTLogInfo;->publicKey:Ljava/security/PublicKey;

    invoke-virtual {v2, v4}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/security/InvalidKeyException; {:try_start_2 .. :try_end_2} :catch_2

    .line 133
    :try_start_3
    invoke-virtual {v2, v3}, Ljava/security/Signature;->update([B)V

    .line 134
    invoke-virtual {p1}, Lorg/conscrypt/ct/SignedCertificateTimestamp;->getSignature()Lorg/conscrypt/ct/DigitallySigned;

    move-result-object v4

    invoke-virtual {v4}, Lorg/conscrypt/ct/DigitallySigned;->getSignature()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/security/Signature;->verify([B)Z

    move-result v4

    if-nez v4, :cond_1

    .line 135
    sget-object v4, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SIGNATURE:Lorg/conscrypt/ct/VerifiedSCT$Status;
    :try_end_3
    .catch Ljava/security/SignatureException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 114
    .end local v0    # "algorithm":Ljava/lang/String;
    .end local v2    # "signature":Ljava/security/Signature;
    .end local v3    # "toVerify":[B
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Lorg/conscrypt/ct/SerializationException;
    sget-object v4, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    goto :goto_0

    .line 122
    .end local v1    # "e":Lorg/conscrypt/ct/SerializationException;
    .restart local v3    # "toVerify":[B
    :catch_1
    move-exception v1

    .line 123
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v4, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    goto :goto_0

    .line 128
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "algorithm":Ljava/lang/String;
    .restart local v2    # "signature":Ljava/security/Signature;
    :catch_2
    move-exception v1

    .line 129
    .local v1, "e":Ljava/security/InvalidKeyException;
    sget-object v4, Lorg/conscrypt/ct/VerifiedSCT$Status;->INVALID_SCT:Lorg/conscrypt/ct/VerifiedSCT$Status;

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/security/InvalidKeyException;
    :cond_1
    :try_start_4
    sget-object v4, Lorg/conscrypt/ct/VerifiedSCT$Status;->VALID:Lorg/conscrypt/ct/VerifiedSCT$Status;
    :try_end_4
    .catch Ljava/security/SignatureException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 138
    :catch_3
    move-exception v1

    .line 141
    .local v1, "e":Ljava/security/SignatureException;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
