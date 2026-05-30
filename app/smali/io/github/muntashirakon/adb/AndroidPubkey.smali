.class final Lio/github/muntashirakon/adb/AndroidPubkey;
.super Ljava/lang/Object;
.source "AndroidPubkey.java"


# static fields
.field public static final ANDROID_PUBKEY_ENCODED_SIZE:I = 0x20c

.field public static final ANDROID_PUBKEY_MODULUS_SIZE:I = 0x100

.field public static final ANDROID_PUBKEY_MODULUS_SIZE_WORDS:I = 0x40

.field private static final RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

.field private static final SIGNATURE_PADDING_AS_INT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/16 v1, 0xec

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    sput-object v1, Lio/github/muntashirakon/adb/AndroidPubkey;->SIGNATURE_PADDING_AS_INT:[I

    .line 73
    sget-object v1, Lio/github/muntashirakon/adb/AndroidPubkey;->SIGNATURE_PADDING_AS_INT:[I

    array-length v1, v1

    new-array v1, v1, [B

    sput-object v1, Lio/github/muntashirakon/adb/AndroidPubkey;->RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lio/github/muntashirakon/adb/AndroidPubkey;->RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 76
    sget-object v1, Lio/github/muntashirakon/adb/AndroidPubkey;->RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

    sget-object v2, Lio/github/muntashirakon/adb/AndroidPubkey;->SIGNATURE_PADDING_AS_INT:[I

    aget v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0xff
        0x0
        0x30
        0x21
        0x30
        0x9
        0x6
        0x5
        0x2b
        0xe
        0x3
        0x2
        0x1a
        0x5
        0x0
        0x4
        0x14
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static BigEndianToLittleEndianPadded(ILjava/math/BigInteger;)[B
    .locals 5
    .param p0, "len"    # I
    .param p1, "in"    # Ljava/math/BigInteger;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 214
    new-array v2, p0, [B

    .line 215
    .local v2, "out":[B
    invoke-virtual {p1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v3}, Lio/github/muntashirakon/adb/AndroidPubkey;->swapEndianness([B)[B

    move-result-object v0

    .line 216
    .local v0, "bytes":[B
    array-length v1, v0

    .line 217
    .local v1, "num_bytes":I
    if-ge p0, v1, :cond_1

    .line 218
    invoke-static {v0, v1, p0}, Lio/github/muntashirakon/adb/AndroidPubkey;->fitsInBytes([BII)Z

    move-result v3

    if-nez v3, :cond_0

    .line 219
    const/4 v2, 0x0

    .line 224
    .end local v2    # "out":[B
    :goto_0
    return-object v2

    .line 221
    .restart local v2    # "out":[B
    :cond_0
    move v1, p0

    .line 223
    :cond_1
    invoke-static {v0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static adbAuthSign(Ljava/security/PrivateKey;[B)[B
    .locals 2
    .param p0, "privateKey"    # Ljava/security/PrivateKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "payload"    # [B
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .prologue
    .line 91
    const-string v1, "RSA/ECB/NoPadding"

    invoke-static {v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 92
    .local v0, "c":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 93
    sget-object v1, Lio/github/muntashirakon/adb/AndroidPubkey;->RSA_SHA_PKCS1_SIGNATURE_PADDING:[B

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->update([B)[B

    .line 94
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static decode([B)Ljava/security/interfaces/RSAPublicKey;
    .locals 10
    .param p0, "androidPubkey"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;
        }
    .end annotation

    .prologue
    .line 147
    array-length v7, p0

    const/16 v8, 0x20c

    if-ge v7, v8, :cond_0

    .line 148
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "Invalid key length"

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 150
    :cond_0
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v7, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 151
    .local v2, "keyStruct":Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    .line 152
    .local v4, "modulusSize":I
    const/16 v7, 0x40

    if-eq v4, v7, :cond_1

    .line 153
    new-instance v7, Ljava/security/InvalidKeyException;

    const-string v8, "Invalid modulus length."

    invoke-direct {v7, v8}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 157
    :cond_1
    const/16 v7, 0x100

    new-array v3, v7, [B

    .line 158
    .local v3, "modulus":[B
    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 159
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 160
    new-instance v5, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-static {v3}, Lio/github/muntashirakon/adb/AndroidPubkey;->swapEndianness([B)[B

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 163
    .local v5, "n":Ljava/math/BigInteger;
    const/16 v7, 0x208

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    int-to-long v8, v7

    invoke-static {v8, v9}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 166
    .local v0, "e":Ljava/math/BigInteger;
    const-string v7, "RSA"

    invoke-static {v7}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    .line 167
    .local v1, "keyFactory":Ljava/security/KeyFactory;
    new-instance v6, Ljava/security/spec/RSAPublicKeySpec;

    invoke-direct {v6, v5, v0}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 168
    .local v6, "publicKeySpec":Ljava/security/spec/RSAPublicKeySpec;
    invoke-virtual {v1, v6}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v7

    check-cast v7, Ljava/security/interfaces/RSAPublicKey;

    return-object v7
.end method

.method public static encode(Ljava/security/interfaces/RSAPublicKey;)[B
    .locals 7
    .param p0, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x100

    .line 183
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    array-length v4, v4

    if-ge v4, v6, :cond_0

    .line 184
    new-instance v4, Ljava/security/InvalidKeyException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid key length "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v6

    invoke-virtual {v6}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 187
    :cond_0
    const/16 v4, 0x20c

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 189
    .local v0, "keyStruct":Ljava/nio/ByteBuffer;
    const/16 v4, 0x40

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 192
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v2

    .line 193
    .local v2, "r32":Ljava/math/BigInteger;
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 194
    .local v1, "n0inv":Ljava/math/BigInteger;
    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->modInverse(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 195
    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 196
    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v4

    invoke-static {v6, v4}, Lio/github/muntashirakon/adb/AndroidPubkey;->BigEndianToLittleEndianPadded(ILjava/math/BigInteger;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 202
    sget-object v4, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    const/16 v5, 0x800

    invoke-virtual {v4, v5}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v3

    .line 203
    .local v3, "rr":Ljava/math/BigInteger;
    const-wide/16 v4, 0x2

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 204
    invoke-static {v6, v3}, Lio/github/muntashirakon/adb/AndroidPubkey;->BigEndianToLittleEndianPadded(ILjava/math/BigInteger;)[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 207
    invoke-interface {p0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->intValue()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 209
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4
.end method

.method public static encodeWithName(Ljava/security/interfaces/RSAPublicKey;Ljava/lang/String;)[B
    .locals 4
    .param p0, "publicKey"    # Ljava/security/interfaces/RSAPublicKey;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    .prologue
    .line 107
    const-wide v2, 0x4065d55555555555L    # 174.66666666666666

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    mul-int/lit8 v1, v2, 0x4

    .line 108
    .local v1, "pkeySize":I
    new-instance v0, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;-><init>(I)V

    .line 109
    .local v0, "bos":Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;
    :try_start_0
    invoke-static {p0}, Lio/github/muntashirakon/adb/AndroidPubkey;->encode(Ljava/security/interfaces/RSAPublicKey;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/bouncycastle/util/encoders/Base64;->encode([B)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;->write([B)V

    .line 110
    invoke-static {p1}, Lio/github/muntashirakon/adb/AndroidPubkey;->getUserInfo(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;->write([B)V

    .line 111
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 112
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;->close()V

    .line 111
    return-object v2

    .line 108
    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v0}, Lio/github/muntashirakon/adb/ByteArrayNoThrowOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    throw v2

    :catch_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static fitsInBytes([BII)Z
    .locals 3
    .param p0, "bytes"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "num_bytes"    # I
    .param p2, "len"    # I

    .prologue
    .line 228
    const/4 v1, 0x0

    .line 229
    .local v1, "mask":B
    move v0, p2

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 230
    aget-byte v2, p0, v0

    or-int/2addr v2, v1

    int-to-byte v1, v2

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static getUserInfo(Ljava/lang/String;)[B
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 119
    const-string v0, " %s\u0000"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UTF-8"

    invoke-static {v0, v1}, Lio/github/muntashirakon/adb/StringCompat;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private static swapEndianness([B)[B
    .locals 4
    .param p0, "bytes"    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 237
    array-length v1, p0

    .line 238
    .local v1, "len":I
    new-array v2, v1, [B

    .line 239
    .local v2, "out":[B
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 240
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p0, v3

    aput-byte v3, v2, v0

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 242
    :cond_0
    return-object v2
.end method
