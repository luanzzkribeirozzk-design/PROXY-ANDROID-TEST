.class public Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# static fields
.field private static final len_pkseed:I = 0x20

.field private static final len_salt:I = 0x10

.field private static final len_skseed:I = 0x20

.field public static final rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowIIIclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowIIIcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowVcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowVclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

.field public static final rainbowVcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;


# instance fields
.field private final hash_algo:Lorg/bouncycastle/crypto/Digest;

.field private final m:I

.field private final n:I

.field private final name:Ljava/lang/String;

.field private final o1:I

.field private final o2:I

.field private final v1:I

.field private final v2:I

.field private final version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x5

    const/4 v3, 0x3

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-III-classic"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-III-circumzenithal"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CIRCUMZENITHAL:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-III-compressed"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowIIIcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-V-classic"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CLASSIC:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v4, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVclassic:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-V-circumzenithal"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->CIRCUMZENITHAL:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v4, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcircumzenithal:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    const-string v1, "rainbow-V-compressed"

    sget-object v2, Lorg/bouncycastle/pqc/crypto/rainbow/Version;->COMPRESSED:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    invoke-direct {v0, v1, v4, v2}, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;-><init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->rainbowVcompressed:Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/bouncycastle/pqc/crypto/rainbow/Version;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->name:Ljava/lang/String;

    packed-switch p2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No valid version. Please choose one of the following: 3, 5"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    const/16 v0, 0x44

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA384Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA384Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->hash_algo:Lorg/bouncycastle/crypto/Digest;

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v2:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->n:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->m:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    return-void

    :pswitch_2
    const/16 v0, 0x60

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    const/16 v0, 0x24

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    const/16 v0, 0x40

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    new-instance v0, Lorg/bouncycastle/crypto/digests/SHA512Digest;

    invoke-direct {v0}, Lorg/bouncycastle/crypto/digests/SHA512Digest;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->hash_algo:Lorg/bouncycastle/crypto/Digest;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method getHash_algo()Lorg/bouncycastle/crypto/Digest;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->hash_algo:Lorg/bouncycastle/crypto/Digest;

    return-object v0
.end method

.method getLen_pkseed()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method getLen_salt()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method getLen_skseed()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method getM()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->m:I

    return v0
.end method

.method getN()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->n:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->name:Ljava/lang/String;

    return-object v0
.end method

.method getO1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o1:I

    return v0
.end method

.method getO2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->o2:I

    return v0
.end method

.method getV1()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v1:I

    return v0
.end method

.method getV2()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->v2:I

    return v0
.end method

.method getVersion()Lorg/bouncycastle/pqc/crypto/rainbow/Version;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/rainbow/RainbowParameters;->version:Lorg/bouncycastle/pqc/crypto/rainbow/Version;

    return-object v0
.end method
