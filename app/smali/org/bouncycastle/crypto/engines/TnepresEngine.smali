.class public final Lorg/bouncycastle/crypto/engines/TnepresEngine;
.super Lorg/bouncycastle/crypto/engines/SerpentEngineBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SerpentEngineBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected decryptBlock([BI[BI)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v1, v10, [I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x83

    aget v0, v0, v2

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    xor-int/2addr v0, v2

    aput v0, v1, v9

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x82

    aget v0, v0, v2

    add-int/lit8 v2, p2, 0x4

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    xor-int/2addr v0, v2

    aput v0, v1, v8

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x81

    aget v0, v0, v2

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    xor-int/2addr v0, v2

    aput v0, v1, v7

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x80

    aget v0, v0, v2

    add-int/lit8 v2, p2, 0xc

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib7([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7c

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7d

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7e

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7f

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib6([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x78

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x79

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7a

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7b

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib5([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x74

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x75

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x76

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x77

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib4([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x70

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x71

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x72

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x73

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib3([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6c

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6d

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6e

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6f

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib2([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x68

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x69

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6a

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6b

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib1([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x64

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x65

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x66

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x67

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib0([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x60

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x61

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x62

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x63

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib7([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5c

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5d

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5e

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5f

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib6([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x58

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x59

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5a

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5b

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib5([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x54

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x55

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x56

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x57

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib4([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x50

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x51

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x52

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x53

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib3([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4c

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4d

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4e

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4f

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib2([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x48

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x49

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4a

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4b

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib1([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x44

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x45

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x46

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x47

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib0([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x40

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x41

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x42

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x43

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib7([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3c

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3d

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3e

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3f

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib6([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x38

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x39

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3a

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3b

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib5([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x34

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x35

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x36

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x37

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib4([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x30

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x31

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x32

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x33

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib3([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2c

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2d

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2e

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2f

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib2([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x28

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x29

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2a

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2b

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib1([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x24

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x25

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x26

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x27

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib0([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x20

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x21

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x22

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x23

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib7([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1c

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1d

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1e

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1f

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib6([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x18

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x19

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1a

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1b

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib5([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x14

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x15

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x16

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x17

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib4([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x10

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x11

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x12

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x13

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib3([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xc

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xd

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xe

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xf

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib2([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x8

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x9

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xa

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xb

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib1([IIIII)V

    aget v0, v1, v6

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v2, v2, v10

    xor-int/2addr v0, v2

    aput v0, v1, v6

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v3, 0x5

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v7

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v3, 0x6

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v8

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v3, 0x7

    aget v2, v2, v3

    xor-int/2addr v0, v2

    aput v0, v1, v9

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->inverseLT([I)V

    aget v2, v1, v6

    aget v3, v1, v7

    aget v4, v1, v8

    aget v5, v1, v9

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->ib0([IIIII)V

    aget v0, v1, v9

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v2, v2, v9

    xor-int/2addr v0, v2

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    aget v0, v1, v8

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v2, v2, v8

    xor-int/2addr v0, v2

    add-int/lit8 v2, p4, 0x4

    invoke-static {v0, p3, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    aget v0, v1, v7

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v2, v2, v7

    xor-int/2addr v0, v2

    add-int/lit8 v2, p4, 0x8

    invoke-static {v0, p3, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    aget v0, v1, v6

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v1, v1, v6

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method protected encryptBlock([BI[BI)V
    .locals 11

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-array v1, v10, [I

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    aput v0, v1, v9

    add-int/lit8 v0, p2, 0x4

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    aput v0, v1, v8

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    aput v0, v1, v7

    add-int/lit8 v0, p2, 0xc

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    aput v0, v1, v6

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v0, v0, v6

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v0, v0, v7

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v0, v0, v8

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v0, v0, v9

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    aget v0, v0, v10

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v3, 0x5

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v4, 0x6

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/4 v5, 0x7

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x8

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x9

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0xa

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xb

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0xc

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0xd

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0xe

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0xf

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x10

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x11

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x12

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x13

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x14

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x15

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x16

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x17

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x18

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x19

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x1a

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1b

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x1c

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x1d

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x1e

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x1f

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x20

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x21

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x22

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x23

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x24

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x25

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x26

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x27

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x28

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x29

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x2a

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2b

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x2c

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x2d

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x2e

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x2f

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x30

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x31

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x32

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x33

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x34

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x35

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x36

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x37

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x38

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x39

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x3a

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3b

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x3c

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x3d

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x3e

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x3f

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x40

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x41

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x42

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x43

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x44

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x45

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x46

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x47

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x48

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x49

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x4a

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4b

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x4c

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x4d

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x4e

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x4f

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x50

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x51

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x52

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x53

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x54

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x55

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x56

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x57

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x58

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x59

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x5a

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5b

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x5c

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x5d

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x5e

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x5f

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x60

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x61

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x62

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x63

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x64

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x65

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x66

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x67

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x68

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x69

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x6a

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6b

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x6c

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x6d

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x6e

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x6f

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x70

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x71

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x72

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x73

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x74

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x75

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x76

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x77

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x78

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x79

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x7a

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7b

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    invoke-virtual {p0, v1}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->LT([I)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x7c

    aget v0, v0, v2

    aget v2, v1, v6

    xor-int/2addr v2, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v3, 0x7d

    aget v0, v0, v3

    aget v3, v1, v7

    xor-int/2addr v3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v4, 0x7e

    aget v0, v0, v4

    aget v4, v1, v8

    xor-int/2addr v4, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v5, 0x7f

    aget v0, v0, v5

    aget v5, v1, v9

    xor-int/2addr v5, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x83

    aget v0, v0, v2

    aget v2, v1, v9

    xor-int/2addr v0, v2

    invoke-static {v0, p3, p4}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x82

    aget v0, v0, v2

    aget v2, v1, v8

    xor-int/2addr v0, v2

    add-int/lit8 v2, p4, 0x4

    invoke-static {v0, p3, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x81

    aget v0, v0, v2

    aget v2, v1, v7

    xor-int/2addr v0, v2

    add-int/lit8 v2, p4, 0x8

    invoke-static {v0, p3, v2}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/TnepresEngine;->wKey:[I

    const/16 v2, 0x80

    aget v0, v0, v2

    aget v1, v1, v6

    xor-int/2addr v0, v1

    add-int/lit8 v1, p4, 0xc

    invoke-static {v0, p3, v1}, Lorg/bouncycastle/util/Pack;->intToBigEndian(I[BI)V

    return-void
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Tnepres"

    return-object v0
.end method

.method protected makeWorkingKey([B)[I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v6, 0x8

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v7, 0x0

    const/16 v0, 0x10

    new-array v3, v0, [I

    array-length v0, p1

    add-int/lit8 v1, v0, -0x4

    move v0, v7

    move v2, v1

    :goto_0
    if-lez v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v2, v2, -0x4

    move v0, v1

    goto :goto_0

    :cond_0
    if-nez v2, :cond_2

    add-int/lit8 v1, v0, 0x1

    invoke-static {p1, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v2

    aput v2, v3, v0

    if-ge v1, v6, :cond_1

    aput v9, v3, v1

    :cond_1
    const/16 v1, 0x84

    new-array v8, v1, [I

    move v0, v6

    :goto_1
    const/16 v2, 0x10

    if-ge v0, v2, :cond_3

    add-int/lit8 v2, v0, -0x8

    aget v2, v3, v2

    add-int/lit8 v4, v0, -0x5

    aget v4, v3, v4

    xor-int/2addr v2, v4

    add-int/lit8 v4, v0, -0x3

    aget v4, v3, v4

    xor-int/2addr v2, v4

    add-int/lit8 v4, v0, -0x1

    aget v4, v3, v4

    xor-int/2addr v2, v4

    const v4, -0x61c88647

    xor-int/2addr v2, v4

    add-int/lit8 v4, v0, -0x8

    xor-int/2addr v2, v4

    const/16 v4, 0xb

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->rotateLeft(II)I

    move-result v2

    aput v2, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key must be a multiple of 4 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    invoke-static {v3, v6, v8, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v6

    :goto_2
    if-ge v0, v1, :cond_4

    add-int/lit8 v2, v0, -0x8

    aget v2, v8, v2

    add-int/lit8 v3, v0, -0x5

    aget v3, v8, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v0, -0x3

    aget v3, v8, v3

    xor-int/2addr v2, v3

    add-int/lit8 v3, v0, -0x1

    aget v3, v8, v3

    xor-int/2addr v2, v3

    const v3, -0x61c88647

    xor-int/2addr v2, v3

    xor-int/2addr v2, v0

    const/16 v3, 0xb

    invoke-static {v2, v3}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->rotateLeft(II)I

    move-result v2

    aput v2, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x4

    new-array v1, v0, [I

    aget v2, v8, v7

    aget v3, v8, v9

    aget v4, v8, v10

    aget v5, v8, v11

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    aget v0, v1, v7

    aput v0, v8, v7

    aget v0, v1, v9

    aput v0, v8, v9

    aget v0, v1, v10

    aput v0, v8, v10

    aget v0, v1, v11

    aput v0, v8, v11

    const/4 v0, 0x4

    aget v2, v8, v0

    const/4 v0, 0x5

    aget v3, v8, v0

    const/4 v0, 0x6

    aget v4, v8, v0

    const/4 v0, 0x7

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    const/4 v0, 0x4

    aget v2, v1, v7

    aput v2, v8, v0

    const/4 v0, 0x5

    aget v2, v1, v9

    aput v2, v8, v0

    const/4 v0, 0x6

    aget v2, v1, v10

    aput v2, v8, v0

    const/4 v0, 0x7

    aget v2, v1, v11

    aput v2, v8, v0

    aget v2, v8, v6

    const/16 v0, 0x9

    aget v3, v8, v0

    const/16 v0, 0xa

    aget v4, v8, v0

    const/16 v0, 0xb

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    aget v0, v1, v7

    aput v0, v8, v6

    const/16 v0, 0x9

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0xa

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0xb

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0xc

    aget v2, v8, v0

    const/16 v0, 0xd

    aget v3, v8, v0

    const/16 v0, 0xe

    aget v4, v8, v0

    const/16 v0, 0xf

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    const/16 v0, 0xc

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0xd

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0xe

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0xf

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x10

    aget v2, v8, v0

    const/16 v0, 0x11

    aget v3, v8, v0

    const/16 v0, 0x12

    aget v4, v8, v0

    const/16 v0, 0x13

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    const/16 v0, 0x10

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x11

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x12

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x13

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x14

    aget v2, v8, v0

    const/16 v0, 0x15

    aget v3, v8, v0

    const/16 v0, 0x16

    aget v4, v8, v0

    const/16 v0, 0x17

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    const/16 v0, 0x14

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x15

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x16

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x17

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x18

    aget v2, v8, v0

    const/16 v0, 0x19

    aget v3, v8, v0

    const/16 v0, 0x1a

    aget v4, v8, v0

    const/16 v0, 0x1b

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    const/16 v0, 0x18

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x19

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x1a

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x1b

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x1c

    aget v2, v8, v0

    const/16 v0, 0x1d

    aget v3, v8, v0

    const/16 v0, 0x1e

    aget v4, v8, v0

    const/16 v0, 0x1f

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    const/16 v0, 0x1c

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x1d

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x1e

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x1f

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x20

    aget v2, v8, v0

    const/16 v0, 0x21

    aget v3, v8, v0

    const/16 v0, 0x22

    aget v4, v8, v0

    const/16 v0, 0x23

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    const/16 v0, 0x20

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x21

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x22

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x23

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x24

    aget v2, v8, v0

    const/16 v0, 0x25

    aget v3, v8, v0

    const/16 v0, 0x26

    aget v4, v8, v0

    const/16 v0, 0x27

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    const/16 v0, 0x24

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x25

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x26

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x27

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x28

    aget v2, v8, v0

    const/16 v0, 0x29

    aget v3, v8, v0

    const/16 v0, 0x2a

    aget v4, v8, v0

    const/16 v0, 0x2b

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    const/16 v0, 0x28

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x29

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x2a

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x2b

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x2c

    aget v2, v8, v0

    const/16 v0, 0x2d

    aget v3, v8, v0

    const/16 v0, 0x2e

    aget v4, v8, v0

    const/16 v0, 0x2f

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    const/16 v0, 0x2c

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x2d

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x2e

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x2f

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x30

    aget v2, v8, v0

    const/16 v0, 0x31

    aget v3, v8, v0

    const/16 v0, 0x32

    aget v4, v8, v0

    const/16 v0, 0x33

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    const/16 v0, 0x30

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x31

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x32

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x33

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x34

    aget v2, v8, v0

    const/16 v0, 0x35

    aget v3, v8, v0

    const/16 v0, 0x36

    aget v4, v8, v0

    const/16 v0, 0x37

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    const/16 v0, 0x34

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x35

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x36

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x37

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x38

    aget v2, v8, v0

    const/16 v0, 0x39

    aget v3, v8, v0

    const/16 v0, 0x3a

    aget v4, v8, v0

    const/16 v0, 0x3b

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    const/16 v0, 0x38

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x39

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x3a

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x3b

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x3c

    aget v2, v8, v0

    const/16 v0, 0x3d

    aget v3, v8, v0

    const/16 v0, 0x3e

    aget v4, v8, v0

    const/16 v0, 0x3f

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    const/16 v0, 0x3c

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x3d

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x3e

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x3f

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x40

    aget v2, v8, v0

    const/16 v0, 0x41

    aget v3, v8, v0

    const/16 v0, 0x42

    aget v4, v8, v0

    const/16 v0, 0x43

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    const/16 v0, 0x40

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x41

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x42

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x43

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x44

    aget v2, v8, v0

    const/16 v0, 0x45

    aget v3, v8, v0

    const/16 v0, 0x46

    aget v4, v8, v0

    const/16 v0, 0x47

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    const/16 v0, 0x44

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x45

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x46

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x47

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x48

    aget v2, v8, v0

    const/16 v0, 0x49

    aget v3, v8, v0

    const/16 v0, 0x4a

    aget v4, v8, v0

    const/16 v0, 0x4b

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    const/16 v0, 0x48

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x49

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x4a

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x4b

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x4c

    aget v2, v8, v0

    const/16 v0, 0x4d

    aget v3, v8, v0

    const/16 v0, 0x4e

    aget v4, v8, v0

    const/16 v0, 0x4f

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    const/16 v0, 0x4c

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x4d

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x4e

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x4f

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x50

    aget v2, v8, v0

    const/16 v0, 0x51

    aget v3, v8, v0

    const/16 v0, 0x52

    aget v4, v8, v0

    const/16 v0, 0x53

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    const/16 v0, 0x50

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x51

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x52

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x53

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x54

    aget v2, v8, v0

    const/16 v0, 0x55

    aget v3, v8, v0

    const/16 v0, 0x56

    aget v4, v8, v0

    const/16 v0, 0x57

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    const/16 v0, 0x54

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x55

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x56

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x57

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x58

    aget v2, v8, v0

    const/16 v0, 0x59

    aget v3, v8, v0

    const/16 v0, 0x5a

    aget v4, v8, v0

    const/16 v0, 0x5b

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    const/16 v0, 0x58

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x59

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x5a

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x5b

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x5c

    aget v2, v8, v0

    const/16 v0, 0x5d

    aget v3, v8, v0

    const/16 v0, 0x5e

    aget v4, v8, v0

    const/16 v0, 0x5f

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    const/16 v0, 0x5c

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x5d

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x5e

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x5f

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x60

    aget v2, v8, v0

    const/16 v0, 0x61

    aget v3, v8, v0

    const/16 v0, 0x62

    aget v4, v8, v0

    const/16 v0, 0x63

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    const/16 v0, 0x60

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x61

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x62

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x63

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x64

    aget v2, v8, v0

    const/16 v0, 0x65

    aget v3, v8, v0

    const/16 v0, 0x66

    aget v4, v8, v0

    const/16 v0, 0x67

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb2([IIIII)V

    const/16 v0, 0x64

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x65

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x66

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x67

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x68

    aget v2, v8, v0

    const/16 v0, 0x69

    aget v3, v8, v0

    const/16 v0, 0x6a

    aget v4, v8, v0

    const/16 v0, 0x6b

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb1([IIIII)V

    const/16 v0, 0x68

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x69

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x6a

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x6b

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x6c

    aget v2, v8, v0

    const/16 v0, 0x6d

    aget v3, v8, v0

    const/16 v0, 0x6e

    aget v4, v8, v0

    const/16 v0, 0x6f

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb0([IIIII)V

    const/16 v0, 0x6c

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x6d

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x6e

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x6f

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x70

    aget v2, v8, v0

    const/16 v0, 0x71

    aget v3, v8, v0

    const/16 v0, 0x72

    aget v4, v8, v0

    const/16 v0, 0x73

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb7([IIIII)V

    const/16 v0, 0x70

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x71

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x72

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x73

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x74

    aget v2, v8, v0

    const/16 v0, 0x75

    aget v3, v8, v0

    const/16 v0, 0x76

    aget v4, v8, v0

    const/16 v0, 0x77

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb6([IIIII)V

    const/16 v0, 0x74

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x75

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x76

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x77

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x78

    aget v2, v8, v0

    const/16 v0, 0x79

    aget v3, v8, v0

    const/16 v0, 0x7a

    aget v4, v8, v0

    const/16 v0, 0x7b

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb5([IIIII)V

    const/16 v0, 0x78

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x79

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x7a

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x7b

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x7c

    aget v2, v8, v0

    const/16 v0, 0x7d

    aget v3, v8, v0

    const/16 v0, 0x7e

    aget v4, v8, v0

    const/16 v0, 0x7f

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb4([IIIII)V

    const/16 v0, 0x7c

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x7d

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x7e

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x7f

    aget v2, v1, v11

    aput v2, v8, v0

    const/16 v0, 0x80

    aget v2, v8, v0

    const/16 v0, 0x81

    aget v3, v8, v0

    const/16 v0, 0x82

    aget v4, v8, v0

    const/16 v0, 0x83

    aget v5, v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/TnepresEngine;->sb3([IIIII)V

    const/16 v0, 0x80

    aget v2, v1, v7

    aput v2, v8, v0

    const/16 v0, 0x81

    aget v2, v1, v9

    aput v2, v8, v0

    const/16 v0, 0x82

    aget v2, v1, v10

    aput v2, v8, v0

    const/16 v0, 0x83

    aget v1, v1, v11

    aput v1, v8, v0

    return-object v8
.end method
