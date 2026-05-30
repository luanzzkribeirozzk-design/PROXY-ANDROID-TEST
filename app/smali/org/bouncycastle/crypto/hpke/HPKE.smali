.class public Lorg/bouncycastle/crypto/hpke/HPKE;
.super Ljava/lang/Object;


# static fields
.field public static final aead_AES_GCM128:S = 0x1s

.field public static final aead_AES_GCM256:S = 0x2s

.field public static final aead_CHACHA20_POLY1305:S = 0x3s

.field public static final aead_EXPORT_ONLY:S = -0x1s

.field public static final kdf_HKDF_SHA256:S = 0x1s

.field public static final kdf_HKDF_SHA384:S = 0x2s

.field public static final kdf_HKDF_SHA512:S = 0x3s

.field public static final kem_P256_SHA256:S = 0x10s

.field public static final kem_P384_SHA348:S = 0x11s

.field public static final kem_P521_SHA512:S = 0x12s

.field public static final kem_X25519_SHA256:S = 0x20s

.field public static final kem_X448_SHA512:S = 0x21s

.field public static final mode_auth:B = 0x2t

.field public static final mode_auth_psk:B = 0x3t

.field public static final mode_base:B = 0x0t

.field public static final mode_psk:B = 0x1t


# instance fields
.field Nk:S

.field private final aeadId:S

.field private final default_psk:[B

.field private final default_psk_id:[B

.field private final dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

.field private final hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

.field private final kdfId:S

.field private final kemId:S

.field private final mode:B


# direct methods
.method public constructor <init>(BSSS)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    iput-byte p1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    iput-short p2, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kemId:S

    iput-short p3, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kdfId:S

    iput-short p4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    new-instance v0, Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {v0, p3}, Lorg/bouncycastle/crypto/hpke/HKDF;-><init>(S)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    new-instance v0, Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-direct {v0, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;-><init>(S)V

    iput-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    const/4 v0, 0x1

    if-ne p4, v0, :cond_0

    const/16 v0, 0x10

    iput-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->Nk:S

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x20

    iput-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->Nk:S

    goto :goto_0
.end method

.method private VerifyPSKInputs(B[B[B)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    invoke-static {p3, v3}, Lorg/bouncycastle/util/Arrays;->areEqual([B[B)Z

    move-result v3

    if-nez v3, :cond_0

    move v2, v1

    :cond_0
    if-eq v0, v2, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Inconsistent PSK inputs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PSK input provided when not needed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-nez v0, :cond_4

    rem-int/lit8 v0, p1, 0x2

    if-ne v0, v1, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing required PSK input"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method private keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 8

    const/4 v4, 0x0

    invoke-direct {p0, p1, p4, p5}, Lorg/bouncycastle/crypto/hpke/HPKE;->VerifyPSKInputs(B[B[B)V

    const-string v0, "HPKE"

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iget-short v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kemId:S

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v1

    iget-short v2, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kdfId:S

    invoke-static {v2}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v2

    iget-short v3, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    invoke-static {v3}, Lorg/bouncycastle/util/Pack;->shortToBigEndian(S)[B

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B[B)[B

    move-result-object v2

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v1, "psk_id_hash"

    invoke-virtual {v0, v4, v2, v1, p5}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v3, "info_hash"

    invoke-virtual {v1, v4, v2, v3, p3}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [B

    const/4 v4, 0x0

    aput-byte p1, v3, v4

    invoke-static {v3, v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B[B)[B

    move-result-object v4

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v1, "secret"

    invoke-virtual {v0, p2, v2, v1, p4}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExtract([B[BLjava/lang/String;[B)[B

    move-result-object v1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v3, "key"

    iget-short v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->Nk:S

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v3, "base_nonce"

    const/16 v5, 0xc

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    const-string v3, "exp"

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-virtual {v5}, Lorg/bouncycastle/crypto/hpke/HKDF;->getHashSize()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HKDF;->LabeledExpand([B[BLjava/lang/String;[BI)[B

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/hpke/HPKEContext;

    new-instance v3, Lorg/bouncycastle/crypto/hpke/AEAD;

    iget-short v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    invoke-direct {v3, v4, v6, v7}, Lorg/bouncycastle/crypto/hpke/AEAD;-><init>(S[B[B)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->hkdf:Lorg/bouncycastle/crypto/hpke/HKDF;

    invoke-direct {v1, v3, v4, v0, v2}, Lorg/bouncycastle/crypto/hpke/HPKEContext;-><init>(Lorg/bouncycastle/crypto/hpke/AEAD;Lorg/bouncycastle/crypto/hpke/HKDF;[B[B)V

    return-object v1
.end method


# virtual methods
.method public SetupPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 7

    const/4 v1, 0x1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[[B

    move-result-object v6

    const/4 v0, 0x0

    aget-object v2, v6, v0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    new-instance v2, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    aget-object v1, v6, v1

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object v2
.end method

.method public deriveKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeriveKeyPair([B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public deserializePrivateKey([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePrivateKey([B[B)Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public deserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->DeserializePublicKey([B)Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;

    move-result-object v0

    return-object v0
.end method

.method public generatePrivateKey()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/hpke/DHKEM;->GeneratePrivateKey()Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;

    move-result-object v0

    return-object v0
.end method

.method public getAeadId()S
    .locals 1

    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->aeadId:S

    return v0
.end method

.method public getEncSize()I
    .locals 2

    iget-short v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->kemId:S

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid kem id"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    const/16 v0, 0x41

    :goto_0
    return v0

    :sswitch_1
    const/16 v0, 0x61

    goto :goto_0

    :sswitch_2
    const/16 v0, 0x85

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x20

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x38

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_1
        0x12 -> :sswitch_2
        0x20 -> :sswitch_3
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method public open([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    iget-byte v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p4, p5}, Lorg/bouncycastle/crypto/hpke/HPKEContext;->open([B[B)[B

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0, p1, p2, p3, p8}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public receiveExport([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[BI[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 7

    iget-byte v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p4, p5}, Lorg/bouncycastle/crypto/hpke/HPKEContext;->export([BI)[B

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-virtual {p0, p1, p2, p3, p8}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move-object v5, p7

    move-object v6, p8

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public seal(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v6, v0, [[B

    iget-byte v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->seal([B[B)[B

    move-result-object v2

    aput-object v2, v6, v1

    const/4 v1, 0x1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->getEncapsulation()[B

    move-result-object v0

    aput-object v0, v6, v1

    return-object v6

    :pswitch_1
    invoke-virtual {p0, p1, p2, p7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2, p5, p6}, Lorg/bouncycastle/crypto/hpke/HPKE;->SetupPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public sendExport(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[BI[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B
    .locals 7

    const/4 v0, 0x2

    new-array v6, v0, [[B

    iget-byte v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->mode:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iget-object v2, v0, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->encapsulation:[B

    aput-object v2, v6, v1

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p4}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;->export([BI)[B

    move-result-object v0

    aput-object v0, v6, v1

    return-object v6

    :pswitch_1
    invoke-virtual {p0, p1, p2, p7}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0, p1, p2, p5, p6}, Lorg/bouncycastle/crypto/hpke/HPKE;->SetupPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->setupAuthPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public serializePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePrivateKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0
.end method

.method public serializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->SerializePublicKey(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v0

    return-object v0
.end method

.method public setupAuthPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2, p6}, Lorg/bouncycastle/crypto/hpke/DHKEM;->AuthDecap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v2

    const/4 v1, 0x3

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    return-object v0
.end method

.method public setupAuthPSKS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B[B[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p5}, Lorg/bouncycastle/crypto/hpke/DHKEM;->AuthEncap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object v6

    const/4 v1, 0x3

    const/4 v0, 0x0

    aget-object v2, v6, v0

    move-object v0, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object v1
.end method

.method public setupAuthR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[BLorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2, p4}, Lorg/bouncycastle/crypto/hpke/DHKEM;->AuthDecap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[B

    move-result-object v2

    const/4 v1, 0x2

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    return-object v0
.end method

.method public setupAuthS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 7

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->AuthEncap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object v6

    const/4 v1, 0x2

    const/4 v0, 0x0

    aget-object v2, v6, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object v1
.end method

.method public setupBaseR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Decap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[B

    move-result-object v2

    const/4 v1, 0x0

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    move-object v0, p0

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    return-object v0
.end method

.method public setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[B)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;)[[B

    move-result-object v6

    aget-object v2, v6, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object v1
.end method

.method public setupBaseS(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;[BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p3}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Encap(Lorg/bouncycastle/crypto/params/AsymmetricKeyParameter;Lorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[[B

    move-result-object v6

    aget-object v2, v6, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->default_psk_id:[B

    move-object v0, p0

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    new-instance v1, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;

    const/4 v2, 0x1

    aget-object v2, v6, v2

    invoke-direct {v1, v0, v2}, Lorg/bouncycastle/crypto/hpke/HPKEContextWithEncapsulation;-><init>(Lorg/bouncycastle/crypto/hpke/HPKEContext;[B)V

    return-object v1
.end method

.method public setupPSKR([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;
    .locals 6

    iget-object v0, p0, Lorg/bouncycastle/crypto/hpke/HPKE;->dhkem:Lorg/bouncycastle/crypto/hpke/DHKEM;

    invoke-virtual {v0, p1, p2}, Lorg/bouncycastle/crypto/hpke/DHKEM;->Decap([BLorg/bouncycastle/crypto/AsymmetricCipherKeyPair;)[B

    move-result-object v2

    const/4 v1, 0x1

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/hpke/HPKE;->keySchedule(B[B[B[B[B)Lorg/bouncycastle/crypto/hpke/HPKEContext;

    move-result-object v0

    return-object v0
.end method
