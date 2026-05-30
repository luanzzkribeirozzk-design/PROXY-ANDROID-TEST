.class Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;
.super Ljava/io/ObjectInputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CheckingStream"
.end annotation


# static fields
.field private static final components:Ljava/util/Set;


# instance fields
.field private found:Z

.field private final mainClass:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "java.util.TreeMap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "java.lang.Integer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "java.lang.Number"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "org.bouncycastle.pqc.crypto.xmss.BDS"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "java.util.ArrayList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "org.bouncycastle.pqc.crypto.xmss.XMSSNode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "[B"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "java.util.LinkedList"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "java.util.Stack"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "java.util.Vector"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "[Ljava.lang.Object;"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    const-string v1, "org.bouncycastle.pqc.crypto.xmss.BDSTreeHash"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->found:Z

    iput-object p1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->mainClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    iget-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->found:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->mainClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "unexpected class: "

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->found:Z

    :cond_1
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lorg/bouncycastle/pqc/crypto/xmss/XMSSUtil$CheckingStream;->components:Ljava/util/Set;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "unexpected class: "

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method
