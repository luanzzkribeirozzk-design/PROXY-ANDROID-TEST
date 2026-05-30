.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
.super Ljava/lang/Object;


# static fields
.field public static final bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final bluegemss_128:Ljava/lang/Integer;

.field private static final bluegemss_192:Ljava/lang/Integer;

.field private static final bluegemss_256:Ljava/lang/Integer;

.field public static final cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final cyangemss_128:Ljava/lang/Integer;

.field private static final cyangemss_192:Ljava/lang/Integer;

.field private static final cyangemss_256:Ljava/lang/Integer;

.field public static final dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final dualmodems_128:Ljava/lang/Integer;

.field private static final dualmodems_192:Ljava/lang/Integer;

.field private static final dualmodems_256:Ljava/lang/Integer;

.field public static final fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final fgemss_128:Ljava/lang/Integer;

.field private static final fgemss_192:Ljava/lang/Integer;

.field private static final fgemss_256:Ljava/lang/Integer;

.field public static final gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final gemss_128:Ljava/lang/Integer;

.field private static final gemss_192:Ljava/lang/Integer;

.field private static final gemss_256:Ljava/lang/Integer;

.field public static final magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final magentagemss_128:Ljava/lang/Integer;

.field private static final magentagemss_192:Ljava/lang/Integer;

.field private static final magentagemss_256:Ljava/lang/Integer;

.field private static final oidToParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final paramsToOid:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final redgemss_128:Ljava/lang/Integer;

.field private static final redgemss_192:Ljava/lang/Integer;

.field private static final redgemss_256:Ljava/lang/Integer;

.field public static final whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field public static final whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

.field private static final whitegemss_128:Ljava/lang/Integer;

.field private static final whitegemss_192:Ljava/lang/Integer;

.field private static final whitegemss_256:Ljava/lang/Integer;


# instance fields
.field private final engine:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "gemss128"

    const/16 v2, 0x80

    const/16 v3, 0xae

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/4 v6, 0x4

    const/16 v7, 0x201

    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "gemss192"

    const/16 v2, 0xc0

    const/16 v3, 0x109

    const/16 v4, 0x14

    const/16 v5, 0x16

    const/4 v6, 0x4

    const/16 v7, 0x201

    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "gemss256"

    const/16 v2, 0x100

    const/16 v3, 0x162

    const/16 v4, 0x21

    const/16 v5, 0x1e

    const/4 v6, 0x4

    const/16 v7, 0x201

    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "bluegemss128"

    const/16 v2, 0x80

    const/16 v3, 0xaf

    const/16 v4, 0xe

    const/16 v5, 0xd

    const/4 v6, 0x4

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "bluegemss192"

    const/16 v2, 0xc0

    const/16 v3, 0x109

    const/16 v4, 0x17

    const/16 v5, 0x16

    const/4 v6, 0x4

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "bluegemss256"

    const/16 v2, 0x100

    const/16 v3, 0x166

    const/16 v4, 0x20

    const/16 v5, 0x22

    const/4 v6, 0x4

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "redgemss128"

    const/16 v2, 0x80

    const/16 v3, 0xb1

    const/16 v4, 0xf

    const/16 v5, 0xf

    const/4 v6, 0x4

    const/16 v7, 0x11

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "redgemss192"

    const/16 v2, 0xc0

    const/16 v3, 0x10a

    const/16 v4, 0x19

    const/16 v5, 0x17

    const/4 v6, 0x4

    const/16 v7, 0x11

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "redgemss256"

    const/16 v2, 0x100

    const/16 v3, 0x166

    const/16 v4, 0x23

    const/16 v5, 0x22

    const/4 v6, 0x4

    const/16 v7, 0x11

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "whitegemss128"

    const/16 v2, 0x80

    const/16 v3, 0xaf

    const/16 v4, 0xc

    const/16 v5, 0xc

    const/4 v6, 0x3

    const/16 v7, 0x201

    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "whitegemss192"

    const/16 v2, 0xc0

    const/16 v3, 0x10c

    const/16 v4, 0x15

    const/16 v5, 0x15

    const/4 v6, 0x3

    const/16 v7, 0x201

    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "whitegemss256"

    const/16 v2, 0x100

    const/16 v3, 0x16c

    const/16 v4, 0x1d

    const/16 v5, 0x1f

    const/4 v6, 0x3

    const/16 v7, 0x201

    const/16 v8, 0x9

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "cyangemss128"

    const/16 v2, 0x80

    const/16 v3, 0xb1

    const/16 v4, 0xd

    const/16 v5, 0xe

    const/4 v6, 0x3

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "cyangemss192"

    const/16 v2, 0xc0

    const/16 v3, 0x10e

    const/16 v4, 0x16

    const/16 v5, 0x17

    const/4 v6, 0x3

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "cyangemss256"

    const/16 v2, 0x100

    const/16 v3, 0x16c

    const/16 v4, 0x20

    const/16 v5, 0x1f

    const/4 v6, 0x3

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "magentagemss128"

    const/16 v2, 0x80

    const/16 v3, 0xb2

    const/16 v4, 0xf

    const/16 v5, 0xf

    const/4 v6, 0x3

    const/16 v7, 0x11

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "magentagemss192"

    const/16 v2, 0xc0

    const/16 v3, 0x10f

    const/16 v4, 0x18

    const/16 v5, 0x18

    const/4 v6, 0x3

    const/16 v7, 0x11

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "magentagemss256"

    const/16 v2, 0x100

    const/16 v3, 0x16e

    const/16 v4, 0x21

    const/16 v5, 0x21

    const/4 v6, 0x3

    const/16 v7, 0x11

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "fgemss128"

    const/16 v2, 0x80

    const/16 v3, 0x10a

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "fgemss192"

    const/16 v2, 0xc0

    const/16 v3, 0x192

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x1

    const/16 v7, 0x280

    const/16 v8, 0x9

    const/4 v9, 0x7

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "fgemss256"

    const/16 v2, 0x100

    const/16 v3, 0x219

    const/16 v4, 0x1a

    const/16 v5, 0x19

    const/4 v6, 0x1

    const/16 v7, 0x480

    const/16 v8, 0xa

    const/4 v9, 0x7

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "dualmodems128"

    const/16 v2, 0x80

    const/16 v3, 0x10a

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/4 v6, 0x1

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "dualmodems192"

    const/16 v2, 0xc0

    const/16 v3, 0x192

    const/16 v4, 0x12

    const/16 v5, 0x12

    const/4 v6, 0x1

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const-string v1, "dualmodems256"

    const/16 v2, 0x100

    const/16 v3, 0x220

    const/16 v4, 0x20

    const/16 v5, 0x20

    const/4 v6, 0x1

    const/16 v7, 0x81

    const/4 v8, 0x7

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;-><init>(Ljava/lang/String;IIIIIIII)V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    const/16 v0, 0x101

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_128:Ljava/lang/Integer;

    const/16 v0, 0x102

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_192:Ljava/lang/Integer;

    const/16 v0, 0x103

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_256:Ljava/lang/Integer;

    const/16 v0, 0x201

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_128:Ljava/lang/Integer;

    const/16 v0, 0x202

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_192:Ljava/lang/Integer;

    const/16 v0, 0x203

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_256:Ljava/lang/Integer;

    const/16 v0, 0x301

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_128:Ljava/lang/Integer;

    const/16 v0, 0x302

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_192:Ljava/lang/Integer;

    const/16 v0, 0x303

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_256:Ljava/lang/Integer;

    const/16 v0, 0x401

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_128:Ljava/lang/Integer;

    const/16 v0, 0x402

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_192:Ljava/lang/Integer;

    const/16 v0, 0x403

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_256:Ljava/lang/Integer;

    const/16 v0, 0x501

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_128:Ljava/lang/Integer;

    const/16 v0, 0x502

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_192:Ljava/lang/Integer;

    const/16 v0, 0x503

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_256:Ljava/lang/Integer;

    const/16 v0, 0x601

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_128:Ljava/lang/Integer;

    const/16 v0, 0x602

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_192:Ljava/lang/Integer;

    const/16 v0, 0x603

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_256:Ljava/lang/Integer;

    const/16 v0, 0x701

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_128:Ljava/lang/Integer;

    const/16 v0, 0x702

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_192:Ljava/lang/Integer;

    const/16 v0, 0x703

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_256:Ljava/lang/Integer;

    const/16 v0, 0x801

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_128:Ljava/lang/Integer;

    const/16 v0, 0x802

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_192:Ljava/lang/Integer;

    const/16 v0, 0x803

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_256:Ljava/lang/Integer;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_128:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_192:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_256:Ljava/lang/Integer;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->gemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->bluegemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->redgemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->whitegemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->cyangemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->magentagemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->fgemss_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems128:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_128:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems192:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_192:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems256:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    sget-object v2, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->dualmodems_256:Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIII)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->name:Ljava/lang/String;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;-><init>(IIIIIIII)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->engine:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    return-void
.end method

.method public static getID(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->paramsToOid:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public static getParams(Ljava/lang/Integer;)Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;
    .locals 1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->oidToParams:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;

    return-object v0
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->getID(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getEngine()Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->engine:Lorg/bouncycastle/pqc/crypto/gemss/GeMSSEngine;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;->name:Ljava/lang/String;

    return-object v0
.end method
