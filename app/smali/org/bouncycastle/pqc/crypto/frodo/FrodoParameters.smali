.class public Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field private static final cdf_table1344:[S

.field private static final cdf_table640:[S

.field private static final cdf_table976:[S

.field public static final frodokem1344aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem1344shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem640aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem640shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem976aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

.field public static final frodokem976shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;


# instance fields
.field private final B:I

.field private final D:I

.field private final defaultKeySize:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

.field private final n:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0x540

    const/16 v11, 0x3d0

    const/16 v2, 0x280

    const/16 v10, 0x100

    const/16 v9, 0x10

    const/16 v0, 0xd

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table640:[S

    const/16 v0, 0xb

    new-array v0, v0, [S

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table976:[S

    const/4 v0, 0x7

    new-array v0, v0, [S

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table1344:[S

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v1, "frodokem640aes"

    const/16 v3, 0xf

    const/4 v4, 0x2

    sget-object v5, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table640:[S

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;

    const v8, 0x8000

    invoke-direct {v7, v2, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;-><init>(II)V

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v1, "frodokem640shake"

    const/16 v3, 0xf

    const/4 v4, 0x2

    sget-object v5, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table640:[S

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v7, 0x80

    invoke-direct {v6, v7}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;

    const v8, 0x8000

    invoke-direct {v7, v2, v8}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;-><init>(II)V

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v1, "frodokem976aes"

    const/4 v4, 0x3

    sget-object v5, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table976:[S

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v6, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;

    const/high16 v2, 0x10000

    invoke-direct {v7, v11, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;-><init>(II)V

    move v2, v11

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v1, "frodokem976shake"

    const/4 v4, 0x3

    sget-object v5, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table976:[S

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v6, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;

    const/high16 v2, 0x10000

    invoke-direct {v7, v11, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;-><init>(II)V

    move v2, v11

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v1, "frodokem1344aes"

    const/4 v4, 0x4

    sget-object v5, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table1344:[S

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v6, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;

    const/high16 v2, 0x10000

    invoke-direct {v7, v12, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Aes128MatrixGenerator;-><init>(II)V

    move v2, v12

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    const-string v1, "frodokem1344shake"

    const/4 v4, 0x4

    sget-object v5, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->cdf_table1344:[S

    new-instance v6, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    invoke-direct {v6, v10}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    new-instance v7, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;

    const/high16 v2, 0x10000

    invoke-direct {v7, v12, v2}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator$Shake128MatrixGenerator;-><init>(II)V

    move v2, v12

    move v3, v9

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;-><init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    return-void

    nop

    :array_0
    .array-data 2
        0x1223s
        0x3433s
        0x5063s
        0x64f3s
        0x722bs
        0x79a9s
        0x7d67s
        0x7f0ds
        0x7fb1s
        0x7fe9s
        0x7ffas
        0x7ffes
        0x7fffs
    .end array-data

    nop

    :array_1
    .array-data 2
        0x1606s
        0x3e2bs
        0x5c89s
        0x6f9bs
        0x798cs
        0x7dd9s
        0x7f65s
        0x7fdbs
        0x7ff8s
        0x7ffes
        0x7fffs
    .end array-data

    nop

    :array_2
    .array-data 2
        0x23b6s
        0x5ba6s
        0x7682s
        0x7e69s
        0x7fd5s
        0x7ffds
        0x7fffs
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->n:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->D:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->B:I

    mul-int/lit8 v0, p4, 0x8

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->defaultKeySize:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    move v1, p2

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;-><init>(III[SLorg/bouncycastle/crypto/Xof;Lorg/bouncycastle/pqc/crypto/frodo/FrodoMatrixGenerator;)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    return-void
.end method


# virtual methods
.method getB()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->B:I

    return v0
.end method

.method getD()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->D:I

    return v0
.end method

.method getEngine()Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->engine:Lorg/bouncycastle/pqc/crypto/frodo/FrodoEngine;

    return-object v0
.end method

.method getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->n:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->defaultKeySize:I

    return v0
.end method
