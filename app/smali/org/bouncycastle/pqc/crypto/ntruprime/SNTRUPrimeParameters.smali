.class public Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final sntrup1013:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup1277:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup653:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup761:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup857:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

.field public static final sntrup953:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;


# instance fields
.field private final name:Ljava/lang/String;

.field private final p:I

.field private final privateKeyBytes:I

.field private final publicKeyBytes:I

.field private final q:I

.field private final roundedPolynomialBytes:I

.field private final rqPolynomialBytes:I

.field private final sharedKeyBytes:I

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0x5e1

    const/16 v11, 0x52a

    const/16 v10, 0x486

    const/16 v5, 0x3e2

    const/16 v9, 0x20

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const-string v1, "sntrup653"

    const/16 v2, 0x28d

    const/16 v3, 0x120d

    const/16 v4, 0x120

    const/16 v6, 0x361

    const/16 v8, 0x5ee

    move v7, v5

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup653:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const-string v1, "sntrup761"

    const/16 v2, 0x2f9

    const/16 v3, 0x11ef

    const/16 v4, 0x11e

    const/16 v6, 0x3ef

    const/16 v8, 0x6e3

    move v5, v10

    move v7, v10

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup761:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const-string v1, "sntrup857"

    const/16 v2, 0x359

    const/16 v3, 0x142f

    const/16 v4, 0x142

    const/16 v6, 0x480

    const/16 v8, 0x7cf

    move v5, v11

    move v7, v11

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup857:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const-string v1, "sntrup953"

    const/16 v2, 0x3b9

    const/16 v3, 0x18c7

    const/16 v4, 0x18c

    const/16 v6, 0x525

    const/16 v8, 0x8ce

    move v5, v12

    move v7, v12

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup953:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const-string v1, "sntrup1013"

    const/16 v2, 0x3f5

    const/16 v3, 0x1c09

    const/16 v4, 0x1c0

    const/16 v5, 0x657

    const/16 v6, 0x58f

    const/16 v7, 0x657

    const/16 v8, 0x971

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1013:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    const-string v1, "sntrup1277"

    const/16 v2, 0x4fd

    const/16 v3, 0x1ec7

    const/16 v4, 0x1ec

    const/16 v5, 0x813

    const/16 v6, 0x717

    const/16 v7, 0x813

    const/16 v8, 0xbf3

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sntrup1277:Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->p:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->q:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->w:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->rqPolynomialBytes:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->roundedPolynomialBytes:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->publicKeyBytes:I

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->privateKeyBytes:I

    iput p9, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sharedKeyBytes:I

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getP()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->p:I

    return v0
.end method

.method public getPrivateKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->privateKeyBytes:I

    return v0
.end method

.method public getPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->publicKeyBytes:I

    return v0
.end method

.method public getQ()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->q:I

    return v0
.end method

.method public getRoundedPolynomialBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->roundedPolynomialBytes:I

    return v0
.end method

.method public getRqPolynomialBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->rqPolynomialBytes:I

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->sharedKeyBytes:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/SNTRUPrimeParameters;->w:I

    return v0
.end method
