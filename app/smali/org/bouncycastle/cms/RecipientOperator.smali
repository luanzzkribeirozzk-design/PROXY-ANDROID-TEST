.class public Lorg/bouncycastle/cms/RecipientOperator;
.super Ljava/lang/Object;


# instance fields
.field private final operator:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lorg/bouncycastle/operator/InputDecryptor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/operator/MacCalculator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getAADStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/operator/InputAEADDecryptor;

    invoke-interface {v0}, Lorg/bouncycastle/operator/InputAEADDecryptor;->getAADStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/operator/InputDecryptor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/operator/InputDecryptor;

    invoke-interface {v0, p1}, Lorg/bouncycastle/operator/InputDecryptor;->getInputStream(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lorg/bouncycastle/util/io/TeeInputStream;

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/operator/MacCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lorg/bouncycastle/util/io/TeeInputStream;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/operator/MacCalculator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/operator/MacCalculator;

    invoke-interface {v0}, Lorg/bouncycastle/operator/MacCalculator;->getMac()[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/operator/InputAEADDecryptor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    check-cast v0, Lorg/bouncycastle/operator/InputAEADDecryptor;

    invoke-interface {v0}, Lorg/bouncycastle/operator/InputAEADDecryptor;->getMAC()[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAEADBased()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/operator/InputAEADDecryptor;

    return v0
.end method

.method public isMacBased()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/cms/RecipientOperator;->operator:Ljava/lang/Object;

    instance-of v0, v0, Lorg/bouncycastle/operator/MacCalculator;

    return v0
.end method
