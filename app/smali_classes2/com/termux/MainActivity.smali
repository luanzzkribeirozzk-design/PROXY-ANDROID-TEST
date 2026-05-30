.class public Lcom/termux/MainActivity;
.super Landroid/app/Activity;
.source "Dex2C"


# static fields
.field private static final FJN9U5OQHXLE6SA:I = -0x10bbbc

.field private static final FXZ2OTOTGUNP:I = -0x154cf8

.field private static final IA1NX8F37M3DWINK:I = -0x81dd32

.field private static final MMLOPIFQY78F5M0:I = -0x1000000

.field private static final MW4DIJ0HGHJSL:I = 0x40ffffff

.field private static final SVNYZVZY0X8F:I = -0xdd3aa2

.field private static final TYVI7ZMDN2Q8:I = -0x33000001

.field private static final XL6LCHBK40F1FJT:I = -0x57aa09

.field private static final XNXYNJ3LVF7F4UZC:I = -0xf5f5f6


# instance fields
.field private AJ0JE4QVZFV8YU5:[Landroid/view/View;

.field private BEPSOF1GG2KTBCUD:[Z

.field private BL472RL15F4W0VUG:I

.field private D3HJ5S6R044P3:Landroid/widget/TextView;

.field private DELTA_USER_ET:Landroid/widget/EditText;

.field private DELTA_VALIDITY_TEXT:Ljava/lang/String;

.field private EO3Q3QA3S8KE2WT1:Landroid/widget/LinearLayout;

.field private EYM6IER0V6RAST5J:Landroid/widget/TextView;

.field private I6852FC1UQBFOBR:Ljava/lang/String;

.field private J25HBPKT9A90F:Z

.field private J442VLDQ4HEZ5EDJ:Ljava/lang/Runnable;

.field private K05SZ9C3FUQUH:I

.field private LX1JP70LKLFYP5:Landroid/widget/FrameLayout;

.field private N7K2M9X4P1:Ljava/lang/String;

.field private NTDGNNQFKPL9EKA0:Ljava/lang/String;

.field private OTMY4GPYWSSBZR:Landroid/view/View;

.field private P9X3K7M2N8:Ljava/lang/Runnable;

.field private Q3K7N9M2_SIDEBAR_PAGE:I

.field private QA830DM7X52DNR9:I

.field private R4WV98Y3UMPYO0C:Landroid/view/View;

.field private SD5SOWOMQIGC:Landroid/os/Handler;

.field private UJRJEDKTS2H3T:Ljava/lang/String;

.field private V3K8N2M7_CLEANING:Z

.field private W4SCOSS3EOQM1H8:Ljava/lang/String;

.field private W5K3N7M2_CONNECT_MODE:I

.field private W8IRCD9SI5GA:Ljava/lang/Runnable;

.field private X4YYJ5CI6VG2G7:[Landroid/view/View;

.field private Z8K3N7M2P9:Z

.field private Z9_ADB_RECEIVER:Landroid/content/BroadcastReceiver;

.field private ZTFPH90O7Y22T:Z


# direct methods
.method public static native synthetic $r8$lambda$6Chnkc_T73Y0pvlkNXuKNpPvuuA(Lcom/termux/MainActivity;)V
.end method

.method public static native synthetic $r8$lambda$nDLnY9yhKlzBmSpsEPd1C86wVe8(Lcom/termux/MainActivity;)V
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x57

    const-class v1, Lcom/termux/MainActivity;

    invoke-static {v0, v1}, LDRIR0/Dex2C;->registerNativesForClass(ILjava/lang/Class;)V

    invoke-static {v1}, LDRIR0/hidden/Hidden0;->special_clinit_87_20(Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/MainActivity;->ZTFPH90O7Y22T:Z

    const-string v1, ""

    invoke-static {v1}, Lorg/conscrypt/AbstractConscryptEngine2;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/termux/MainActivity;->NTDGNNQFKPL9EKA0:Ljava/lang/String;

    iput-object v1, p0, Lcom/termux/MainActivity;->W4SCOSS3EOQM1H8:Ljava/lang/String;

    iput-object v1, p0, Lcom/termux/MainActivity;->UJRJEDKTS2H3T:Ljava/lang/String;

    iput-object v1, p0, Lcom/termux/MainActivity;->I6852FC1UQBFOBR:Ljava/lang/String;

    iput-object v1, p0, Lcom/termux/MainActivity;->DELTA_VALIDITY_TEXT:Ljava/lang/String;

    iput v0, p0, Lcom/termux/MainActivity;->BL472RL15F4W0VUG:I

    iput v0, p0, Lcom/termux/MainActivity;->K05SZ9C3FUQUH:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/termux/MainActivity;->QA830DM7X52DNR9:I

    iput-boolean v0, p0, Lcom/termux/MainActivity;->J25HBPKT9A90F:Z

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/termux/MainActivity;->SD5SOWOMQIGC:Landroid/os/Handler;

    const/4 v2, 0x4

    new-array v3, v2, [Landroid/view/View;

    iput-object v3, p0, Lcom/termux/MainActivity;->X4YYJ5CI6VG2G7:[Landroid/view/View;

    new-array v3, v2, [Landroid/view/View;

    iput-object v3, p0, Lcom/termux/MainActivity;->AJ0JE4QVZFV8YU5:[Landroid/view/View;

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/termux/MainActivity;->BEPSOF1GG2KTBCUD:[Z

    iput-object v1, p0, Lcom/termux/MainActivity;->N7K2M9X4P1:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/termux/MainActivity;->Z8K3N7M2P9:Z

    iput-boolean v0, p0, Lcom/termux/MainActivity;->V3K8N2M7_CLEANING:Z

    iput v0, p0, Lcom/termux/MainActivity;->Q3K7N9M2_SIDEBAR_PAGE:I

    iput v0, p0, Lcom/termux/MainActivity;->W5K3N7M2_CONNECT_MODE:I

    return-void
.end method

.method private native A7K3N9M2R5()Ljava/lang/String;
.end method

.method private native AHQLQCG1WU16HY(I)Landroid/widget/FrameLayout;
.end method

.method private native AQ6L6GT6MJXK87A(Ljava/lang/String;)V
.end method

.method private native ARPOIG8F1CBF()Ljava/lang/String;
.end method

.method private native B2K8N4M6R3()Ljava/lang/String;
.end method

.method private native B3K7N2M9X1(I)Ljava/lang/String;
.end method

.method private native B8AFPK054NZD(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native C6PR5N8I4P40MG(Ljava/lang/String;)V
.end method

.method private native C8K4N6M2P5()Ljava/lang/String;
.end method

.method private native CR2P3YVB5UL5N(Ljava/lang/String;)V
.end method

.method private native CYY37Q9AH8RVHS1K()Ljava/lang/String;
.end method

.method private native D1X3J1L7R8431RU(Ljava/lang/String;I)V
.end method

.method private native D2K7N9M1P4()Ljava/lang/String;
.end method

.method private native DEJ8CX9J1ICT()Landroid/view/View;
.end method

.method private native DELTA_IS_EXPIRED()Z
.end method

.method private native DELTA_SET_LOGIN_OK(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static native E3K7N9M2P5(I)Ljava/lang/String;
.end method

.method private native F3YR9OUDOCUZR(Ljava/lang/String;)Z
.end method

.method private native F8K3N7M2P9()V
.end method

.method private native FEEPZHPCF07U()V
.end method

.method private native FKDJ8M3N7P1()Ljava/lang/String;
.end method

.method private native FV0PRKGYC4OM()Landroid/view/View;
.end method

.method private native G5K8N3M2P7(I)Ljava/lang/String;
.end method

.method private native G6QIWEPXSK28T7A9(Landroid/widget/TextView;I)V
.end method

.method private native GM82I1LR3PE29()V
.end method

.method private native GN4R7SGMSOXLT(F)I
.end method

.method private native GQC1A78MX1EVUHT6(I)V
.end method

.method private native GUN5Z3JQIP98(Ljava/lang/String;)Z
.end method

.method private native GUPQZIT3UEA3GE()V
.end method

.method private native H2K9N3M7P4()V
.end method

.method private native H6B9M80O2RAK1(I)Ljava/lang/String;
.end method

.method private native HEVB9OOAEDOEC(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;Landroid/widget/TextView;)V
.end method

.method private native HMBJPI4HN3QX(Ljava/lang/String;)Landroid/widget/LinearLayout;
.end method

.method private native IJNVGFYGWWQC38()I
.end method

.method private native IVU8FIJOYJNE0(Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;)Landroid/view/View;
.end method

.method private native J4K9N1M3P8(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native J6VFPTOMJBCP()V
.end method

.method private native JSN1U322N64K(IZ)V
.end method

.method private native K5BHXTPDPFF5E8II()Ljava/lang/String;
.end method

.method private native K830DN0YBY4AWTY()V
.end method

.method private native L6K2N8M4P3()Ljava/lang/String;
.end method

.method private native LTOOBMZVRERW6Z8(ILjava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end method

.method private native MAYQ3S195JMSN()V
.end method

.method private native MF9SXMECOSFO()Ljava/lang/String;
.end method

.method private native MR3XKXWNREK8(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native N3K7M9X2P5_SWITCH_PAGE(I)V
.end method

.method private native OD9PH3I379U26192()V
.end method

.method private native P4K8N6M3R1()Ljava/lang/String;
.end method

.method private native P5R8K3N7M4()I
.end method

.method private native PQDF1RCAVIQK2919()V
.end method

.method private native Q7R2M9K3N8()J
.end method

.method private native Q9R4K7N1M3(I)Ljava/lang/String;
.end method

.method private native QW19VW3RTQOHMUH8()V
.end method

.method private native R7K3M9N2X5(I)Ljava/lang/String;
.end method

.method private native R8O5OR15BYVZK3I(Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end method

.method private native RBZBF1I3LDQYUN3U()V
.end method

.method private native RKQ71N8MTZX272H()V
.end method

.method private native S8DUDD467KD6()V
.end method

.method private native T4N8K2M7P1(I)Ljava/lang/String;
.end method

.method private native T6K9N2M4R8(Ljava/lang/String;)Z
.end method

.method private native TE30MY5ZPJAG1OL(I)V
.end method

.method private native U3K7N5M9R2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native U9K3M7N1P5(I)Ljava/lang/String;
.end method

.method private native V0UZS9IM0YLTZ9(Z)V
.end method

.method private native V1W103DGDZVG()V
.end method

.method private native V7R3K9M1N5()Z
.end method

.method private native V8K2N4M1P9(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native V9R4K7N1M3_L()Landroid/view/View;
.end method

.method private native VGIQHG9JRSNVNQ()V
.end method

.method private native W452BFSOZPTX4()V
.end method

.method private native W4X8M1K9P3(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native W7R3K8N4M2(I)Ljava/lang/String;
.end method

.method private native W9Q3R7K2N8(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native WTHCW81XE6VA0()Landroid/widget/FrameLayout;
.end method

.method private native X2K9P5M8N1()Ljava/lang/String;
.end method

.method private native X42QPR75PR2ES()Landroid/widget/LinearLayout;
.end method

.method private native X6R2K9N3M7()I
.end method

.method private native X8R3K7N2M4(Ljava/net/HttpURLConnection;)Z
.end method

.method private native Y2K8N3M5P1(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native YYR0QF4B8DWOEC()V
.end method

.method private native Z3M7K1N9P5(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native Z8K3N7M2P9_BUILD_CONECTAR()Landroid/view/View;
.end method

.method private native Z8_BUILD_NOTIF_CONTENT(Landroid/widget/LinearLayout;Z)V
.end method

.method private native Z8_BUILD_SPLIT_CONTENT(Landroid/widget/LinearLayout;Z)V
.end method

.method private native ZCWNPGW90JPKL0()Landroid/view/View;
.end method

.method private native ZQVRR9A7MFP059()Ljava/io/File;
.end method

.method static native synthetic access$0(Lcom/termux/MainActivity;)Z
.end method

.method static native synthetic access$1(Lcom/termux/MainActivity;)V
.end method

.method static native synthetic access$10(Lcom/termux/MainActivity;F)I
.end method

.method static native synthetic access$11(Lcom/termux/MainActivity;Ljava/lang/String;)V
.end method

.method static native synthetic access$12(Lcom/termux/MainActivity;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method static native synthetic access$2(Lcom/termux/MainActivity;)Landroid/os/Handler;
.end method

.method static native synthetic access$3(Lcom/termux/MainActivity;Z)V
.end method

.method static native synthetic access$4(Lcom/termux/MainActivity;I)V
.end method

.method static native synthetic access$5(Lcom/termux/MainActivity;)V
.end method

.method static native synthetic access$6(Lcom/termux/MainActivity;)Z
.end method

.method static native synthetic access$7(Lcom/termux/MainActivity;)Ljava/lang/String;
.end method

.method static native synthetic access$8(Lcom/termux/MainActivity;Ljava/lang/String;)V
.end method

.method static native synthetic access$9(Lcom/termux/MainActivity;Landroid/widget/TextView;I)V
.end method

.method static native synthetic lambda$34(Landroid/view/View;Landroid/animation/ValueAnimator;)V
.end method

.method static native synthetic lambda$49(Landroid/widget/TextView;ILandroid/widget/FrameLayout;Landroid/view/View;)V
.end method

.method private static native t(Landroid/content/Context;)V
.end method


# virtual methods
.method public native DELTA_OPEN_WHATSAPP()V
.end method

.method native synthetic lambda$0$com-termux-MainActivity(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end method

.method native synthetic lambda$1$com-termux-MainActivity(Landroid/widget/TextView;Ljava/lang/Runnable;)V
.end method

.method native synthetic lambda$10$com-termux-MainActivity()V
.end method

.method native synthetic lambda$11$com-termux-MainActivity()V
.end method

.method native synthetic lambda$12$com-termux-MainActivity()V
.end method

.method native synthetic lambda$13$com-termux-MainActivity()V
.end method

.method native synthetic lambda$14$com-termux-MainActivity()V
.end method

.method native synthetic lambda$15$com-termux-MainActivity(Landroid/widget/EditText;Landroid/view/View;Z)V
.end method

.method native synthetic lambda$16$com-termux-MainActivity(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;)V
.end method

.method native synthetic lambda$17$com-termux-MainActivity(Ljava/lang/String;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
.end method

.method native synthetic lambda$18$com-termux-MainActivity(Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
.end method

.method native synthetic lambda$19$com-termux-MainActivity(Landroid/widget/LinearLayout;)V
.end method

.method native synthetic lambda$2$com-termux-MainActivity(Landroid/widget/TextView;Ljava/lang/Runnable;)V
.end method

.method native synthetic lambda$21$com-termux-MainActivity(Landroid/view/View;)V
.end method

.method native synthetic lambda$22$com-termux-MainActivity()V
.end method

.method native synthetic lambda$23$com-termux-MainActivity(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Z)V
.end method

.method native synthetic lambda$24$com-termux-MainActivity([Ljava/lang/Runnable;Landroid/view/View;)V
.end method

.method native synthetic lambda$25$com-termux-MainActivity([Ljava/lang/Runnable;Landroid/view/View;)V
.end method

.method native synthetic lambda$26$com-termux-MainActivity(Landroid/widget/EditText;Landroid/view/View;Z)V
.end method

.method native synthetic lambda$27$com-termux-MainActivity(Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/view/View;)V
.end method

.method native synthetic lambda$28$com-termux-MainActivity(Landroid/widget/TextView;Landroid/view/View;)V
.end method

.method native synthetic lambda$29$com-termux-MainActivity(Landroid/view/View;)V
.end method

.method native synthetic lambda$3$com-termux-MainActivity(Landroid/widget/TextView;Ljava/lang/Runnable;)V
.end method

.method native synthetic lambda$30$com-termux-MainActivity(Landroid/view/View;)V
.end method

.method native synthetic lambda$31$com-termux-MainActivity(ILandroid/view/View;)V
.end method

.method native synthetic lambda$32$com-termux-MainActivity(ILandroid/view/View;)V
.end method

.method native synthetic lambda$33$com-termux-MainActivity()V
.end method

.method native synthetic lambda$35$com-termux-MainActivity(I)V
.end method

.method native synthetic lambda$36$com-termux-MainActivity()V
.end method

.method native synthetic lambda$37$com-termux-MainActivity()V
.end method

.method native synthetic lambda$38$com-termux-MainActivity()V
.end method

.method native synthetic lambda$39$com-termux-MainActivity()V
.end method

.method native synthetic lambda$4$com-termux-MainActivity(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/Runnable;)V
.end method

.method native synthetic lambda$40$com-termux-MainActivity()V
.end method

.method native synthetic lambda$41$com-termux-MainActivity()V
.end method

.method native synthetic lambda$42$com-termux-MainActivity(Landroid/content/Intent;)V
.end method

.method native synthetic lambda$43$com-termux-MainActivity()V
.end method

.method native synthetic lambda$44$com-termux-MainActivity()V
.end method

.method native synthetic lambda$45$com-termux-MainActivity(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;Landroid/view/View;)V
.end method

.method native synthetic lambda$46$com-termux-MainActivity(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/FrameLayout;Landroid/view/View;)V
.end method

.method native synthetic lambda$47$com-termux-MainActivity(Landroid/widget/TextView;Landroid/widget/TextView;)V
.end method

.method native synthetic lambda$48$com-termux-MainActivity(Landroid/widget/TextView;Landroid/widget/TextView;)V
.end method

.method native synthetic lambda$5$com-termux-MainActivity(Landroid/widget/TextView;Ljava/lang/Runnable;)V
.end method

.method native synthetic lambda$50$com-termux-MainActivity(Landroid/widget/TextView;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;)V
.end method

.method native synthetic lambda$51$com-termux-MainActivity(Landroid/widget/TextView;Landroid/widget/TextView;)V
.end method

.method native synthetic lambda$52$com-termux-MainActivity(Landroid/view/View;)V
.end method

.method native synthetic lambda$53$com-termux-MainActivity(Landroid/view/View;)V
.end method

.method native synthetic lambda$54$com-termux-MainActivity(Landroid/view/View;)V
.end method

.method native synthetic lambda$55$com-termux-MainActivity(Landroid/view/View;)V
.end method

.method native synthetic lambda$56$com-termux-MainActivity(Landroid/view/View;)V
.end method

.method native synthetic lambda$58$com-termux-MainActivity(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;)V
.end method

.method native synthetic lambda$59$com-termux-MainActivity(Landroid/view/View;Landroid/widget/LinearLayout;Landroid/view/View;)V
.end method

.method native synthetic lambda$6$com-termux-MainActivity(Ljava/lang/String;)V
.end method

.method native synthetic lambda$60$com-termux-MainActivity()V
.end method

.method native synthetic lambda$61$com-termux-MainActivity(Ljava/lang/String;I)V
.end method

.method native synthetic lambda$7$com-termux-MainActivity()V
.end method

.method native synthetic lambda$8$com-termux-MainActivity()V
.end method

.method native synthetic lambda$9$com-termux-MainActivity()V
.end method

.method protected native onCreate(Landroid/os/Bundle;)V
.end method

.method protected native onDestroy()V
.end method
