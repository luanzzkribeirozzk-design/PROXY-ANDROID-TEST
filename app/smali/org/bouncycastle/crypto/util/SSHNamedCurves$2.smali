.class Lorg/bouncycastle/crypto/util/SSHNamedCurves$2;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/SSHNamedCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const/16 v0, 0xc

    new-array v2, v0, [[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "secp256r1"

    aput-object v3, v0, v1

    const-string v3, "nistp256"

    aput-object v3, v0, v5

    aput-object v0, v2, v1

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "secp384r1"

    aput-object v3, v0, v1

    const-string v3, "nistp384"

    aput-object v3, v0, v5

    aput-object v0, v2, v5

    new-array v0, v6, [Ljava/lang/String;

    const-string v3, "secp521r1"

    aput-object v3, v0, v1

    const-string v3, "nistp521"

    aput-object v3, v0, v5

    aput-object v0, v2, v6

    const/4 v0, 0x3

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sect163k1"

    aput-object v4, v3, v1

    const-string v4, "nistk163"

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    const/4 v0, 0x4

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "secp192r1"

    aput-object v4, v3, v1

    const-string v4, "nistp192"

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    const/4 v0, 0x5

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "secp224r1"

    aput-object v4, v3, v1

    const-string v4, "nistp224"

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    const/4 v0, 0x6

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sect233k1"

    aput-object v4, v3, v1

    const-string v4, "nistk233"

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    const/4 v0, 0x7

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sect233r1"

    aput-object v4, v3, v1

    const-string v4, "nistb233"

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    const/16 v0, 0x8

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sect283k1"

    aput-object v4, v3, v1

    const-string v4, "nistk283"

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    const/16 v0, 0x9

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sect409k1"

    aput-object v4, v3, v1

    const-string v4, "nistk409"

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    const/16 v0, 0xa

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sect409r1"

    aput-object v4, v3, v1

    const-string v4, "nistb409"

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    const/16 v0, 0xb

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "sect571k1"

    aput-object v4, v3, v1

    const-string v4, "nistt571"

    aput-object v4, v3, v5

    aput-object v3, v2, v0

    move v0, v1

    :goto_0
    array-length v3, v2

    if-eq v0, v3, :cond_0

    aget-object v3, v2, v0

    aget-object v4, v3, v1

    aget-object v3, v3, v5

    invoke-virtual {p0, v4, v3}, Lorg/bouncycastle/crypto/util/SSHNamedCurves$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
