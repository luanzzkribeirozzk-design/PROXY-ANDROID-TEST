.class public Lcom/termux/TermuxMain;
.super Lio/github/muntashirakon/adb/AbsAdbConnectionManager;
.source "Dex2C"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/TermuxMain$M8K3N7P2;
    }
.end annotation


# static fields
.field private static volatile ZHUM37T8C87C4:Lcom/termux/TermuxMain;


# instance fields
.field private Q9X2K7M3N8:Ljava/security/PrivateKey;

.field private R4K8N1M6P3:Ljava/security/cert/Certificate;

.field private V7M3K9N2X5:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x5b

    const-class v1, Lcom/termux/TermuxMain;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_91_00(Ljava/lang/Class;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lio/github/muntashirakon/adb/AbsAdbConnectionManager;-><init>()V

    iput-object p1, p0, Lcom/termux/TermuxMain;->V7M3K9N2X5:Landroid/content/Context;

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v0}, Lcom/termux/TermuxMain;->setApi(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/termux/TermuxMain;->H7K3N9M2P5(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/termux/TermuxMain;->H7K3N9M2P5(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v1}, Lorg/conscrypt/AbstractConscryptEngine2;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/termux/TermuxMain;->H7K3N9M2P5(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v3, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    const/16 v1, 0x18

    invoke-static {v1}, Lcom/termux/TermuxMain;->H7K3N9M2P5(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v1

    new-instance v2, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v2, v0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/TermuxMain;->Q9X2K7M3N8:Ljava/security/PrivateKey;

    const/16 v0, 0x19

    invoke-static {v0}, Lcom/termux/TermuxMain;->H7K3N9M2P5(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/TermuxMain;->R4K8N1M6P3:Ljava/security/cert/Certificate;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/termux/TermuxMain;->Q9X2K7M3N8:Ljava/security/PrivateKey;

    iput-object p1, p0, Lcom/termux/TermuxMain;->R4K8N1M6P3:Ljava/security/cert/Certificate;

    :cond_0
    :goto_1
    iget-object p1, p0, Lcom/termux/TermuxMain;->Q9X2K7M3N8:Ljava/security/PrivateKey;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/termux/TermuxMain;->R4K8N1M6P3:Ljava/security/cert/Certificate;

    if-nez p1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/termux/TermuxMain;->F8K3N7M2P9()V

    :cond_2
    return-void
.end method

.method private native F8K3N7M2P9()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private native G5K8N3M2P7()V
.end method

.method public static native GUN5Z3JQIP98()Z
.end method

.method static native H7K3N9M2P5(I)Ljava/lang/String;
.end method

.method public static native W3K9N7M2P8(Landroid/content/Context;)Lcom/termux/TermuxMain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public static native X5K2N8M4P1()Lcom/termux/TermuxMain;
.end method

.method static native synthetic lambda$1(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/CountDownLatch;Ljava/net/InetAddress;I)V
.end method


# virtual methods
.method public native F3YR9OUDOCUZR(Ljava/lang/String;)Z
.end method

.method public native J4K9N1M3P8(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method public native K7N3M9X2P5(Ljava/lang/String;Lcom/termux/TermuxMain$M8K3N7P2;)V
.end method

.method public native N8K3M7P2X5(Lcom/termux/TermuxMain$M8K3N7P2;)V
.end method

.method public native V8K2N4M1P9(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected native getCertificate()Ljava/security/cert/Certificate;
.end method

.method protected native getDeviceName()Ljava/lang/String;
.end method

.method protected native getPrivateKey()Ljava/security/PrivateKey;
.end method

.method native synthetic lambda$0$com-termux-TermuxMain(Lcom/termux/TermuxMain$M8K3N7P2;Ljava/lang/String;)V
.end method

.method native synthetic lambda$2$com-termux-TermuxMain(Lcom/termux/TermuxMain$M8K3N7P2;)V
.end method
