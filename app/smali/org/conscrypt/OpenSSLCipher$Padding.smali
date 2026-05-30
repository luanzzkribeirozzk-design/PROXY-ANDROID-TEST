.class final enum Lorg/conscrypt/OpenSSLCipher$Padding;
.super Ljava/lang/Enum;
.source "OpenSSLCipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Padding"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/conscrypt/OpenSSLCipher$Padding;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/OpenSSLCipher$Padding;

.field public static final enum NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

.field public static final enum PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

.field public static final enum PKCS7PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 81
    new-instance v0, Lorg/conscrypt/OpenSSLCipher$Padding;

    const-string v1, "NOPADDING"

    invoke-direct {v0, v1, v2}, Lorg/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 82
    new-instance v0, Lorg/conscrypt/OpenSSLCipher$Padding;

    const-string v1, "PKCS5PADDING"

    invoke-direct {v0, v1, v3}, Lorg/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 83
    new-instance v0, Lorg/conscrypt/OpenSSLCipher$Padding;

    const-string v1, "PKCS7PADDING"

    invoke-direct {v0, v1, v4}, Lorg/conscrypt/OpenSSLCipher$Padding;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS7PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 80
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/conscrypt/OpenSSLCipher$Padding;

    sget-object v1, Lorg/conscrypt/OpenSSLCipher$Padding;->NOPADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    aput-object v1, v0, v2

    sget-object v1, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    aput-object v1, v0, v3

    sget-object v1, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS7PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    aput-object v1, v0, v4

    sput-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lorg/conscrypt/OpenSSLCipher$Padding;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getNormalized(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Padding;
    .locals 2
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 87
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/conscrypt/OpenSSLCipher$Padding;->valueOf(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Padding;

    move-result-object v0

    .line 88
    .local v0, "p":Lorg/conscrypt/OpenSSLCipher$Padding;
    sget-object v1, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS7PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    if-ne v0, v1, :cond_0

    .line 89
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->PKCS5PADDING:Lorg/conscrypt/OpenSSLCipher$Padding;

    .line 91
    .end local v0    # "p":Lorg/conscrypt/OpenSSLCipher$Padding;
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/OpenSSLCipher$Padding;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 80
    const-class v0, Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method

.method public static values()[Lorg/conscrypt/OpenSSLCipher$Padding;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lorg/conscrypt/OpenSSLCipher$Padding;->$VALUES:[Lorg/conscrypt/OpenSSLCipher$Padding;

    invoke-virtual {v0}, [Lorg/conscrypt/OpenSSLCipher$Padding;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/OpenSSLCipher$Padding;

    return-object v0
.end method
