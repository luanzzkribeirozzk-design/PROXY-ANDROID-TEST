.class Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;
.super Ljava/lang/Object;


# static fields
.field private static final gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field private static final inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field private static final p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field private static final sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;


# instance fields
.field final fpr_bnorm_max:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_inv_2sqrsigma0:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_inv_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_mtwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_mtwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_onehalf:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_ptwo31:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_ptwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_ptwo63:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_ptwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_two:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

.field final fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3f7c48eb7e24169aL    # 0.006905479329594089

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v9

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3f7be50a548caed9L    # 0.006810226776717798

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v10

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3f7b852ee09e762cL    # 0.006718810191072271

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v11

    const/4 v1, 0x4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f7afc5ed3cada36L    # 0.006588335437007367

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f7a7b3b0976b3edL    # 0.00646517812076029

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f7a011282ca9c98L    # 0.0063486788828079

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f798d49ce5f2736L    # 0.006238258652908437

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f791f57c56ed9eeL    # 0.006133406502093026

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f78b6c2de64c7caL    # 0.006033669668157724

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f78531ef6311ae3L    # 0.005938645309533116

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3ff1dd380644568bL    # 1.1165085072329102

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v9

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3ff21d2edcad8626L    # 1.1321247692325271

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v10

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3ff25c46e1aa7c7aL    # 1.1475285353733669

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v11

    const/4 v1, 0x4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3ff2b95c574afb25L    # 1.170254078853483

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3ff314abc7fe22b6L    # 1.1925466358390344

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3ff36e4e3475d7c3L    # 1.214430050776614

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3ff3c65a66a1c224L    # 1.235926056771981

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3ff41ce5358cb3a0L    # 1.2570545284063215

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3ff47201bf1f7a75L    # 1.2778336969128337

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3ff4c5c19990c764L    # 1.298280334344292

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v0, 0x800

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v1, v6, v7}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v9

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, -0x8000000000000000L

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v10

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v11

    const/4 v1, 0x4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40195f619980c433L    # -0.7071067811865476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed906bcf328d46L    # 0.9238795325112867

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd87de2a6aea963L    # 0.3826834323650898

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4027821d5951569dL    # -0.3826834323650898

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed906bcf328d46L    # 0.9238795325112867

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd87de2a6aea963L    # 0.3826834323650898

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed906bcf328d46L    # 0.9238795325112867

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40126f9430cd72baL    # -0.9238795325112867

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd87de2a6aea963L    # 0.3826834323650898

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef6297cff75cb0L    # 0.9807852804032304

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc8f8b83c69a60bL    # 0.19509032201612828

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40370747c39659f5L    # -0.19509032201612828

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef6297cff75cb0L    # 0.9807852804032304

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1c73b39ae68c8L    # 0.5555702330196022

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea9b66290ea1a3L    # 0.8314696123025452

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40156499d6f15e5dL    # -0.8314696123025452

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1c73b39ae68c8L    # 0.5555702330196022

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea9b66290ea1a3L    # 0.8314696123025452

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1c73b39ae68c8L    # 0.5555702330196022

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401e38c4c6519738L    # -0.5555702330196022

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea9b66290ea1a3L    # 0.8314696123025452

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc8f8b83c69a60bL    # 0.19509032201612828

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef6297cff75cb0L    # 0.9807852804032304

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40109d683008a350L    # -0.9807852804032304

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc8f8b83c69a60bL    # 0.19509032201612828

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd88da3d12526L    # 0.9951847266721969

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb917a6bc29b42cL    # 0.0980171403295606

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4046e85943d64bd4L    # -0.0980171403295606

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd88da3d12526L    # 0.9951847266721969

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe44cf325091dd6L    # 0.6343932841636455

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8bc806b151741L    # 0.773010453362737

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4017437f94eae8bfL    # -0.773010453362737

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe44cf325091dd6L    # 0.6343932841636455

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec38b2f180bdb1L    # 0.881921264348355

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fde2b5d3806f63bL    # 0.47139673682599764

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4021d4a2c7f909c5L    # -0.47139673682599764

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec38b2f180bdb1L    # 0.881921264348355

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd294062ed59f06L    # 0.2902846772544624

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee9f4156c62ddaL    # 0.9569403357322088

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401160bea939d226L    # -0.9569403357322088

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd294062ed59f06L    # 0.2902846772544624

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee9f4156c62ddaL    # 0.9569403357322088

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd294062ed59f06L    # 0.2902846772544624

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402d6bf9d12a60faL    # -0.2902846772544624

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee9f4156c62ddaL    # 0.9569403357322088

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fde2b5d3806f63bL    # 0.47139673682599764

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec38b2f180bdb1L    # 0.881921264348355

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013c74d0e7f424fL    # -0.881921264348355

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fde2b5d3806f63bL    # 0.47139673682599764

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8bc806b151741L    # 0.773010453362737

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe44cf325091dd6L    # 0.6343932841636455

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401bb30cdaf6e22aL    # -0.6343932841636455

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8bc806b151741L    # 0.773010453362737

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb917a6bc29b42cL    # 0.0980171403295606

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd88da3d12526L    # 0.9951847266721969

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401027725c2edadaL    # -0.9951847266721969

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb917a6bc29b42cL    # 0.0980171403295606

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff621e3796d7eL    # 0.9987954562051724

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa91f65f10dd814L    # 0.049067674327418015

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4056e09a0ef227ecL    # -0.049067674327418015

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff621e3796d7eL    # 0.9987954562051724

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe57d69348ceca0L    # 0.6715589548470184

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7b5df226aafafL    # 0.7409511253549591

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40184a20dd955051L    # -0.7409511253549591

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe57d69348ceca0L    # 0.6715589548470184

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feced7af43cc773L    # 0.9039892931234433

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb5d1009e15cc0L    # 0.4275550934302821

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4024a2eff61ea340L    # -0.4275550934302821

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feced7af43cc773L    # 0.9039892931234433

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd58f9a75ab1fddL    # 0.33688985339222005

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee212104f686e5L    # 0.9415440651830208

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011dedefb09791bL    # -0.9415440651830208

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd58f9a75ab1fddL    # 0.33688985339222005

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef0a7efb9230d7L    # 0.970031253194544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcf19f97b215f1bL    # 0.2429801799032639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4030e60684dea0e5L    # -0.2429801799032639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef0a7efb9230d7L    # 0.970031253194544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe073879922ffeeL    # 0.5141027441932218

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb728345196e3eL    # 0.8577286100002721

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40148d7cbae691c2L    # -0.8577286100002721

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe073879922ffeeL    # 0.5141027441932218

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9b3e047f38741L    # 0.8032075314806449

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe30ff7fce17035L    # 0.5956993044924334

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401cf008031e8fcbL    # -0.5956993044924334

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9b3e047f38741L    # 0.8032075314806449

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc2c8106e8e613aL    # 0.14673047445536175

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefa7557f08a517L    # 0.989176509964781

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401058aa80f75ae9L    # -0.989176509964781

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc2c8106e8e613aL    # 0.14673047445536175

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefa7557f08a517L    # 0.989176509964781

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc2c8106e8e613aL    # 0.14673047445536175

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403d37ef91719ec6L    # -0.14673047445536175

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefa7557f08a517L    # 0.989176509964781

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe30ff7fce17035L    # 0.5956993044924334

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9b3e047f38741L    # 0.8032075314806449

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40164c1fb80c78bfL    # -0.8032075314806449

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe30ff7fce17035L    # 0.5956993044924334

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb728345196e3eL    # 0.8577286100002721

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe073879922ffeeL    # 0.5141027441932218

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401f8c7866dd0012L    # -0.5141027441932218

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb728345196e3eL    # 0.8577286100002721

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcf19f97b215f1bL    # 0.2429801799032639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef0a7efb9230d7L    # 0.970031253194544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010f581046dcf29L    # -0.970031253194544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcf19f97b215f1bL    # 0.2429801799032639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee212104f686e5L    # 0.9415440651830208

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd58f9a75ab1fddL    # 0.33688985339222005

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402a70658a54e023L    # -0.33688985339222005

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee212104f686e5L    # 0.9415440651830208

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb5d1009e15cc0L    # 0.4275550934302821

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feced7af43cc773L    # 0.9039892931234433

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401312850bc3388dL    # -0.9039892931234433

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb5d1009e15cc0L    # 0.4275550934302821

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7b5df226aafafL    # 0.7409511253549591

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe57d69348ceca0L    # 0.6715589548470184

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401a8296cb731360L    # -0.6715589548470184

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7b5df226aafafL    # 0.7409511253549591

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa91f65f10dd814L    # 0.049067674327418015

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff621e3796d7eL    # 0.9987954562051724

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401009de1c869282L    # -0.9987954562051724

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa91f65f10dd814L    # 0.049067674327418015

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffd886084cd0dL    # 0.9996988186962042

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f992155f7a3667eL    # 0.024541228522912288

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4066deaa085c9982L    # -0.024541228522912288

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffd886084cd0dL    # 0.9996988186962042

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe610b7551d2cdfL    # 0.6895405447370669

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe72d0837efff96L    # 0.7242470829514669

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4018d2f7c810006aL    # -0.7242470829514669

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe610b7551d2cdfL    # 0.6895405447370669

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed4134d14dc93aL    # 0.9142097557035307

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd9ef7943a8ed8aL    # 0.40524131400498986

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40261086bc571276L    # -0.40524131400498986

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed4134d14dc93aL    # 0.9142097557035307

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd7088530fa459fL    # 0.35989503653498817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feddb13b6ccc23cL    # 0.9329927988347388

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401224ec49333dc4L    # -0.9329927988347388

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd7088530fa459fL    # 0.35989503653498817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef38f3ac64e589L    # 0.9757021300385286

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcc0b826a7e4f63L    # 0.2191012401568698

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4033f47d9581b09dL    # -0.2191012401568698

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef38f3ac64e589L    # 0.9757021300385286

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe11eb3541b4b23L    # 0.5349976198870973

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb090a58150200L    # 0.8448535652497071

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4014f6f5a7eafe00L    # -0.8448535652497071

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe11eb3541b4b23L    # 0.5349976198870973

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea29a7a0462782L    # 0.8175848131515837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe26d054cdd12dfL    # 0.5758081914178453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401d92fab322ed21L    # -0.5758081914178453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea29a7a0462782L    # 0.8175848131515837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc5e214448b3fc6L    # 0.17096188876030122

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef8764fa714ba9L    # 0.9852776423889412

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010789b058eb457L    # -0.9852776423889412

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc5e214448b3fc6L    # 0.17096188876030122

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefc26470e19fd3L    # 0.99247953459871

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbf564e56a9730eL    # 0.1224106751992162

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4040a9b1a9568cf2L    # -0.1224106751992162

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefc26470e19fd3L    # 0.99247953459871

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3affa292050b9L    # 0.6152315905806268

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe93a22499263fbL    # 0.7883464276266062

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4016c5ddb66d9c05L    # -0.7883464276266062

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3affa292050b9L    # 0.6152315905806268

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febd7c0ac6f952aL    # 0.8700869911087115

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf8ba4dbf89abaL    # 0.49289819222978404

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4020745b24076546L    # -0.49289819222978404

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febd7c0ac6f952aL    # 0.8700869911087115

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd111d262b1f677L    # 0.26671275747489837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feed740e7684963L    # 0.9637760657954398

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401128bf1897b69dL    # -0.9637760657954398

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd111d262b1f677L    # 0.26671275747489837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee6288ec48e112L    # 0.9495281805930367

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd4135c94176601L    # 0.31368174039889146

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402beca36be899ffL    # -0.31368174039889146

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee6288ec48e112L    # 0.9495281805930367

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdcc66e9931c45eL    # 0.4496113296546066

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec954b213411f5L    # 0.8932243011955153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40136ab4decbee0bL    # -0.8932243011955153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdcc66e9931c45eL    # 0.4496113296546066

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe83b0e0bff976eL    # 0.7572088465064846

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4e6cabbe3e5e9L    # 0.6531728429537768

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xba

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401b1935441c1a17L    # -0.6531728429537768

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe83b0e0bff976eL    # 0.7572088465064846

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb2d52092ce19f6L    # 0.07356456359966743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe9cdad01883aL    # 0.9972904566786902

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010163252fe77c6L    # -0.9972904566786902

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb2d52092ce19f6L    # 0.07356456359966743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe9cdad01883aL    # 0.9972904566786902

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb2d52092ce19f6L    # 0.07356456359966743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404d2adf6d31e60aL    # -0.07356456359966743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe9cdad01883aL    # 0.9972904566786902

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4e6cabbe3e5e9L    # 0.6531728429537768

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe83b0e0bff976eL    # 0.7572088465064846

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4017c4f1f4006892L    # -0.7572088465064846

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4e6cabbe3e5e9L    # 0.6531728429537768

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec954b213411f5L    # 0.8932243011955153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdcc66e9931c45eL    # 0.4496113296546066

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xca

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4023399166ce3ba2L    # -0.4496113296546066

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec954b213411f5L    # 0.8932243011955153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd4135c94176601L    # 0.31368174039889146

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee6288ec48e112L    # 0.9495281805930367

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xce

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40119d7713b71eeeL    # -0.9495281805930367

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd4135c94176601L    # 0.31368174039889146

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feed740e7684963L    # 0.9637760657954398

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd111d262b1f677L    # 0.26671275747489837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402eee2d9d4e0989L    # -0.26671275747489837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feed740e7684963L    # 0.9637760657954398

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf8ba4dbf89abaL    # 0.49289819222978404

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febd7c0ac6f952aL    # 0.8700869911087115

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4014283f53906ad6L    # -0.8700869911087115

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf8ba4dbf89abaL    # 0.49289819222978404

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe93a22499263fbL    # 0.7883464276266062

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3affa292050b9L    # 0.6152315905806268

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xda

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401c5005d6dfaf47L    # -0.6152315905806268

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe93a22499263fbL    # 0.7883464276266062

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbf564e56a9730eL    # 0.1224106751992162

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefc26470e19fd3L    # 0.99247953459871

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xde

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40103d9b8f1e602dL    # -0.99247953459871

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbf564e56a9730eL    # 0.1224106751992162

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef8764fa714ba9L    # 0.9852776423889412

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc5e214448b3fc6L    # 0.17096188876030122

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403a1debbb74c03aL    # -0.17096188876030122

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef8764fa714ba9L    # 0.9852776423889412

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe26d054cdd12dfL    # 0.5758081914178453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea29a7a0462782L    # 0.8175848131515837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4015d6585fb9d87eL    # -0.8175848131515837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe26d054cdd12dfL    # 0.5758081914178453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb090a58150200L    # 0.8448535652497071

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe11eb3541b4b23L    # 0.5349976198870973

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xea

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401ee14cabe4b4ddL    # -0.5349976198870973

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb090a58150200L    # 0.8448535652497071

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xec

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcc0b826a7e4f63L    # 0.2191012401568698

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xed

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef38f3ac64e589L    # 0.9757021300385286

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xee

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010c70c539b1a77L    # -0.9757021300385286

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xef

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcc0b826a7e4f63L    # 0.2191012401568698

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feddb13b6ccc23cL    # 0.9329927988347388

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd7088530fa459fL    # 0.35989503653498817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4028f77acf05ba61L    # -0.35989503653498817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feddb13b6ccc23cL    # 0.9329927988347388

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd9ef7943a8ed8aL    # 0.40524131400498986

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed4134d14dc93aL    # 0.9142097557035307

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012becb2eb236c6L    # -0.9142097557035307

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd9ef7943a8ed8aL    # 0.40524131400498986

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe72d0837efff96L    # 0.7242470829514669

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe610b7551d2cdfL    # 0.6895405447370669

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4019ef48aae2d321L    # -0.6895405447370669

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe72d0837efff96L    # 0.7242470829514669

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f992155f7a3667eL    # 0.024541228522912288

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffd886084cd0dL    # 0.9996988186962042

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401002779f7b32f3L    # -0.9996988186962042

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xff

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f992155f7a3667eL    # 0.024541228522912288

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x100

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefff62169b92dbL    # 0.9999247018391445

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x101

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f8921d1fcdec784L    # 0.012271538285719925

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x102

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4076de2e0321387cL    # -0.012271538285719925

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x103

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefff62169b92dbL    # 0.9999247018391445

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x104

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6591925f0783dL    # 0.6983762494089728

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x105

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6e74454eaa8afL    # 0.7157308252838187

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x106

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401918bbab155751L    # -0.7157308252838187

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x107

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6591925f0783dL    # 0.6983762494089728

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x108

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed696173c9e68bL    # 0.9191138516900578

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x109

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd9372a63bc93d7L    # 0.3939920400610481

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4026c8d59c436c29L    # -0.3939920400610481

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed696173c9e68bL    # 0.9191138516900578

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd7c3a9311dcce7L    # 0.37131719395183754

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedb6526238a09bL    # 0.9285060804732156

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401249ad9dc75f65L    # -0.9285060804732156

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd7c3a9311dcce7L    # 0.37131719395183754

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x110

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef4e603b0b2f2dL    # 0.9783173707196277

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x111

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fca82a025b00451L    # 0.20711137619221856

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x112

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40357d5fda4ffbafL    # -0.20711137619221856

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x113

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef4e603b0b2f2dL    # 0.9783173707196277

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x114

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1734d63dedb49L    # 0.5453249884220465

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x115

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fead2bc9e21d511L    # 0.8382247055548381

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x116

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40152d4361de2aefL    # -0.8382247055548381

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x117

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1734d63dedb49L    # 0.5453249884220465

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x118

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea63091b02fae2L    # 0.8245893027850253

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x119

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe21a799933eb59L    # 0.5657318107836132

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401de58666cc14a7L    # -0.5657318107836132

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea63091b02fae2L    # 0.8245893027850253

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc76dd9de50bf31L    # 0.18303988795514095

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef7599a3a12077L    # 0.9831054874312163

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40108a665c5edf89L    # -0.9831054874312163

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc76dd9de50bf31L    # 0.18303988795514095

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x120

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefce15fd6da67bL    # 0.9939069700023561

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x121

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbc3785c79ec2d5L    # 0.11022220729388306

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x122

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4043c87a38613d2bL    # -0.11022220729388306

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x123

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefce15fd6da67bL    # 0.9939069700023561

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x124

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3fed9534556d4L    # 0.6248594881423863

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x125

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8fbcca3ef940dL    # 0.7807372285720945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x126

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401704335c106bf3L    # -0.7807372285720945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x127

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3fed9534556d4L    # 0.6248594881423863

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x128

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec08c426725549L    # 0.8760700941954066

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x129

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdedc1952ef78d6L    # 0.4821837720791228

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402123e6ad10872aL    # -0.4821837720791228

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec08c426725549L    # 0.8760700941954066

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd1d3443f4cdb3eL    # 0.2785196893850531

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feebbd8c8df0b74L    # 0.9604305194155658

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401144273720f48cL    # -0.9604305194155658

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd1d3443f4cdb3eL    # 0.2785196893850531

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x130

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee817bab4cd10dL    # 0.9533060403541939

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x131

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd35410c2e18152L    # 0.3020059493192281

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x132

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402cabef3d1e7eaeL    # -0.3020059493192281

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x133

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee817bab4cd10dL    # 0.9533060403541939

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x134

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdd79775b86e389L    # 0.46053871095824

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x135

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec678b3488739bL    # 0.8876396204028539

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x136

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40139874cb778c65L    # -0.8876396204028539

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x137

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdd79775b86e389L    # 0.46053871095824

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x138

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe87c400fba2ebfL    # 0.765167265622459

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x139

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe49a449b9b0939L    # 0.6438315428897915

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401b65bb6464f6c7L    # -0.6438315428897915

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe87c400fba2ebfL    # 0.765167265622459

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb5f6d00a9aa419L    # 0.0857973123444399

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe1cafcbd5b09L    # 0.996312612182778

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40101e350342a4f7L    # -0.996312612182778

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb5f6d00a9aa419L    # 0.0857973123444399

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x140

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff095658e71adL    # 0.9981181129001492

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x141

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3faf656e79f820e0L    # 0.06132073630220858

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x142

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40509a918607df20L    # -0.06132073630220858

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x143

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff095658e71adL    # 0.9981181129001492

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x144

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5328292a35596L    # 0.6624157775901718

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x145

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7f8ece3571771L    # 0.7491363945234594

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x146

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401807131ca8e88fL    # -0.7491363945234594

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x147

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5328292a35596L    # 0.6624157775901718

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x148

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecc1f0f3fcfc5cL    # 0.8986744656939538

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x149

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc1249d8011ee7L    # 0.43861623853852766

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4023edb627fee119L    # -0.43861623853852766

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecc1f0f3fcfc5cL    # 0.8986744656939538

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd4d1e24278e76aL    # 0.3253102921622629

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee426a4b2bc17eL    # 0.9456073253805213

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011bd95b4d43e82L    # -0.9456073253805213

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd4d1e24278e76aL    # 0.3253102921622629

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x150

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feef178a3e473c2L    # 0.9669764710448521

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x151

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd04fb80e37fdaeL    # 0.25486565960451457

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x152

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402fb047f1c80252L    # -0.25486565960451457

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x153

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feef178a3e473c2L    # 0.9669764710448521

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x154

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe01cfc874c3eb7L    # 0.5035383837257176

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x155

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feba5aa673590d2L    # 0.8639728561215867

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x156

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40145a5598ca6f2eL    # -0.8639728561215867

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x157

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe01cfc874c3eb7L    # 0.5035383837257176

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x158

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9777ef4c7d742L    # 0.7958369046088836

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x159

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe36058b10659f3L    # 0.6055110414043255

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401c9fa74ef9a60dL    # -0.6055110414043255

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9777ef4c7d742L    # 0.7958369046088836

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc139f0cedaf577L    # 0.1345807085071262

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefb5797195d741L    # 0.99090263542778

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40104a868e6a28bfL    # -0.99090263542778

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc139f0cedaf577L    # 0.1345807085071262

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x160

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef97f924c9099bL    # 0.9873014181578584

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x161

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc45576b1293e5aL    # 0.15885814333386145

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x162

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403baa894ed6c1a6L    # -0.15885814333386145

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x163

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef97f924c9099bL    # 0.9873014181578584

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x164

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2bedb25faf3eaL    # 0.5857978574564389

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x165

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9ef43ef29af94L    # 0.8104571982525948

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x166

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401610bc10d6506cL    # -0.8104571982525948

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x167

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2bedb25faf3eaL    # 0.5857978574564389

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x168

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb3e4d3ef55712L    # 0.8513551931052652

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x169

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0c9704d5d898fL    # 0.524589682678469

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401f368fb2a27671L    # -0.524589682678469

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb3e4d3ef55712L    # 0.8513551931052652

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcd934fe5454311L    # 0.2310581082806711

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef2252f7763adaL    # 0.9729399522055602

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010ddad0889c526L    # -0.9729399522055602

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcd934fe5454311L    # 0.2310581082806711

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x170

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedfeae622dbe2bL    # 0.937339011912575

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x171

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd64c7ddd3f27c6L    # 0.34841868024943456

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x172

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4029b38222c0d83aL    # -0.34841868024943456

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x173

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedfeae622dbe2bL    # 0.937339011912575

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x174

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdaa6c82b6d3fcaL    # 0.4164295600976372

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x175

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed17e7743e35dcL    # 0.9091679830905224

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x176

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012e8188bc1ca24L    # -0.9091679830905224

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x177

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdaa6c82b6d3fcaL    # 0.4164295600976372

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x178

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe771e75f037261L    # 0.7326542716724128

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x179

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5c77bbe65018cL    # 0.680600997795453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401a3884419afe74L    # -0.680600997795453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe771e75f037261L    # 0.7326542716724128

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa2d865759455cdL    # 0.03680722294135883

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffa72effef75dL    # 0.9993223845883495

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010058d100108a3L    # -0.9993223845883495

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa2d865759455cdL    # 0.03680722294135883

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x180

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffa72effef75dL    # 0.9993223845883495

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x181

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa2d865759455cdL    # 0.03680722294135883

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x182

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x405d279a8a6baa33L    # -0.03680722294135883

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x183

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffa72effef75dL    # 0.9993223845883495

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x184

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5c77bbe65018cL    # 0.680600997795453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x185

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe771e75f037261L    # 0.7326542716724128

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x186

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40188e18a0fc8d9fL    # -0.7326542716724128

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x187

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5c77bbe65018cL    # 0.680600997795453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x188

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed17e7743e35dcL    # 0.9091679830905224

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x189

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdaa6c82b6d3fcaL    # 0.4164295600976372

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40255937d492c036L    # -0.4164295600976372

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed17e7743e35dcL    # 0.9091679830905224

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd64c7ddd3f27c6L    # 0.34841868024943456

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedfeae622dbe2bL    # 0.937339011912575

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401201519dd241d5L    # -0.937339011912575

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd64c7ddd3f27c6L    # 0.34841868024943456

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x190

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef2252f7763adaL    # 0.9729399522055602

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x191

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcd934fe5454311L    # 0.2310581082806711

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x192

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40326cb01ababcefL    # -0.2310581082806711

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x193

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef2252f7763adaL    # 0.9729399522055602

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x194

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0c9704d5d898fL    # 0.524589682678469

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x195

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb3e4d3ef55712L    # 0.8513551931052652

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x196

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4014c1b2c10aa8eeL    # -0.8513551931052652

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x197

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0c9704d5d898fL    # 0.524589682678469

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x198

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9ef43ef29af94L    # 0.8104571982525948

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x199

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2bedb25faf3eaL    # 0.5857978574564389

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401d4124da050c16L    # -0.5857978574564389

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9ef43ef29af94L    # 0.8104571982525948

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc45576b1293e5aL    # 0.15885814333386145

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef97f924c9099bL    # 0.9873014181578584

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40106806db36f665L    # -0.9873014181578584

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc45576b1293e5aL    # 0.15885814333386145

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefb5797195d741L    # 0.99090263542778

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc139f0cedaf577L    # 0.1345807085071262

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403ec60f31250a89L    # -0.1345807085071262

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefb5797195d741L    # 0.99090263542778

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe36058b10659f3L    # 0.6055110414043255

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9777ef4c7d742L    # 0.7958369046088836

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401688810b3828beL    # -0.7958369046088836

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe36058b10659f3L    # 0.6055110414043255

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feba5aa673590d2L    # 0.8639728561215867

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe01cfc874c3eb7L    # 0.5035383837257176

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401fe30378b3c149L    # -0.5035383837257176

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feba5aa673590d2L    # 0.8639728561215867

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd04fb80e37fdaeL    # 0.25486565960451457

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feef178a3e473c2L    # 0.9669764710448521

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40110e875c1b8c3eL    # -0.9669764710448521

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd04fb80e37fdaeL    # 0.25486565960451457

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee426a4b2bc17eL    # 0.9456073253805213

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd4d1e24278e76aL    # 0.3253102921622629

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402b2e1dbd871896L    # -0.3253102921622629

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee426a4b2bc17eL    # 0.9456073253805213

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc1249d8011ee7L    # 0.43861623853852766

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecc1f0f3fcfc5cL    # 0.8986744656939538

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40133e0f0c0303a4L    # -0.8986744656939538

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc1249d8011ee7L    # 0.43861623853852766

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7f8ece3571771L    # 0.7491363945234594

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5328292a35596L    # 0.6624157775901718

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401acd7d6d5caa6aL    # -0.6624157775901718

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7f8ece3571771L    # 0.7491363945234594

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3faf656e79f820e0L    # 0.06132073630220858

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff095658e71adL    # 0.9981181129001492

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40100f6a9a718e53L    # -0.9981181129001492

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3faf656e79f820e0L    # 0.06132073630220858

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe1cafcbd5b09L    # 0.996312612182778

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb5f6d00a9aa419L    # 0.0857973123444399

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404a092ff5655be7L    # -0.0857973123444399

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe1cafcbd5b09L    # 0.996312612182778

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe49a449b9b0939L    # 0.6438315428897915

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe87c400fba2ebfL    # 0.765167265622459

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401783bff045d141L    # -0.765167265622459

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe49a449b9b0939L    # 0.6438315428897915

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec678b3488739bL    # 0.8876396204028539

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdd79775b86e389L    # 0.46053871095824

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40228688a4791c77L    # -0.46053871095824

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec678b3488739bL    # 0.8876396204028539

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd35410c2e18152L    # 0.3020059493192281

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee817bab4cd10dL    # 0.9533060403541939

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40117e8454b32ef3L    # -0.9533060403541939

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd35410c2e18152L    # 0.3020059493192281

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feebbd8c8df0b74L    # 0.9604305194155658

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd1d3443f4cdb3eL    # 0.2785196893850531

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402e2cbbc0b324c2L    # -0.2785196893850531

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feebbd8c8df0b74L    # 0.9604305194155658

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdedc1952ef78d6L    # 0.4821837720791228

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec08c426725549L    # 0.8760700941954066

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013f73bd98daab7L    # -0.8760700941954066

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdedc1952ef78d6L    # 0.4821837720791228

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8fbcca3ef940dL    # 0.7807372285720945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3fed9534556d4L    # 0.6248594881423863

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401c0126acbaa92cL    # -0.6248594881423863

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8fbcca3ef940dL    # 0.7807372285720945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbc3785c79ec2d5L    # 0.11022220729388306

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefce15fd6da67bL    # 0.9939069700023561

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401031ea02925985L    # -0.9939069700023561

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbc3785c79ec2d5L    # 0.11022220729388306

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef7599a3a12077L    # 0.9831054874312163

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc76dd9de50bf31L    # 0.18303988795514095

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4038922621af40cfL    # -0.18303988795514095

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef7599a3a12077L    # 0.9831054874312163

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe21a799933eb59L    # 0.5657318107836132

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea63091b02fae2L    # 0.8245893027850253

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40159cf6e4fd051eL    # -0.8245893027850253

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe21a799933eb59L    # 0.5657318107836132

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fead2bc9e21d511L    # 0.8382247055548381

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1734d63dedb49L    # 0.5453249884220465

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401e8cb29c2124b7L    # -0.5453249884220465

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fead2bc9e21d511L    # 0.8382247055548381

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fca82a025b00451L    # 0.20711137619221856

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef4e603b0b2f2dL    # 0.9783173707196277

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010b19fc4f4d0d3L    # -0.9783173707196277

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fca82a025b00451L    # 0.20711137619221856

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedb6526238a09bL    # 0.9285060804732156

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd7c3a9311dcce7L    # 0.37131719395183754

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40283c56cee23319L    # -0.37131719395183754

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedb6526238a09bL    # 0.9285060804732156

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd9372a63bc93d7L    # 0.3939920400610481

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed696173c9e68bL    # 0.9191138516900578

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012969e8c361975L    # -0.9191138516900578

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd9372a63bc93d7L    # 0.3939920400610481

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6e74454eaa8afL    # 0.7157308252838187

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6591925f0783dL    # 0.6983762494089728

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4019a6e6da0f87c3L    # -0.6983762494089728

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6e74454eaa8afL    # 0.7157308252838187

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f8921d1fcdec784L    # 0.012271538285719925

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefff62169b92dbL    # 0.9999247018391445

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010009de9646d25L    # -0.9999247018391445

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f8921d1fcdec784L    # 0.012271538285719925

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x200

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefffd8858e8a92L    # 0.9999811752826011

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x201

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f7921f0fe670071L    # 0.006135884649154475

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x202

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4086de0f0198ff8fL    # -0.006135884649154475

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x203

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefffd8858e8a92L    # 0.9999811752826011

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x204

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe67cf78491af10L    # 0.7027547444572253

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x205

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6c40d73c18275L    # 0.7114321957452164

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x206

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40193bf28c3e7d8bL    # -0.7114321957452164

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x207

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe67cf78491af10L    # 0.7027547444572253

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x208

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed7d0b02b8ecf9L    # 0.9215140393420419

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x209

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd8daa52ec8a4b0L    # 0.3883450466988263

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4027255ad1375b50L    # -0.3883450466988263

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed7d0b02b8ecf9L    # 0.9215140393420419

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd820e3b04eaac4L    # 0.37700741021641826

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feda383a9668988L    # 0.9262102421383114

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40125c7c56997678L    # -0.9262102421383114

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd820e3b04eaac4L    # 0.37700741021641826

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x210

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef58a2b1789e84L    # 0.9795697656854405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x211

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc9bdcbf2dc4366L    # 0.2011046348420919

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x212

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403642340d23bc9aL    # -0.2011046348420919

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x213

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef58a2b1789e84L    # 0.9795697656854405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x214

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe19d5a09f2b9b8L    # 0.5504579729366048

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x215

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feab7325916c0d4L    # 0.83486287498638

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x216

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401548cda6e93f2cL    # -0.83486287498638

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x217

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe19d5a09f2b9b8L    # 0.5504579729366048

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x218

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea7f58529fe69dL    # 0.8280450452577558

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x219

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1f0f08bbc861bL    # 0.560661576197336

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401e0f0f744379e5L    # -0.560661576197336

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea7f58529fe69dL    # 0.8280450452577558

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc83366e89c64c6L    # 0.18906866414980622

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef6c3f7df5bbb7L    # 0.9819638691095552

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401093c0820a4449L    # -0.9819638691095552

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc83366e89c64c6L    # 0.18906866414980622

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x220

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd37914220b84L    # 0.9945645707342554

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x221

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbaa7b724495c03L    # 0.10412163387205457

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x222

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40455848dbb6a3fdL    # -0.10412163387205457

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x223

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd37914220b84L    # 0.9945645707342554

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x224

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe425ff178e6bb1L    # 0.629638238914927

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x225

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8dc45331698ccL    # 0.7768884656732324

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x226

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401723bacce96734L    # -0.7768884656732324

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x227

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe425ff178e6bb1L    # 0.629638238914927

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x228

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec20de3fa971b0L    # 0.8790122264286335

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x229

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fde83e0eaf85114L    # 0.47679923006332214

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40217c1f1507aeecL    # -0.47679923006332214

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec20de3fa971b0L    # 0.8790122264286335

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd233bbabc3bb71L    # 0.2844075372112718

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeadb2e8e7a88eL    # 0.9587034748958716

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011524d17185772L    # -0.9587034748958716

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd233bbabc3bb71L    # 0.2844075372112718

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x230

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee9084361df7f2L    # 0.9551411683057707

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x231

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd2f422daec0387L    # 0.29615088824362384

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x232

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402d0bdd2513fc79L    # -0.29615088824362384

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x233

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee9084361df7f2L    # 0.9551411683057707

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x234

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fddd28f1481cc58L    # 0.4659764957679662

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x235

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec5042012b6907L    # 0.8847970984309378

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x236

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013afbdfed496f9L    # -0.8847970984309378

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x237

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fddd28f1481cc58L    # 0.4659764957679662

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x238

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe89c7e9a4dd4aaL    # 0.7691033376455796

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x239

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe473b51b987347L    # 0.6391244448637757

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401b8c4ae4678cb9L    # -0.6391244448637757

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe89c7e9a4dd4aaL    # 0.7691033376455796

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb787586a5d5b21L    # 0.09190895649713272

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefdd539ff1f456L    # 0.9957674144676598

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401022ac600e0baaL    # -0.9957674144676598

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb787586a5d5b21L    # 0.09190895649713272

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x240

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff3830f8d575cL    # 0.9984755805732948

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x241

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fac428d12c0d7e3L    # 0.05519524434968994

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x242

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4053bd72ed3f281dL    # -0.05519524434968994

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x243

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff3830f8d575cL    # 0.9984755805732948

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x244

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5581038975137L    # 0.6669999223036375

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x245

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7d7836cc33db2L    # 0.745057785441466

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x246

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4018287c933cc24eL    # -0.745057785441466

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x247

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5581038975137L    # 0.6669999223036375

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x248

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecd7d9898b32f6L    # 0.901348847046022

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x249

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdbb7cf2304bd01L    # 0.43309381885315196

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40244830dcfb42ffL    # -0.43309381885315196

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecd7d9898b32f6L    # 0.901348847046022

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd530d880af3c24L    # 0.33110630575987643

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee31eae870ce25L    # 0.9435934581619604

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011ce15178f31dbL    # -0.9435934581619604

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd530d880af3c24L    # 0.33110630575987643

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x250

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feefe220c0b95ecL    # 0.9685220942744173

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x251

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcfdcdc1adfedf9L    # 0.24892760574572018

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x252

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40302323e5201207L    # -0.24892760574572018

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x253

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feefe220c0b95ecL    # 0.9685220942744173

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x254

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0485626ae221aL    # 0.508830142543107

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x255

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb8c38d27504e9L    # 0.8608669386377673

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x256

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401473c72d8afb17L    # -0.8608669386377673

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x257

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0485626ae221aL    # 0.508830142543107

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x258

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe995cf2ed80d22L    # 0.799537269107905

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x259

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe338400d0c8e57L    # 0.600616479383869

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401cc7bff2f371a9L    # -0.600616479383869

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe995cf2ed80d22L    # 0.799537269107905

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc20116d4ec7bcfL    # 0.14065823933284924

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefae8e8e46cfbbL    # 0.9900582102622971

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010517171b93045L    # -0.9900582102622971

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc20116d4ec7bcfL    # 0.14065823933284924

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x260

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef9fce55adb2c8L    # 0.9882575677307495

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x261

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc38edbb0cd8d14L    # 0.15279718525844344

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x262

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403c71244f3272ecL    # -0.15279718525844344

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x263

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef9fce55adb2c8L    # 0.9882575677307495

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x264

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2e780e3e8ea17L    # 0.5907597018588743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x265

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9d1b1f5ea80d5L    # 0.8068475535437992

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x266

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40162e4e0a157f2bL    # -0.8068475535437992

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x267

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2e780e3e8ea17L    # 0.5907597018588743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x268

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb5889fe921405L    # 0.8545579883654005

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x269

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe09e907417c5e1L    # 0.5193559901655896

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x26a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401f616f8be83a1fL    # -0.5193559901655896

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb5889fe921405L    # 0.8545579883654005

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x26c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fce56ca1e101a1bL    # 0.2370236059943672

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef168f53f7205dL    # 0.9715038909862518

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x26e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010e970ac08dfa3L    # -0.9715038909862518

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fce56ca1e101a1bL    # 0.2370236059943672

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x270

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee100cca2980acL    # 0.9394592236021899

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x271

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd5ee27379ea693L    # 0.3426607173119944

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x272

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402a11d8c861596dL    # -0.3426607173119944

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x273

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee100cca2980acL    # 0.9394592236021899

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x274

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb020d6c7f4009L    # 0.4220002707997997

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x275

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed02d4feb2bd92L    # 0.9065957045149153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x276

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012fd2b014d426eL    # -0.9065957045149153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x277

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb020d6c7f4009L    # 0.4220002707997997

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x278

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe79400574f55e5L    # 0.7368165688773699

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x279

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5a28d2a5d7250L    # 0.6760927035753159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x27a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401a5d72d5a28db0L    # -0.6760927035753159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x27b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe79400574f55e5L    # 0.7368165688773699

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x27c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa5fc00d290cd43L    # 0.04293825693494082

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x27d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff871dadb81dfL    # 0.9990777277526454

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x27e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010078e25247e21L    # -0.9990777277526454

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x27f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa5fc00d290cd43L    # 0.04293825693494082

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x280

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffc251df1d3f8L    # 0.9995294175010931

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x281

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f9f693731d1cf01L    # 0.030674803176636626

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x282

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x406096c8ce2e30ffL    # -0.030674803176636626

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x283

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffc251df1d3f8L    # 0.9995294175010931

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x284

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5ec3495837074L    # 0.6850836677727004

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x285

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe74f948da8d28dL    # 0.7284643904482252

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x286

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4018b06b72572d73L    # -0.7284643904482252

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x287

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5ec3495837074L    # 0.6850836677727004

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x288

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed2cb220e0ef9fL    # 0.9117060320054299

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x289

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fda4b4127dea1e5L    # 0.41084317105790397

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x28a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4025b4bed8215e1bL    # -0.41084317105790397

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x28b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed2cb220e0ef9fL    # 0.9117060320054299

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x28c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd6aa9d7dc77e17L    # 0.3541635254204904

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x28d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feded05f7de47daL    # 0.9351835099389476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x28e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401212fa0821b826L    # -0.9351835099389476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x28f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd6aa9d7dc77e17L    # 0.3541635254204904

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x290

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef2dc9c9089a9dL    # 0.9743393827855759

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x291

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcccf8cb312b286L    # 0.22508391135979283

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x292

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403330734ced4d7aL    # -0.22508391135979283

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x293

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef2dc9c9089a9dL    # 0.9743393827855759

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x294

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0f426bb2a8e7eL    # 0.5298036246862947

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x295

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb23cd470013b4L    # 0.8481203448032972

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x296

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4014dc32b8ffec4cL    # -0.8481203448032972

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x297

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0f426bb2a8e7eL    # 0.5298036246862947

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x298

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea0c95eabaf937L    # 0.8140363297059484

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x299

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2960727629ca8L    # 0.5808139580957645

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x29a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401d69f8d89d6358L    # -0.5808139580957645

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x29b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea0c95eabaf937L    # 0.8140363297059484

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x29c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc51bdf8597c5f2L    # 0.16491312048996992

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x29d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef8fd5ffae41dbL    # 0.9863080972445987

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x29e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010702a0051be25L    # -0.9863080972445987

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x29f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc51bdf8597c5f2L    # 0.16491312048996992

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefbc1617e44186L    # 0.9917097536690995

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc072a047ba831dL    # 0.12849811079379317

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403f8d5fb8457ce3L    # -0.12849811079379317

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefbc1617e44186L    # 0.9917097536690995

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3884185dfeb22L    # 0.6103828062763095

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe958efe48e6dd7L    # 0.7921065773002124

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4016a7101b719229L    # -0.7921065773002124

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3884185dfeb22L    # 0.6103828062763095

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febbed7c49380eaL    # 0.8670462455156926

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2a9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdfe2f64be71210L    # 0.49822766697278187

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2aa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40201d09b418edf0L    # -0.49822766697278187

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ab

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febbed7c49380eaL    # 0.8670462455156926

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ac

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd0b0d9cfdbdb90L    # 0.2607941179152755

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ad

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feee482e25a9dbcL    # 0.9653944416976894

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ae

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40111b7d1da56244L    # -0.9653944416976894

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2af

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd0b0d9cfdbdb90L    # 0.2607941179152755

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee529f04729ffcL    # 0.9475855910177411

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd472b8a5571054L    # 0.3195020308160157

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402b8d475aa8efacL    # -0.3195020308160157

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee529f04729ffcL    # 0.9475855910177411

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc6c7f4997000bL    # 0.44412214457042926

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecabc169a0b900L    # 0.8959662497561851

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013543e965f4700L    # -0.8959662497561851

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc6c7f4997000bL    # 0.44412214457042926

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe81a1b33b57accL    # 0.7531867990436125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2b9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe50cc09f59a09bL    # 0.6578066932970786

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ba

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401af33f60a65f65L    # -0.6578066932970786

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2bb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe81a1b33b57accL    # 0.7531867990436125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2bc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb1440134d709b3L    # 0.06744391956366406

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2bd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefed58ecb673c4L    # 0.9977230666441916

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2be

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401012a713498c3cL    # -0.9977230666441916

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2bf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb1440134d709b3L    # 0.06744391956366406

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe5f3af2e3940L    # 0.9968202992911657

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb4661179272096L    # 0.07968243797143013

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404b99ee86d8df6aL    # -0.07968243797143013

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe5f3af2e3940L    # 0.9968202992911657

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4c0a145ec0004L    # 0.6485144010221124

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe85bc51ae958ccL    # 0.7612023854842618

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4017a43ae516a734L    # -0.7612023854842618

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4c0a145ec0004L    # 0.6485144010221124

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec7e8e52233cf3L    # 0.8904487232447579

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2c9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdd2016e8e9db5bL    # 0.45508358712634384

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ca

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4022dfe9171624a5L    # -0.45508358712634384

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2cb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec7e8e52233cf3L    # 0.8904487232447579

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2cc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd3b3cefa0414b7L    # 0.30784964004153487

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2cd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee7227db6a9744L    # 0.9514350209690083

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ce

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40118dd8249568bcL    # -0.9514350209690083

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2cf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd3b3cefa0414b7L    # 0.30784964004153487

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feec9b2d3c3bf84L    # 0.9621214042690416

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd172a0d7765177L    # 0.272621355449949

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402e8d5f2889ae89L    # -0.272621355449949

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feec9b2d3c3bf84L    # 0.9621214042690416

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf3405963fd067L    # 0.48755016014843594

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febf064e15377ddL    # 0.8730949784182901

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40140f9b1eac8823L    # -0.8730949784182901

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf3405963fd067L    # 0.48755016014843594

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe91b166fd49da2L    # 0.7845565971555752

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2d9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3d78238c58344L    # 0.6200572117632892

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2da

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401c287dc73a7cbcL    # -0.6200572117632892

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2db

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe91b166fd49da2L    # 0.7845565971555752

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2dc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbdc70ecbae9fc9L    # 0.11631863091190477

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2dd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefc8646cfeb721L    # 0.9932119492347945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2de

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010379b930148dfL    # -0.9932119492347945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2df

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbdc70ecbae9fc9L    # 0.11631863091190477

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef7ea629e63d6eL    # 0.984210092386929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc6a81304f64ab2L    # 0.17700422041214875

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403957ecfb09b54eL    # -0.17700422041214875

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef7ea629e63d6eL    # 0.984210092386929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe243d5fb98ac1fL    # 0.5707807458869673

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea4678c8119ac8L    # 0.8211025149911046

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4015b98737ee6538L    # -0.8211025149911046

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe243d5fb98ac1fL    # 0.5707807458869673

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feaee04b43c1474L    # 0.8415549774368984

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2e9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe14915af336cebL    # 0.5401714727298929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ea

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401eb6ea50cc9315L    # -0.5401714727298929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2eb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feaee04b43c1474L    # 0.8415549774368984

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ec

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcb4732ef3d6722L    # 0.21311031991609136

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ed

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef43d085ff92ddL    # 0.9770281426577544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ee

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010bc2f7a006d23L    # -0.9770281426577544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ef

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcb4732ef3d6722L    # 0.21311031991609136

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedc8d7cb410260L    # 0.9307669610789837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd766340f2418f6L    # 0.36561299780477385

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402899cbf0dbe70aL    # -0.36561299780477385

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedc8d7cb410260L    # 0.9307669610789837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd993716141bdffL    # 0.39962419984564684

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed556f52e93eb1L    # 0.9166790599210427

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012aa90ad16c14fL    # -0.9166790599210427

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd993716141bdffL    # 0.39962419984564684

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe70a42b3176d7aL    # 0.7200025079613817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2f9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe63503a31c1be9L    # 0.693971460889654

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2fa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4019cafc5ce3e417L    # -0.693971460889654

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2fb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe70a42b3176d7aL    # 0.7200025079613817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2fc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f92d936bbe30efdL    # 0.01840672990580482

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2fd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffe9cb44b51a1L    # 0.9998305817958234

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2fe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401001634bb4ae5fL    # -0.9998305817958234

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x2ff

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f92d936bbe30efdL    # 0.01840672990580482

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x300

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffe9cb44b51a1L    # 0.9998305817958234

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x301

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f92d936bbe30efdL    # 0.01840672990580482

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x302

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x406d26c9441cf103L    # -0.01840672990580482

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x303

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffe9cb44b51a1L    # 0.9998305817958234

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x304

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe63503a31c1be9L    # 0.693971460889654

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x305

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe70a42b3176d7aL    # 0.7200025079613817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x306

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4018f5bd4ce89286L    # -0.7200025079613817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x307

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe63503a31c1be9L    # 0.693971460889654

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x308

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed556f52e93eb1L    # 0.9166790599210427

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x309

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd993716141bdffL    # 0.39962419984564684

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x30a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40266c8e9ebe4201L    # -0.39962419984564684

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x30b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed556f52e93eb1L    # 0.9166790599210427

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x30c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd766340f2418f6L    # 0.36561299780477385

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x30d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedc8d7cb410260L    # 0.9307669610789837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x30e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012372834befda0L    # -0.9307669610789837

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x30f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd766340f2418f6L    # 0.36561299780477385

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x310

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef43d085ff92ddL    # 0.9770281426577544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x311

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcb4732ef3d6722L    # 0.21311031991609136

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x312

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4034b8cd10c298deL    # -0.21311031991609136

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x313

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef43d085ff92ddL    # 0.9770281426577544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x314

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe14915af336cebL    # 0.5401714727298929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x315

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feaee04b43c1474L    # 0.8415549774368984

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x316

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401511fb4bc3eb8cL    # -0.8415549774368984

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x317

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe14915af336cebL    # 0.5401714727298929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x318

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea4678c8119ac8L    # 0.8211025149911046

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x319

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe243d5fb98ac1fL    # 0.5707807458869673

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x31a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401dbc2a046753e1L    # -0.5707807458869673

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x31b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea4678c8119ac8L    # 0.8211025149911046

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x31c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc6a81304f64ab2L    # 0.17700422041214875

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x31d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef7ea629e63d6eL    # 0.984210092386929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x31e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40108159d619c292L    # -0.984210092386929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x31f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc6a81304f64ab2L    # 0.17700422041214875

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x320

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefc8646cfeb721L    # 0.9932119492347945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x321

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbdc70ecbae9fc9L    # 0.11631863091190477

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x322

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404238f134516037L    # -0.11631863091190477

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x323

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefc8646cfeb721L    # 0.9932119492347945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x324

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3d78238c58344L    # 0.6200572117632892

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x325

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe91b166fd49da2L    # 0.7845565971555752

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x326

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4016e4e9902b625eL    # -0.7845565971555752

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x327

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3d78238c58344L    # 0.6200572117632892

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x328

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febf064e15377ddL    # 0.8730949784182901

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x329

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf3405963fd067L    # 0.48755016014843594

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x32a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4020cbfa69c02f99L    # -0.48755016014843594

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x32b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febf064e15377ddL    # 0.8730949784182901

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x32c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd172a0d7765177L    # 0.272621355449949

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x32d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feec9b2d3c3bf84L    # 0.9621214042690416

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x32e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011364d2c3c407cL    # -0.9621214042690416

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x32f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd172a0d7765177L    # 0.272621355449949

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x330

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee7227db6a9744L    # 0.9514350209690083

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x331

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd3b3cefa0414b7L    # 0.30784964004153487

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x332

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402c4c3105fbeb49L    # -0.30784964004153487

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x333

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee7227db6a9744L    # 0.9514350209690083

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x334

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdd2016e8e9db5bL    # 0.45508358712634384

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x335

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec7e8e52233cf3L    # 0.8904487232447579

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x336

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40138171addcc30dL    # -0.8904487232447579

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x337

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdd2016e8e9db5bL    # 0.45508358712634384

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x338

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe85bc51ae958ccL    # 0.7612023854842618

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x339

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4c0a145ec0004L    # 0.6485144010221124

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x33a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401b3f5eba13fffcL    # -0.6485144010221124

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x33b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe85bc51ae958ccL    # 0.7612023854842618

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x33c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb4661179272096L    # 0.07968243797143013

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x33d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe5f3af2e3940L    # 0.9968202992911657

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x33e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40101a0c50d1c6c0L    # -0.9968202992911657

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x33f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb4661179272096L    # 0.07968243797143013

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x340

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefed58ecb673c4L    # 0.9977230666441916

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x341

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb1440134d709b3L    # 0.06744391956366406

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x342

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404ebbfecb28f64dL    # -0.06744391956366406

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x343

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefed58ecb673c4L    # 0.9977230666441916

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x344

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe50cc09f59a09bL    # 0.6578066932970786

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x345

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe81a1b33b57accL    # 0.7531867990436125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x346

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4017e5e4cc4a8534L    # -0.7531867990436125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x347

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe50cc09f59a09bL    # 0.6578066932970786

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x348

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecabc169a0b900L    # 0.8959662497561851

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x349

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc6c7f4997000bL    # 0.44412214457042926

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x34a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40239380b668fff5L    # -0.44412214457042926

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x34b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecabc169a0b900L    # 0.8959662497561851

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x34c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd472b8a5571054L    # 0.3195020308160157

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x34d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee529f04729ffcL    # 0.9475855910177411

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x34e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011ad60fb8d6004L    # -0.9475855910177411

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x34f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd472b8a5571054L    # 0.3195020308160157

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x350

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feee482e25a9dbcL    # 0.9653944416976894

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x351

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd0b0d9cfdbdb90L    # 0.2607941179152755

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x352

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402f4f2630242470L    # -0.2607941179152755

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x353

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feee482e25a9dbcL    # 0.9653944416976894

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x354

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdfe2f64be71210L    # 0.49822766697278187

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x355

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febbed7c49380eaL    # 0.8670462455156926

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x356

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401441283b6c7f16L    # -0.8670462455156926

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x357

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdfe2f64be71210L    # 0.49822766697278187

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x358

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe958efe48e6dd7L    # 0.7921065773002124

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x359

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3884185dfeb22L    # 0.6103828062763095

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x35a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401c77be7a2014deL    # -0.6103828062763095

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x35b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe958efe48e6dd7L    # 0.7921065773002124

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x35c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc072a047ba831dL    # 0.12849811079379317

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x35d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefbc1617e44186L    # 0.9917097536690995

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x35e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401043e9e81bbe7aL    # -0.9917097536690995

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x35f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc072a047ba831dL    # 0.12849811079379317

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x360

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef8fd5ffae41dbL    # 0.9863080972445987

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x361

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc51bdf8597c5f2L    # 0.16491312048996992

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x362

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403ae4207a683a0eL    # -0.16491312048996992

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x363

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef8fd5ffae41dbL    # 0.9863080972445987

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x364

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2960727629ca8L    # 0.5808139580957645

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x365

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea0c95eabaf937L    # 0.8140363297059484

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x366

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4015f36a154506c9L    # -0.8140363297059484

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x367

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2960727629ca8L    # 0.5808139580957645

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x368

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb23cd470013b4L    # 0.8481203448032972

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x369

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0f426bb2a8e7eL    # 0.5298036246862947

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x36a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401f0bd944d57182L    # -0.5298036246862947

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x36b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb23cd470013b4L    # 0.8481203448032972

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x36c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcccf8cb312b286L    # 0.22508391135979283

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x36d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef2dc9c9089a9dL    # 0.9743393827855759

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x36e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010d23636f76563L    # -0.9743393827855759

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x36f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcccf8cb312b286L    # 0.22508391135979283

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x370

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feded05f7de47daL    # 0.9351835099389476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x371

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd6aa9d7dc77e17L    # 0.3541635254204904

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x372

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40295562823881e9L    # -0.3541635254204904

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x373

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feded05f7de47daL    # 0.9351835099389476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x374

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fda4b4127dea1e5L    # 0.41084317105790397

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x375

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed2cb220e0ef9fL    # 0.9117060320054299

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x376

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012d34ddf1f1061L    # -0.9117060320054299

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x377

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fda4b4127dea1e5L    # 0.41084317105790397

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x378

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe74f948da8d28dL    # 0.7284643904482252

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x379

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5ec3495837074L    # 0.6850836677727004

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x37a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401a13cb6a7c8f8cL    # -0.6850836677727004

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x37b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe74f948da8d28dL    # 0.7284643904482252

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x37c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f9f693731d1cf01L    # 0.030674803176636626

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x37d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffc251df1d3f8L    # 0.9995294175010931

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x37e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401003dae20e2c08L    # -0.9995294175010931

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x37f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f9f693731d1cf01L    # 0.030674803176636626

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x380

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff871dadb81dfL    # 0.9990777277526454

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x381

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa5fc00d290cd43L    # 0.04293825693494082

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x382

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x405a03ff2d6f32bdL    # -0.04293825693494082

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x383

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff871dadb81dfL    # 0.9990777277526454

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x384

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5a28d2a5d7250L    # 0.6760927035753159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x385

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe79400574f55e5L    # 0.7368165688773699

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x386

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40186bffa8b0aa1bL    # -0.7368165688773699

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x387

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5a28d2a5d7250L    # 0.6760927035753159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x388

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed02d4feb2bd92L    # 0.9065957045149153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x389

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb020d6c7f4009L    # 0.4220002707997997

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x38a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4024fdf29380bff7L    # -0.4220002707997997

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x38b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed02d4feb2bd92L    # 0.9065957045149153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x38c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd5ee27379ea693L    # 0.3426607173119944

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x38d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee100cca2980acL    # 0.9394592236021899

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x38e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011eff335d67f54L    # -0.9394592236021899

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x38f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd5ee27379ea693L    # 0.3426607173119944

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x390

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef168f53f7205dL    # 0.9715038909862518

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x391

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fce56ca1e101a1bL    # 0.2370236059943672

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x392

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4031a935e1efe5e5L    # -0.2370236059943672

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x393

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef168f53f7205dL    # 0.9715038909862518

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x394

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe09e907417c5e1L    # 0.5193559901655896

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x395

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb5889fe921405L    # 0.8545579883654005

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x396

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4014a776016debfbL    # -0.8545579883654005

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x397

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe09e907417c5e1L    # 0.5193559901655896

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x398

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9d1b1f5ea80d5L    # 0.8068475535437992

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x399

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2e780e3e8ea17L    # 0.5907597018588743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x39a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401d187f1c1715e9L    # -0.5907597018588743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x39b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9d1b1f5ea80d5L    # 0.8068475535437992

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x39c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc38edbb0cd8d14L    # 0.15279718525844344

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x39d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef9fce55adb2c8L    # 0.9882575677307495

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x39e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40106031aa524d38L    # -0.9882575677307495

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x39f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc38edbb0cd8d14L    # 0.15279718525844344

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefae8e8e46cfbbL    # 0.9900582102622971

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc20116d4ec7bcfL    # 0.14065823933284924

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403dfee92b138431L    # -0.14065823933284924

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefae8e8e46cfbbL    # 0.9900582102622971

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe338400d0c8e57L    # 0.600616479383869

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe995cf2ed80d22L    # 0.799537269107905

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40166a30d127f2deL    # -0.799537269107905

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe338400d0c8e57L    # 0.600616479383869

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb8c38d27504e9L    # 0.8608669386377673

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3a9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0485626ae221aL    # 0.508830142543107

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3aa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401fb7a9d951dde6L    # -0.508830142543107

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ab

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb8c38d27504e9L    # 0.8608669386377673

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ac

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcfdcdc1adfedf9L    # 0.24892760574572018

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ad

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feefe220c0b95ecL    # 0.9685220942744173

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ae

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401101ddf3f46a14L    # -0.9685220942744173

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3af

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcfdcdc1adfedf9L    # 0.24892760574572018

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee31eae870ce25L    # 0.9435934581619604

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd530d880af3c24L    # 0.33110630575987643

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402acf277f50c3dcL    # -0.33110630575987643

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee31eae870ce25L    # 0.9435934581619604

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdbb7cf2304bd01L    # 0.43309381885315196

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecd7d9898b32f6L    # 0.901348847046022

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401328267674cd0aL    # -0.901348847046022

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdbb7cf2304bd01L    # 0.43309381885315196

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7d7836cc33db2L    # 0.745057785441466

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3b9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5581038975137L    # 0.6669999223036375

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ba

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401aa7efc768aec9L    # -0.6669999223036375

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3bb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7d7836cc33db2L    # 0.745057785441466

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3bc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fac428d12c0d7e3L    # 0.05519524434968994

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3bd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff3830f8d575cL    # 0.9984755805732948

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3be

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40100c7cf072a8a4L    # -0.9984755805732948

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3bf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fac428d12c0d7e3L    # 0.05519524434968994

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefdd539ff1f456L    # 0.9957674144676598

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb787586a5d5b21L    # 0.09190895649713272

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404878a795a2a4dfL    # -0.09190895649713272

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefdd539ff1f456L    # 0.9957674144676598

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe473b51b987347L    # 0.6391244448637757

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe89c7e9a4dd4aaL    # 0.7691033376455796

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4017638165b22b56L    # -0.7691033376455796

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe473b51b987347L    # 0.6391244448637757

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec5042012b6907L    # 0.8847970984309378

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3c9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fddd28f1481cc58L    # 0.4659764957679662

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ca

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40222d70eb7e33a8L    # -0.4659764957679662

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3cb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec5042012b6907L    # 0.8847970984309378

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3cc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd2f422daec0387L    # 0.29615088824362384

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3cd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee9084361df7f2L    # 0.9551411683057707

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ce

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40116f7bc9e2080eL    # -0.9551411683057707

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3cf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd2f422daec0387L    # 0.29615088824362384

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeadb2e8e7a88eL    # 0.9587034748958716

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd233bbabc3bb71L    # 0.2844075372112718

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402dcc44543c448fL    # -0.2844075372112718

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeadb2e8e7a88eL    # 0.9587034748958716

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fde83e0eaf85114L    # 0.47679923006332214

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec20de3fa971b0L    # 0.8790122264286335

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013df21c0568e50L    # -0.8790122264286335

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fde83e0eaf85114L    # 0.47679923006332214

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8dc45331698ccL    # 0.7768884656732324

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3d9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe425ff178e6bb1L    # 0.629638238914927

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3da

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401bda00e871944fL    # -0.629638238914927

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3db

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8dc45331698ccL    # 0.7768884656732324

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3dc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbaa7b724495c03L    # 0.10412163387205457

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3dd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd37914220b84L    # 0.9945645707342554

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3de

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40102c86ebddf47cL    # -0.9945645707342554

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3df

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbaa7b724495c03L    # 0.10412163387205457

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef6c3f7df5bbb7L    # 0.9819638691095552

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc83366e89c64c6L    # 0.18906866414980622

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4037cc9917639b3aL    # -0.18906866414980622

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef6c3f7df5bbb7L    # 0.9819638691095552

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1f0f08bbc861bL    # 0.560661576197336

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea7f58529fe69dL    # 0.8280450452577558

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401580a7ad601963L    # -0.8280450452577558

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1f0f08bbc861bL    # 0.560661576197336

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feab7325916c0d4L    # 0.83486287498638

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3e9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe19d5a09f2b9b8L    # 0.5504579729366048

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ea

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401e62a5f60d4648L    # -0.5504579729366048

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3eb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feab7325916c0d4L    # 0.83486287498638

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ec

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc9bdcbf2dc4366L    # 0.2011046348420919

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ed

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef58a2b1789e84L    # 0.9795697656854405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ee

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010a75d4e87617cL    # -0.9795697656854405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ef

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc9bdcbf2dc4366L    # 0.2011046348420919

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feda383a9668988L    # 0.9262102421383114

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd820e3b04eaac4L    # 0.37700741021641826

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4027df1c4fb1553cL    # -0.37700741021641826

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feda383a9668988L    # 0.9262102421383114

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd8daa52ec8a4b0L    # 0.3883450466988263

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed7d0b02b8ecf9L    # 0.9215140393420419

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401282f4fd471307L    # -0.9215140393420419

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd8daa52ec8a4b0L    # 0.3883450466988263

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6c40d73c18275L    # 0.7114321957452164

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3f9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe67cf78491af10L    # 0.7027547444572253

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3fa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401983087b6e50f0L    # -0.7027547444572253

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3fb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6c40d73c18275L    # 0.7114321957452164

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3fc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f7921f0fe670071L    # 0.006135884649154475

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3fd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefffd8858e8a92L    # 0.9999811752826011

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3fe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401000277a71756eL    # -0.9999811752826011

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x3ff

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f7921f0fe670071L    # 0.006135884649154475

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x400

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffff621621d02L    # 0.9999952938095762

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x401

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f6921f8becca4baL    # 0.003067956762965976

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x402

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4096de0741335b46L    # -0.003067956762965976

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x403

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffff621621d02L    # 0.9999952938095762

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x404

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe68ed1eaa19c71L    # 0.7049340803759049

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x405

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6b25ced2fe29cL    # 0.7092728264388657

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x406

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40194da312d01d64L    # -0.7092728264388657

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x407

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe68ed1eaa19c71L    # 0.7049340803759049

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x408

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed86c48445a44fL    # 0.9227011283338785

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x409

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd8ac4b86d5ed44L    # 0.38551605384391885

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x40a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402753b4792a12bcL    # -0.38551605384391885

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x40b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed86c48445a44fL    # 0.9227011283338785

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x40c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd84f6aaaf3903fL    # 0.37984720892405116

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x40d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed9a00dd8b3d46L    # 0.9250492407826776

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x40e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401265ff2274c2baL    # -0.9250492407826776

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x40f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd84f6aaaf3903fL    # 0.37984720892405116

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x410

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef5da6ed43685dL    # 0.9801821359681174

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x411

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc95b49e9b62afaL    # 0.1980984107179536

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x412

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4036a4b61649d506L    # -0.1980984107179536

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x413

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef5da6ed43685dL    # 0.9801821359681174

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x414

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1b250171373bfL    # 0.5530167055800276

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x415

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feaa9547a2cb98eL    # 0.8331701647019132

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x416

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401556ab85d34672L    # -0.8331701647019132

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x417

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1b250171373bfL    # 0.5530167055800276

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x418

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea8d676e545ad2L    # 0.829761233794523

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x419

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1dc1b64dc4872L    # 0.5581185312205561

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x41a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401e23e49b23b78eL    # -0.5581185312205561

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x41b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea8d676e545ad2L    # 0.829761233794523

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x41c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc8961727c41804L    # 0.19208039704989244

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x41d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef677556883ceeL    # 0.9813791933137546

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x41e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010988aa977c312L    # -0.9813791933137546

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x41f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc8961727c41804L    # 0.19208039704989244

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x420

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd60d2da75c9eL    # 0.9948793307948056

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x421

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb9dfb6eb24a85cL    # 0.10106986275482782

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x422

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4046204914db57a4L    # -0.10106986275482782

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x423

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd60d2da75c9eL    # 0.9948793307948056

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x424

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4397f5b2a4380L    # 0.6320187359398091

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x425

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8cc6a75184655L    # 0.7749531065948739

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x426

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401733958ae7b9abL    # -0.7749531065948739

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x427

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4397f5b2a4380L    # 0.6320187359398091

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x428

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec2cd14931e3f1L    # 0.8804708890521608

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x429

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fde57a86d3cd825L    # 0.47410021465055

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x42a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4021a85792c327dbL    # -0.47410021465055

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x42b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec2cd14931e3f1L    # 0.8804708890521608

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x42c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd263e6995554baL    # 0.2873474595447295

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x42d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feea68393e65800L    # 0.9578264130275329

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x42e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011597c6c19a800L    # -0.9578264130275329

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x42f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd263e6995554baL    # 0.2873474595447295

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x430

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee97ec36016b30L    # 0.9560452513499964

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x431

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd2c41a4e954520L    # 0.29321916269425863

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x432

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402d3be5b16abae0L    # -0.29321916269425863

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x433

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee97ec36016b30L    # 0.9560452513499964

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x434

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fddfeff66a941deL    # 0.46868882203582796

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x435

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec44833141c004L    # 0.8833633386657316

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x436

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013bb7ccebe3ffcL    # -0.8833633386657316

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x437

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fddfeff66a941deL    # 0.46868882203582796

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x438

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8ac871ede1d88L    # 0.7710605242618138

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x439

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4605a692b32a2L    # 0.6367618612362842

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x43a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401b9fa596d4cd5eL    # -0.6367618612362842

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x43b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8ac871ede1d88L    # 0.7710605242618138

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x43c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb84f8712c130a1L    # 0.094963495329639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x43d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefdafa7514538cL    # 0.9954807554919269

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x43e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401025058aebac74L    # -0.9954807554919269

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x43f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb84f8712c130a1L    # 0.094963495329639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x440

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff4dc54b1bed3L    # 0.9986402181802653

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x441

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3faab101bd5f8317L    # 0.052131704680283324

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x442

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40554efe42a07ce9L    # -0.052131704680283324

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x443

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff4dc54b1bed3L    # 0.9986402181802653

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x444

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe56ac35197649fL    # 0.6692825883466361

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x445

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7c6b89ce2d333L    # 0.7430079521351217

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x446

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40183947631d2ccdL    # -0.7430079521351217

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x447

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe56ac35197649fL    # 0.6692825883466361

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x448

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fece2b32799a060L    # 0.9026733182372588

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x449

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb8a7814fd5693L    # 0.4303264813400826

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x44a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40247587eb02a96dL    # -0.4303264813400826

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x44b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fece2b32799a060L    # 0.9026733182372588

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x44c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd5604012f467b4L    # 0.3339996514420094

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x44d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee298f4439197aL    # 0.9425731976014469

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x44e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011d670bbc6e686L    # -0.9425731976014469

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x44f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd5604012f467b4L    # 0.3339996514420094

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x450

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef045a14cf738cL    # 0.9692812353565485

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x451

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcf7b7480bd3802L    # 0.24595505033579462

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x452

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4030848b7f42c7feL    # -0.24595505033579462

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x453

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef045a14cf738cL    # 0.9692812353565485

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x454

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe05df3ec31b8b7L    # 0.5114688504379704

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x455

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb7f6686e792e9L    # 0.8593018183570084

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x456

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4014809979186d17L    # -0.8593018183570084

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x457

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe05df3ec31b8b7L    # 0.5114688504379704

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x458

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9a4dfa42b06b2L    # 0.8013761717231402

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x459

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe32421ec49a61fL    # 0.5981607069963423

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x45a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401cdbde13b659e1L    # -0.5981607069963423

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x45b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9a4dfa42b06b2L    # 0.8013761717231402

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x45c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc264994dfd3409L    # 0.14369503315029444

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x45d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefaafbcb0cfddcL    # 0.9896220174632009

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x45e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010550434f30224L    # -0.9896220174632009

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x45f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc264994dfd3409L    # 0.14369503315029444

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x460

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefa39bac7a1791L    # 0.9887216919603238

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x461

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc32b7bf94516a7L    # 0.1497645346773215

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x462

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403cd48406bae959L    # -0.1497645346773215

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x463

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefa39bac7a1791L    # 0.9887216919603238

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x464

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2fbc24b441015L    # 0.5932322950397998

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x465

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9c2d110f075c2L    # 0.8050313311429635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x466

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40163d2eef0f8a3eL    # -0.8050313311429635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x467

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2fbc24b441015L    # 0.5932322950397998

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x468

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb658f14fdbc47L    # 0.8561473283751945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x469

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe089112032b08cL    # 0.5167317990176499

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x46a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401f76eedfcd4f74L    # -0.5167317990176499

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x46b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb658f14fdbc47L    # 0.8561473283751945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x46c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fceb86b462de348L    # 0.2400030224487415

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x46d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef1090bc898f5fL    # 0.9707721407289504

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x46e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010ef6f437670a1L    # -0.9707721407289504

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x46f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fceb86b462de348L    # 0.2400030224487415

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x470

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee18a02fdc66d9L    # 0.9405060705932683

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x471

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd5bee78b9db3b6L    # 0.33977688440682685

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x472

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402a411874624c4aL    # -0.33977688440682685

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x473

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee18a02fdc66d9L    # 0.9405060705932683

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x474

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb2f971db31972L    # 0.4247796812091088

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x475

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecf830e8ce467bL    # 0.9052967593181188

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x476

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401307cf1731b985L    # -0.9052967593181188

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x477

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb2f971db31972L    # 0.4247796812091088

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x478

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7a4f707bf97d2L    # 0.7388873244606151

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x479

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe59001d5f723dfL    # 0.673829000378756

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x47a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401a6ffe2a08dc21L    # -0.673829000378756

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x47b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7a4f707bf97d2L    # 0.7388873244606151

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x47c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa78dbaa5874686L    # 0.04600318213091463

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x47d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff753bb1b9164L    # 0.9989412931868569

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x47e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401008ac44e46e9cL    # -0.9989412931868569

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x47f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa78dbaa5874686L    # 0.04600318213091463

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x480

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffce09ce2a679L    # 0.9996188224951786

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x481

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f9c454f4ce53b1dL    # 0.027608145778965743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x482

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4063bab0b31ac4e3L    # -0.027608145778965743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x483

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffce09ce2a679L    # 0.9996188224951786

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x484

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5fe7cbde56a10L    # 0.6873153408917592

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x485

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe73e558e079942L    # 0.726359155084346

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x486

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4018c1aa71f866beL    # -0.726359155084346

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x487

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5fe7cbde56a10L    # 0.6873153408917592

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x488

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed36fc7bcbfbdcL    # 0.9129621904283982

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x489

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fda1d6543b50ac0L    # 0.4080441628649787

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x48a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4025e29abc4af540L    # -0.4080441628649787

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x48b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed36fc7bcbfbdcL    # 0.9129621904283982

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x48c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd6d998638a0cb6L    # 0.35703096123343003

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x48d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fede4160f6d8d81L    # 0.9340925504042589

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x48e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40121be9f092727fL    # -0.9340925504042589

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x48f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd6d998638a0cb6L    # 0.35703096123343003

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x490

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef33685a3aaef0L    # 0.9750253450669941

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x491

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcc6d90535d74ddL    # 0.22209362097320354

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x492

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4033926faca28b23L    # -0.22209362097320354

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x493

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef33685a3aaef0L    # 0.9750253450669941

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x494

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1097248d0a957L    # 0.532403127877198

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x495

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb16742a4ca2f5L    # 0.8464909387740521

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x496

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4014e98bd5b35d0bL    # -0.8464909387740521

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x497

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1097248d0a957L    # 0.532403127877198

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x498

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea1b26d2c0a75eL    # 0.8158144108067338

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x499

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2818bef4d3cbaL    # 0.5783137964116556

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x49a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401d7e7410b2c346L    # -0.5783137964116556

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x49b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea1b26d2c0a75eL    # 0.8158144108067338

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x49c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc57f008654cbdeL    # 0.16793829497473117

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x49d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef8ba737cb4b78L    # 0.9857975091675675

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x49e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40107458c834b488L    # -0.9857975091675675

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x49f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc57f008654cbdeL    # 0.16793829497473117

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefbf470f0a8d88L    # 0.9920993131421918

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc00ee8ad6fb85bL    # 0.12545498341154623

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403ff117529047a5L    # -0.12545498341154623

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefbf470f0a8d88L    # 0.9920993131421918

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe39c23e3d63029L    # 0.6128100824294097

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe94990e3ac4a6cL    # 0.79023022143731

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4016b66f1c53b594L    # -0.79023022143731

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe39c23e3d63029L    # 0.6128100824294097

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febcb54cb0d2327L    # 0.8685707059713409

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4a9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdfb7575c24d2deL    # 0.49556526182577254

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4aa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402048a8a3db2d22L    # -0.49556526182577254

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ab

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febcb54cb0d2327L    # 0.8685707059713409

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ac

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd0e15b4e1749ceL    # 0.2637546789748314

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ad

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeddeb6a078651L    # 0.9645897932898128

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ae

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011221495f879afL    # -0.9645897932898128

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4af

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd0e15b4e1749ceL    # 0.2637546789748314

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee5a9d550467d3L    # 0.9485613499157303

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd44310dc8936f0L    # 0.31659337555616585

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402bbcef2376c910L    # -0.31659337555616585

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee5a9d550467d3L    # 0.9485613499157303

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc997fc3865389L    # 0.4468688401623742

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feca08f19b9c449L    # 0.8945994856313827

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40135f70e6463bb7L    # -0.8945994856313827

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc997fc3865389L    # 0.4468688401623742

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe82a9c13f545ffL    # 0.7552013768965365

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4b9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4f9cc25cca486L    # 0.6554928529996153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ba

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401b0633da335b7aL    # -0.6554928529996153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4bb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe82a9c13f545ffL    # 0.7552013768965365

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4bc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb20c9674ed444dL    # 0.07050457338961387

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4bd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefeb9d2530410fL    # 0.9975114561403035

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4be

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40101462dacfbef1L    # -0.9975114561403035

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4bf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb20c9674ed444dL    # 0.07050457338961387

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe7ea85482d60L    # 0.997060070339483

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb39d9f12c5a299L    # 0.07662386139203149

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404c6260ed3a5d67L    # -0.07662386139203149

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe7ea85482d60L    # 0.997060070339483

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4d3bc6d589f7fL    # 0.6508466849963809

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe84b7111af83faL    # 0.7592091889783881

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4017b48eee507c06L    # -0.7592091889783881

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4d3bc6d589f7fL    # 0.6508466849963809

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec89f587029c13L    # 0.8918407093923427

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4c9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdcf34baee1cd21L    # 0.4523495872337709

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ca

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40230cb4511e32dfL    # -0.4523495872337709

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4cb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec89f587029c13L    # 0.8918407093923427

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4cc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd3e39be96ec271L    # 0.3107671527496115

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4cd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee6a61c55d53a7L    # 0.9504860739494817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ce

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011959e3aa2ac59L    # -0.9504860739494817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4cf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd3e39be96ec271L    # 0.3107671527496115

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feed0835e999009L    # 0.9629532668736839

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd1423eefc69378L    # 0.2696683255729151

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402ebdc110396c88L    # -0.2696683255729151

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feed0835e999009L    # 0.9629532668736839

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf5fdee656cda3L    # 0.49022648328829116

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febe41b611154c1L    # 0.8715950866559511

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40141be49eeeab3fL    # -0.8715950866559511

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf5fdee656cda3L    # 0.49022648328829116

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe92aa41fc5a815L    # 0.7864552135990858

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4d9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3c3c44981c518L    # 0.617647307937804

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4da

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401c3c3bb67e3ae8L    # -0.617647307937804

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4db

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe92aa41fc5a815L    # 0.7864552135990858

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4dc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbe8eb7fde4aa3fL    # 0.11936521481099137

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4dd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefc56e3b7d9af6L    # 0.9928504144598651

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4de

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40103a91c482650aL    # -0.9928504144598651

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4df

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbe8eb7fde4aa3fL    # 0.11936521481099137

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef830f4a40c60cL    # 0.9847485018019042

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc6451a831d830dL    # 0.17398387338746382

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4039bae57ce27cf3L    # -0.17398387338746382

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef830f4a40c60cL    # 0.9847485018019042

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe258734cbb7110L    # 0.5732971666980422

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea38184a593bc6L    # 0.819347520076797

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4015c7e7b5a6c43aL    # -0.819347520076797

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe258734cbb7110L    # 0.5732971666980422

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feafb8fd89f57b6L    # 0.8432082396418454

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4e9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe133e9cfee254fL    # 0.5375870762956455

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ea

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401ecc163011dab1L    # -0.5375870762956455

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4eb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feafb8fd89f57b6L    # 0.8432082396418454

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ec

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcba96334f15dadL    # 0.21610679707621952

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ed

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef3e6bbc1bbc65L    # 0.9763697313300211

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ee

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010c19443e4439bL    # -0.9763697313300211

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ef

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcba96334f15dadL    # 0.21610679707621952

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedd1fef38a915aL    # 0.9318842655816681

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd73763c9261092L    # 0.3627557243673972

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4028c89c36d9ef6eL    # -0.3627557243673972

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedd1fef38a915aL    # 0.9318842655816681

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd9c17d440df9f2L    # 0.40243465085941843

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed4b5b1b187524L    # 0.9154487160882678

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012b4a4e4e78adcL    # -0.9154487160882678

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd9c17d440df9f2L    # 0.40243465085941843

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe71bac960e41bfL    # 0.7221281939292153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4f9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe622e44fec22ffL    # 0.6917592583641577

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4fa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4019dd1bb013dd01L    # -0.6917592583641577

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4fb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe71bac960e41bfL    # 0.7221281939292153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4fc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f95fd4d21fab226L    # 0.021474080275469508

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4fd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffe1c6870cb77L    # 0.9997694053512153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4fe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401001e3978f3489L    # -0.9997694053512153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x4ff

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f95fd4d21fab226L    # 0.021474080275469508

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x500

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefff0943c53bd1L    # 0.9998823474542126

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x501

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f8f6a296ab997cbL    # 0.015339206284988102

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x502

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x407095d695466835L    # -0.015339206284988102

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x503

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefff0943c53bd1L    # 0.9998823474542126

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x504

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe64715437f535bL    # 0.696177131491463

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x505

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6f8ca99c95b75L    # 0.7178700450557317

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x506

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401907356636a48bL    # -0.7178700450557317

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x507

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe64715437f535bL    # 0.696177131491463

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x508

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed5f7172888a7fL    # 0.9179007756213905

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x509

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd96555b7ab948fL    # 0.3968099874167103

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x50a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40269aaa48546b71L    # -0.3968099874167103

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x50b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed5f7172888a7fL    # 0.9179007756213905

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x50c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd794f5e613dfaeL    # 0.3684668299533723

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x50d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedbf9e4395759aL    # 0.9296408958431812

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x50e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40124061bc6a8a66L    # -0.9296408958431812

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x50f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd794f5e613dfaeL    # 0.3684668299533723

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x510

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef492206bcabb4L    # 0.9776773578245099

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x511

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcae4f1d5f3b9abL    # 0.2101118368804696

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x512

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40351b0e2a0c4655L    # -0.2101118368804696

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x513

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef492206bcabb4L    # 0.9776773578245099

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x514

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe15e36e4dbe2bcL    # 0.5427507848645159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x515

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feae068f345ecefL    # 0.8398937941959995

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x516

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40151f970cba1311L    # -0.8398937941959995

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x517

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe15e36e4dbe2bcL    # 0.5427507848645159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x518

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea54c91090f523L    # 0.8228497813758263

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x519

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe22f2d662c13e2L    # 0.5682589526701316

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x51a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401dd0d299d3ec1eL    # -0.5682589526701316

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x51b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea54c91090f523L    # 0.8228497813758263

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x51c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc70afd8d08c4ffL    # 0.18002290140569951

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x51d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef7a299c1a322aL    # 0.9836624192117303

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x51e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401085d663e5cdd6L    # -0.9836624192117303

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x51f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc70afd8d08c4ffL    # 0.18002290140569951

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x520

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefcb4703914354L    # 0.9935641355205953

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x521

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbcff533b307dc1L    # 0.11327095217756435

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x522

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404300acc4cf823fL    # -0.11327095217756435

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x523

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefcb4703914354L    # 0.9935641355205953

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x524

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3eb33eabe0680L    # 0.62246127937415

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x525

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe90b7943575efeL    # 0.7826505961665757

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x526

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4016f486bca8a102L    # -0.7826505961665757

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x527

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3eb33eabe0680L    # 0.62246127937415

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x528

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febfc9d25a1b147L    # 0.8745866522781761

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x529

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf081906bff7feL    # 0.4848692480007911

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x52a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4020f7e6f9400802L    # -0.4848692480007911

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x52b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febfc9d25a1b147L    # 0.8745866522781761

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x52c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd1a2f7fbe8f243L    # 0.27557181931095814

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x52d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feec2cf4b1af6b2L    # 0.9612804858113206

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x52e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40113d30b4e5094eL    # -0.9612804858113206

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x52f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd1a2f7fbe8f243L    # 0.27557181931095814

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x530

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee79db29a5165aL    # 0.9523750127197659

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x531

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd383f5e353b6abL    # 0.30492922973540243

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x532

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402c7c0a1cac4955L    # -0.30492922973540243

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x533

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee79db29a5165aL    # 0.9523750127197659

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x534

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdd4cd02ba8609dL    # 0.45781330359887723

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x535

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec7315899eaad7L    # 0.8890483558546646

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x536

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40138cea76615529L    # -0.8890483558546646

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x537

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdd4cd02ba8609dL    # 0.45781330359887723

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x538

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe86c0a1d9aa195L    # 0.7631884172633813

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x539

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4ad79516722f1L    # 0.6461760129833164

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x53a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401b5286ae98dd0fL    # -0.6461760129833164

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x53b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe86c0a1d9aa195L    # 0.7631884172633813

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x53c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb52e774a4d4d0aL    # 0.08274026454937569

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x53d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe3e92be9d886L    # 0.9965711457905548

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x53e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40101c16d416277aL    # -0.9965711457905548

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x53f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb52e774a4d4d0aL    # 0.08274026454937569

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x540

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefef0102826191L    # 0.997925286198596

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x541

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb07b614e463064L    # 0.06438263092985747

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x542

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404f849eb1b9cf9cL    # -0.06438263092985747

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x543

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefef0102826191L    # 0.997925286198596

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x544

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe51fa81cd99aa6L    # 0.6601143420674205

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x545

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8098b756e52faL    # 0.7511651319096864

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x546

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4017f6748a91ad06L    # -0.7511651319096864

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x547

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe51fa81cd99aa6L    # 0.6601143420674205

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x548

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecb6e20a00da99L    # 0.8973245807054183

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x549

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc3f6d47263129L    # 0.44137126873171667

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x54a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4023c092b8d9ced7L    # -0.44137126873171667

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x54b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecb6e20a00da99L    # 0.8973245807054183

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x54c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd4a253d11b82f3L    # 0.32240767880106985

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x54d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee4a8dff81ce5eL    # 0.9466009130832835

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x54e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011b572007e31a2L    # -0.9466009130832835

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x54f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd4a253d11b82f3L    # 0.32240767880106985

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x550

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeeb074c50a544L    # 0.9661900034454125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x551

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd0804e05eb661eL    # 0.257831102162159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x552

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402f7fb1fa1499e2L    # -0.257831102162159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x553

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeeb074c50a544L    # 0.9661900034454125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x554

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe00740c82b82e1L    # 0.5008853826112408

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x555

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febb249a0b6c40dL    # 0.8655136240905691

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x556

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40144db65f493bf3L    # -0.8655136240905691

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x557

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe00740c82b82e1L    # 0.5008853826112408

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x558

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9683f42bd7fe1L    # 0.7939754775543372

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x559

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe374531b817f8dL    # 0.6079497849677736

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x55a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401c8bace47e8073L    # -0.6079497849677736

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x55b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9683f42bd7fe1L    # 0.7939754775543372

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x55c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc0d64dbcb26786L    # 0.13154002870288312

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x55d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefb8d18d66adb7L    # 0.9913108598461154

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x55e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010472e72995249L    # -0.9913108598461154

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x55f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc0d64dbcb26786L    # 0.13154002870288312

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x560

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef93f14f85ac08L    # 0.9868094018141855

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x561

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc4b8b17f79fa88L    # 0.16188639378011183

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x562

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403b474e80860578L    # -0.16188639378011183

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x563

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef93f14f85ac08L    # 0.9868094018141855

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x564

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2aa76e87aeb58L    # 0.5833086529376983

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x565

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9fdf4f13149deL    # 0.8122505865852039

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x566

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4016020b0eceb622L    # -0.8122505865852039

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x567

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2aa76e87aeb58L    # 0.5833086529376983

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x568

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb3115a5f37bf3L    # 0.8497417680008524

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x569

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0ded0b84bc4b6L    # 0.5271991347819014

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x56a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401f212f47b43b4aL    # -0.5271991347819014

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x56b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb3115a5f37bf3L    # 0.8497417680008524

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x56c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcd31774d2cbdeeL    # 0.22807208317088573

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x56d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef2817fc4609ceL    # 0.973644249650812

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x56e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010d7e803b9f632L    # -0.973644249650812

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x56f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcd31774d2cbdeeL    # 0.22807208317088573

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x570

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedf5e36a9ba59cL    # 0.9362656671702783

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x571

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd67b949cad63cbL    # 0.35129275608556715

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x572

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4029846b63529c35L    # -0.35129275608556715

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x573

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedf5e36a9ba59cL    # 0.9362656671702783

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x574

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fda790cd3dbf31bL    # 0.41363831223843456

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x575

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed2255c6e5a4e1L    # 0.9104412922580672

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x576

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012ddaa391a5b1fL    # -0.9104412922580672

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x577

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fda790cd3dbf31bL    # 0.41363831223843456

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x578

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe760c52c304764L    # 0.7305627692278276

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x579

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5d9dee73e345cL    # 0.6828455463852481

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x57a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401a262118c1cba4L    # -0.6828455463852481

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x57b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe760c52c304764L    # 0.7305627692278276

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x57c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa14685db42c17fL    # 0.03374117185137759

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x57d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffb55e425fdaeL    # 0.9994306045554617

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x57e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401004aa1bda0252L    # -0.9994306045554617

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x57f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa14685db42c17fL    # 0.03374117185137759

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x580

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff97c4208c014L    # 0.9992047586183639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x581

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa46a396ff86179L    # 0.03987292758773981

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x582

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x405b95c690079e87L    # -0.03987292758773981

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x583

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff97c4208c014L    # 0.9992047586183639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x584

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5b50b264f7448L    # 0.6783500431298615

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x585

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe782fb1b90b35bL    # 0.7347388780959635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x586

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40187d04e46f4ca5L    # -0.7347388780959635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x587

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5b50b264f7448L    # 0.6783500431298615

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x588

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed0d672f59d2b9L    # 0.9078861164876663

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x589

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdad473125cdc09L    # 0.41921688836322396

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x58a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40252b8ceda323f7L    # -0.41921688836322396

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x58b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed0d672f59d2b9L    # 0.9078861164876663

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x58c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd61d595c88c202L    # 0.34554132496398904

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x58d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee0766d9280f54L    # 0.9384035340631081

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x58e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011f89926d7f0acL    # -0.9384035340631081

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x58f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd61d595c88c202L    # 0.34554132496398904

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x590

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef1c7abe284708L    # 0.9722264970789363

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x591

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcdf5163f01099aL    # 0.23404195858354343

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x592

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40320ae9c0fef666L    # -0.23404195858354343

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x593    # 2.0E-42f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef1c7abe284708L    # 0.9722264970789363

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x594

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0b405878f85ecL    # 0.5219752929371544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x595

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb4b7409de7925L    # 0.8529606049303636

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x596

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4014b48bf62186dbL    # -0.8529606049303636

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x597

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0b405878f85ecL    # 0.5219752929371544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x598

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9e082edb42472L    # 0.808656181588175

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x599

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2d333d34e9bb8L    # 0.5882815482226453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x59a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401d2ccc2cb16448L    # -0.5882815482226453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x59b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9e082edb42472L    # 0.808656181588175

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x59c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc3f22f57db4893L    # 0.15582839765426523

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x59d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef9bed7cfbde29L    # 0.9877841416445722

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x59e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40106412830421d7L    # -0.9877841416445722

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x59f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc3f22f57db4893L    # 0.15582839765426523

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefb20dc681d54dL    # 0.9904850842564571

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc19d8940be24e7L    # 0.13762012158648604

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403e6276bf41db19L    # -0.13762012158648604

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefb20dc681d54dL    # 0.9904850842564571

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe34c5252c14de1L    # 0.6030665985403482

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe986aef1457594L    # 0.7976908409433912

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401679510eba8a6cL    # -0.7976908409433912

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe34c5252c14de1L    # 0.6030665985403482

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb98fa1fd9155eL    # 0.8624239561110405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5a9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe032ae55edbd96L    # 0.5061866453451553

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5aa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401fcd51aa12426aL    # -0.5061866453451553

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ab

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb98fa1fd9155eL    # 0.8624239561110405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ac

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd01f1806b9fdd2L    # 0.25189781815421697

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ad

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feef7d6e51ca3c0L    # 0.9677538370934755

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ae

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401108291ae35c40L    # -0.9677538370934755

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5af

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd01f1806b9fdd2L    # 0.25189781815421697

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee3a33ec75ce85L    # 0.9446048372614803

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd50163dc197048L    # 0.32820984357909255

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402afe9c23e68fb8L    # -0.32820984357909255

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee3a33ec75ce85L    # 0.9446048372614803

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdbe51517ffc0d9L    # 0.4358570799222555

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecccee20c2dea0L    # 0.9000158920161603

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40133311df3d2160L    # -0.9000158920161603

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdbe51517ffc0d9L    # 0.4358570799222555

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7e83f87b03686L    # 0.7471006059801801

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5b9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5454ff5159dfcL    # 0.6647109782033449

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ba

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401abab00aea6204L    # -0.6647109782033449

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5bb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7e83f87b03686L    # 0.7471006059801801

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5bc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fadd406f9808ec9L    # 0.05825826450043576

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5bd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff21614e131edL    # 0.9983015449338929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5be

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40100de9eb1ece13L    # -0.9983015449338929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5bf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fadd406f9808ec9L    # 0.05825826450043576

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefdf9922f73307L    # 0.996044700901252

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb6bf1b3e79b129L    # 0.0888535525825246

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404940e4c1864ed7L    # -0.0888535525825246

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefdf9922f73307L    # 0.996044700901252

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe48703306091ffL    # 0.6414810128085832

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe88c66e7481ba1L    # 0.7671389119358204

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4017739918b7e45fL    # -0.7671389119358204

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe48703306091ffL    # 0.6414810128085832

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec5bef59fef85aL    # 0.8862225301488806

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5c9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdda60c5cfa10d9L    # 0.4632597835518602

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ca

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402259f3a305ef27L    # -0.4632597835518602

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5cb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec5bef59fef85aL    # 0.8862225301488806

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5cc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd3241fb638baafL    # 0.2990798263080405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5cd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee89095bad6025L    # 0.9542280951091057

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ce

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401176f6a4529fdbL    # -0.9542280951091057

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5cf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd3241fb638baafL    # 0.2990798263080405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeb4cf515b8811L    # 0.9595715130819845

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd2038583d727beL    # 0.281464937925758

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402dfc7a7c28d842L    # -0.281464937925758

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeb4cf515b8811L    # 0.9595715130819845

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdeb00695f25620L    # 0.479493757660153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec14d9dc465e57L    # 0.8775452902072612

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013eb2623b9a1a9L    # -0.8775452902072612

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdeb00695f25620L    # 0.479493757660153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8ec109b486c49L    # 0.778816512381476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5d9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe41272663d108cL    # 0.6272518154951441

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5da

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401bed8d99c2ef74L    # -0.6272518154951441

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5db

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8ec109b486c49L    # 0.778816512381476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5dc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbb6fa6ec38f64cL    # 0.10717242495680884

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5dd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd0d158d86087L    # 0.9942404494531879

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5de

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40102f2ea7279f79L    # -0.9942404494531879

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5df

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbb6fa6ec38f64cL    # 0.10717242495680884

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef70f6434b7eb7L    # 0.9825393022874412

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc7d0a7bbd2cb1cL

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40382f58442d34e4L    # -0.18605515166344666

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef70f6434b7eb7L    # 0.9825393022874412

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe205baa17560d6L    # 0.5631993440138341

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea7138de9d60f5L    # 0.8263210628456635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40158ec721629f0bL    # -0.8263210628456635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe205baa17560d6L    # 0.5631993440138341

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feac4ffbd3efac8L    # 0.836547727223512

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5e9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe188591f3a46e5L    # 0.5478940591731002

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ea

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401e77a6e0c5b91bL    # -0.5478940591731002

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5eb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feac4ffbd3efac8L    # 0.836547727223512

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ec

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fca203e1b1831daL    # 0.20410896609281687

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ed

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef538b1faf2d07L    # 0.9789481753190622

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ee

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010ac74e050d2f9L    # -0.9789481753190622

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ef

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fca203e1b1831daL    # 0.20410896609281687

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedacf42ce68ab9L    # 0.9273625256504011

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd7f24dd37341e4L    # 0.374164062971458

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40280db22c8cbe1cL    # -0.374164062971458

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedacf42ce68ab9L    # 0.9273625256504011

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd908ef81ef7bd1L    # 0.39117038430225387

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed733f508c0dffL    # 0.9203182767091106

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40128cc0af73f201L    # -0.9203182767091106

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd908ef81ef7bd1L    # 0.39117038430225387

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6d5afef4aafcdL    # 0.7135848687807936

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5f9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe66b0f3f52b386L    # 0.7005687939432483

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5fa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401994f0c0ad4c7aL    # -0.7005687939432483

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5fb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6d5afef4aafcdL    # 0.7135848687807936

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5fc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f82d96b0e509703L    # 0.00920375478205982

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5fd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefffa72c978c4fL    # 0.9999576445519639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5fe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40100058d36873b1L    # -0.9999576445519639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x5ff

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f82d96b0e509703L    # 0.00920375478205982

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x600

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefffa72c978c4fL    # 0.9999576445519639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x601

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f82d96b0e509703L    # 0.00920375478205982

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x602

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x407d2694f1af68fdL    # -0.00920375478205982

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x603

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefffa72c978c4fL    # 0.9999576445519639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x604

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe66b0f3f52b386L    # 0.7005687939432483

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x605

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6d5afef4aafcdL    # 0.7135848687807936

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x606

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40192a5010b55033L    # -0.7135848687807936

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x607

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe66b0f3f52b386L    # 0.7005687939432483

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x608

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed733f508c0dffL    # 0.9203182767091106

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x609

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd908ef81ef7bd1L    # 0.39117038430225387

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x60a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4026f7107e10842fL    # -0.39117038430225387

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x60b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed733f508c0dffL    # 0.9203182767091106

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x60c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd7f24dd37341e4L    # 0.374164062971458

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x60d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedacf42ce68ab9L    # 0.9273625256504011

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x60e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012530bd3197547L    # -0.9273625256504011

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x60f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd7f24dd37341e4L    # 0.374164062971458

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x610

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef538b1faf2d07L    # 0.9789481753190622

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x611

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fca203e1b1831daL    # 0.20410896609281687

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x612

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4035dfc1e4e7ce26L    # -0.20410896609281687

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x613

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef538b1faf2d07L    # 0.9789481753190622

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x614

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe188591f3a46e5L    # 0.5478940591731002

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x615

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feac4ffbd3efac8L    # 0.836547727223512

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x616

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40153b0042c10538L    # -0.836547727223512

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x617

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe188591f3a46e5L    # 0.5478940591731002

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x618

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea7138de9d60f5L    # 0.8263210628456635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x619

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe205baa17560d6L    # 0.5631993440138341

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x61a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401dfa455e8a9f2aL    # -0.5631993440138341

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x61b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea7138de9d60f5L    # 0.8263210628456635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x61c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc7d0a7bbd2cb1cL

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x61d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef70f6434b7eb7L    # 0.9825393022874412

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x61e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40108f09bcb48149L    # -0.9825393022874412

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x61f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc7d0a7bbd2cb1cL

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x620

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd0d158d86087L    # 0.9942404494531879

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x621

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbb6fa6ec38f64cL    # 0.10717242495680884

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x622

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4044905913c709b4L    # -0.10717242495680884

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x623

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd0d158d86087L    # 0.9942404494531879

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x624

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe41272663d108cL    # 0.6272518154951441

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x625

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8ec109b486c49L    # 0.778816512381476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x626

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401713ef64b793b7L    # -0.778816512381476

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x627

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe41272663d108cL    # 0.6272518154951441

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x628

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec14d9dc465e57L    # 0.8775452902072612

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x629

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdeb00695f25620L    # 0.479493757660153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x62a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40214ff96a0da9e0L    # -0.479493757660153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x62b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec14d9dc465e57L    # 0.8775452902072612

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x62c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd2038583d727beL    # 0.281464937925758

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x62d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeb4cf515b8811L    # 0.9595715130819845

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x62e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40114b30aea477efL    # -0.9595715130819845

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x62f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd2038583d727beL    # 0.281464937925758

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x630

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee89095bad6025L    # 0.9542280951091057

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x631

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd3241fb638baafL    # 0.2990798263080405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x632

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402cdbe049c74551L    # -0.2990798263080405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x633

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee89095bad6025L    # 0.9542280951091057

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x634

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdda60c5cfa10d9L    # 0.4632597835518602

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x635

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec5bef59fef85aL    # 0.8862225301488806

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x636

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013a410a60107a6L    # -0.8862225301488806

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x637

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdda60c5cfa10d9L    # 0.4632597835518602

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x638

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe88c66e7481ba1L    # 0.7671389119358204

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x639

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe48703306091ffL    # 0.6414810128085832

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x63a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401b78fccf9f6e01L    # -0.6414810128085832

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x63b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe88c66e7481ba1L    # 0.7671389119358204

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x63c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb6bf1b3e79b129L    # 0.0888535525825246

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x63d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefdf9922f73307L    # 0.996044700901252

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x63e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40102066dd08ccf9L    # -0.996044700901252

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x63f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb6bf1b3e79b129L    # 0.0888535525825246

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x640

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff21614e131edL    # 0.9983015449338929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x641

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fadd406f9808ec9L    # 0.05825826450043576

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x642

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40522bf9067f7137L    # -0.05825826450043576

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x643

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff21614e131edL    # 0.9983015449338929

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x644

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5454ff5159dfcL    # 0.6647109782033449

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x645

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7e83f87b03686L    # 0.7471006059801801

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x646

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401817c0784fc97aL    # -0.7471006059801801

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x647

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5454ff5159dfcL    # 0.6647109782033449

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x648

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecccee20c2dea0L    # 0.9000158920161603

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x649

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdbe51517ffc0d9L    # 0.4358570799222555

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x64a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40241aeae8003f27L    # -0.4358570799222555

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x64b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecccee20c2dea0L    # 0.9000158920161603

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x64c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd50163dc197048L    # 0.32820984357909255

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x64d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee3a33ec75ce85L    # 0.9446048372614803

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x64e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011c5cc138a317bL    # -0.9446048372614803

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x64f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd50163dc197048L    # 0.32820984357909255

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x650

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feef7d6e51ca3c0L    # 0.9677538370934755

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x651

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd01f1806b9fdd2L    # 0.25189781815421697

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x652

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402fe0e7f946022eL    # -0.25189781815421697

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x653

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feef7d6e51ca3c0L    # 0.9677538370934755

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x654

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe032ae55edbd96L    # 0.5061866453451553

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x655

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb98fa1fd9155eL    # 0.8624239561110405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x656

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40146705e026eaa2L    # -0.8624239561110405

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x657

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe032ae55edbd96L    # 0.5061866453451553

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x658

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe986aef1457594L    # 0.7976908409433912

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x659

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe34c5252c14de1L    # 0.6030665985403482

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x65a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401cb3adad3eb21fL    # -0.6030665985403482

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x65b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe986aef1457594L    # 0.7976908409433912

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x65c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc19d8940be24e7L    # 0.13762012158648604

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x65d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefb20dc681d54dL    # 0.9904850842564571

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x65e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40104df2397e2ab3L    # -0.9904850842564571

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x65f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc19d8940be24e7L    # 0.13762012158648604

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x660

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef9bed7cfbde29L    # 0.9877841416445722

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x661

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc3f22f57db4893L    # 0.15582839765426523

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x662

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403c0dd0a824b76dL    # -0.15582839765426523

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x663

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef9bed7cfbde29L    # 0.9877841416445722

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x664

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2d333d34e9bb8L    # 0.5882815482226453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x665

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9e082edb42472L    # 0.808656181588175

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x666

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40161f7d124bdb8eL    # -0.808656181588175

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x667

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2d333d34e9bb8L    # 0.5882815482226453

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x668

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb4b7409de7925L    # 0.8529606049303636

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x669

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0b405878f85ecL    # 0.5219752929371544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x66a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401f4bfa78707a14L    # -0.5219752929371544

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x66b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb4b7409de7925L    # 0.8529606049303636

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x66c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcdf5163f01099aL    # 0.23404195858354343

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x66d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef1c7abe284708L    # 0.9722264970789363

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x66e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010e38541d7b8f8L    # -0.9722264970789363

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x66f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcdf5163f01099aL    # 0.23404195858354343

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x670

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee0766d9280f54L    # 0.9384035340631081

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x671

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd61d595c88c202L    # 0.34554132496398904

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x672

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4029e2a6a3773dfeL    # -0.34554132496398904

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x673

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee0766d9280f54L    # 0.9384035340631081

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x674

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdad473125cdc09L    # 0.41921688836322396

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x675

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed0d672f59d2b9L    # 0.9078861164876663

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x676

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012f298d0a62d47L    # -0.9078861164876663

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x677

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdad473125cdc09L    # 0.41921688836322396

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x678

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe782fb1b90b35bL    # 0.7347388780959635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x679

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5b50b264f7448L    # 0.6783500431298615

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x67a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401a4af4d9b08bb8L    # -0.6783500431298615

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x67b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe782fb1b90b35bL    # 0.7347388780959635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x67c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa46a396ff86179L    # 0.03987292758773981

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x67d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff97c4208c014L    # 0.9992047586183639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x67e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40100683bdf73fecL    # -0.9992047586183639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x67f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa46a396ff86179L    # 0.03987292758773981

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x680

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffb55e425fdaeL    # 0.9994306045554617

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x681

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa14685db42c17fL    # 0.03374117185137759

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x682

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x405eb97a24bd3e81L    # -0.03374117185137759

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x683

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffb55e425fdaeL    # 0.9994306045554617

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x684

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5d9dee73e345cL    # 0.6828455463852481

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x685

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe760c52c304764L    # 0.7305627692278276

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x686

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40189f3ad3cfb89cL    # -0.7305627692278276

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x687

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5d9dee73e345cL    # 0.6828455463852481

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x688

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed2255c6e5a4e1L    # 0.9104412922580672

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x689

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fda790cd3dbf31bL    # 0.41363831223843456

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x68a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402586f32c240ce5L    # -0.41363831223843456

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x68b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed2255c6e5a4e1L    # 0.9104412922580672

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x68c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd67b949cad63cbL    # 0.35129275608556715

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x68d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedf5e36a9ba59cL    # 0.9362656671702783

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x68e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40120a1c95645a64L    # -0.9362656671702783

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x68f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd67b949cad63cbL    # 0.35129275608556715

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x690

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef2817fc4609ceL    # 0.973644249650812

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x691

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcd31774d2cbdeeL    # 0.22807208317088573

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x692

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4032ce88b2d34212L    # -0.22807208317088573

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x693

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef2817fc4609ceL    # 0.973644249650812

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x694

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0ded0b84bc4b6L    # 0.5271991347819014

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x695

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb3115a5f37bf3L    # 0.8497417680008524

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x696

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4014ceea5a0c840dL    # -0.8497417680008524

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x697

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe0ded0b84bc4b6L    # 0.5271991347819014

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x698

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9fdf4f13149deL    # 0.8122505865852039

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x699

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2aa76e87aeb58L    # 0.5833086529376983

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x69a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401d5589178514a8L    # -0.5833086529376983

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x69b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9fdf4f13149deL    # 0.8122505865852039

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x69c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc4b8b17f79fa88L    # 0.16188639378011183

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x69d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef93f14f85ac08L    # 0.9868094018141855

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x69e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40106c0eb07a53f8L    # -0.9868094018141855

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x69f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc4b8b17f79fa88L    # 0.16188639378011183

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefb8d18d66adb7L    # 0.9913108598461154

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc0d64dbcb26786L    # 0.13154002870288312

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403f29b2434d987aL    # -0.13154002870288312

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefb8d18d66adb7L    # 0.9913108598461154

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe374531b817f8dL    # 0.6079497849677736

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9683f42bd7fe1L    # 0.7939754775543372

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401697c0bd42801fL    # -0.7939754775543372

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe374531b817f8dL    # 0.6079497849677736

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febb249a0b6c40dL    # 0.8655136240905691

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6a9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe00740c82b82e1L    # 0.5008853826112408

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6aa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401ff8bf37d47d1fL    # -0.5008853826112408

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ab

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febb249a0b6c40dL    # 0.8655136240905691

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ac

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd0804e05eb661eL    # 0.257831102162159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ad

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeeb074c50a544L    # 0.9661900034454125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ae

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401114f8b3af5abcL    # -0.9661900034454125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6af

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd0804e05eb661eL    # 0.257831102162159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee4a8dff81ce5eL    # 0.9466009130832835

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd4a253d11b82f3L    # 0.32240767880106985

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402b5dac2ee47d0dL    # -0.32240767880106985

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee4a8dff81ce5eL    # 0.9466009130832835

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc3f6d47263129L    # 0.44137126873171667

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecb6e20a00da99L    # 0.8973245807054183

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013491df5ff2567L    # -0.8973245807054183

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc3f6d47263129L    # 0.44137126873171667

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8098b756e52faL    # 0.7511651319096864

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6b9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe51fa81cd99aa6L    # 0.6601143420674205

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ba

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401ae057e326655aL    # -0.6601143420674205

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6bb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8098b756e52faL    # 0.7511651319096864

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6bc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb07b614e463064L    # 0.06438263092985747

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6bd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefef0102826191L    # 0.997925286198596

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6be

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401010fefd7d9e6fL    # -0.997925286198596

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6bf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb07b614e463064L    # 0.06438263092985747

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe3e92be9d886L    # 0.9965711457905548

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb52e774a4d4d0aL    # 0.08274026454937569

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404ad188b5b2b2f6L    # -0.08274026454937569

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe3e92be9d886L    # 0.9965711457905548

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4ad79516722f1L    # 0.6461760129833164

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe86c0a1d9aa195L    # 0.7631884172633813

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401793f5e2655e6bL    # -0.7631884172633813

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4ad79516722f1L    # 0.6461760129833164

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec7315899eaad7L    # 0.8890483558546646

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6c9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdd4cd02ba8609dL    # 0.45781330359887723

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ca

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4022b32fd4579f63L    # -0.45781330359887723

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6cb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec7315899eaad7L    # 0.8890483558546646

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6cc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd383f5e353b6abL    # 0.30492922973540243

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6cd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee79db29a5165aL    # 0.9523750127197659

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ce

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40118624d65ae9a6L    # -0.9523750127197659

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6cf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd383f5e353b6abL    # 0.30492922973540243

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feec2cf4b1af6b2L    # 0.9612804858113206

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd1a2f7fbe8f243L    # 0.27557181931095814

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402e5d0804170dbdL    # -0.27557181931095814

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feec2cf4b1af6b2L    # 0.9612804858113206

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf081906bff7feL    # 0.4848692480007911

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febfc9d25a1b147L    # 0.8745866522781761

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40140362da5e4eb9L    # -0.8745866522781761

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf081906bff7feL    # 0.4848692480007911

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe90b7943575efeL    # 0.7826505961665757

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6d9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3eb33eabe0680L    # 0.62246127937415

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6da

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401c14cc1541f980L    # -0.62246127937415

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6db

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe90b7943575efeL    # 0.7826505961665757

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6dc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbcff533b307dc1L    # 0.11327095217756435

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6dd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefcb4703914354L    # 0.9935641355205953

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6de

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401034b8fc6ebcacL    # -0.9935641355205953

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6df

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbcff533b307dc1L    # 0.11327095217756435

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef7a299c1a322aL    # 0.9836624192117303

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc70afd8d08c4ffL    # 0.18002290140569951

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4038f50272f73b01L    # -0.18002290140569951

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef7a299c1a322aL    # 0.9836624192117303

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe22f2d662c13e2L    # 0.5682589526701316

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea54c91090f523L    # 0.8228497813758263

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4015ab36ef6f0addL    # -0.8228497813758263

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe22f2d662c13e2L    # 0.5682589526701316

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feae068f345ecefL    # 0.8398937941959995

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6e9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe15e36e4dbe2bcL    # 0.5427507848645159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ea

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401ea1c91b241d44L    # -0.5427507848645159

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6eb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feae068f345ecefL    # 0.8398937941959995

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ec

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcae4f1d5f3b9abL    # 0.2101118368804696

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ed

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef492206bcabb4L    # 0.9776773578245099

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ee

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010b6ddf943544cL    # -0.9776773578245099

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ef

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcae4f1d5f3b9abL    # 0.2101118368804696

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedbf9e4395759aL    # 0.9296408958431812

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd794f5e613dfaeL    # 0.3684668299533723

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40286b0a19ec2052L    # -0.3684668299533723

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedbf9e4395759aL    # 0.9296408958431812

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd96555b7ab948fL    # 0.3968099874167103

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed5f7172888a7fL    # 0.9179007756213905

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012a08e8d777581L    # -0.9179007756213905

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd96555b7ab948fL    # 0.3968099874167103

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6f8ca99c95b75L    # 0.7178700450557317

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6f9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe64715437f535bL    # 0.696177131491463

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6fa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4019b8eabc80aca5L    # -0.696177131491463

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6fb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6f8ca99c95b75L    # 0.7178700450557317

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6fc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f8f6a296ab997cbL    # 0.015339206284988102

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6fd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefff0943c53bd1L    # 0.9998823474542126

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6fe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401000f6bc3ac42fL    # -0.9998823474542126

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x6ff

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f8f6a296ab997cbL    # 0.015339206284988102

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x700

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffe1c6870cb77L    # 0.9997694053512153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x701

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f95fd4d21fab226L    # 0.021474080275469508

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x702

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x406a02b2de054ddaL    # -0.021474080275469508

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x703

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffe1c6870cb77L    # 0.9997694053512153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x704

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe622e44fec22ffL    # 0.6917592583641577

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x705

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe71bac960e41bfL    # 0.7221281939292153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x706

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4018e45369f1be41L    # -0.7221281939292153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x707

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe622e44fec22ffL    # 0.6917592583641577

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x708

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed4b5b1b187524L    # 0.9154487160882678

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x709

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd9c17d440df9f2L    # 0.40243465085941843

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x70a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40263e82bbf2060eL    # -0.40243465085941843

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x70b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed4b5b1b187524L    # 0.9154487160882678

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x70c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd73763c9261092L    # 0.3627557243673972

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x70d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fedd1fef38a915aL    # 0.9318842655816681

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x70e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40122e010c756ea6L    # -0.9318842655816681

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x70f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd73763c9261092L    # 0.3627557243673972

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x710

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef3e6bbc1bbc65L    # 0.9763697313300211

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x711

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcba96334f15dadL    # 0.21610679707621952

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x712

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4034569ccb0ea253L    # -0.21610679707621952

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x713

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef3e6bbc1bbc65L    # 0.9763697313300211

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x714

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe133e9cfee254fL    # 0.5375870762956455

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x715

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feafb8fd89f57b6L    # 0.8432082396418454

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x716

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401504702760a84aL    # -0.8432082396418454

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x717

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe133e9cfee254fL    # 0.5375870762956455

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x718

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea38184a593bc6L    # 0.819347520076797

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x719

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe258734cbb7110L    # 0.5732971666980422

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x71a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401da78cb3448ef0L    # -0.5732971666980422

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x71b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea38184a593bc6L    # 0.819347520076797

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x71c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc6451a831d830dL    # 0.17398387338746382

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x71d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef830f4a40c60cL    # 0.9847485018019042

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x71e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40107cf0b5bf39f4L    # -0.9847485018019042

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x71f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc6451a831d830dL    # 0.17398387338746382

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x720

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefc56e3b7d9af6L    # 0.9928504144598651

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x721

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fbe8eb7fde4aa3fL    # 0.11936521481099137

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x722

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40417148021b55c1L    # -0.11936521481099137

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x723

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefc56e3b7d9af6L    # 0.9928504144598651

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x724

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3c3c44981c518L    # 0.617647307937804

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x725

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe92aa41fc5a815L    # 0.7864552135990858

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x726

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4016d55be03a57ebL    # -0.7864552135990858

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x727

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe3c3c44981c518L    # 0.617647307937804

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x728

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febe41b611154c1L    # 0.8715950866559511

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x729

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdf5fdee656cda3L    # 0.49022648328829116

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x72a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4020a02119a9325dL    # -0.49022648328829116

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x72b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febe41b611154c1L    # 0.8715950866559511

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x72c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd1423eefc69378L    # 0.2696683255729151

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x72d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feed0835e999009L    # 0.9629532668736839

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x72e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40112f7ca1666ff7L    # -0.9629532668736839

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x72f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd1423eefc69378L    # 0.2696683255729151

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x730

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee6a61c55d53a7L    # 0.9504860739494817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x731

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd3e39be96ec271L    # 0.3107671527496115

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x732

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402c1c6416913d8fL    # -0.3107671527496115

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x733

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee6a61c55d53a7L    # 0.9504860739494817

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x734

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdcf34baee1cd21L    # 0.4523495872337709

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x735

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec89f587029c13L    # 0.8918407093923427

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x736

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013760a78fd63edL    # -0.8918407093923427

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x737

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdcf34baee1cd21L    # 0.4523495872337709

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x738

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe84b7111af83faL    # 0.7592091889783881

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x739

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4d3bc6d589f7fL    # 0.6508466849963809

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x73a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401b2c4392a76081L    # -0.6508466849963809

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x73b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe84b7111af83faL    # 0.7592091889783881

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x73c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb39d9f12c5a299L    # 0.07662386139203149

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x73d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefe7ea85482d60L    # 0.997060070339483

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x73e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401018157ab7d2a0L    # -0.997060070339483

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x73f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb39d9f12c5a299L    # 0.07662386139203149

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x740

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefeb9d2530410fL    # 0.9975114561403035

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x741

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb20c9674ed444dL    # 0.07050457338961387

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x742

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x404df3698b12bbb3L    # -0.07050457338961387

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x743

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefeb9d2530410fL    # 0.9975114561403035

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x744

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4f9cc25cca486L    # 0.6554928529996153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x745

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe82a9c13f545ffL    # 0.7552013768965365

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x746

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4017d563ec0aba01L    # -0.7552013768965365

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x747

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4f9cc25cca486L    # 0.6554928529996153

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x748

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feca08f19b9c449L    # 0.8945994856313827

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x749

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdc997fc3865389L    # 0.4468688401623742

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x74a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402366803c79ac77L    # -0.4468688401623742

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x74b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feca08f19b9c449L    # 0.8945994856313827

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x74c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd44310dc8936f0L    # 0.31659337555616585

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x74d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee5a9d550467d3L    # 0.9485613499157303

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x74e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011a562aafb982dL    # -0.9485613499157303

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x74f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd44310dc8936f0L    # 0.31659337555616585

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x750

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeddeb6a078651L    # 0.9645897932898128

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x751

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd0e15b4e1749ceL    # 0.2637546789748314

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x752

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402f1ea4b1e8b632L    # -0.2637546789748314

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x753

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feeddeb6a078651L    # 0.9645897932898128

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x754

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdfb7575c24d2deL    # 0.49556526182577254

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x755

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3febcb54cb0d2327L    # 0.8685707059713409

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x756

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401434ab34f2dcd9L    # -0.8685707059713409

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x757

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdfb7575c24d2deL    # 0.49556526182577254

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x758

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe94990e3ac4a6cL    # 0.79023022143731

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x759

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe39c23e3d63029L    # 0.6128100824294097

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x75a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401c63dc1c29cfd7L    # -0.6128100824294097

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x75b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe94990e3ac4a6cL    # 0.79023022143731

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x75c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc00ee8ad6fb85bL    # 0.12545498341154623

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x75d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefbf470f0a8d88L    # 0.9920993131421918

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x75e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401040b8f0f57278L    # -0.9920993131421918

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x75f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc00ee8ad6fb85bL    # 0.12545498341154623

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x760

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef8ba737cb4b78L    # 0.9857975091675675

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x761

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc57f008654cbdeL    # 0.16793829497473117

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x762

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403a80ff79ab3422L    # -0.16793829497473117

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x763

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef8ba737cb4b78L    # 0.9857975091675675

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x764

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2818bef4d3cbaL    # 0.5783137964116556

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x765

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea1b26d2c0a75eL    # 0.8158144108067338

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x766

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4015e4d92d3f58a2L    # -0.8158144108067338

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x767

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2818bef4d3cbaL    # 0.5783137964116556

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x768

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb16742a4ca2f5L    # 0.8464909387740521

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x769

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1097248d0a957L    # 0.532403127877198

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x76a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401ef68db72f56a9L    # -0.532403127877198

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x76b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb16742a4ca2f5L    # 0.8464909387740521

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x76c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcc6d90535d74ddL    # 0.22209362097320354

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x76d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef33685a3aaef0L    # 0.9750253450669941

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x76e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010cc97a5c55110L    # -0.9750253450669941

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x76f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcc6d90535d74ddL    # 0.22209362097320354

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x770

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fede4160f6d8d81L    # 0.9340925504042589

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x771

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd6d998638a0cb6L    # 0.35703096123343003

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x772

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402926679c75f34aL    # -0.35703096123343003

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x773

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fede4160f6d8d81L    # 0.9340925504042589

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x774

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fda1d6543b50ac0L    # 0.4080441628649787

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x775

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed36fc7bcbfbdcL    # 0.9129621904283982

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x776

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012c90384340424L    # -0.9129621904283982

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x777

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fda1d6543b50ac0L    # 0.4080441628649787

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x778

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe73e558e079942L    # 0.726359155084346

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x779

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe5fe7cbde56a10L    # 0.6873153408917592

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x77a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401a0183421a95f0L    # -0.6873153408917592

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x77b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe73e558e079942L    # 0.726359155084346

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x77c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f9c454f4ce53b1dL    # 0.027608145778965743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x77d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffce09ce2a679L    # 0.9996188224951786

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x77e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010031f631d5987L    # -0.9996188224951786

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x77f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f9c454f4ce53b1dL    # 0.027608145778965743

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x780

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff753bb1b9164L    # 0.9989412931868569

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x781

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fa78dbaa5874686L    # 0.04600318213091463

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x782

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x405872455a78b97aL    # -0.04600318213091463

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x783

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff753bb1b9164L    # 0.9989412931868569

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x784

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe59001d5f723dfL    # 0.673829000378756

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x785

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7a4f707bf97d2L    # 0.7388873244606151

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x786

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40185b08f840682eL    # -0.7388873244606151

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x787

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe59001d5f723dfL    # 0.673829000378756

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x788

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecf830e8ce467bL    # 0.9052967593181188

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x789

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb2f971db31972L    # 0.4247796812091088

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x78a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4024d068e24ce68eL    # -0.4247796812091088

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x78b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fecf830e8ce467bL    # 0.9052967593181188

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x78c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd5bee78b9db3b6L    # 0.33977688440682685

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x78d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee18a02fdc66d9L    # 0.9405060705932683

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x78e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4011e75fd0239927L    # -0.9405060705932683

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x78f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd5bee78b9db3b6L    # 0.33977688440682685

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x790

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef1090bc898f5fL    # 0.9707721407289504

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x791

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fceb86b462de348L    # 0.2400030224487415

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x792

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40314794b9d21cb8L    # -0.2400030224487415

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x793

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef1090bc898f5fL    # 0.9707721407289504

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x794

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe089112032b08cL    # 0.5167317990176499

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x795

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb658f14fdbc47L    # 0.8561473283751945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x796

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40149a70eb0243b9L    # -0.8561473283751945

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x797

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe089112032b08cL    # 0.5167317990176499

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x798

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9c2d110f075c2L    # 0.8050313311429635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x799

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe2fbc24b441015L    # 0.5932322950397998

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x79a

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401d043db4bbefebL    # -0.5932322950397998

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x79b

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9c2d110f075c2L    # 0.8050313311429635

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x79c

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc32b7bf94516a7L    # 0.1497645346773215

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x79d

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefa39bac7a1791L    # 0.9887216919603238

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x79e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40105c645385e86fL    # -0.9887216919603238

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x79f

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc32b7bf94516a7L    # 0.1497645346773215

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefaafbcb0cfddcL    # 0.9896220174632009

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc264994dfd3409L    # 0.14369503315029444

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403d9b66b202cbf7L    # -0.14369503315029444

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefaafbcb0cfddcL    # 0.9896220174632009

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe32421ec49a61fL    # 0.5981607069963423

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe9a4dfa42b06b2L    # 0.8013761717231402

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40165b205bd4f94eL    # -0.8013761717231402

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe32421ec49a61fL    # 0.5981607069963423

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb7f6686e792e9L    # 0.8593018183570084

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7a9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe05df3ec31b8b7L    # 0.5114688504379704

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7aa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401fa20c13ce4749L    # -0.5114688504379704

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ab

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feb7f6686e792e9L    # 0.8593018183570084

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ac

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcf7b7480bd3802L    # 0.24595505033579462

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ad

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef045a14cf738cL    # 0.9692812353565485

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ae

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010fba5eb308c74L    # -0.9692812353565485

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7af

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fcf7b7480bd3802L    # 0.24595505033579462

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee298f4439197aL    # 0.9425731976014469

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd5604012f467b4L    # 0.3339996514420094

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402a9fbfed0b984cL    # -0.3339996514420094

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee298f4439197aL    # 0.9425731976014469

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb8a7814fd5693L    # 0.4303264813400826

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fece2b32799a060L    # 0.9026733182372588

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40131d4cd8665fa0L    # -0.9026733182372588

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fdb8a7814fd5693L    # 0.4303264813400826

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7c6b89ce2d333L    # 0.7430079521351217

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7b9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe56ac35197649fL    # 0.6692825883466361

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ba

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401a953cae689b61L    # -0.6692825883466361

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7bb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe7c6b89ce2d333L    # 0.7430079521351217

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7bc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3faab101bd5f8317L    # 0.052131704680283324

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7bd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feff4dc54b1bed3L    # 0.9986402181802653

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7be

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40100b23ab4e412dL    # -0.9986402181802653

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7bf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3faab101bd5f8317L    # 0.052131704680283324

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefdafa7514538cL    # 0.9954807554919269

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb84f8712c130a1L    # 0.094963495329639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4047b078ed3ecf5fL    # -0.094963495329639

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefdafa7514538cL    # 0.9954807554919269

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4605a692b32a2L    # 0.6367618612362842

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8ac871ede1d88L    # 0.7710605242618138

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40175378e121e278L    # -0.7710605242618138

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4605a692b32a2L    # 0.6367618612362842

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec44833141c004L    # 0.8833633386657316

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7c9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fddfeff66a941deL    # 0.46868882203582796

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ca

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402201009956be22L    # -0.46868882203582796

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7cb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec44833141c004L    # 0.8833633386657316

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7cc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd2c41a4e954520L    # 0.29321916269425863

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7cd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fee97ec36016b30L    # 0.9560452513499964

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ce

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40116813c9fe94d0L    # -0.9560452513499964

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7cf

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd2c41a4e954520L    # 0.29321916269425863

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feea68393e65800L    # 0.9578264130275329

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd263e6995554baL    # 0.2873474595447295

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x402d9c1966aaab46L    # -0.2873474595447295

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feea68393e65800L    # 0.9578264130275329

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fde57a86d3cd825L    # 0.47410021465055

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fec2cd14931e3f1L    # 0.8804708890521608

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4013d32eb6ce1c0fL    # -0.8804708890521608

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fde57a86d3cd825L    # 0.47410021465055

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8cc6a75184655L    # 0.7749531065948739

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7d9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe4397f5b2a4380L    # 0.6320187359398091

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7da

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401bc680a4d5bc80L

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7db

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe8cc6a75184655L    # 0.7749531065948739

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7dc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb9dfb6eb24a85cL    # 0.10106986275482782

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7dd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fefd60d2da75c9eL    # 0.9948793307948056

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7de

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401029f2d258a362L    # -0.9948793307948056

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7df

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fb9dfb6eb24a85cL    # 0.10106986275482782

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef677556883ceeL    # 0.9813791933137546

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc8961727c41804L    # 0.19208039704989244

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x403769e8d83be7fcL    # -0.19208039704989244

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef677556883ceeL    # 0.9813791933137546

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1dc1b64dc4872L    # 0.5581185312205561

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fea8d676e545ad2L    # 0.829761233794523

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4015729891aba52eL    # -0.829761233794523

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1dc1b64dc4872L    # 0.5581185312205561

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feaa9547a2cb98eL    # 0.8331701647019132

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7e9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe1b250171373bfL    # 0.5530167055800276

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ea

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x401e4dafe8ec8c41L    # -0.5530167055800276

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7eb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feaa9547a2cb98eL    # 0.8331701647019132

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ec

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc95b49e9b62afaL    # 0.1980984107179536

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ed

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fef5da6ed43685dL    # 0.9801821359681174

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ee

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4010a25912bc97a3L    # -0.9801821359681174

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ef

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fc95b49e9b62afaL    # 0.1980984107179536

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed9a00dd8b3d46L    # 0.9250492407826776

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f1

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd84f6aaaf3903fL    # 0.37984720892405116

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f2

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4027b095550c6fc1L    # -0.37984720892405116

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed9a00dd8b3d46L    # 0.9250492407826776

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd8ac4b86d5ed44L    # 0.38551605384391885

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fed86c48445a44fL    # 0.9227011283338785

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4012793b7bba5bb1L    # -0.9227011283338785

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fd8ac4b86d5ed44L    # 0.38551605384391885

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6b25ced2fe29cL    # 0.7092728264388657

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7f9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe68ed1eaa19c71L    # 0.7049340803759049

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7fa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x4019712e155e638fL    # -0.7049340803759049

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7fb

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3fe6b25ced2fe29cL    # 0.7092728264388657

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7fc

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f6921f8becca4baL    # 0.003067956762965976

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7fd

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3feffff621621d02L    # 0.9999952938095762

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7fe

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, -0x40100009de9de2feL    # -0.9999952938095762

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x7ff

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v4, 0x3f6921f8becca4baL    # 0.003067956762965976

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v8

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v9

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v10

    new-instance v1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    invoke-direct {v1, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v1, v0, v11

    const/4 v1, 0x4

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v4, 0x3fc0000000000000L    # 0.125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v4, 0x3fb0000000000000L    # 0.0625

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v4, 0x3fa0000000000000L    # 0.03125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v4, 0x3f90000000000000L    # 0.015625

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v4, 0x3f80000000000000L    # 0.0078125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v4, 0x3f70000000000000L    # 0.00390625

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v4, 0x3f60000000000000L    # 0.001953125

    invoke-direct {v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    aput-object v2, v0, v1

    sput-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-wide/high16 v4, 0x43e0000000000000L    # 9.223372036854776E18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x40c8008000000000L    # 12289.0

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3f1554e39097a782L    # 8.137358613394092E-5

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inverse_of_q:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3fc34f8bc183bbc2L    # 0.15086504887537272

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_2sqrsigma0:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_sigma:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_sigma_min:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3fe62e42fefa39efL    # 0.6931471805599453

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3ff71547652b82feL    # 1.4426950408889634

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_inv_log2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x40d06d9a5fd8adacL    # 16822.4121

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_bnorm_max:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_zero:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_one:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_two:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_onehalf:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3fe6a09e667f3bcdL    # 0.7071067811865476

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt2:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x3fd6a09e667f3bcdL    # 0.3535533905932738

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_invsqrt8:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, 0x41e0000000000000L    # 2.147483648E9

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide v2, -0x3e20000000400000L    # -2.147483647E9

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo31m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    const-wide/high16 v2, -0x3c20000000000000L    # -9.223372036854776E18

    invoke-direct {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_mtwo63m1:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo63:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_gm_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    sget-object v0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_p2_tab:[Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    return-void
.end method


# virtual methods
.method FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 1

    new-instance v0, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    invoke-direct {v0, p1, p2}, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;-><init>(D)V

    return-object v0
.end method

.method fpr_add(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide v2, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_div(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide v2, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_double(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_expm_p63(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J
    .locals 6

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    const-wide v2, 0x3e21d0460e8dcd27L    # 2.073772366009083E-9

    const-wide v4, 0x3e5b2a467e033000L    # 2.529950637944207E-8

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3e927ee5f8a05035L    # 2.756073561604778E-7

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3ec71d939de045c4L    # 2.7555863502191225E-6

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3efa019eb1edf088L    # 2.480156683358538E-5

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3f2a01a073de5b8fL    # 1.984127392773119E-4

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3f56c16c182d87f5L    # 0.001388888894063187

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3f81111110e066fdL    # 0.008333333327800835

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3fa5555555541c3cL    # 0.04166666666611049

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3fc55555555581ffL    # 0.16666666666698401

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3fe00000000000adL    # 0.5000000000000192

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide v4, 0x3fefffffffffffd2L    # 0.9999999999999949

    mul-double/2addr v2, v0

    sub-double v2, v4, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    sub-double v0, v4, v0

    iget-wide v2, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    mul-double/2addr v0, v2

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->fpr_ptwo63:Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    iget-wide v2, v2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    mul-double/2addr v0, v2

    double-to-long v0, v0

    return-wide v0
.end method

.method fpr_floor(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J
    .locals 6

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    double-to-long v2, v0

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    long-to-double v4, v2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-long v0, v0

    sub-long v0, v2, v0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fpr_half(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_inv(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    div-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_lt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Z
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide v2, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method fpr_mul(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide v2, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    mul-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_neg(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    neg-double v0, v0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_of(J)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 3

    long-to-double v0, p1

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_rint(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J
    .locals 14

    const-wide/high16 v12, 0x10000000000000L

    const-wide/16 v10, -0x1

    const-wide/high16 v8, 0x4330000000000000L    # 4.503599627370496E15

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    double-to-long v0, v0

    iget-wide v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    double-to-long v2, v2

    iget-wide v4, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    add-double/2addr v4, v8

    double-to-long v4, v4

    sub-long/2addr v4, v12

    iget-wide v6, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    sub-double/2addr v6, v8

    double-to-long v6, v6

    add-long/2addr v6, v12

    const/16 v8, 0x3f

    shr-long/2addr v0, v8

    and-long/2addr v6, v0

    xor-long/2addr v0, v10

    and-long/2addr v0, v4

    const/16 v4, 0x34

    ushr-long v4, v2, v4

    long-to-int v4, v4

    add-int/lit8 v4, v4, 0x1

    and-int/lit16 v4, v4, 0xfff

    add-int/lit8 v4, v4, -0x2

    ushr-int/lit8 v4, v4, 0x1f

    int-to-long v4, v4

    neg-long v4, v4

    and-long/2addr v0, v4

    and-long/2addr v6, v4

    xor-long/2addr v4, v10

    and-long/2addr v2, v4

    or-long/2addr v2, v6

    or-long/2addr v0, v2

    return-wide v0
.end method

.method fpr_sqr(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide v2, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    mul-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_sqrt(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_sub(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;
    .locals 4

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    iget-wide v2, p2, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    sub-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/bouncycastle/pqc/crypto/falcon/FPREngine;->FPR(D)Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;

    move-result-object v0

    return-object v0
.end method

.method fpr_trunc(Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;)J
    .locals 2

    iget-wide v0, p1, Lorg/bouncycastle/pqc/crypto/falcon/FalconFPR;->v:D

    double-to-long v0, v0

    return-wide v0
.end method
