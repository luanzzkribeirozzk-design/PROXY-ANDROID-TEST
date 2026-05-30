.class Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/est/jcajce/ChannelBindingProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;->build()Lorg/bouncycastle/est/ESTService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;


# direct methods
.method constructor <init>(Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder$1;->this$0:Lorg/bouncycastle/est/jcajce/JsseESTServiceBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canAccessChannelBinding(Ljava/net/Socket;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChannelBinding(Ljava/net/Socket;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
