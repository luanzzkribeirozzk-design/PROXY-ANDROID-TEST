.class public Lorg/bouncycastle/crypto/engines/ARIAEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/BlockCipher;


# static fields
.field protected static final BLOCK_SIZE:I = 0x10

.field private static final C:[[B

.field private static final SB1_sbox:[B

.field private static final SB2_sbox:[B

.field private static final SB3_sbox:[B

.field private static final SB4_sbox:[B


# instance fields
.field forEncryption:Z

.field private roundKeys:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v3, 0x100

    const/4 v0, 0x3

    new-array v0, v0, [[B

    const/4 v1, 0x0

    const-string v2, "517cc1b727220a94fe13abe8fa9a6ee0"

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "6db14acc9e21c820ff28b1d5ef5de2b0"

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "db92371d2126e9700324977504e8c90e"

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Hex;->decodeStrict(Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->C:[[B

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1_sbox:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2_sbox:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_2

    sput-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3_sbox:[B

    new-array v0, v3, [B

    fill-array-data v0, :array_3

    sput-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4_sbox:[B

    return-void

    nop

    :array_0
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

    :array_1
    .array-data 1
        -0x1et
        0x4et
        0x54t
        -0x4t
        -0x6ct
        -0x3et
        0x4at
        -0x34t
        0x62t
        0xdt
        0x6at
        0x46t
        0x3ct
        0x4dt
        -0x75t
        -0x2ft
        0x5et
        -0x6t
        0x64t
        -0x35t
        -0x4ct
        -0x69t
        -0x42t
        0x2bt
        -0x44t
        0x77t
        0x2et
        0x3t
        -0x2dt
        0x19t
        0x59t
        -0x3ft
        0x1dt
        0x6t
        0x41t
        0x6bt
        0x55t
        -0x10t
        -0x67t
        0x69t
        -0x16t
        -0x64t
        0x18t
        -0x52t
        0x63t
        -0x21t
        -0x19t
        -0x45t
        0x0t
        0x73t
        0x66t
        -0x5t
        -0x6at
        0x4ct
        -0x7bt
        -0x1ct
        0x3at
        0x9t
        0x45t
        -0x56t
        0xft
        -0x12t
        0x10t
        -0x15t
        0x2dt
        0x7ft
        -0xct
        0x29t
        -0x54t
        -0x31t
        -0x53t
        -0x6ft
        -0x73t
        0x78t
        -0x38t
        -0x6bt
        -0x7t
        0x2ft
        -0x32t
        -0x33t
        0x8t
        0x7at
        -0x78t
        0x38t
        0x5ct
        -0x7dt
        0x2at
        0x28t
        0x47t
        -0x25t
        -0x48t
        -0x39t
        -0x6dt
        -0x5ct
        0x12t
        0x53t
        -0x1t
        -0x79t
        0xet
        0x31t
        0x36t
        0x21t
        0x58t
        0x48t
        0x1t
        -0x72t
        0x37t
        0x74t
        0x32t
        -0x36t
        -0x17t
        -0x4ft
        -0x49t
        -0x55t
        0xct
        -0x29t
        -0x3ct
        0x56t
        0x42t
        0x26t
        0x7t
        -0x68t
        0x60t
        -0x27t
        -0x4at
        -0x47t
        0x11t
        0x40t
        -0x14t
        0x20t
        -0x74t
        -0x43t
        -0x60t
        -0x37t
        -0x7ct
        0x4t
        0x49t
        0x23t
        -0xft
        0x4ft
        0x50t
        0x1ft
        0x13t
        -0x24t
        -0x28t
        -0x40t
        -0x62t
        0x57t
        -0x1dt
        -0x3dt
        0x7bt
        0x65t
        0x3bt
        0x2t
        -0x71t
        0x3et
        -0x18t
        0x25t
        -0x6et
        -0x1bt
        0x15t
        -0x23t
        -0x3t
        0x17t
        -0x57t
        -0x41t
        -0x2ct
        -0x66t
        0x7et
        -0x3bt
        0x39t
        0x67t
        -0x2t
        0x76t
        -0x63t
        0x43t
        -0x59t
        -0x1ft
        -0x30t
        -0xbt
        0x68t
        -0xet
        0x1bt
        0x34t
        0x70t
        0x5t
        -0x5dt
        -0x76t
        -0x2bt
        0x79t
        -0x7at
        -0x58t
        0x30t
        -0x3at
        0x51t
        0x4bt
        0x1et
        -0x5at
        0x27t
        -0xat
        0x35t
        -0x2et
        0x6et
        0x24t
        0x16t
        -0x7et
        0x5ft
        -0x26t
        -0x1at
        0x75t
        -0x5et
        -0x11t
        0x2ct
        -0x4et
        0x1ct
        -0x61t
        0x5dt
        0x6ft
        -0x80t
        0xat
        0x72t
        0x44t
        -0x65t
        0x6ct
        -0x70t
        0xbt
        0x5bt
        0x33t
        0x7dt
        0x5at
        0x52t
        -0xdt
        0x61t
        -0x5ft
        -0x9t
        -0x50t
        -0x2at
        0x3ft
        0x7ct
        0x6dt
        -0x13t
        0x14t
        -0x20t
        -0x5bt
        0x3dt
        0x22t
        -0x4dt
        -0x8t
        -0x77t
        -0x22t
        0x71t
        0x1at
        -0x51t
        -0x46t
        -0x4bt
        -0x7ft
    .end array-data

    :array_2
    .array-data 1
        0x52t
        0x9t
        0x6at
        -0x2bt
        0x30t
        0x36t
        -0x5bt
        0x38t
        -0x41t
        0x40t
        -0x5dt
        -0x62t
        -0x7ft
        -0xdt
        -0x29t
        -0x5t
        0x7ct
        -0x1dt
        0x39t
        -0x7et
        -0x65t
        0x2ft
        -0x1t
        -0x79t
        0x34t
        -0x72t
        0x43t
        0x44t
        -0x3ct
        -0x22t
        -0x17t
        -0x35t
        0x54t
        0x7bt
        -0x6ct
        0x32t
        -0x5at
        -0x3et
        0x23t
        0x3dt
        -0x12t
        0x4ct
        -0x6bt
        0xbt
        0x42t
        -0x6t
        -0x3dt
        0x4et
        0x8t
        0x2et
        -0x5ft
        0x66t
        0x28t
        -0x27t
        0x24t
        -0x4et
        0x76t
        0x5bt
        -0x5et
        0x49t
        0x6dt
        -0x75t
        -0x2ft
        0x25t
        0x72t
        -0x8t
        -0xat
        0x64t
        -0x7at
        0x68t
        -0x68t
        0x16t
        -0x2ct
        -0x5ct
        0x5ct
        -0x34t
        0x5dt
        0x65t
        -0x4at
        -0x6et
        0x6ct
        0x70t
        0x48t
        0x50t
        -0x3t
        -0x13t
        -0x47t
        -0x26t
        0x5et
        0x15t
        0x46t
        0x57t
        -0x59t
        -0x73t
        -0x63t
        -0x7ct
        -0x70t
        -0x28t
        -0x55t
        0x0t
        -0x74t
        -0x44t
        -0x2dt
        0xat
        -0x9t
        -0x1ct
        0x58t
        0x5t
        -0x48t
        -0x4dt
        0x45t
        0x6t
        -0x30t
        0x2ct
        0x1et
        -0x71t
        -0x36t
        0x3ft
        0xft
        0x2t
        -0x3ft
        -0x51t
        -0x43t
        0x3t
        0x1t
        0x13t
        -0x76t
        0x6bt
        0x3at
        -0x6ft
        0x11t
        0x41t
        0x4ft
        0x67t
        -0x24t
        -0x16t
        -0x69t
        -0xet
        -0x31t
        -0x32t
        -0x10t
        -0x4ct
        -0x1at
        0x73t
        -0x6at
        -0x54t
        0x74t
        0x22t
        -0x19t
        -0x53t
        0x35t
        -0x7bt
        -0x1et
        -0x7t
        0x37t
        -0x18t
        0x1ct
        0x75t
        -0x21t
        0x6et
        0x47t
        -0xft
        0x1at
        0x71t
        0x1dt
        0x29t
        -0x3bt
        -0x77t
        0x6ft
        -0x49t
        0x62t
        0xet
        -0x56t
        0x18t
        -0x42t
        0x1bt
        -0x4t
        0x56t
        0x3et
        0x4bt
        -0x3at
        -0x2et
        0x79t
        0x20t
        -0x66t
        -0x25t
        -0x40t
        -0x2t
        0x78t
        -0x33t
        0x5at
        -0xct
        0x1ft
        -0x23t
        -0x58t
        0x33t
        -0x78t
        0x7t
        -0x39t
        0x31t
        -0x4ft
        0x12t
        0x10t
        0x59t
        0x27t
        -0x80t
        -0x14t
        0x5ft
        0x60t
        0x51t
        0x7ft
        -0x57t
        0x19t
        -0x4bt
        0x4at
        0xdt
        0x2dt
        -0x1bt
        0x7at
        -0x61t
        -0x6dt
        -0x37t
        -0x64t
        -0x11t
        -0x60t
        -0x20t
        0x3bt
        0x4dt
        -0x52t
        0x2at
        -0xbt
        -0x50t
        -0x38t
        -0x15t
        -0x45t
        0x3ct
        -0x7dt
        0x53t
        -0x67t
        0x61t
        0x17t
        0x2bt
        0x4t
        0x7et
        -0x46t
        0x77t
        -0x2at
        0x26t
        -0x1ft
        0x69t
        0x14t
        0x63t
        0x55t
        0x21t
        0xct
        0x7dt
    .end array-data

    :array_3
    .array-data 1
        0x30t
        0x68t
        -0x67t
        0x1bt
        -0x79t
        -0x47t
        0x21t
        0x78t
        0x50t
        0x39t
        -0x25t
        -0x1ft
        0x72t
        0x9t
        0x62t
        0x3ct
        0x3et
        0x7et
        0x5et
        -0x72t
        -0xft
        -0x60t
        -0x34t
        -0x5dt
        0x2at
        0x1dt
        -0x5t
        -0x4at
        -0x2at
        0x20t
        -0x3ct
        -0x73t
        -0x7ft
        0x65t
        -0xbt
        -0x77t
        -0x35t
        -0x63t
        0x77t
        -0x3at
        0x57t
        0x43t
        0x56t
        0x17t
        -0x2ct
        0x40t
        0x1at
        0x4dt
        -0x40t
        0x63t
        0x6ct
        -0x1dt
        -0x49t
        -0x38t
        0x64t
        0x6at
        0x53t
        -0x56t
        0x38t
        -0x68t
        0xct
        -0xct
        -0x65t
        -0x13t
        0x7ft
        0x22t
        0x76t
        -0x51t
        -0x23t
        0x3at
        0xbt
        0x58t
        0x67t
        -0x78t
        0x6t
        -0x3dt
        0x35t
        0xdt
        0x1t
        -0x75t
        -0x74t
        -0x3et
        -0x1at
        0x5ft
        0x2t
        0x24t
        0x75t
        -0x6dt
        0x66t
        0x1et
        -0x1bt
        -0x1et
        0x54t
        -0x28t
        0x10t
        -0x32t
        0x7at
        -0x18t
        0x8t
        0x2ct
        0x12t
        -0x69t
        0x32t
        -0x55t
        -0x4ct
        0x27t
        0xat
        0x23t
        -0x21t
        -0x11t
        -0x36t
        -0x27t
        -0x48t
        -0x6t
        -0x24t
        0x31t
        0x6bt
        -0x2ft
        -0x53t
        0x19t
        0x49t
        -0x43t
        0x51t
        -0x6at
        -0x12t
        -0x1ct
        -0x58t
        0x41t
        -0x26t
        -0x1t
        -0x33t
        0x55t
        -0x7at
        0x36t
        -0x42t
        0x61t
        0x52t
        -0x8t
        -0x45t
        0xet
        -0x7et
        0x48t
        0x69t
        -0x66t
        -0x20t
        0x47t
        -0x62t
        0x5ct
        0x4t
        0x4bt
        0x34t
        0x15t
        0x79t
        0x26t
        -0x59t
        -0x22t
        0x29t
        -0x52t
        -0x6et
        -0x29t
        -0x7ct
        -0x17t
        -0x2et
        -0x46t
        0x5dt
        -0xdt
        -0x3bt
        -0x50t
        -0x41t
        -0x5ct
        0x3bt
        0x71t
        0x44t
        0x46t
        0x2bt
        -0x4t
        -0x15t
        0x6ft
        -0x2bt
        -0xat
        0x14t
        -0x2t
        0x7ct
        0x70t
        0x5at
        0x7dt
        -0x3t
        0x2ft
        0x18t
        -0x7dt
        0x16t
        -0x5bt
        -0x6ft
        0x1ft
        0x5t
        -0x6bt
        0x74t
        -0x57t
        -0x3ft
        0x5bt
        0x4at
        -0x7bt
        0x6dt
        0x13t
        0x7t
        0x4ft
        0x4et
        0x45t
        -0x4et
        0xft
        -0x37t
        0x1ct
        -0x5at
        -0x44t
        -0x14t
        0x73t
        -0x70t
        0x7bt
        -0x31t
        0x59t
        -0x71t
        -0x5ft
        -0x7t
        0x2dt
        -0xet
        -0x4ft
        0x0t
        -0x6ct
        0x37t
        -0x61t
        -0x30t
        0x2et
        -0x64t
        0x6et
        0x28t
        0x3ft
        -0x80t
        -0x10t
        0x3dt
        -0x2dt
        0x25t
        -0x76t
        -0x4bt
        -0x19t
        0x42t
        -0x4dt
        -0x39t
        -0x16t
        -0x9t
        0x4ct
        0x11t
        0x33t
        0x3t
        -0x5et
        -0x54t
        0x60t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;I)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method protected static A([B)V
    .locals 19

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    const/4 v2, 0x1

    aget-byte v2, p0, v2

    const/4 v3, 0x2

    aget-byte v3, p0, v3

    const/4 v4, 0x3

    aget-byte v4, p0, v4

    const/4 v5, 0x4

    aget-byte v5, p0, v5

    const/4 v6, 0x5

    aget-byte v6, p0, v6

    const/4 v7, 0x6

    aget-byte v7, p0, v7

    const/4 v8, 0x7

    aget-byte v8, p0, v8

    const/16 v9, 0x8

    aget-byte v9, p0, v9

    const/16 v10, 0x9

    aget-byte v10, p0, v10

    const/16 v11, 0xa

    aget-byte v11, p0, v11

    const/16 v12, 0xb

    aget-byte v12, p0, v12

    const/16 v13, 0xc

    aget-byte v13, p0, v13

    const/16 v14, 0xd

    aget-byte v14, p0, v14

    const/16 v15, 0xe

    aget-byte v15, p0, v15

    const/16 v16, 0xf

    aget-byte v16, p0, v16

    const/16 v17, 0x0

    xor-int v18, v4, v5

    xor-int v18, v18, v7

    xor-int v18, v18, v9

    xor-int v18, v18, v10

    xor-int v18, v18, v14

    xor-int v18, v18, v15

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0x1

    xor-int v18, v3, v6

    xor-int v18, v18, v8

    xor-int v18, v18, v9

    xor-int v18, v18, v10

    xor-int v18, v18, v13

    xor-int v18, v18, v16

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0x2

    xor-int v18, v2, v5

    xor-int v18, v18, v7

    xor-int v18, v18, v11

    xor-int v18, v18, v12

    xor-int v18, v18, v13

    xor-int v18, v18, v16

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0x3

    xor-int v18, v1, v6

    xor-int v18, v18, v8

    xor-int v18, v18, v11

    xor-int v18, v18, v12

    xor-int v18, v18, v14

    xor-int v18, v18, v15

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0x4

    xor-int v18, v1, v3

    xor-int v18, v18, v6

    xor-int v18, v18, v9

    xor-int v18, v18, v12

    xor-int v18, v18, v15

    xor-int v18, v18, v16

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0x5

    xor-int v18, v2, v4

    xor-int v18, v18, v5

    xor-int v18, v18, v10

    xor-int v18, v18, v11

    xor-int v18, v18, v15

    xor-int v18, v18, v16

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0x6

    xor-int v18, v1, v3

    xor-int v18, v18, v8

    xor-int v18, v18, v10

    xor-int v18, v18, v11

    xor-int v18, v18, v13

    xor-int v18, v18, v14

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0x7

    xor-int v18, v2, v4

    xor-int v18, v18, v7

    xor-int v18, v18, v9

    xor-int v18, v18, v12

    xor-int v18, v18, v13

    xor-int v18, v18, v14

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0x8

    xor-int v18, v1, v2

    xor-int v18, v18, v5

    xor-int v18, v18, v8

    xor-int v18, v18, v11

    xor-int v18, v18, v14

    xor-int v18, v18, v16

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0x9

    xor-int v18, v1, v2

    xor-int v18, v18, v6

    xor-int v18, v18, v7

    xor-int v18, v18, v12

    xor-int v18, v18, v13

    xor-int v18, v18, v15

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0xa

    xor-int v18, v3, v4

    xor-int v18, v18, v6

    xor-int v18, v18, v7

    xor-int v18, v18, v9

    xor-int v18, v18, v14

    xor-int v18, v18, v16

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0xb

    xor-int v18, v3, v4

    xor-int v18, v18, v5

    xor-int v18, v18, v8

    xor-int v18, v18, v10

    xor-int v18, v18, v13

    xor-int v18, v18, v15

    move/from16 v0, v18

    int-to-byte v0, v0

    move/from16 v18, v0

    aput-byte v18, p0, v17

    const/16 v17, 0xc

    xor-int v18, v2, v3

    xor-int v18, v18, v7

    xor-int v18, v18, v8

    xor-int v18, v18, v10

    xor-int v18, v18, v12

    xor-int v13, v13, v18

    int-to-byte v13, v13

    aput-byte v13, p0, v17

    const/16 v13, 0xd

    xor-int v17, v1, v4

    xor-int v7, v7, v17

    xor-int/2addr v7, v8

    xor-int/2addr v7, v9

    xor-int/2addr v7, v11

    xor-int/2addr v7, v14

    int-to-byte v7, v7

    aput-byte v7, p0, v13

    const/16 v7, 0xe

    xor-int/2addr v1, v4

    xor-int/2addr v1, v5

    xor-int/2addr v1, v6

    xor-int/2addr v1, v10

    xor-int/2addr v1, v12

    xor-int/2addr v1, v15

    int-to-byte v1, v1

    aput-byte v1, p0, v7

    const/16 v1, 0xf

    xor-int/2addr v2, v3

    xor-int/2addr v2, v5

    xor-int/2addr v2, v6

    xor-int/2addr v2, v9

    xor-int/2addr v2, v11

    xor-int v2, v2, v16

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    return-void
.end method

.method protected static FE([B[B)V
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SL2([B)V

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->A([B)V

    return-void
.end method

.method protected static FO([B[B)V
    .locals 0

    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SL1([B)V

    invoke-static {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->A([B)V

    return-void
.end method

.method protected static SB1(B)B
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SB2(B)B
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SB3(B)B
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SB4(B)B
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4_sbox:[B

    and-int/lit16 v1, p0, 0xff

    aget-byte v0, v0, v1

    return v0
.end method

.method protected static SL1([B)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget-byte v0, p0, v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v0

    aput-byte v0, p0, v1

    aget-byte v0, p0, v2

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v0

    aput-byte v0, p0, v2

    aget-byte v0, p0, v3

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v0

    aput-byte v0, p0, v3

    aget-byte v0, p0, v4

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v0

    aput-byte v0, p0, v4

    aget-byte v0, p0, v5

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v0

    aput-byte v0, p0, v5

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0x8

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0x9

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xa

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xb

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xc

    const/16 v1, 0xc

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xd

    const/16 v1, 0xd

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xe

    const/16 v1, 0xe

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xf

    const/16 v1, 0xf

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    return-void
.end method

.method protected static SL2([B)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    aget-byte v0, p0, v1

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v0

    aput-byte v0, p0, v1

    aget-byte v0, p0, v2

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v0

    aput-byte v0, p0, v2

    aget-byte v0, p0, v3

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v0

    aput-byte v0, p0, v3

    aget-byte v0, p0, v4

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v0

    aput-byte v0, p0, v4

    aget-byte v0, p0, v5

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v0

    aput-byte v0, p0, v5

    const/4 v0, 0x5

    const/4 v1, 0x5

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x6

    const/4 v1, 0x6

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/4 v0, 0x7

    const/4 v1, 0x7

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0x8

    const/16 v1, 0x8

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0x9

    const/16 v1, 0x9

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xa

    const/16 v1, 0xa

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xb

    const/16 v1, 0xb

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xc

    const/16 v1, 0xc

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB3(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xd

    const/16 v1, 0xd

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB4(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xe

    const/16 v1, 0xe

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB1(B)B

    move-result v1

    aput-byte v1, p0, v0

    const/16 v0, 0xf

    const/16 v1, 0xf

    aget-byte v1, p0, v1

    invoke-static {v1}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SB2(B)B

    move-result v1

    aput-byte v1, p0, v0

    return-void
.end method

.method private bitsOfSecurity()I
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    array-length v0, v0

    const/16 v1, 0xd

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    array-length v0, v0

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    const/16 v0, 0x100

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xc0

    goto :goto_0

    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method protected static keySchedule(Z[B)[[B
    .locals 13

    array-length v0, p1

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    and-int/lit8 v1, v0, 0x7

    if-eqz v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Key length not 128/192/256 bits."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    ushr-int/lit8 v1, v0, 0x3

    add-int/lit8 v1, v1, -0x2

    sget-object v2, Lorg/bouncycastle/crypto/engines/ARIAEngine;->C:[[B

    aget-object v2, v2, v1

    sget-object v3, Lorg/bouncycastle/crypto/engines/ARIAEngine;->C:[[B

    add-int/lit8 v4, v1, 0x1

    rem-int/lit8 v4, v4, 0x3

    aget-object v3, v3, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/ARIAEngine;->C:[[B

    add-int/lit8 v5, v1, 0x2

    rem-int/lit8 v5, v5, 0x3

    aget-object v4, v4, v5

    const/16 v5, 0x10

    new-array v5, v5, [B

    const/16 v6, 0x10

    new-array v6, v6, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x10

    invoke-static {p1, v7, v5, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v7, 0x10

    const/4 v8, 0x0

    add-int/lit8 v0, v0, -0x10

    invoke-static {p1, v7, v6, v8, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, 0x10

    new-array v7, v0, [B

    const/16 v0, 0x10

    new-array v8, v0, [B

    const/16 v0, 0x10

    new-array v9, v0, [B

    const/16 v0, 0x10

    new-array v10, v0, [B

    const/4 v0, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x10

    invoke-static {v5, v0, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    const/4 v5, 0x0

    const/16 v11, 0x10

    invoke-static {v7, v0, v8, v5, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v8, v2}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    invoke-static {v8, v6}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x10

    invoke-static {v8, v0, v9, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v9, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FE([B[B)V

    invoke-static {v9, v7}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/16 v3, 0x10

    invoke-static {v9, v0, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v4}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    invoke-static {v10, v8}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v2, v0, 0xc

    add-int/lit8 v0, v2, 0x1

    const/16 v1, 0x10

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/16 v3, 0x13

    invoke-static {v1, v7, v8, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v1, 0x1

    aget-object v1, v0, v1

    const/16 v3, 0x13

    invoke-static {v1, v8, v9, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v1, 0x2

    aget-object v1, v0, v1

    const/16 v3, 0x13

    invoke-static {v1, v9, v10, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v1, 0x3

    aget-object v1, v0, v1

    const/16 v3, 0x13

    invoke-static {v1, v10, v7, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v1, 0x4

    aget-object v1, v0, v1

    const/16 v3, 0x1f

    invoke-static {v1, v7, v8, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v1, 0x5

    aget-object v1, v0, v1

    const/16 v3, 0x1f

    invoke-static {v1, v8, v9, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v1, 0x6

    aget-object v1, v0, v1

    const/16 v3, 0x1f

    invoke-static {v1, v9, v10, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/4 v1, 0x7

    aget-object v1, v0, v1

    const/16 v3, 0x1f

    invoke-static {v1, v10, v7, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v1, 0x8

    aget-object v1, v0, v1

    const/16 v3, 0x43

    invoke-static {v1, v7, v8, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v1, 0x9

    aget-object v1, v0, v1

    const/16 v3, 0x43

    invoke-static {v1, v8, v9, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v1, 0xa

    aget-object v1, v0, v1

    const/16 v3, 0x43

    invoke-static {v1, v9, v10, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v1, 0xb

    aget-object v1, v0, v1

    const/16 v3, 0x43

    invoke-static {v1, v10, v7, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v1, 0xc

    aget-object v1, v0, v1

    const/16 v3, 0x61

    invoke-static {v1, v7, v8, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v1, 0xc

    if-le v2, v1, :cond_2

    const/16 v1, 0xd

    aget-object v1, v0, v1

    const/16 v3, 0x61

    invoke-static {v1, v8, v9, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v1, 0xe

    aget-object v1, v0, v1

    const/16 v3, 0x61

    invoke-static {v1, v9, v10, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v1, 0xe

    if-le v2, v1, :cond_2

    const/16 v1, 0xf

    aget-object v1, v0, v1

    const/16 v3, 0x61

    invoke-static {v1, v10, v7, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    const/16 v1, 0x10

    aget-object v1, v0, v1

    const/16 v3, 0x6d

    invoke-static {v1, v7, v8, v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keyScheduleRound([B[B[BI)V

    :cond_2
    if-nez p0, :cond_3

    invoke-static {v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->reverseKeys([[B)V

    const/4 v1, 0x1

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v3, v0, v1

    invoke-static {v3}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->A([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method protected static keyScheduleRound([B[B[BI)V
    .locals 7

    ushr-int/lit8 v3, p3, 0x3

    and-int/lit8 v4, p3, 0x7

    rsub-int/lit8 v5, v4, 0x8

    rsub-int/lit8 v0, v3, 0xf

    aget-byte v0, p2, v0

    and-int/lit16 v1, v0, 0xff

    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    sub-int v2, v0, v3

    and-int/lit8 v2, v2, 0xf

    aget-byte v2, p2, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v1, v5

    ushr-int v6, v2, v4

    or-int/2addr v1, v6

    aget-byte v6, p1, v0

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v1, v6

    int-to-byte v1, v1

    aput-byte v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static reverseKeys([[B)V
    .locals 5

    array-length v0, p0

    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v2, v0, -0x1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v3, p0, v0

    sub-int v4, v2, v0

    aget-object v4, p0, v4

    aput-object v4, p0, v0

    sub-int v4, v2, v0

    aput-object v3, p0, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected static xor([B[B)V
    .locals 1

    const/16 v0, 0x10

    invoke-static {v0, p1, p0}, Lorg/bouncycastle/util/Bytes;->xorTo(I[B[B)V

    return-void
.end method


# virtual methods
.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "ARIA"

    return-object v0
.end method

.method public getBlockSize()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to ARIA init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->forEncryption:Z

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->keySchedule(Z[B)[[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->bitsOfSecurity()I

    move-result v2

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method public processBlock([BI[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    const/4 v1, 0x0

    const/16 v6, 0x10

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ARIA engine not initialised"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, -0x10

    if-le p2, v0, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p3

    add-int/lit8 v0, v0, -0x10

    if-le p4, v0, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-array v2, v6, [B

    invoke-static {p1, p2, v2, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    array-length v0, v0

    add-int/lit8 v3, v0, -0x3

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_3

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v5, v0, 0x1

    aget-object v0, v4, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v0, v5, 0x1

    aget-object v4, v4, v5

    invoke-static {v2, v4}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FE([B[B)V

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v4, v0, 0x1

    aget-object v0, v3, v0

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->FO([B[B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    add-int/lit8 v3, v4, 0x1

    aget-object v0, v0, v4

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->SL2([B)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/ARIAEngine;->roundKeys:[[B

    aget-object v0, v0, v3

    invoke-static {v2, v0}, Lorg/bouncycastle/crypto/engines/ARIAEngine;->xor([B[B)V

    invoke-static {v2, v1, p3, p4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v6
.end method

.method public reset()V
    .locals 0

    return-void
.end method
