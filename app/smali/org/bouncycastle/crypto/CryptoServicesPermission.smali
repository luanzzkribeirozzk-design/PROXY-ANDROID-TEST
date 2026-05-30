.class public Lorg/bouncycastle/crypto/CryptoServicesPermission;
.super Ljava/security/Permission;


# static fields
.field public static final CONSTRAINTS:Ljava/lang/String; = "constraints"

.field public static final DEFAULT_RANDOM:Ljava/lang/String; = "defaultRandomConfig"

.field public static final GLOBAL_CONFIG:Ljava/lang/String; = "globalConfig"

.field public static final THREAD_LOCAL_CONFIG:Ljava/lang/String; = "threadLocalConfig"


# instance fields
.field private final actions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/security/Permission;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    iget-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object v1, p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getActions()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public implies(Ljava/security/Permission;)Z
    .locals 3

    const/4 v0, 0x1

    instance-of v1, p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    if-eqz v1, :cond_2

    check-cast p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/CryptoServicesPermission;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/CryptoServicesPermission;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    iget-object v2, p1, Lorg/bouncycastle/crypto/CryptoServicesPermission;->actions:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
