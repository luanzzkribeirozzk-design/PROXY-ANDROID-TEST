.class public Lorg/bouncycastle/crypto/digests/Haraka512Digest;
.super Lorg/bouncycastle/crypto/digests/HarakaBase;


# instance fields
.field private final buffer:[B

.field private off:I

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/Haraka512Digest;)V
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;-><init>()V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    iget v0, p1, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    return-void
.end method

.method private haraka512256([B[BI)I
    .locals 12

    const/16 v0, 0x10

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, [[B

    const/4 v1, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[B

    aget-object v1, v7, v2

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v7, v9

    invoke-static {p1, v0, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x20

    aget-object v3, v7, v10

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v1, 0x30

    aget-object v3, v7, v11

    invoke-static {p1, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v1, v7, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v3, v3, v2

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v7, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v3, v3, v9

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v7, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v3, v3, v10

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v7, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v3, v3, v11

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    aget-object v1, v7, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v7, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v7, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v4, 0x6

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v7, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/4 v4, 0x7

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v1, v8, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v8, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v8, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0xa

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v8, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0xb

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    aget-object v1, v7, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0xc

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v7, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0xd

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v7, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0xe

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v7, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0xf

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v1, v8, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    aget-object v3, v3, v0

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v8, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x11

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v8, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x12

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v8, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x13

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    aget-object v1, v7, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x14

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v7, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x15

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v7, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x16

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v7, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x17

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v1, v8, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x18

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v8, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x19

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v8, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v8, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x1b

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    aget-object v1, v7, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x1c

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v7, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x1d

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v7, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x1e

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v7, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x1f

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v1, v8, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x20

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v8, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x21

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v8, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x22

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v8, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x23

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    aget-object v1, v7, v2

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x24

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v2

    aget-object v1, v7, v9

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x25

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v9

    aget-object v1, v7, v10

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x26

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v10

    aget-object v1, v7, v11

    sget-object v3, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->RC:[[B

    const/16 v4, 0x27

    aget-object v3, v3, v4

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->aesEnc([B[B)[B

    move-result-object v1

    aput-object v1, v7, v11

    invoke-direct {p0, v7, v8}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->mix512([[B[[B)V

    aget-object v1, v8, v2

    aget-object v5, v7, v2

    move-object v3, p1

    move v4, v2

    move v6, v2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    aget-object v1, v8, v9

    aget-object v5, v7, v9

    move-object v3, p1

    move v4, v0

    move v6, v2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    aget-object v1, v8, v10

    const/16 v4, 0x20

    aget-object v5, v7, v10

    move-object v3, p1

    move v6, v2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    aget-object v1, v8, v11

    const/16 v4, 0x30

    aget-object v5, v7, v11

    move-object v3, p1

    move v6, v2

    invoke-static/range {v0 .. v6}, Lorg/bouncycastle/util/Bytes;->xor(I[BI[BI[BI)V

    aget-object v0, v7, v2

    const/16 v1, 0x8

    const/16 v3, 0x8

    invoke-static {v0, v1, p2, p3, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, v7, v9

    const/16 v1, 0x8

    add-int/lit8 v3, p3, 0x8

    const/16 v4, 0x8

    invoke-static {v0, v1, p2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, v7, v10

    add-int/lit8 v1, p3, 0x10

    const/16 v3, 0x8

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, v7, v11

    add-int/lit8 v1, p3, 0x18

    const/16 v3, 0x8

    invoke-static {v0, v2, p2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x20

    return v0
.end method

.method private mix512([[B[[B)V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    aget-object v0, p1, v5

    const/16 v1, 0xc

    aget-object v2, p2, v5

    invoke-static {v0, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v7

    const/16 v1, 0xc

    aget-object v2, p2, v5

    invoke-static {v0, v1, v2, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v6

    const/16 v1, 0xc

    aget-object v2, p2, v5

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v8

    const/16 v1, 0xc

    aget-object v2, p2, v5

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v7

    aget-object v1, p2, v6

    invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v5

    aget-object v1, p2, v6

    invoke-static {v0, v5, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v8

    aget-object v1, p2, v6

    const/16 v2, 0x8

    invoke-static {v0, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v6

    aget-object v1, p2, v6

    const/16 v2, 0xc

    invoke-static {v0, v5, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v7

    aget-object v1, p2, v7

    invoke-static {v0, v4, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v5

    aget-object v1, p2, v7

    invoke-static {v0, v4, v1, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v8

    aget-object v1, p2, v7

    const/16 v2, 0x8

    invoke-static {v0, v4, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v6

    aget-object v1, p2, v7

    const/16 v2, 0xc

    invoke-static {v0, v4, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v5

    const/16 v1, 0x8

    aget-object v2, p2, v8

    invoke-static {v0, v1, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v7

    const/16 v1, 0x8

    aget-object v2, p2, v8

    invoke-static {v0, v1, v2, v4, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v6

    const/16 v1, 0x8

    aget-object v2, p2, v8

    const/16 v3, 0x8

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v0, p1, v8

    const/16 v1, 0x8

    aget-object v2, p2, v8

    const/16 v3, 0xc

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    const/16 v1, 0x40

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "input must be exactly 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    sub-int/2addr v0, p2

    const/16 v1, 0x20

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "output too short to receive digest"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-direct {p0, v0, p1, p2}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->haraka512256([B[BI)I

    move-result v0

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->reset()V

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Haraka-512"

    return-object v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    return-void
.end method

.method public update(B)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    const/16 v1, 0x3f

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "total input cannot be more than 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public update([BII)V
    .locals 2

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    rsub-int/lit8 v1, p3, 0x40

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "total input cannot be more than 64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/digests/Haraka512Digest;->off:I

    return-void
.end method
