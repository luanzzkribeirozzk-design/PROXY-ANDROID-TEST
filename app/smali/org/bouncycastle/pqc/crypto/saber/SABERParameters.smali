.class public Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/pqc/crypto/KEMParameters;


# static fields
.field public static final firesaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final firesaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final firesaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final firesaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final lightsaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final saberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final ufiresaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final ufiresaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final ulightsaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final ulightsaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final usaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

.field public static final usaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;


# instance fields
.field private final defaultKeySize:I

.field private final engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

.field private final l:I

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v7, 0x3

    const/4 v2, 0x2

    const/16 v15, 0x100

    const/4 v14, 0x1

    const/4 v4, 0x0

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "lightsaberkem128r3"

    const/16 v3, 0x80

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v6, "saberkem128r3"

    const/16 v8, 0x80

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v9, "firesaberkem128r3"

    const/4 v10, 0x4

    const/16 v11, 0x80

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem128r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "lightsaberkem192r3"

    const/16 v3, 0xc0

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v6, "saberkem192r3"

    const/16 v8, 0xc0

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v9, "firesaberkem192r3"

    const/4 v10, 0x4

    const/16 v11, 0xc0

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem192r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "lightsaberkem256r3"

    move v3, v15

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v6, "saberkem256r3"

    move v8, v15

    move v9, v4

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v9, "firesaberkem256r3"

    const/4 v10, 0x4

    move v11, v15

    move v12, v4

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem256r3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v9, "lightsaberkem90sr3"

    move v10, v2

    move v11, v15

    move v12, v14

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->lightsaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v6, "saberkem90sr3"

    move v8, v15

    move v9, v14

    move v10, v4

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->saberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v9, "firesaberkem90sr3"

    const/4 v10, 0x4

    move v11, v15

    move v12, v14

    move v13, v4

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->firesaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "ulightsaberkemr3"

    move v3, v15

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->ulightsaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v6, "usaberkemr3"

    move v8, v15

    move v9, v4

    move v10, v14

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->usaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v9, "ufiresaberkemr3"

    const/4 v10, 0x4

    move v11, v15

    move v12, v4

    move v13, v14

    invoke-direct/range {v8 .. v13}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v8, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->ufiresaberkemr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "ulightsaberkem90sr3"

    move v3, v15

    move v4, v14

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->ulightsaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v6, "usaberkem90sr3"

    move v8, v15

    move v9, v14

    move v10, v14

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v5, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->usaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    const-string v1, "ufiresaberkem90sr3"

    const/4 v2, 0x4

    move v3, v15

    move v4, v14

    move v5, v14

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;-><init>(Ljava/lang/String;IIZZ)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->ufiresaberkem90sr3:Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->name:Ljava/lang/String;

    iput p2, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->l:I

    iput p3, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->defaultKeySize:I

    new-instance v0, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    invoke-direct {v0, p2, p3, p4, p5}, Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;-><init>(IIZZ)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    return-void
.end method


# virtual methods
.method public getEngine()Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->engine:Lorg/bouncycastle/pqc/crypto/saber/SABEREngine;

    return-object v0
.end method

.method public getL()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->l:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/saber/SABERParameters;->defaultKeySize:I

    return v0
.end method
