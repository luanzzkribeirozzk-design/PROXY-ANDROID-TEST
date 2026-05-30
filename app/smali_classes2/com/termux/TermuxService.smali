.class public Lcom/termux/TermuxService;
.super Landroid/app/Service;
.source "Dex2C"


# static fields
.field private static final YK3W0PL8J2RV:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x60

    const-class v1, Lcom/termux/TermuxService;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_96_40(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public native onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end method

.method public native onCreate()V
.end method

.method public native onStartCommand(Landroid/content/Intent;II)I
.end method
