.class public Lorg/bouncycastle/its/bc/BcITSContentSigner;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/its/operator/ITSContentSigner;


# instance fields
.field private final curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

.field private final digest:Lorg/bouncycastle/crypto/Digest;

.field private final digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

.field private final parentData:[B

.field private final parentDigest:[B

.field private final privKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

.field private final signerCert:Lorg/bouncycastle/its/ITSCertificate;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/bouncycastle/its/bc/BcITSContentSigner;-><init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/its/ITSCertificate;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;Lorg/bouncycastle/its/ITSCertificate;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->privKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;->getParameters()Lorg/bouncycastle/crypto/params/ECDomainParameters;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ECNamedDomainParameters;->getName()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/sec/SECObjectIdentifiers;->secp256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    :goto_0
    :try_start_0
    sget-object v0, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-interface {v0, v1}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;
    :try_end_0
    .catch Lorg/bouncycastle/operator/OperatorCreationException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p2, :cond_3

    :try_start_1
    invoke-virtual {p2}, Lorg/bouncycastle/its/ITSCertificate;->getEncoded()[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    array-length v3, v3

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP256r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha256:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/teletrust/TeleTrusTObjectIdentifiers;->brainpoolP384r1:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v0, v1}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->equals(Lorg/bouncycastle/asn1/ASN1Primitive;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    sget-object v1, Lorg/bouncycastle/asn1/nist/NISTObjectIdentifiers;->id_sha384:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;)V

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "unknown key type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot recognise digest type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-virtual {v2}, Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;->getAlgorithm()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "signer certificate encoding failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    invoke-interface {v0, v1, v2}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    goto/16 :goto_1
.end method


# virtual methods
.method public getAssociatedCertificate()Lorg/bouncycastle/its/ITSCertificate;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->signerCert:Lorg/bouncycastle/its/ITSCertificate;

    return-object v0
.end method

.method public getAssociatedCertificateDigest()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getCurveID()Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->curveID:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    return-object v0
.end method

.method public getDigestAlgorithm()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digestAlgo:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2

    new-instance v0, Lorg/bouncycastle/crypto/io/DigestOutputStream;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/io/DigestOutputStream;-><init>(Lorg/bouncycastle/crypto/Digest;)V

    return-object v0
.end method

.method public getSignature()[B
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v4}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    new-instance v1, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance v2, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v2}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->digest:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->privKey:Lorg/bouncycastle/crypto/params/ECPrivateKeyParameters;

    invoke-virtual {v1, v2, v3}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    array-length v2, v0

    invoke-virtual {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentDigest:[B

    array-length v2, v2

    invoke-virtual {v1, v0, v4, v2}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->generateSignature()[B

    move-result-object v0

    return-object v0
.end method

.method public isForSelfSigning()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentSigner;->parentData:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
