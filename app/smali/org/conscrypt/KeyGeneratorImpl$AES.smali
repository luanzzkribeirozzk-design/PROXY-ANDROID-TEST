.class public final Lorg/conscrypt/KeyGeneratorImpl$AES;
.super Lorg/conscrypt/KeyGeneratorImpl;
.source "KeyGeneratorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/KeyGeneratorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AES"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 155
    const-string v0, "AES"

    const/16 v1, 0x80

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/conscrypt/KeyGeneratorImpl;-><init>(Ljava/lang/String;ILorg/conscrypt/KeyGeneratorImpl$1;)V

    .line 156
    return-void
.end method


# virtual methods
.method protected checkKeySize(I)V
    .locals 2
    .param p1, "keySize"    # I

    .prologue
    .line 160
    const/16 v0, 0x80

    if-eq p1, v0, :cond_0

    const/16 v0, 0xc0

    if-eq p1, v0, :cond_0

    const/16 v0, 0x100

    if-eq p1, v0, :cond_0

    .line 161
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Key size must be either 128, 192, or 256 bits"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    return-void
.end method
