.class Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;
.super Lorg/bouncycastle/pqc/crypto/saber/Symmetric;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/saber/Symmetric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AesSymmetric"
.end annotation


# instance fields
.field private final cipher:Lorg/bouncycastle/crypto/StreamCipher;

.field private final sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

.field private final sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/pqc/crypto/saber/Symmetric;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-static {}, Lorg/bouncycastle/crypto/engines/AESEngine;->newInstance()Lorg/bouncycastle/crypto/MultiBlockCipher;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/modes/SICBlockCipher;->newInstance(Lorg/bouncycastle/crypto/BlockCipher;)Lorg/bouncycastle/crypto/modes/CTRModeCipher;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    return-void
.end method


# virtual methods
.method hash_g([B[B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    array-length v1, p2

    invoke-virtual {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha512Digest:Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-virtual {v0, p1, v2}, Lorg/bouncycastle/crypto/digests/SHA512Digest;->doFinal([BI)I

    return-void
.end method

.method hash_h([B[BI)V
    .locals 3

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    const/4 v1, 0x0

    array-length v2, p2

    invoke-virtual {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->sha256Digest:Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/digests/SHA256Digest;->doFinal([BI)I

    return-void
.end method

.method prf([B[BII)V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    new-instance v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-direct {v1, p2, v2, p3}, Lorg/bouncycastle/crypto/params/KeyParameter;-><init>([BII)V

    const/16 v3, 0x10

    new-array v3, v3, [B

    invoke-direct {v0, v1, v3}, Lorg/bouncycastle/crypto/params/ParametersWithIV;-><init>(Lorg/bouncycastle/crypto/CipherParameters;[B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    const/4 v3, 0x1

    invoke-interface {v1, v3, v0}, Lorg/bouncycastle/crypto/StreamCipher;->init(ZLorg/bouncycastle/crypto/CipherParameters;)V

    new-array v1, p4, [B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/Symmetric$AesSymmetric;->cipher:Lorg/bouncycastle/crypto/StreamCipher;

    move v3, p4

    move-object v4, p1

    move v5, v2

    invoke-interface/range {v0 .. v5}, Lorg/bouncycastle/crypto/StreamCipher;->processBytes([BII[BI)I

    return-void
.end method
