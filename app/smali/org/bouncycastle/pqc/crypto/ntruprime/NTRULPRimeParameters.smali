.class public Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final ntrulpr1013:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr1277:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr653:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr761:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr857:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

.field public static final ntrulpr953:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;


# instance fields
.field private final delta:I

.field private final name:Ljava/lang/String;

.field private final p:I

.field private final privateKeyBytes:I

.field private final publicKeyBytes:I

.field private final q:I

.field private final roundedPolynomialBytes:I

.field private final sharedKeyBytes:I

.field private final tau0:I

.field private final tau1:I

.field private final tau2:I

.field private final tau3:I

.field private final w:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v13, 0x20

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const-string v1, "ntrulpr653"

    const/16 v2, 0x28d

    const/16 v3, 0x120d

    const/16 v4, 0xfc

    const/16 v5, 0x121

    const/16 v6, 0x87f

    const/16 v7, 0x71

    const/16 v8, 0x7ef

    const/16 v9, 0x122

    const/16 v10, 0x361

    const/16 v11, 0x381

    const/16 v12, 0x465

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr653:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const-string v1, "ntrulpr761"

    const/16 v2, 0x2f9

    const/16 v3, 0x11ef

    const/16 v4, 0xfa

    const/16 v5, 0x124

    const/16 v6, 0x86c

    const/16 v7, 0x72

    const/16 v8, 0x7d7

    const/16 v9, 0x11f

    const/16 v10, 0x3ef

    const/16 v11, 0x40f

    const/16 v12, 0x50e

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr761:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const-string v1, "ntrulpr857"

    const/16 v2, 0x359

    const/16 v3, 0x142f

    const/16 v4, 0x119

    const/16 v5, 0x149

    const/16 v6, 0x981

    const/16 v7, 0x65

    const/16 v8, 0x8d9

    const/16 v9, 0x144

    const/16 v10, 0x480

    const/16 v11, 0x4a0

    const/16 v12, 0x5b7

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr857:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const-string v1, "ntrulpr953"

    const/16 v2, 0x3b9

    const/16 v3, 0x18c7

    const/16 v4, 0x159

    const/16 v5, 0x194

    const/16 v6, 0xbb5

    const/16 v7, 0x52

    const/16 v8, 0xaee

    const/16 v9, 0x190

    const/16 v10, 0x525

    const/16 v11, 0x545

    const/16 v12, 0x674

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr953:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const-string v1, "ntrulpr1013"

    const/16 v2, 0x3f5

    const/16 v3, 0x1c09

    const/16 v4, 0x188

    const/16 v5, 0x1c2

    const/16 v6, 0xd27

    const/16 v7, 0x49

    const/16 v8, 0xc47

    const/16 v9, 0x1c1

    const/16 v10, 0x58f

    const/16 v11, 0x5af

    const/16 v12, 0x6ed

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1013:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    const-string v1, "ntrulpr1277"

    const/16 v2, 0x4fd

    const/16 v3, 0x1ec7

    const/16 v4, 0x1ad

    const/16 v5, 0x1f6

    const/16 v6, 0xe8c

    const/16 v7, 0x42

    const/16 v8, 0xd8d

    const/16 v9, 0x1f0

    const/16 v10, 0x717

    const/16 v11, 0x737

    const/16 v12, 0x8b7

    invoke-direct/range {v0 .. v13}, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;-><init>(Ljava/lang/String;IIIIIIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->ntrulpr1277:Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->p:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->q:I

    iput p4, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->w:I

    iput p5, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->delta:I

    iput p6, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau0:I

    iput p7, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau1:I

    iput p8, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau2:I

    iput p9, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau3:I

    iput p10, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->roundedPolynomialBytes:I

    iput p11, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->publicKeyBytes:I

    iput p12, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->privateKeyBytes:I

    iput p13, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->sharedKeyBytes:I

    return-void
.end method


# virtual methods
.method public getDelta()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->delta:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getP()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->p:I

    return v0
.end method

.method public getPrivateKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->privateKeyBytes:I

    return v0
.end method

.method public getPublicKeyBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->publicKeyBytes:I

    return v0
.end method

.method public getQ()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->q:I

    return v0
.end method

.method public getRoundedPolynomialBytes()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->roundedPolynomialBytes:I

    return v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->sharedKeyBytes:I

    mul-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public getTau0()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau0:I

    return v0
.end method

.method public getTau1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau1:I

    return v0
.end method

.method public getTau2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau2:I

    return v0
.end method

.method public getTau3()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->tau3:I

    return v0
.end method

.method public getW()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/ntruprime/NTRULPRimeParameters;->w:I

    return v0
.end method
