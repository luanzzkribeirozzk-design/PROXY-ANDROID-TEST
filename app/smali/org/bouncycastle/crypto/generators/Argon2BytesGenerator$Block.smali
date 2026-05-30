.class Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Block"
.end annotation


# static fields
.field private static final SIZE:I = 0x80


# instance fields
.field private final v:[J


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$1;)V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->xorWith(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    return-void
.end method

.method static synthetic access$400(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)[J
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    return-object v0
.end method

.method static synthetic access$600(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->xorWith(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    return-void
.end method

.method static synthetic access$800(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->copyBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    return-void
.end method

.method static synthetic access$900(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->xor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V

    return-void
.end method

.method private copyBlock(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    const/16 v2, 0x80

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private xor(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 8

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    iget-object v2, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    iget-object v3, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x80

    if-ge v0, v4, :cond_0

    aget-wide v4, v2, v0

    aget-wide v6, v3, v0

    xor-long/2addr v4, v6

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private xorWith(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 8

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    iget-object v2, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    const/4 v0, 0x0

    :goto_0
    const/16 v3, 0x80

    if-ge v0, v3, :cond_0

    aget-wide v4, v1, v0

    aget-wide v6, v2, v0

    xor-long/2addr v4, v6

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private xorWith(Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;)V
    .locals 10

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    iget-object v2, p1, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    iget-object v3, p2, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    const/4 v0, 0x0

    :goto_0
    const/16 v4, 0x80

    if-ge v0, v4, :cond_0

    aget-wide v4, v1, v0

    aget-wide v6, v2, v0

    aget-wide v8, v3, v0

    xor-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;
    .locals 4

    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    const-wide/16 v2, 0x0

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    return-object p0
.end method

.method fromBytes([B)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "input shorter than blocksize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToLong([BI[J)V

    return-void
.end method

.method toBytes([B)V
    .locals 2

    array-length v0, p1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output shorter than blocksize"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/generators/Argon2BytesGenerator$Block;->v:[J

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/bouncycastle/util/Pack;->longToLittleEndian([J[BI)V

    return-void
.end method
