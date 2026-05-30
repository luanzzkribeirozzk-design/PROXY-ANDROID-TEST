.class public Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final frodokem1344aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem1344shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem640aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem640shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem976aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field public static final frodokem976shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

.field private static parameters:Ljava/util/Map;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem640aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem640shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem640shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem976aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem976shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem976shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344aes:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem1344aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    sget-object v1, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->frodokem1344shake:Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;

    invoke-direct {v0, v1}, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;-><init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem1344shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem19888r3"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem640aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem19888shaker3"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem640shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem31296r3"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem976aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem31296shaker3"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem976shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem43088r3"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem1344aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem43088shaker3"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem1344shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem640aes"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem640aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem640shake"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem640shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem976aes"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem976aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem976shake"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem976shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem1344aes"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem1344aes:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    const-string v1, "frodokem1344shake"

    sget-object v2, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->frodokem1344shake:Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lorg/bouncycastle/pqc/crypto/frodo/FrodoParameters;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromName(Ljava/lang/String;)Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;
    .locals 2

    sget-object v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->parameters:Ljava/util/Map;

    invoke-static {p0}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/FrodoParameterSpec;->name:Ljava/lang/String;

    return-object v0
.end method
