.class public Lorg/bouncycastle/util/encoders/UTF8;
.super Ljava/lang/Object;


# static fields
.field private static final C_CR1:B = 0x1t

.field private static final C_CR2:B = 0x2t

.field private static final C_CR3:B = 0x3t

.field private static final C_ILL:B = 0x0t

.field private static final C_L2A:B = 0x4t

.field private static final C_L3A:B = 0x5t

.field private static final C_L3B:B = 0x6t

.field private static final C_L3C:B = 0x7t

.field private static final C_L4A:B = 0x8t

.field private static final C_L4B:B = 0x9t

.field private static final C_L4C:B = 0xat

.field private static final S_CS1:B = 0x0t

.field private static final S_CS2:B = 0x10t

.field private static final S_CS3:B = 0x20t

.field private static final S_END:B = -0x1t

.field private static final S_ERR:B = -0x2t

.field private static final S_P3A:B = 0x30t

.field private static final S_P3B:B = 0x40t

.field private static final S_P4A:B = 0x50t

.field private static final S_P4B:B = 0x60t

.field private static final firstUnitTable:[S

.field private static final transitionTable:[B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0x80

    const/16 v7, 0x70

    const/16 v6, 0xb

    const/16 v5, 0x10

    const/4 v0, 0x0

    new-array v1, v8, [S

    sput-object v1, Lorg/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    new-array v1, v7, [B

    sput-object v1, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    new-array v1, v8, [B

    const/16 v2, 0xf

    const/4 v3, 0x1

    invoke-static {v1, v0, v2, v3}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x1f

    const/4 v3, 0x2

    invoke-static {v1, v5, v2, v3}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x20

    const/16 v3, 0x3f

    const/4 v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x40

    const/16 v3, 0x41

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x42

    const/16 v3, 0x5f

    const/4 v4, 0x4

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x60

    const/16 v3, 0x60

    const/4 v4, 0x5

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x61

    const/16 v3, 0x6c

    const/4 v4, 0x6

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x6d

    const/16 v3, 0x6d

    const/4 v4, 0x7

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x6e

    const/16 v3, 0x6f

    const/4 v4, 0x6

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x8

    invoke-static {v1, v7, v7, v2}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x71

    const/16 v3, 0x73

    const/16 v4, 0x9

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x74

    const/16 v3, 0x74

    const/16 v4, 0xa

    invoke-static {v1, v2, v3, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    const/16 v2, 0x75

    const/16 v3, 0x7f

    invoke-static {v1, v2, v3, v0}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v2, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    sget-object v3, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    const/4 v4, -0x2

    invoke-static {v2, v0, v3, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v2, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x8

    const/4 v4, -0x1

    invoke-static {v2, v3, v6, v4}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v2, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x18

    const/16 v4, 0x1b

    invoke-static {v2, v3, v4, v0}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v2, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x28

    const/16 v4, 0x2b

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v2, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x3a

    const/16 v4, 0x3b

    invoke-static {v2, v3, v4, v0}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v2, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x48

    const/16 v4, 0x49

    invoke-static {v2, v3, v4, v0}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v2, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x59

    const/16 v4, 0x5b

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    sget-object v2, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    const/16 v3, 0x68

    const/16 v4, 0x68

    invoke-static {v2, v3, v4, v5}, Lorg/bouncycastle/util/encoders/UTF8;->fill([BIIB)V

    new-array v2, v6, [B

    fill-array-data v2, :array_0

    new-array v3, v6, [B

    fill-array-data v3, :array_1

    :goto_0
    if-ge v0, v8, :cond_0

    aget-byte v4, v1, v0

    aget-byte v5, v2, v4

    and-int/2addr v5, v0

    aget-byte v4, v3, v4

    sget-object v6, Lorg/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1ft
        0xft
        0xft
        0xft
        0x7t
        0x7t
        0x7t
    .end array-data

    :array_1
    .array-data 1
        -0x2t
        -0x2t
        -0x2t
        -0x2t
        0x0t
        0x30t
        0x10t
        0x40t
        0x50t
        0x20t
        0x60t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fill([BIIB)V
    .locals 0

    :goto_0
    if-gt p1, p2, :cond_0

    aput-byte p3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static transcodeToUTF16([BII[C)I
    .locals 8

    const/4 v1, -0x1

    const/4 v2, 0x0

    add-int v6, p1, p2

    :goto_0
    if-ge p1, v6, :cond_8

    add-int/lit8 v4, p1, 0x1

    aget-byte v3, p0, p1

    if-ltz v3, :cond_1

    array-length v0, p3

    if-lt v2, v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    int-to-char v3, v3

    aput-char v3, p3, v2

    move v2, v0

    move p1, v4

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/bouncycastle/util/encoders/UTF8;->firstUnitTable:[S

    and-int/lit8 v3, v3, 0x7f

    aget-short v0, v0, v3

    ushr-int/lit8 v3, v0, 0x8

    int-to-byte v0, v0

    :goto_2
    if-ltz v0, :cond_3

    if-lt v4, v6, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    shl-int/lit8 v3, v3, 0x6

    and-int/lit8 v7, v4, 0x3f

    or-int/2addr v3, v7

    sget-object v7, Lorg/bouncycastle/util/encoders/UTF8;->transitionTable:[B

    and-int/lit16 v4, v4, 0xff

    ushr-int/lit8 v4, v4, 0x4

    add-int/2addr v0, v4

    aget-byte v0, v7, v0

    move v4, v5

    goto :goto_2

    :cond_3
    const/4 v5, -0x2

    if-ne v0, v5, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    const v0, 0xffff

    if-gt v3, v0, :cond_6

    array-length v0, p3

    if-lt v2, v0, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v2, 0x1

    int-to-char v3, v3

    aput-char v3, p3, v2

    :goto_3
    move v2, v0

    move p1, v4

    goto :goto_0

    :cond_6
    array-length v0, p3

    add-int/lit8 v0, v0, -0x1

    if-lt v2, v0, :cond_7

    move v0, v1

    goto :goto_1

    :cond_7
    add-int/lit8 v5, v2, 0x1

    const v0, 0xd7c0

    ushr-int/lit8 v7, v3, 0xa

    add-int/2addr v0, v7

    int-to-char v0, v0

    aput-char v0, p3, v2

    add-int/lit8 v0, v5, 0x1

    const v2, 0xdc00

    and-int/lit16 v3, v3, 0x3ff

    or-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p3, v5

    goto :goto_3

    :cond_8
    move v0, v2

    goto :goto_1
.end method

.method public static transcodeToUTF16([B[C)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1, p1}, Lorg/bouncycastle/util/encoders/UTF8;->transcodeToUTF16([BII[C)I

    move-result v0

    return v0
.end method
