.class public Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final SHA256:Ljava/lang/String; = "SHA256"

.field public static final SHA512:Ljava/lang/String; = "SHA512"

.field public static final SHAKE128:Ljava/lang/String; = "SHAKE128"

.field public static final SHAKE256:Ljava/lang/String; = "SHAKE256"

.field public static final XMSSMT_SHA2_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHA2_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

.field public static final XMSSMT_SHAKE_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;


# instance fields
.field private final height:I

.field private final layers:I

.field private final treeDigest:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/16 v7, 0x14

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v4, 0x3c

    const/16 v3, 0x28

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA256"

    invoke-direct {v0, v7, v5, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA256"

    invoke-direct {v0, v7, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA256"

    invoke-direct {v0, v3, v5, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA256"

    invoke-direct {v0, v3, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v1, 0x8

    const-string v2, "SHA256"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v1, 0x3

    const-string v2, "SHA256"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v1, 0x6

    const-string v2, "SHA256"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v1, 0xc

    const-string v2, "SHA256"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA512"

    invoke-direct {v0, v7, v5, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA512"

    invoke-direct {v0, v7, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA512"

    invoke-direct {v0, v3, v5, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHA512"

    invoke-direct {v0, v3, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v1, 0x8

    const-string v2, "SHA512"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v1, 0x3

    const-string v2, "SHA512"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v1, 0x6

    const-string v2, "SHA512"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v1, 0xc

    const-string v2, "SHA512"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHA2_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE128"

    invoke-direct {v0, v7, v5, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE128"

    invoke-direct {v0, v7, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE128"

    invoke-direct {v0, v3, v5, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d2_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE128"

    invoke-direct {v0, v3, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d4_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v1, 0x8

    const-string v2, "SHAKE128"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d8_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v1, 0x3

    const-string v2, "SHAKE128"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d3_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v1, 0x6

    const-string v2, "SHAKE128"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d6_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v1, 0xc

    const-string v2, "SHAKE128"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d12_256:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE256"

    invoke-direct {v0, v7, v5, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE256"

    invoke-direct {v0, v7, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_20d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE256"

    invoke-direct {v0, v3, v5, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d2_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const-string v1, "SHAKE256"

    invoke-direct {v0, v3, v6, v1}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d4_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v1, 0x8

    const-string v2, "SHAKE256"

    invoke-direct {v0, v3, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_40d8_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v1, 0x3

    const-string v2, "SHAKE256"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d3_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/4 v1, 0x6

    const-string v2, "SHAKE256"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d6_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    new-instance v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    const/16 v1, 0xc

    const-string v2, "SHAKE256"

    invoke-direct {v0, v4, v1, v2}, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;-><init>(IILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->XMSSMT_SHAKE_60d12_512:Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    iput p2, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    iput-object p3, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->height:I

    return v0
.end method

.method public getLayers()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->layers:I

    return v0
.end method

.method public getTreeDigest()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/pqc/jcajce/spec/XMSSMTParameterSpec;->treeDigest:Ljava/lang/String;

    return-object v0
.end method
