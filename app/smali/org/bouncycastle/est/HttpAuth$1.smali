.class Lorg/bouncycastle/est/HttpAuth$1;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/est/ESTHijacker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/est/HttpAuth;->applyAuth(Lorg/bouncycastle/est/ESTRequestBuilder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bouncycastle/est/HttpAuth;


# direct methods
.method constructor <init>(Lorg/bouncycastle/est/HttpAuth;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hijack(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)Lorg/bouncycastle/est/ESTResponse;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v6, 0x191

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v0, Lorg/bouncycastle/est/ESTResponse;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/est/ESTResponse;-><init>(Lorg/bouncycastle/est/ESTRequest;Lorg/bouncycastle/est/Source;)V

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->getStatusCode()I

    move-result v1

    if-ne v1, v6, :cond_1

    const-string v1, "WWW-Authenticate"

    invoke-virtual {v0, v1}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Lorg/bouncycastle/est/ESTException;

    const-string v1, "Status of 401 but no WWW-Authenticate header"

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "digest"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1, v0}, Lorg/bouncycastle/est/HttpAuth;->access$000(Lorg/bouncycastle/est/HttpAuth;Lorg/bouncycastle/est/ESTResponse;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const-string v2, "basic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTResponse;->close()V

    const-string v1, "Basic"

    const-string v2, "WWW-Authenticate"

    invoke-virtual {v0, v2}, Lorg/bouncycastle/est/ESTResponse;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/bouncycastle/est/HttpUtil;->splitCSL(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "realm"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/bouncycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Supplied realm \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v3}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' does not match server realm \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "realm"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v4, v6, v4}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILjava/io/InputStream;)V

    throw v1

    :cond_3
    new-instance v0, Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-direct {v0, p1}, Lorg/bouncycastle/est/ESTRequestBuilder;-><init>(Lorg/bouncycastle/est/ESTRequest;)V

    invoke-virtual {v0, v4}, Lorg/bouncycastle/est/ESTRequestBuilder;->withHijacker(Lorg/bouncycastle/est/ESTHijacker;)Lorg/bouncycastle/est/ESTRequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    const-string v1, "WWW-Authenticate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Basic realm=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v3}, Lorg/bouncycastle/est/HttpAuth;->access$100(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    :cond_4
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "User must not contain a \':\'"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v1, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v1}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$300(Lorg/bouncycastle/est/HttpAuth;)[C

    move-result-object v2

    array-length v2, v2

    add-int/2addr v1, v2

    new-array v1, v1, [C

    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v3}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v2, v5, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x3a

    aput-char v3, v1, v2

    iget-object v2, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v2}, Lorg/bouncycastle/est/HttpAuth;->access$300(Lorg/bouncycastle/est/HttpAuth;)[C

    move-result-object v2

    iget-object v3, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v3}, Lorg/bouncycastle/est/HttpAuth;->access$200(Lorg/bouncycastle/est/HttpAuth;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lorg/bouncycastle/est/HttpAuth$1;->this$0:Lorg/bouncycastle/est/HttpAuth;

    invoke-static {v4}, Lorg/bouncycastle/est/HttpAuth;->access$300(Lorg/bouncycastle/est/HttpAuth;)[C

    move-result-object v4

    array-length v4, v4

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v2, "Authorization"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Basic "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lorg/bouncycastle/util/Strings;->toByteArray([C)[B

    move-result-object v4

    invoke-static {v4}, Lorg/bouncycastle/util/encoders/Base64;->toBase64String([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/est/ESTRequestBuilder;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/est/ESTRequestBuilder;

    invoke-virtual {p1}, Lorg/bouncycastle/est/ESTRequest;->getClient()Lorg/bouncycastle/est/ESTClient;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/est/ESTRequestBuilder;->build()Lorg/bouncycastle/est/ESTRequest;

    move-result-object v0

    invoke-interface {v2, v0}, Lorg/bouncycastle/est/ESTClient;->doRequest(Lorg/bouncycastle/est/ESTRequest;)Lorg/bouncycastle/est/ESTResponse;

    move-result-object v0

    invoke-static {v1, v5}, Lorg/bouncycastle/util/Arrays;->fill([CC)V

    goto/16 :goto_0

    :cond_6
    new-instance v0, Lorg/bouncycastle/est/ESTException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown auth mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/est/ESTException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
