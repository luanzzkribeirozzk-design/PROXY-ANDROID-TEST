.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;
.super Lorg/bouncycastle/crypto/KeyGenerationParameters;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final APR2011_439:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final APR2011_439_FAST:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final APR2011_743:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final APR2011_743_FAST:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final EES1087EP2:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final EES1171EP1:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

.field public static final EES1499EP1:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;


# instance fields
.field public N:I

.field public bufferLenBits:I

.field bufferLenTrits:I

.field public c:I

.field public db:I

.field public df:I

.field public df1:I

.field public df2:I

.field public df3:I

.field public dg:I

.field public dm0:I

.field public dr:I

.field public dr1:I

.field public dr2:I

.field public dr3:I

.field public fastFp:Z

.field public hashAlg:Lorg/bouncycastle/crypto/Digest;

.field public hashSeed:Z

.field llen:I

.field public maxMsgLenBytes:I

.field public minCallsMask:I

.field public minCallsR:I

.field public oid:[B

.field public pkLen:I

.field public polyType:I

.field public q:I

.field public sparse:Z


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/16 v1, 0x43f

    const/16 v2, 0x800

    const/16 v3, 0x78

    const/16 v4, 0x78

    const/16 v5, 0x100

    const/16 v6, 0xd

    const/16 v7, 0x19

    const/16 v8, 0xe

    const/4 v9, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [B

    fill-array-data v10, :array_0

    const/4 v11, 0x1

    const/4 v12, 0x0

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v13}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->EES1087EP2:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/16 v1, 0x493

    const/16 v2, 0x800

    const/16 v3, 0x6a

    const/16 v4, 0x6a

    const/16 v5, 0x100

    const/16 v6, 0xd

    const/16 v7, 0x14

    const/16 v8, 0xf

    const/4 v9, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [B

    fill-array-data v10, :array_1

    const/4 v11, 0x1

    const/4 v12, 0x0

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v13}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->EES1171EP1:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/16 v1, 0x5db

    const/16 v2, 0x800

    const/16 v3, 0x4f

    const/16 v4, 0x4f

    const/16 v5, 0x100

    const/16 v6, 0xd

    const/16 v7, 0x11

    const/16 v8, 0x13

    const/4 v9, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [B

    fill-array-data v10, :array_2

    const/4 v11, 0x1

    const/4 v12, 0x0

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v13}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->EES1499EP1:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/16 v1, 0x1b7

    const/16 v2, 0x800

    const/16 v3, 0x92

    const/16 v4, 0x82

    const/16 v5, 0x80

    const/16 v6, 0x9

    const/16 v7, 0x20

    const/16 v8, 0x9

    const/4 v9, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [B

    fill-array-data v10, :array_3

    const/4 v11, 0x1

    const/4 v12, 0x0

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v13}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->APR2011_439:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/16 v1, 0x1b7

    const/16 v2, 0x800

    const/16 v3, 0x9

    const/16 v4, 0x8

    const/4 v5, 0x5

    const/16 v6, 0x82

    const/16 v7, 0x80

    const/16 v8, 0x9

    const/16 v9, 0x20

    const/16 v10, 0x9

    const/4 v11, 0x1

    const/4 v12, 0x3

    new-array v12, v12, [B

    fill-array-data v12, :array_4

    const/4 v13, 0x1

    const/4 v14, 0x1

    new-instance v15, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v15}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    invoke-direct/range {v0 .. v15}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->APR2011_439_FAST:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/16 v1, 0x2e7

    const/16 v2, 0x800

    const/16 v3, 0xf8

    const/16 v4, 0xdc

    const/16 v5, 0x100

    const/16 v6, 0xa

    const/16 v7, 0x1b

    const/16 v8, 0xe

    const/4 v9, 0x1

    const/4 v10, 0x3

    new-array v10, v10, [B

    fill-array-data v10, :array_5

    const/4 v11, 0x0

    const/4 v12, 0x0

    new-instance v13, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v13}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->APR2011_743:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    new-instance v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    const/16 v1, 0x2e7

    const/16 v2, 0x800

    const/16 v3, 0xb

    const/16 v4, 0xb

    const/16 v5, 0xf

    const/16 v6, 0xdc

    const/16 v7, 0x100

    const/16 v8, 0xa

    const/16 v9, 0x1b

    const/16 v10, 0xe

    const/4 v11, 0x1

    const/4 v12, 0x3

    new-array v12, v12, [B

    fill-array-data v12, :array_6

    const/4 v13, 0x0

    const/4 v14, 0x1

    new-instance v15, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v15}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    invoke-direct/range {v0 .. v15}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    sput-object v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->APR2011_743_FAST:Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x6t
        0x3t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x6t
        0x4t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x6t
        0x5t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x7t
        0x65t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x7t
        0x65t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x7t
        0x69t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x7t
        0x69t
    .end array-data
.end method

.method public constructor <init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V
    .locals 17

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    move-object/from16 v15, p15

    invoke-direct/range {v0 .. v16}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 2

    if-eqz p16, :cond_0

    :goto_0
    move-object/from16 v0, p16

    invoke-direct {p0, v0, p7}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    iput p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    iput p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    iput p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    iput p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    iput p8, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    iput p9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    iput p10, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    iput-boolean p11, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    iput-object p12, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    iput-boolean p13, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    const/4 v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->init()V

    return-void

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p16

    goto :goto_0
.end method

.method public constructor <init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V
    .locals 15

    const/4 v14, 0x0

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-object/from16 v13, p13

    invoke-direct/range {v0 .. v14}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V

    return-void
.end method

.method public constructor <init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;Ljava/security/SecureRandom;)V
    .locals 1

    if-eqz p14, :cond_0

    :goto_0
    invoke-direct {p0, p14, p5}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    iput p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    iput p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    iput p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    iput p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    iput p8, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    iput-boolean p9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    iput-object p10, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    iput-boolean p11, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    iput-boolean p12, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    iput-object p13, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->init()V

    return-void

    :cond_0
    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object p14

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->getSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/KeyGenerationParameters;-><init>(Ljava/security/SecureRandom;I)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->init()V

    return-void

    :cond_1
    const-string v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr1:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr2:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr3:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dg:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->llen:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->llen:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->maxMsgLenBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bufferLenBits:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bufferLenTrits:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->pkLen:I

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v14}, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v14

    invoke-direct/range {v1 .. v14}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v16

    invoke-direct/range {v1 .. v16}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;-><init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

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
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bufferLenBits:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bufferLenBits:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bufferLenTrits:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bufferLenTrits:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dg:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dg:I

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    if-eq v2, v3, :cond_e

    move v0, v1

    goto :goto_0

    :cond_e
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr:I

    if-eq v2, v3, :cond_f

    move v0, v1

    goto :goto_0

    :cond_f
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr1:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr1:I

    if-eq v2, v3, :cond_10

    move v0, v1

    goto :goto_0

    :cond_10
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr2:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr2:I

    if-eq v2, v3, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr3:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr3:I

    if-eq v2, v3, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    iget-boolean v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    if-eq v2, v3, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v2, :cond_14

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    iget-boolean v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    if-eq v2, v3, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->llen:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->llen:I

    if-eq v2, v3, :cond_17

    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->maxMsgLenBytes:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->maxMsgLenBytes:I

    if-eq v2, v3, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    if-eq v2, v3, :cond_19

    move v0, v1

    goto/16 :goto_0

    :cond_19
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    if-eq v2, v3, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1b

    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->pkLen:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->pkLen:I

    if-eq v2, v3, :cond_1c

    move v0, v1

    goto/16 :goto_0

    :cond_1c
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    if-eq v2, v3, :cond_1e

    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    iget-boolean v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getEncryptionParameters()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v14}, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v14

    invoke-direct/range {v1 .. v14}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v16

    invoke-direct/range {v1 .. v16}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    goto :goto_0
.end method

.method public getMaxMessageLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bufferLenBits:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->bufferLenTrits:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dg:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr1:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr2:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dr3:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->llen:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->maxMsgLenBytes:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->pkLen:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EncryptionParameters(N="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " polyType=SIMPLE df="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dm0="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " db="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minCallsR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minCallsMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashSeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashAlg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sparse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " polyType=PRODUCT df1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " df2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " df3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-direct {v0, p1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->N:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->q:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df1:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df2:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->df3:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->db:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->dm0:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->c:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsR:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->minCallsMask:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashSeed:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->oid:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->sparse:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->fastFp:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->polyType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionKeyGenerationParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
