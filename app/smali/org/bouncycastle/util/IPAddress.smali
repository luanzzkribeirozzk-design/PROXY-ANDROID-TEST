.class public Lorg/bouncycastle/util/IPAddress;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isParseable(Ljava/lang/String;IIIIZII)Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    sub-int v4, p2, p1

    if-ge v4, v0, :cond_1

    move v3, v0

    :goto_0
    if-le v4, p4, :cond_2

    move v2, v0

    :goto_1
    or-int/2addr v2, v3

    if-eqz v2, :cond_3

    :cond_0
    :goto_2
    return v1

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    if-le v4, v0, :cond_5

    move v3, v0

    :goto_3
    if-nez p5, :cond_6

    move v2, v0

    :goto_4
    and-int/2addr v2, v3

    if-eqz v2, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-lez v2, :cond_0

    :cond_4
    move v3, v1

    :goto_5
    if-ge p1, p2, :cond_7

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_0

    mul-int/2addr v3, p3

    add-int/2addr v2, v3

    move v3, v2

    move p1, v4

    goto :goto_5

    :cond_5
    move v3, v1

    goto :goto_3

    :cond_6
    move v2, v1

    goto :goto_4

    :cond_7
    if-lt v3, p6, :cond_8

    move v2, v0

    :goto_6
    if-gt v3, p7, :cond_9

    :goto_7
    and-int v1, v2, v0

    goto :goto_2

    :cond_8
    move v2, v1

    goto :goto_6

    :cond_9
    move v0, v1

    goto :goto_7
.end method

.method private static isParseableIPv4Mask(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/16 v7, 0x20

    move-object v0, p0

    move v5, v1

    move v6, v1

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result v0

    return v0
.end method

.method private static isParseableIPv4Octet(Ljava/lang/String;II)Z
    .locals 8

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/16 v7, 0xff

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result v0

    return v0
.end method

.method private static isParseableIPv6Mask(Ljava/lang/String;)Z
    .locals 8

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xa

    const/4 v4, 0x3

    const/4 v6, 0x1

    const/16 v7, 0x80

    move-object v0, p0

    move v5, v1

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result v0

    return v0
.end method

.method private static isParseableIPv6Segment(Ljava/lang/String;II)Z
    .locals 8

    const/16 v3, 0x10

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const v7, 0xffff

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/util/IPAddress;->isParseable(Ljava/lang/String;IIIIZII)Z

    move-result v0

    return v0
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidIPv4(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x7

    if-lt v3, v1, :cond_0

    const/16 v1, 0xf

    if-le v3, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    move v2, v0

    :goto_1
    const/4 v4, 0x3

    if-ge v1, v4, :cond_2

    const/16 v4, 0x2e

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    invoke-static {p0, v2, v4}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v2, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-static {p0, v2, v3}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv4Octet(Ljava/lang/String;II)Z

    move-result v0

    goto :goto_0
.end method

.method public static isValidIPv4WithNetmask(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv4Mask(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static isValidIPv6(Ljava/lang/String;)Z
    .locals 11

    const/16 v10, 0x3a

    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v10, :cond_2

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v0

    if-ltz v0, :cond_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v0, v6, :cond_7

    invoke-virtual {v5, v10, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v6

    if-lt v6, v0, :cond_7

    if-eq v3, v9, :cond_0

    if-eq v0, v6, :cond_5

    invoke-virtual {v5, v0, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ne v6, v8, :cond_4

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-lez v8, :cond_4

    add-int/lit8 v3, v3, 0x1

    if-eq v3, v9, :cond_0

    invoke-static {v7}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    :goto_2
    add-int/lit8 v0, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v5, v0, v6}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv6Segment(Ljava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_5
    if-eq v6, v4, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq v6, v0, :cond_6

    if-nez v2, :cond_0

    :cond_6
    move v2, v4

    goto :goto_2

    :cond_7
    if-eq v3, v9, :cond_8

    if-eqz v2, :cond_0

    :cond_8
    move v1, v4

    goto :goto_0
.end method

.method public static isValidIPv6WithNetmask(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ge v2, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lorg/bouncycastle/util/IPAddress;->isParseableIPv6Mask(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public static isValidWithNetMask(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv4WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/bouncycastle/util/IPAddress;->isValidIPv6WithNetmask(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
