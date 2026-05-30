.class public final Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/ExtendedDigest;
.implements Lorg/bouncycastle/util/Memoable;


# static fields
.field private static final BITCOUNT_ARRAY_SIZE:I = 0x20

.field private static final BYTE_LENGTH:I = 0x40

.field private static final C0:[J

.field private static final C1:[J

.field private static final C2:[J

.field private static final C3:[J

.field private static final C4:[J

.field private static final C5:[J

.field private static final C6:[J

.field private static final C7:[J

.field private static final DIGEST_LENGTH_BYTES:I = 0x40

.field private static final EIGHT:[S

.field private static final REDUCTION_POLYNOMIAL:I = 0x11d

.field private static final ROUNDS:I = 0xa

.field private static final SBOX:[I


# instance fields
.field private _K:[J

.field private _L:[J

.field private _bitCount:[S

.field private _block:[J

.field private _buffer:[B

.field private _bufferPos:I

.field private _hash:[J

.field private final _rc:[J

.field private _state:[J

.field private final purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/16 v0, 0x100

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    const/16 v0, 0x100

    new-array v0, v0, [J

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    const/16 v0, 0x20

    new-array v0, v0, [S

    sput-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    sget-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    const/16 v1, 0x1f

    const/16 v2, 0x8

    aput-short v2, v0, v1

    const/4 v0, 0x0

    move v15, v0

    :goto_0
    const/16 v0, 0x100

    if-ge v15, v0, :cond_0

    sget-object v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->SBOX:[I

    aget v0, v0, v15

    invoke-static {v0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->mulX(I)I

    move-result v6

    invoke-static {v6}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->mulX(I)I

    move-result v2

    xor-int v5, v2, v0

    invoke-static {v2}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->mulX(I)I

    move-result v4

    xor-int v7, v4, v0

    sget-object v8, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    move v1, v0

    move v3, v0

    invoke-static/range {v0 .. v7}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v10

    aput-wide v10, v8, v15

    sget-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    move v8, v0

    move v9, v0

    move v10, v2

    move v11, v0

    move v12, v4

    move v13, v5

    move v14, v6

    invoke-static/range {v7 .. v14}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v8

    aput-wide v8, v1, v15

    sget-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    move v8, v0

    move v9, v0

    move v10, v2

    move v11, v0

    move v12, v4

    move v13, v5

    invoke-static/range {v6 .. v13}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v8

    aput-wide v8, v1, v15

    sget-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    move v8, v0

    move v9, v0

    move v10, v2

    move v11, v0

    move v12, v4

    invoke-static/range {v5 .. v12}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v8

    aput-wide v8, v1, v15

    sget-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    move v8, v0

    move v9, v0

    move v10, v2

    move v11, v0

    invoke-static/range {v4 .. v11}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v8

    aput-wide v8, v1, v15

    sget-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    move v3, v0

    move v8, v0

    move v9, v0

    move v10, v2

    invoke-static/range {v3 .. v10}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v8

    aput-wide v8, v1, v15

    sget-object v1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    move v3, v0

    move v8, v0

    move v9, v0

    invoke-static/range {v2 .. v9}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v8

    aput-wide v8, v1, v15

    sget-object v9, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    move v1, v0

    move v3, v0

    move v8, v0

    invoke-static/range {v1 .. v8}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->packIntoLong(IIIIIIII)J

    move-result-wide v0

    aput-wide v0, v9, v15

    add-int/lit8 v0, v15, 0x1

    move v15, v0

    goto :goto_0

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x18
        0x23
        0xc6
        0xe8
        0x87
        0xb8
        0x1
        0x4f
        0x36
        0xa6
        0xd2
        0xf5
        0x79
        0x6f
        0x91
        0x52
        0x60
        0xbc
        0x9b
        0x8e
        0xa3
        0xc
        0x7b
        0x35
        0x1d
        0xe0
        0xd7
        0xc2
        0x2e
        0x4b
        0xfe
        0x57
        0x15
        0x77
        0x37
        0xe5
        0x9f
        0xf0
        0x4a
        0xda
        0x58
        0xc9
        0x29
        0xa
        0xb1
        0xa0
        0x6b
        0x85
        0xbd
        0x5d
        0x10
        0xf4
        0xcb
        0x3e
        0x5
        0x67
        0xe4
        0x27
        0x41
        0x8b
        0xa7
        0x7d
        0x95
        0xd8
        0xfb
        0xee
        0x7c
        0x66
        0xdd
        0x17
        0x47
        0x9e
        0xca
        0x2d
        0xbf
        0x7
        0xad
        0x5a
        0x83
        0x33
        0x63
        0x2
        0xaa
        0x71
        0xc8
        0x19
        0x49
        0xd9
        0xf2
        0xe3
        0x5b
        0x88
        0x9a
        0x26
        0x32
        0xb0
        0xe9
        0xf
        0xd5
        0x80
        0xbe
        0xcd
        0x34
        0x48
        0xff
        0x7a
        0x90
        0x5f
        0x20
        0x68
        0x1a
        0xae
        0xb4
        0x54
        0x93
        0x22
        0x64
        0xf1
        0x73
        0x12
        0x40
        0x8
        0xc3
        0xec
        0xdb
        0xa1
        0x8d
        0x3d
        0x97
        0x0
        0xcf
        0x2b
        0x76
        0x82
        0xd6
        0x1b
        0xb5
        0xaf
        0x6a
        0x50
        0x45
        0xf3
        0x30
        0xef
        0x3f
        0x55
        0xa2
        0xea
        0x65
        0xba
        0x2f
        0xc0
        0xde
        0x1c
        0xfd
        0x4d
        0x92
        0x75
        0x6
        0x8a
        0xb2
        0xe6
        0xe
        0x1f
        0x62
        0xd4
        0xa8
        0x96
        0xf9
        0xc5
        0x25
        0x59
        0x84
        0x72
        0x39
        0x4c
        0x5e
        0x78
        0x38
        0x8c
        0xd1
        0xa5
        0xe2
        0x61
        0xb3
        0x21
        0x9c
        0x1e
        0x43
        0xc7
        0xfc
        0x4
        0x51
        0x99
        0x6d
        0xd
        0xfa
        0xdf
        0x7e
        0x24
        0x3b
        0xab
        0xce
        0x11
        0x8f
        0x4e
        0xb7
        0xeb
        0x3c
        0x81
        0x94
        0xf7
        0xb9
        0x13
        0x2c
        0xd3
        0xe7
        0x6e
        0xc4
        0x3
        0x56
        0x44
        0x7f
        0xa9
        0x2a
        0xbb
        0xc1
        0x53
        0xdc
        0xb
        0x9d
        0x6c
        0x31
        0x74
        0xf6
        0x46
        0xac
        0x89
        0x14
        0xe1
        0x16
        0x3a
        0x69
        0x9
        0x70
        0xb6
        0xd0
        0xed
        0xcc
        0x42
        0x98
        0xa4
        0x28
        0x5c
        0xf8
        0x86
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/CryptoServicePurpose;->ANY:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;-><init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/CryptoServicePurpose;)V
    .locals 10

    const/4 v4, 0x0

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iput v4, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    add-int/lit8 v1, v0, -0x1

    mul-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    aget-wide v4, v3, v1

    const-wide/high16 v6, -0x100000000000000L

    and-long/2addr v4, v6

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    add-int/lit8 v6, v1, 0x1

    aget-wide v6, v3, v6

    const-wide/high16 v8, 0xff000000000000L

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    add-int/lit8 v6, v1, 0x2

    aget-wide v6, v3, v6

    const-wide v8, 0xff0000000000L

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    add-int/lit8 v6, v1, 0x3

    aget-wide v6, v3, v6

    const-wide v8, 0xff00000000L

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    add-int/lit8 v6, v1, 0x4

    aget-wide v6, v3, v6

    const-wide v8, 0xff000000L

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    add-int/lit8 v6, v1, 0x5

    aget-wide v6, v3, v6

    const-wide/32 v8, 0xff0000

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    add-int/lit8 v6, v1, 0x6

    aget-wide v6, v3, v6

    const-wide/32 v8, 0xff00

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    add-int/lit8 v1, v1, 0x7

    aget-wide v6, v3, v1

    const-wide/16 v8, 0xff

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    aput-wide v4, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->getDigestSize()I

    move-result v0

    invoke-static {p0, v0, p1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;)V
    .locals 2

    const/16 v1, 0x8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xb

    new-array v0, v0, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    const/16 v0, 0x20

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    new-array v0, v1, [J

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    iput-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-virtual {p0, p1}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->reset(Lorg/bouncycastle/util/Memoable;)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->getDigestSize()I

    move-result v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->purpose:Lorg/bouncycastle/crypto/CryptoServicePurpose;

    invoke-static {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/Utils;->getDefaultProperties(Lorg/bouncycastle/crypto/Digest;ILorg/bouncycastle/crypto/CryptoServicePurpose;)Lorg/bouncycastle/crypto/CryptoServiceProperties;

    move-result-object v0

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    return-void
.end method

.method private copyBitLength()[B
    .locals 3

    const/16 v0, 0x20

    new-array v1, v0, [B

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private finish()V
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->copyBitLength()[B

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    aget-byte v3, v1, v2

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v1, v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    :cond_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-le v1, v5, :cond_1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-eqz v1, :cond_1

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_0

    :cond_1
    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    if-gt v1, v5, :cond_2

    invoke-virtual {p0, v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v0

    invoke-static {v0, v4, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-direct {p0, v0, v4}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    return-void
.end method

.method private increment()V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    aget-short v2, v2, v0

    and-int/lit16 v2, v2, 0xff

    sget-object v3, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->EIGHT:[S

    aget-short v3, v3, v0

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    ushr-int/lit8 v1, v2, 0x8

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    and-int/lit16 v2, v2, 0xff

    int-to-short v2, v2

    aput-short v2, v3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static mulX(I)I
    .locals 2

    shl-int/lit8 v0, p0, 0x1

    ushr-int/lit8 v1, p0, 0x7

    neg-int v1, v1

    and-int/lit16 v1, v1, 0x11d

    xor-int/2addr v0, v1

    return v0
.end method

.method private static packIntoLong(IIIIIIII)J
    .locals 5

    int-to-long v0, p0

    const/16 v2, 0x38

    shl-long/2addr v0, v2

    int-to-long v2, p1

    const/16 v4, 0x30

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p2

    const/16 v4, 0x28

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p3

    const/16 v4, 0x20

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p4

    const/16 v4, 0x18

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p5

    const/16 v4, 0x10

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p6

    const/16 v4, 0x8

    shl-long/2addr v2, v4

    xor-long/2addr v0, v2

    int-to-long v2, p7

    xor-long/2addr v0, v2

    return-wide v0
.end method

.method private processFilledBuffer([BI)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI[J)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processBlock()V

    iput v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v0, v2}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    return-void
.end method


# virtual methods
.method public copy()Lorg/bouncycastle/util/Memoable;
    .locals 1

    new-instance v0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    invoke-direct {v0, p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;-><init>(Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;)V

    return-object v0
.end method

.method public doFinal([BI)I
    .locals 1

    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->finish()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    invoke-static {v0, p1, p2}, Lorg/bouncycastle/util/Pack;->longToBigEndian([J[BI)V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->reset()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->getDigestSize()I

    move-result v0

    return v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    const-string v0, "Whirlpool"

    return-object v0
.end method

.method public getByteLength()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method public getDigestSize()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method

.method protected processBlock()V
    .locals 14

    const/16 v13, 0x20

    const/16 v12, 0x18

    const/16 v11, 0x10

    const/16 v10, 0x8

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v10, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v6, v6, v1

    aput-wide v6, v3, v1

    xor-long/2addr v4, v6

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    move v2, v1

    :goto_1
    const/16 v1, 0xa

    if-gt v2, v1, :cond_3

    move v1, v0

    :goto_2
    if-ge v1, v10, :cond_1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, 0x0

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x38

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x1

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x30

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x2

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x28

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x3

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v13

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x4

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v12

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x5

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v11

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x6

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v10

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    add-int/lit8 v8, v1, -0x7

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v4, v4

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v4, v1, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    aget-wide v6, v3, v2

    xor-long/2addr v4, v6

    aput-wide v4, v1, v0

    move v1, v0

    :goto_3
    if-ge v1, v10, :cond_2

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    aget-wide v4, v4, v1

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C0:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, 0x0

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x38

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C1:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x1

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x30

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C2:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x2

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    const/16 v7, 0x28

    ushr-long/2addr v8, v7

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C3:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x3

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v13

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C4:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x4

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v12

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C5:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x5

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v11

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C6:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x6

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    ushr-long/2addr v8, v10

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    aget-wide v4, v3, v1

    sget-object v6, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->C7:[J

    iget-object v7, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    add-int/lit8 v8, v1, -0x7

    and-int/lit8 v8, v8, 0x7

    aget-wide v8, v7, v8

    long-to-int v7, v8

    and-int/lit16 v7, v7, 0xff

    aget-wide v6, v6, v7

    xor-long/2addr v4, v6

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v3, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v4, v4

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto/16 :goto_1

    :cond_3
    :goto_4
    if-ge v0, v10, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    aget-wide v2, v1, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    aget-wide v4, v4, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    aget-wide v6, v6, v0

    xor-long/2addr v4, v6

    xor-long/2addr v2, v4

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method public reset()V
    .locals 4

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([SS)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Arrays;->fill([JJ)V

    return-void
.end method

.method public reset(Lorg/bouncycastle/util/Memoable;)V
    .locals 4

    const/4 v3, 0x0

    check-cast p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_rc:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bitCount:[S

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_hash:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_K:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_L:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_block:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p1, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    iget-object v2, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_state:[J

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public update(B)V
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    iget v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_bufferPos:I

    iget-object v1, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->_buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->processFilledBuffer([BI)V

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->increment()V

    return-void
.end method

.method public update([BII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_0

    aget-byte v0, p1, p2

    invoke-virtual {p0, v0}, Lorg/bouncycastle/crypto/digests/WhirlpoolDigest;->update(B)V

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method
