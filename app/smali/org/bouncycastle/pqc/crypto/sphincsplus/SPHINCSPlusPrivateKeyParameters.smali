.class public Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;


# instance fields
.field final pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

.field final sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;


# direct methods
.method constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B)V
    .locals 4

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;->getN()I

    move-result v0

    array-length v1, p2

    mul-int/lit8 v2, v0, 0x4

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "private key encoding does not match parameters"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    const/4 v2, 0x0

    invoke-static {p2, v2, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    invoke-static {p2, v0, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;-><init>([B[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    mul-int/lit8 v2, v0, 0x2

    mul-int/lit8 v3, v0, 0x3

    invoke-static {p2, v2, v3}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    mul-int/lit8 v3, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    invoke-static {p2, v3, v0}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;-><init>([B[B)V

    iput-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;[B[B[B[B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusParameters;)V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    invoke-direct {v0, p2, p3}, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;-><init>([B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    invoke-direct {v0, p4, p5}, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;-><init>([B[B)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->seed:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->prf:[B

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->concatenate([[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncodedPublicKey()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPrf()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->prf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v1, v1, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->concatenate([B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public getPublicSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getRoot()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->pk:Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/PK;->root:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method

.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SPHINCSPlusPrivateKeyParameters;->sk:Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/sphincsplus/SK;->seed:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
