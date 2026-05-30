.class public abstract Lorg/bouncycastle/crypto/digests/HarakaBase;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/Digest;


# static fields
.field protected static final DIGEST_SIZE:I = 0x20

.field static final RC:[[B

.field private static final S:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x10

    const/16 v0, 0x28

    new-array v0, v0, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    new-array v1, v3, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    new-array v1, v3, [B

    fill-array-data v1, :array_10

    aput-object v1, v0, v3

    const/16 v1, 0x11

    new-array v2, v3, [B

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [B

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [B

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [B

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [B

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [B

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [B

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [B

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [B

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [B

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [B

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [B

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [B

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [B

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [B

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [B

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [B

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [B

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [B

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [B

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [B

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [B

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [B

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/HarakaBase;->RC:[[B

    new-array v0, v3, [[B

    new-array v1, v3, [B

    fill-array-data v1, :array_28

    aput-object v1, v0, v4

    new-array v1, v3, [B

    fill-array-data v1, :array_29

    aput-object v1, v0, v5

    new-array v1, v3, [B

    fill-array-data v1, :array_2a

    aput-object v1, v0, v6

    new-array v1, v3, [B

    fill-array-data v1, :array_2b

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/digests/HarakaBase;->S:[[B

    return-void

    nop

    :array_0
    .array-data 1
        -0x63t
        0x7bt
        -0x7ft
        0x75t
        -0x10t
        -0x2t
        -0x3bt
        -0x4et
        0xat
        -0x40t
        0x20t
        -0x1at
        0x4ct
        0x70t
        -0x7ct
        0x6t
    .end array-data

    :array_1
    .array-data 1
        0x17t
        -0x9t
        0x8t
        0x2ft
        -0x5ct
        0x6bt
        0xft
        0x64t
        0x6bt
        -0x60t
        -0xdt
        -0x78t
        -0x1ft
        -0x4ct
        0x66t
        -0x75t
    .end array-data

    :array_2
    .array-data 1
        0x14t
        -0x6ft
        0x2t
        -0x61t
        0x60t
        -0x63t
        0x2t
        -0x31t
        -0x68t
        -0x7ct
        -0xet
        0x53t
        0x2dt
        -0x22t
        0x2t
        0x34t
    .end array-data

    :array_3
    .array-data 1
        0x79t
        0x4ft
        0x5bt
        -0x3t
        -0x51t
        -0x44t
        -0xdt
        -0x45t
        0x8t
        0x4ft
        0x7bt
        0x2et
        -0x1at
        -0x16t
        -0x2at
        0xet
    .end array-data

    :array_4
    .array-data 1
        0x44t
        0x70t
        0x39t
        -0x42t
        0x1ct
        -0x33t
        -0x12t
        0x79t
        -0x75t
        0x44t
        0x72t
        0x48t
        -0x35t
        -0x50t
        -0x31t
        -0x35t
    .end array-data

    :array_5
    .array-data 1
        0x7bt
        0x5t
        -0x76t
        0x2bt
        -0x13t
        0x35t
        0x53t
        -0x73t
        -0x49t
        0x32t
        -0x70t
        0x6et
        -0x12t
        -0x33t
        -0x16t
        0x7et
    .end array-data

    :array_6
    .array-data 1
        0x1bt
        -0x11t
        0x4ft
        -0x26t
        0x61t
        0x27t
        0x41t
        -0x1et
        -0x30t
        0x7ct
        0x2et
        0x5et
        0x43t
        -0x71t
        -0x3et
        0x67t
    .end array-data

    :array_7
    .array-data 1
        0x3bt
        0xbt
        -0x39t
        0x1ft
        -0x1et
        -0x3t
        0x5ft
        0x67t
        0x7t
        -0x34t
        -0x36t
        -0x51t
        -0x50t
        -0x27t
        0x24t
        0x29t
    .end array-data

    :array_8
    .array-data 1
        -0x12t
        0x65t
        -0x2ct
        -0x47t
        -0x36t
        -0x71t
        -0x25t
        -0x14t
        -0x17t
        0x7ft
        -0x7at
        -0x1at
        -0xft
        0x63t
        0x4dt
        -0x55t
    .end array-data

    :array_9
    .array-data 1
        0x33t
        0x7et
        0x3t
        -0x53t
        0x4ft
        0x40t
        0x2at
        0x5bt
        0x64t
        -0x33t
        -0x49t
        -0x2ct
        -0x7ct
        -0x41t
        0x30t
        0x1ct
    .end array-data

    :array_a
    .array-data 1
        0x0t
        -0x68t
        -0xat
        -0x73t
        0x2et
        -0x75t
        0x2t
        0x69t
        -0x41t
        0x23t
        0x17t
        -0x6ct
        -0x47t
        0xbt
        -0x34t
        -0x4et
    .end array-data

    :array_b
    .array-data 1
        -0x76t
        0x2dt
        -0x63t
        0x5ct
        -0x38t
        -0x62t
        -0x56t
        0x4at
        0x72t
        0x55t
        0x6ft
        -0x22t
        -0x5at
        0x78t
        0x4t
        -0x6t
    .end array-data

    :array_c
    .array-data 1
        -0x2ct
        -0x61t
        0x12t
        0x29t
        0x2et
        0x4ft
        -0x6t
        0xet
        0x12t
        0x2at
        0x77t
        0x6bt
        0x2bt
        -0x61t
        -0x4ct
        -0x21t
    .end array-data

    :array_d
    .array-data 1
        -0x12t
        0x12t
        0x6at
        -0x45t
        -0x52t
        0x11t
        -0x2at
        0x32t
        0x36t
        -0x5et
        0x49t
        -0xct
        0x44t
        0x3t
        -0x5ft
        0x1et
    .end array-data

    :array_e
    .array-data 1
        -0x5at
        -0x14t
        -0x58t
        -0x64t
        -0x37t
        0x0t
        -0x6at
        0x5ft
        -0x7ct
        0x0t
        0x5t
        0x4bt
        -0x78t
        0x49t
        0x4t
        -0x51t
    .end array-data

    :array_f
    .array-data 1
        -0x14t
        -0x6dt
        -0x1bt
        0x27t
        -0x1dt
        -0x39t
        -0x5et
        0x78t
        0x4ft
        -0x64t
        0x19t
        -0x63t
        -0x28t
        0x5et
        0x2t
        0x21t
    .end array-data

    :array_10
    .array-data 1
        0x73t
        0x1t
        -0x2ct
        -0x7et
        -0x33t
        0x2et
        0x28t
        -0x47t
        -0x49t
        -0x37t
        0x59t
        -0x59t
        -0x8t
        -0x56t
        0x3at
        -0x41t
    .end array-data

    :array_11
    .array-data 1
        0x6bt
        0x7dt
        0x30t
        0x10t
        -0x27t
        -0x11t
        -0xet
        0x37t
        0x17t
        -0x50t
        -0x7at
        0x61t
        0xdt
        0x70t
        0x60t
        0x62t
    .end array-data

    :array_12
    .array-data 1
        -0x3at
        -0x66t
        -0x4t
        -0xat
        0x53t
        -0x6ft
        -0x3et
        -0x7ft
        0x43t
        0x4t
        0x30t
        0x21t
        -0x3et
        0x45t
        -0x36t
        0x5at
    .end array-data

    :array_13
    .array-data 1
        0x3at
        -0x6ct
        -0x2ft
        0x36t
        -0x18t
        -0x6et
        -0x51t
        0x2ct
        -0x45t
        0x68t
        0x6bt
        0x22t
        0x3ct
        -0x69t
        0x23t
        -0x6et
    .end array-data

    :array_14
    .array-data 1
        -0x4ct
        0x71t
        0x10t
        -0x1bt
        0x58t
        -0x47t
        -0x46t
        0x6ct
        -0x15t
        -0x7at
        0x58t
        0x22t
        0x38t
        -0x6et
        -0x41t
        -0x2dt
    .end array-data

    :array_15
    .array-data 1
        -0x73t
        0x12t
        -0x1ft
        0x24t
        -0x23t
        -0x3t
        0x3dt
        -0x6dt
        0x77t
        -0x3at
        -0x10t
        -0x52t
        -0x1bt
        0x3ct
        -0x7at
        -0x25t
    .end array-data

    :array_16
    .array-data 1
        -0x4ft
        0x12t
        0x22t
        -0x35t
        -0x1dt
        -0x73t
        -0x1ct
        -0x7dt
        -0x64t
        -0x60t
        -0x15t
        -0x1t
        0x68t
        0x62t
        0x60t
        -0x45t
    .end array-data

    :array_17
    .array-data 1
        0x7dt
        -0x9t
        0x2bt
        -0x39t
        0x4et
        0x1at
        -0x47t
        0x2dt
        -0x64t
        -0x2ft
        -0x1ct
        -0x1et
        -0x24t
        -0x2dt
        0x4bt
        0x73t
    .end array-data

    :array_18
    .array-data 1
        0x4et
        -0x6et
        -0x4dt
        0x2ct
        -0x3ct
        0x15t
        0x14t
        0x4bt
        0x43t
        0x1bt
        0x30t
        0x61t
        -0x3dt
        0x47t
        -0x45t
        0x43t
    .end array-data

    :array_19
    .array-data 1
        -0x67t
        0x68t
        -0x15t
        0x16t
        -0x23t
        0x31t
        -0x4et
        0x3t
        -0xat
        -0x11t
        0x7t
        -0x19t
        -0x58t
        0x75t
        -0x59t
        -0x25t
    .end array-data

    :array_1a
    .array-data 1
        0x2ct
        0x47t
        -0x36t
        0x7et
        0x2t
        0x23t
        0x5et
        -0x72t
        0x77t
        0x59t
        0x75t
        0x3ct
        0x4bt
        0x61t
        -0xdt
        0x6dt
    .end array-data

    :array_1b
    .array-data 1
        -0x7t
        0x17t
        -0x7at
        -0x48t
        -0x47t
        -0x1bt
        0x1bt
        0x6dt
        0x77t
        0x7dt
        -0x22t
        -0x2at
        0x17t
        0x5at
        -0x59t
        -0x33t
    .end array-data

    :array_1c
    .array-data 1
        0x5dt
        -0x12t
        0x46t
        -0x57t
        -0x63t
        0x6t
        0x6ct
        -0x63t
        -0x56t
        -0x17t
        -0x58t
        0x6bt
        -0x10t
        0x43t
        0x6bt
        -0x14t
    .end array-data

    :array_1d
    .array-data 1
        -0x3ft
        0x27t
        -0xdt
        0x3bt
        0x59t
        0x11t
        0x53t
        -0x5et
        0x2bt
        0x33t
        0x57t
        -0x7t
        0x50t
        0x69t
        0x1et
        -0x35t
    .end array-data

    :array_1e
    .array-data 1
        -0x27t
        -0x30t
        0xet
        0x60t
        0x53t
        0x3t
        -0x13t
        -0x1ct
        -0x64t
        0x61t
        -0x26t
        0x0t
        0x75t
        0xct
        -0x12t
        0x2ct
    .end array-data

    :array_1f
    .array-data 1
        0x50t
        -0x5dt
        -0x5ct
        0x63t
        -0x44t
        -0x46t
        -0x45t
        -0x80t
        -0x55t
        0xct
        -0x17t
        -0x6at
        -0x5ft
        -0x5bt
        -0x4ft
        -0x10t
    .end array-data

    :array_20
    .array-data 1
        0x39t
        -0x36t
        -0x73t
        -0x6dt
        0x30t
        -0x22t
        0xdt
        -0x55t
        -0x78t
        0x29t
        -0x6at
        0x5et
        0x2t
        -0x4ft
        0x3dt
        -0x52t
    .end array-data

    :array_21
    .array-data 1
        0x42t
        -0x4ct
        0x75t
        0x2et
        -0x58t
        -0xdt
        0x14t
        -0x78t
        0xbt
        -0x5ct
        0x54t
        -0x2bt
        0x38t
        -0x71t
        -0x45t
        0x17t
    .end array-data

    :array_22
    .array-data 1
        -0xat
        0x16t
        0xat
        0x36t
        0x79t
        -0x49t
        -0x4at
        -0x52t
        -0x29t
        0x7ft
        0x42t
        0x5ft
        0x5bt
        -0x76t
        -0x45t
        0x34t
    .end array-data

    :array_23
    .array-data 1
        -0x22t
        -0x51t
        -0x46t
        -0x1t
        0x18t
        0x59t
        -0x32t
        0x43t
        0x38t
        0x54t
        -0x1bt
        -0x35t
        0x41t
        0x52t
        -0xat
        0x26t
    .end array-data

    :array_24
    .array-data 1
        0x78t
        -0x37t
        -0x62t
        -0x7dt
        -0x9t
        -0x64t
        -0x36t
        -0x5et
        0x6at
        0x2t
        -0xdt
        -0x47t
        0x54t
        -0x66t
        -0x17t
        0x4ct
    .end array-data

    :array_25
    .array-data 1
        0x35t
        0x12t
        -0x70t
        0x22t
        0x28t
        0x6et
        -0x40t
        0x40t
        -0x42t
        -0x9t
        -0x21t
        0x1bt
        0x1at
        -0x5bt
        0x51t
        -0x52t
    .end array-data

    :array_26
    .array-data 1
        -0x31t
        0x59t
        -0x5at
        0x48t
        0xft
        -0x44t
        0x73t
        -0x3ft
        0x2bt
        -0x2et
        0x7et
        -0x46t
        0x3ct
        0x61t
        -0x3ft
        -0x60t
    .end array-data

    :array_27
    .array-data 1
        -0x5ft
        -0x63t
        -0x3bt
        -0x17t
        -0x3t
        -0x43t
        -0x2at
        0x4at
        -0x78t
        -0x7et
        0x28t
        0x2t
        0x3t
        -0x34t
        0x6at
        0x75t
    .end array-data

    :array_28
    .array-data 1
        0x63t
        0x7ct
        0x77t
        0x7bt
        -0xet
        0x6bt
        0x6ft
        -0x3bt
        0x30t
        0x1t
        0x67t
        0x2bt
        -0x2t
        -0x29t
        -0x55t
        0x76t
    .end array-data

    :array_29
    .array-data 1
        -0x36t
        -0x7et
        -0x37t
        0x7dt
        -0x6t
        0x59t
        0x47t
        -0x10t
        -0x53t
        -0x2ct
        -0x5et
        -0x51t
        -0x64t
        -0x5ct
        0x72t
        -0x40t
    .end array-data

    :array_2a
    .array-data 1
        -0x49t
        -0x3t
        -0x6dt
        0x26t
        0x36t
        0x3ft
        -0x9t
        -0x34t
        0x34t
        -0x5bt
        -0x1bt
        -0xft
        0x71t
        -0x28t
        0x31t
        0x15t
    .end array-data

    :array_2b
    .array-data 1
        0x4t
        -0x39t
        0x23t
        -0x3dt
        0x18t
        -0x6at
        0x5t
        -0x66t
        0x7t
        0x12t
        -0x80t
        -0x1et
        -0x15t
        0x27t
        -0x4et
        0x75t
    .end array-data

    :array_2c
    .array-data 1
        0x9t
        -0x7dt
        0x2ct
        0x1at
        0x1bt
        0x6et
        0x5at
        -0x60t
        0x52t
        0x3bt
        -0x2at
        -0x4dt
        0x29t
        -0x1dt
        0x2ft
        -0x7ct
    .end array-data

    :array_2d
    .array-data 1
        0x53t
        -0x2ft
        0x0t
        -0x13t
        0x20t
        -0x4t
        -0x4ft
        0x5bt
        0x6at
        -0x35t
        -0x42t
        0x39t
        0x4at
        0x4ct
        0x58t
        -0x31t
    .end array-data

    :array_2e
    .array-data 1
        -0x30t
        -0x11t
        -0x56t
        -0x5t
        0x43t
        0x4dt
        0x33t
        -0x7bt
        0x45t
        -0x7t
        0x2t
        0x7ft
        0x50t
        0x3ct
        -0x61t
        -0x58t
    .end array-data

    :array_2f
    .array-data 1
        0x51t
        -0x5dt
        0x40t
        -0x71t
        -0x6et
        -0x63t
        0x38t
        -0xbt
        -0x44t
        -0x4at
        -0x26t
        0x21t
        0x10t
        -0x1t
        -0xdt
        -0x2et
    .end array-data

    :array_30
    .array-data 1
        -0x33t
        0xct
        0x13t
        -0x14t
        0x5ft
        -0x69t
        0x44t
        0x17t
        -0x3ct
        -0x59t
        0x7et
        0x3dt
        0x64t
        0x5dt
        0x19t
        0x73t
    .end array-data

    :array_31
    .array-data 1
        0x60t
        -0x7ft
        0x4ft
        -0x24t
        0x22t
        0x2at
        -0x70t
        -0x78t
        0x46t
        -0x12t
        -0x48t
        0x14t
        -0x22t
        0x5et
        0xbt
        -0x25t
    .end array-data

    :array_32
    .array-data 1
        -0x20t
        0x32t
        0x3at
        0xat
        0x49t
        0x6t
        0x24t
        0x5ct
        -0x3et
        -0x2dt
        -0x54t
        0x62t
        -0x6ft
        -0x6bt
        -0x1ct
        0x79t
    .end array-data

    :array_33
    .array-data 1
        -0x19t
        -0x38t
        0x37t
        0x6dt
        -0x73t
        -0x2bt
        0x4et
        -0x57t
        0x6ct
        0x56t
        -0xct
        -0x16t
        0x65t
        0x7at
        -0x52t
        0x8t
    .end array-data

    :array_34
    .array-data 1
        -0x46t
        0x78t
        0x25t
        0x2et
        0x1ct
        -0x5at
        -0x4ct
        -0x3at
        -0x18t
        -0x23t
        0x74t
        0x1ft
        0x4bt
        -0x43t
        -0x75t
        -0x76t
    .end array-data

    :array_35
    .array-data 1
        0x70t
        0x3et
        -0x4bt
        0x66t
        0x48t
        0x3t
        -0xat
        0xet
        0x61t
        0x35t
        0x57t
        -0x47t
        -0x7at
        -0x3ft
        0x1dt
        -0x62t
    .end array-data

    :array_36
    .array-data 1
        -0x1ft
        -0x8t
        -0x68t
        0x11t
        0x69t
        -0x27t
        -0x72t
        -0x6ct
        -0x65t
        0x1et
        -0x79t
        -0x17t
        -0x32t
        0x55t
        0x28t
        -0x21t
    .end array-data

    :array_37
    .array-data 1
        -0x74t
        -0x5ft
        -0x77t
        0xdt
        -0x41t
        -0x1at
        0x42t
        0x68t
        0x41t
        -0x67t
        0x2dt
        0xft
        -0x50t
        0x54t
        -0x45t
        0x16t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aesEnc([B[B)[B
    .locals 2

    invoke-static {p0}, Lorg/bouncycastle/crypto/digests/HarakaBase;->subBytes([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/HarakaBase;->shiftRows([B)[B

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/HarakaBase;->mixColumns([B)[B

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v1, p1, v0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-object v0
.end method

.method private static mixColumns([B)[B
    .locals 6

    const/4 v1, 0x0

    array-length v0, p0

    new-array v3, v0, [B

    move v0, v1

    move v2, v1

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v2, 0x1

    mul-int/lit8 v4, v0, 0x4

    aget-byte v4, p0, v4

    invoke-static {v4}, Lorg/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v4

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    add-int/lit8 v2, v1, 0x1

    mul-int/lit8 v4, v0, 0x4

    aget-byte v4, p0, v4

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v4, v2, 0x1

    mul-int/lit8 v1, v0, 0x4

    aget-byte v1, p0, v1

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    xor-int/2addr v1, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v1, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v1, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, v3, v2

    add-int/lit8 v1, v4, 0x1

    mul-int/lit8 v2, v0, 0x4

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v2

    mul-int/lit8 v5, v0, 0x4

    aget-byte v5, p0, v5

    xor-int/2addr v2, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    xor-int/2addr v2, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    xor-int/2addr v2, v5

    mul-int/lit8 v5, v0, 0x4

    add-int/lit8 v5, v5, 0x3

    aget-byte v5, p0, v5

    invoke-static {v5}, Lorg/bouncycastle/crypto/digests/HarakaBase;->mulX(B)B

    move-result v5

    xor-int/2addr v2, v5

    int-to-byte v2, v2

    aput-byte v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto/16 :goto_0

    :cond_0
    return-object v3
.end method

.method static mulX(B)B
    .locals 2

    and-int/lit8 v0, p0, 0x7f

    shl-int/lit8 v0, v0, 0x1

    and-int/lit16 v1, p0, 0x80

    shr-int/lit8 v1, v1, 0x7

    mul-int/lit8 v1, v1, 0x1b

    xor-int/2addr v0, v1

    int-to-byte v0, v0

    return v0
.end method

.method static sBox(B)B
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/digests/HarakaBase;->S:[[B

    and-int/lit16 v1, p0, 0xff

    ushr-int/lit8 v1, v1, 0x4

    aget-object v0, v0, v1

    and-int/lit8 v1, p0, 0xf

    aget-byte v0, v0, v1

    return v0
.end method

.method static shiftRows([B)[B
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v0, 0x10

    new-array v0, v0, [B

    aget-byte v1, p0, v2

    aput-byte v1, v0, v2

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    aput-byte v1, v0, v3

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    aput-byte v1, v0, v4

    const/16 v1, 0xf

    aget-byte v1, p0, v1

    aput-byte v1, v0, v5

    aget-byte v1, p0, v6

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    const/16 v2, 0x9

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xe

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aget-byte v2, p0, v5

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xd

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    aget-byte v2, p0, v4

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    aget-byte v2, p0, v3

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xb

    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method static subBytes([B)[B
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    array-length v0, p0

    new-array v0, v0, [B

    aget-byte v1, p0, v2

    invoke-static {v1}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v1

    aput-byte v1, v0, v2

    aget-byte v1, p0, v3

    invoke-static {v1}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v1

    aput-byte v1, v0, v3

    aget-byte v1, p0, v4

    invoke-static {v1}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v1

    aput-byte v1, v0, v4

    aget-byte v1, p0, v5

    invoke-static {v1}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v1

    aput-byte v1, v0, v5

    aget-byte v1, p0, v6

    invoke-static {v1}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v1

    aput-byte v1, v0, v6

    const/4 v1, 0x5

    const/4 v2, 0x5

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x6

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x7

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x8

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x9

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xa

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xb

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xc

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/16 v1, 0xd

    const/16 v2, 0xd

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xe

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    const/16 v2, 0xf

    aget-byte v2, p0, v2

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/HarakaBase;->sBox(B)B

    move-result v2

    aput-byte v2, v0, v1

    return-object v0
.end method


# virtual methods
.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method
