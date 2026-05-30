.class Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/operator/ContentVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->get(I)Lorg/bouncycastle/operator/ContentVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

.field final synthetic this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

.field final synthetic val$digest:Lorg/bouncycastle/crypto/Digest;

.field final synthetic val$os:Ljava/io/OutputStream;

.field final synthetic val$parentDigest:[B

.field final synthetic val$parentTBSDigest:[B


# direct methods
.method constructor <init>(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;Ljava/io/OutputStream;Lorg/bouncycastle/crypto/Digest;[B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/operator/OperatorCreationException;
        }
    .end annotation

    iput-object p1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

    iput-object p2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$os:Ljava/io/OutputStream;

    iput-object p3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    iput-object p4, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentTBSDigest:[B

    iput-object p5, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentDigest:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    new-instance v1, Lorg/bouncycastle/crypto/signers/ECDSASigner;

    invoke-direct {v1}, Lorg/bouncycastle/crypto/signers/ECDSASigner;-><init>()V

    sget-object v2, Lorg/bouncycastle/operator/bc/BcDefaultDigestProvider;->INSTANCE:Lorg/bouncycastle/operator/bc/BcDigestProvider;

    iget-object v3, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

    invoke-static {v3}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->access$000(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/bouncycastle/operator/bc/BcDigestProvider;->get(Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/crypto/ExtendedDigest;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;-><init>(Lorg/bouncycastle/crypto/DSA;Lorg/bouncycastle/crypto/Digest;)V

    iput-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    return-void
.end method


# virtual methods
.method public getAlgorithmIdentifier()Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$os:Ljava/io/OutputStream;

    return-object v0
.end method

.method public verify([B)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->this$0:Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;

    invoke-static {v2}, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;->access$100(Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider;)Lorg/bouncycastle/crypto/params/ECPublicKeyParameters;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentTBSDigest:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentTBSDigest:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getDigestSize()I

    move-result v0

    new-array v0, v0, [B

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$digest:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1, v0, v3}, Lorg/bouncycastle/crypto/Digest;->doFinal([BI)I

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    array-length v2, v0

    invoke-virtual {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->verifySignature([B)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->signer:Lorg/bouncycastle/crypto/signers/DSADigestSigner;

    iget-object v1, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentDigest:[B

    iget-object v2, p0, Lorg/bouncycastle/its/bc/BcITSContentVerifierProvider$2;->val$parentDigest:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/signers/DSADigestSigner;->update([BII)V

    goto :goto_0
.end method
