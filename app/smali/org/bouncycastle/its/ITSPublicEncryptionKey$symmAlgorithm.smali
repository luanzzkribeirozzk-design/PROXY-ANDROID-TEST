.class public final enum Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/its/ITSPublicEncryptionKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "symmAlgorithm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

.field public static final enum aes128Ccm:Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;


# instance fields
.field private final tagValue:I


# direct methods
.method private static synthetic $values()[Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    const/4 v1, 0x0

    sget-object v2, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;->aes128Ccm:Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    const-string v1, "aes128Ccm"

    const/4 v2, 0x0

    sget-object v3, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;->aes128Ccm:Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;

    invoke-virtual {v3}, Lorg/bouncycastle/oer/its/ieee1609dot2/basetypes/SymmAlgorithm;->intValueExact()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;->aes128Ccm:Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    invoke-static {}, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;->$values()[Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;->$VALUES:[Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;->tagValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;
    .locals 1

    const-class v0, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;
    .locals 1

    sget-object v0, Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;->$VALUES:[Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    invoke-virtual {v0}, [Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/its/ITSPublicEncryptionKey$symmAlgorithm;

    return-object v0
.end method
