.class public Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


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
.method public constructor <init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    iput p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    iput p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    iput p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iput p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iput p8, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    iput p9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iput p10, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iput-boolean p11, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iput-object p12, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    iput-boolean p13, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    move/from16 v0, p14

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    const/4 v1, 0x1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->init()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iput p2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    iput p3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    iput p5, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iput p4, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iput p6, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    iput p7, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iput p8, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iput-boolean p9, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iput-object p10, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    iput-boolean p11, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    iput-boolean p12, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    iput-object p13, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    const/4 v1, 0x3

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->read([B)I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    invoke-virtual {v0}, Ljava/io/DataInputStream;->read()I

    move-result v1

    iput v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SHA-512"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    :cond_0
    :goto_0
    invoke-direct {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->init()V

    return-void

    :cond_1
    const-string v1, "SHA-256"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA256Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA256Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    goto :goto_0
.end method

.method private init()V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dg:I

    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x8

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    div-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenTrits:I

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iput v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

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

    invoke-virtual {p0}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    if-nez v1, :cond_0

    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    move-object/from16 v0, p0

    iget-boolean v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-static {v14}, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v14

    invoke-direct/range {v1 .. v14}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    move-object/from16 v0, p0

    iget v11, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lorg/bouncycastle/crypto/util/DigestFactory;->cloneDigest(Lorg/bouncycastle/crypto/Digest;)Lorg/bouncycastle/crypto/Digest;

    move-result-object v16

    invoke-direct/range {v1 .. v16}, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;-><init>(IIIIIIIIIIZ[BZZLorg/bouncycastle/crypto/Digest;)V

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
    check-cast p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    :cond_5
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenTrits:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenTrits:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    :cond_8
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    :cond_9
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    if-eq v2, v3, :cond_a

    move v0, v1

    goto :goto_0

    :cond_a
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    if-eq v2, v3, :cond_b

    move v0, v1

    goto :goto_0

    :cond_b
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    if-eq v2, v3, :cond_c

    move v0, v1

    goto :goto_0

    :cond_c
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dg:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dg:I

    if-eq v2, v3, :cond_d

    move v0, v1

    goto :goto_0

    :cond_d
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    if-eq v2, v3, :cond_e

    move v0, v1

    goto :goto_0

    :cond_e
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    if-eq v2, v3, :cond_f

    move v0, v1

    goto :goto_0

    :cond_f
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    if-eq v2, v3, :cond_10

    move v0, v1

    goto :goto_0

    :cond_10
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    if-eq v2, v3, :cond_11

    move v0, v1

    goto/16 :goto_0

    :cond_11
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    if-eq v2, v3, :cond_12

    move v0, v1

    goto/16 :goto_0

    :cond_12
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    iget-boolean v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eq v2, v3, :cond_13

    move v0, v1

    goto/16 :goto_0

    :cond_13
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v2, :cond_14

    iget-object v2, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-eqz v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v2}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    move v0, v1

    goto/16 :goto_0

    :cond_15
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    iget-boolean v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    if-eq v2, v3, :cond_16

    move v0, v1

    goto/16 :goto_0

    :cond_16
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    if-eq v2, v3, :cond_17

    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    if-eq v2, v3, :cond_18

    move v0, v1

    goto/16 :goto_0

    :cond_18
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    if-eq v2, v3, :cond_19

    move v0, v1

    goto/16 :goto_0

    :cond_19
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    if-eq v2, v3, :cond_1a

    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    iget-object v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_1b

    move v0, v1

    goto/16 :goto_0

    :cond_1b
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    if-eq v2, v3, :cond_1c

    move v0, v1

    goto/16 :goto_0

    :cond_1c
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    iget v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    if-eq v2, v3, :cond_1e

    move v0, v1

    goto/16 :goto_0

    :cond_1e
    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    iget-boolean v3, p1, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    if-eq v2, v3, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method public getMaxMessageLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v2, 0x4d5

    const/16 v1, 0x4cf

    iget v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenBits:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->bufferLenTrits:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dg:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr1:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr2:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dr3:I

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->llen:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->maxMsgLenBytes:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([B)I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->pkLen:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    if-eqz v3, :cond_3

    :goto_3
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

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

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " q="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " polyType=SIMPLE df="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

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

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " db="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " c="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minCallsR="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minCallsMask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashSeed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " hashAlg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " oid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    invoke-static {v2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " sparse="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

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

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " df2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " df3="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

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

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->N:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->q:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df1:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df2:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->df3:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->db:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->dm0:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->c:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsR:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->minCallsMask:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashSeed:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->oid:[B

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write([B)V

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->sparse:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->fastFp:Z

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->polyType:I

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/legacy/crypto/ntru/NTRUEncryptionParameters;->hashAlg:Lorg/bouncycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/bouncycastle/crypto/Digest;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void
.end method
