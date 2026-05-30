.class final enum Lorg/conscrypt/SSLUtils$SessionType;
.super Ljava/lang/Enum;
.source "SSLUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/SSLUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SessionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/conscrypt/SSLUtils$SessionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/conscrypt/SSLUtils$SessionType;

.field public static final enum OPEN_SSL:Lorg/conscrypt/SSLUtils$SessionType;

.field public static final enum OPEN_SSL_WITH_OCSP:Lorg/conscrypt/SSLUtils$SessionType;

.field public static final enum OPEN_SSL_WITH_TLS_SCT:Lorg/conscrypt/SSLUtils$SessionType;


# instance fields
.field final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 75
    new-instance v0, Lorg/conscrypt/SSLUtils$SessionType;

    const-string v1, "OPEN_SSL"

    invoke-direct {v0, v1, v4, v2}, Lorg/conscrypt/SSLUtils$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL:Lorg/conscrypt/SSLUtils$SessionType;

    .line 80
    new-instance v0, Lorg/conscrypt/SSLUtils$SessionType;

    const-string v1, "OPEN_SSL_WITH_OCSP"

    invoke-direct {v0, v1, v2, v3}, Lorg/conscrypt/SSLUtils$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lorg/conscrypt/SSLUtils$SessionType;

    .line 85
    new-instance v0, Lorg/conscrypt/SSLUtils$SessionType;

    const-string v1, "OPEN_SSL_WITH_TLS_SCT"

    invoke-direct {v0, v1, v3, v5}, Lorg/conscrypt/SSLUtils$SessionType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lorg/conscrypt/SSLUtils$SessionType;

    .line 71
    new-array v0, v5, [Lorg/conscrypt/SSLUtils$SessionType;

    sget-object v1, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL:Lorg/conscrypt/SSLUtils$SessionType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lorg/conscrypt/SSLUtils$SessionType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lorg/conscrypt/SSLUtils$SessionType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/conscrypt/SSLUtils$SessionType;->$VALUES:[Lorg/conscrypt/SSLUtils$SessionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 88
    iput p3, p0, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    .line 89
    return-void
.end method

.method static isSupportedType(I)Z
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 92
    sget-object v0, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL:Lorg/conscrypt/SSLUtils$SessionType;

    iget v0, v0, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_OCSP:Lorg/conscrypt/SSLUtils$SessionType;

    iget v0, v0, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    if-eq p0, v0, :cond_0

    sget-object v0, Lorg/conscrypt/SSLUtils$SessionType;->OPEN_SSL_WITH_TLS_SCT:Lorg/conscrypt/SSLUtils$SessionType;

    iget v0, v0, Lorg/conscrypt/SSLUtils$SessionType;->value:I

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/conscrypt/SSLUtils$SessionType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 71
    const-class v0, Lorg/conscrypt/SSLUtils$SessionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/conscrypt/SSLUtils$SessionType;

    return-object v0
.end method

.method public static values()[Lorg/conscrypt/SSLUtils$SessionType;
    .locals 1

    .prologue
    .line 71
    sget-object v0, Lorg/conscrypt/SSLUtils$SessionType;->$VALUES:[Lorg/conscrypt/SSLUtils$SessionType;

    invoke-virtual {v0}, [Lorg/conscrypt/SSLUtils$SessionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/conscrypt/SSLUtils$SessionType;

    return-object v0
.end method
