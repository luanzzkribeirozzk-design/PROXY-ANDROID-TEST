.class public Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;
.super Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;


# instance fields
.field final sk:[B


# direct methods
.method public constructor <init>(Lorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSKeyParameters;-><init>(ZLorg/bouncycastle/pqc/crypto/gemss/GeMSSParameters;)V

    array-length v0, p2

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    array-length v1, v1

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/gemss/GeMSSPrivateKeyParameters;->sk:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
