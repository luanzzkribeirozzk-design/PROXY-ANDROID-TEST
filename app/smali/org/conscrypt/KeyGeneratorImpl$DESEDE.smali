.class public final Lorg/conscrypt/KeyGeneratorImpl$DESEDE;
.super Lorg/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DESEDE"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 125
    const-string v0, "DESEDE"

    const/16 v1, 0xc0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILorg/conscrypt/KeyGeneratorImpl$1;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected checkKeySize(I)V
    .locals 2
    .param p1, "keySize"    # I

    .prologue
    .line 130
    const/16 v0, 0x70

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa8

    if-eq p1, v0, :cond_0

    .line 131
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key size must be either 112 or 168 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    return-void
.end method

.method protected doKeyGeneration(I)[B
    .locals 5
    .param p1, "keyBytes"    # I

    .prologue
    .line 137
    const/16 v2, 0x18

    new-array v1, v2, [B

    .line 138
    .local v1, "keyData":[B
    iget-object v2, p0, Lorg/conscrypt/KeyGeneratorImpl$DESEDE;->secureRandom:Ljava/security/SecureRandom;

    invoke-virtual {v2, v1}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 141
    aget-byte v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    .line 142
    aget-byte v2, v1, v0

    xor-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_1
    const/16 v2, 0xe

    if-ne p1, v2, :cond_2

    .line 147
    const/4 v2, 0x0

    const/16 v3, 0x10

    const/16 v4, 0x8

    invoke-static {v1, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    :cond_2
    return-object v1
.end method
