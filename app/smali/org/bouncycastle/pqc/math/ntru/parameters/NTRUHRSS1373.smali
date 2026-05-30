.class public Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSS1373;
.super Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;


# direct methods
.method public constructor <init>()V
    .locals 6

    const/16 v3, 0x20

    const/16 v1, 0x55d

    const/16 v2, 0xe

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/math/ntru/parameters/NTRUHRSSParameterSet;-><init>(IIIII)V

    return-void
.end method
