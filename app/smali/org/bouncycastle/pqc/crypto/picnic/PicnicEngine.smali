.class Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;
.super Ljava/lang/Object;


# static fields
.field private static final LOG:Ljava/util/logging/Logger;

.field protected static final LOWMC_MAX_AND_GATES:I = 0x478

.field protected static final LOWMC_MAX_KEY_BITS:I = 0x100

.field private static final LOWMC_MAX_STATE_SIZE:I = 0x40

.field protected static final LOWMC_MAX_WORDS:I = 0x10

.field private static final MAX_AUX_BYTES:I = 0xb0

.field private static final MAX_DIGEST_SIZE:I = 0x40

.field private static final PICNIC_MAX_LOWMC_BLOCK_SIZE:I = 0x20

.field private static final TRANSFORM_FS:I = 0x0

.field private static final TRANSFORM_INVALID:I = 0xff

.field private static final TRANSFORM_UR:I = 0x1

.field private static final WORD_SIZE_BITS:I = 0x20

.field protected static final saltSizeBytes:I = 0x20


# instance fields
.field private final CRYPTO_BYTES:I

.field private final CRYPTO_PUBLICKEYBYTES:I

.field private final CRYPTO_SECRETKEYBYTES:I

.field protected final UnruhGWithInputBytes:I

.field protected final UnruhGWithoutInputBytes:I

.field protected final andSizeBytes:I

.field protected final digest:Lorg/bouncycastle/crypto/Xof;

.field protected final digestSizeBytes:I

.field protected final lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

.field protected final numMPCParties:I

.field protected final numMPCRounds:I

.field protected final numOpenedRounds:I

.field protected final numRounds:I

.field protected final numSboxes:I

.field private final parameters:I

.field protected final pqSecurityLevel:I

.field protected final seedSizeBytes:I

.field private signatureLength:I

.field protected final stateSizeBits:I

.field protected final stateSizeBytes:I

.field protected final stateSizeWords:I

.field private final transform:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>(ILorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;)V
    .locals 6

    const/16 v5, 0x31

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/16 v1, 0x40

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    iput p1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown parameter set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0xdb

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    const/16 v0, 0x14

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    packed-switch v0, :pswitch_data_1

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const/4 v0, -0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/2addr v0, v1

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    add-int/lit8 v0, v0, 0x20

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    packed-switch v0, :pswitch_data_2

    const/16 v0, 0xff

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    :goto_2
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    :goto_3
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v1, 0x81

    if-ne v0, v1, :cond_2

    :cond_0
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    :goto_4
    return-void

    :pswitch_1
    const/16 v0, 0x60

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v0, 0xc0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x149

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    const/16 v0, 0x1e

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    goto/16 :goto_0

    :pswitch_2
    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v0, 0x100

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x1b6

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    const/16 v0, 0x26

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    goto/16 :goto_0

    :pswitch_3
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v0, 0x81

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0xfa

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v0, 0x24

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v0, 0x2b

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto/16 :goto_0

    :pswitch_4
    const/16 v0, 0x60

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v0, 0xc0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x1a3

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v0, 0x34

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto/16 :goto_0

    :pswitch_5
    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v0, 0xff

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x259

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/16 v0, 0x44

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    const/16 v0, 0x10

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v0, 0x55

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    goto/16 :goto_0

    :pswitch_6
    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v0, 0x81

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0xdb

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v0, 0x2b

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/16 v0, 0x20

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    goto/16 :goto_0

    :pswitch_7
    const/16 v0, 0x60

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v0, 0xc0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x149

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    const/16 v0, 0x30

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    goto/16 :goto_0

    :pswitch_8
    const/16 v0, 0x80

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->pqSecurityLevel:I

    const/16 v0, 0xff

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v0, 0x1b6

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iput v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    const/16 v0, 0x55

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    iput v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    iput v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    goto/16 :goto_0

    :pswitch_9
    iput v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x21

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0x84f4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_a
    iput v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x21

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0xd2cd

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_b
    const/16 v0, 0x49

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0x12bf0

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_c
    const/16 v0, 0x49

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0x1dc01

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_d
    const/16 v0, 0x61

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x41

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0x2070c

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_e
    const/16 v0, 0x61

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x41

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0x33276

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_f
    const/16 v0, 0x34

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x23

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v0, 0x3914

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_10
    const/16 v0, 0x49

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0x88d4

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_11
    const/16 v0, 0x61

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x41

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0xee64

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_12
    const/16 v0, 0x34

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x23

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const/16 v0, 0x7d3d

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_13
    const/16 v0, 0x49

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    iput v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0x1160b

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_14
    const/16 v0, 0x61

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    const/16 v0, 0x41

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    const v0, 0x1ed4e

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    goto/16 :goto_1

    :pswitch_15
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    goto/16 :goto_2

    :pswitch_16
    const/4 v0, 0x1

    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    goto/16 :goto_2

    :cond_1
    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    iput v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    goto/16 :goto_3

    :cond_2
    new-instance v0, Lorg/bouncycastle/crypto/digests/SHAKEDigest;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/digests/SHAKEDigest;-><init>(I)V

    iput-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_15
    .end packed-switch
.end method

.method private Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v0, p1, p2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p4, v3, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p4, v3, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    invoke-static {v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p4, v3, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x5

    invoke-interface {v1, v2}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v1, p2, p3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, p5, v4, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, p5, v4, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    if-ne p1, v5, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    invoke-static {v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v2

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {v1, v2, v4, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v2

    invoke-interface {v1, v2, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v1, p5, v4, v0}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private H3([I[I[[Lorg/bouncycastle/pqc/crypto/picnic/View;[[[B[B[B[B[[[B)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v3, v2, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->implH3([I[I[[[B[B[B[B[[[B)V

    return-void
.end method

.method private H3([I[I[[[I[[[B[B[B[B[[[B)V
    .locals 8

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x4

    new-array v2, v0, [B

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    const/4 v3, 0x3

    if-ge v1, v3, :cond_0

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v3, v2, v4, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->implH3([I[I[[[B[B[B[B[[[B)V

    return-void
.end method

.method private HCP([B[I[I[[B[B[B[I[I[B)V
    .locals 6

    const/16 v5, 0x20

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v3, p4, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v3, v1, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-array v0, v5, [B

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, p5, v1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v2, p6, v1, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-direct {p0, p7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    invoke-direct {p0, p8, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p9

    invoke-interface {v0, p9, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->expandChallengeHash([B[I[I)V

    :cond_1
    return-void
.end method

.method private LowMCEnc([I[I[I)V
    .locals 5

    const/4 v4, 0x0

    const/16 v0, 0x10

    new-array v1, v0, [I

    if-eq p1, p2, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {p1, v4, p2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, p0, v4}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v0

    invoke-virtual {p0, v1, p3, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-virtual {p0, p2, p2, v1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    const/4 v0, 0x1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v2, p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, v1, p3, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-direct {p0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->substitution([I)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, p2, p2, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, p0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v3

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v2

    invoke-virtual {p0, p2, p2, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    invoke-virtual {p0, p2, p2, v1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method static appendUnique([III)I
    .locals 2

    if-nez p2, :cond_1

    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    :cond_0
    :goto_0
    return p2

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p2, :cond_2

    aget v1, p0, v0

    if-eq v1, p1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method private arePaddingBitsZero([BI)Z
    .locals 2

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    :goto_0
    mul-int/lit8 v1, v0, 0x8

    if-ge p2, v1, :cond_1

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method private arePaddingBitsZero([II)Z
    .locals 3

    const/4 v0, 0x1

    and-int/lit8 v1, p2, 0x1f

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result v1

    ushr-int/lit8 v2, p2, 0x5

    aget v2, p1, v2

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p4}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v1

    iget-object v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v0

    iget v3, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v2

    xor-int/2addr v1, v2

    and-int v2, p1, p2

    xor-int/2addr v1, v2

    xor-int/2addr v1, p3

    iget-object v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v0, v2, v0

    iget v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v2, v2, -0x1

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    return-void
.end method

.method static bitsToChunks(I[BI[I)I
    .locals 6

    const/4 v0, 0x0

    mul-int/lit8 v1, p2, 0x8

    if-le p0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    mul-int/lit8 v1, p2, 0x8

    div-int/2addr v1, p0

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_2

    aput v0, p3, v3

    move v2, v0

    :goto_2
    if-ge v2, p0, :cond_1

    aget v4, p3, v3

    mul-int v5, v3, p0

    add-int/2addr v5, v2

    invoke-static {p1, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v5

    shl-int/2addr v5, v2

    add-int/2addr v4, v5

    aput v4, p3, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private commit([B[B[B[BII)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-interface {v0, p3, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v1, 0x20

    invoke-interface {v0, p4, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v1

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p1, v2, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private commit_h([B[[B)V
    .locals 5

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v3, p2, v0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v3, v1, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .locals 5

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v0, p2, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v0, v2, :cond_0

    iget v2, p3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v4, p3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, p1, v1, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private computeSaltAndRootSeed([B[I[I[I[B)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x20

    new-array v0, v0, [B

    invoke-direct {p0, p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v2, p5

    invoke-interface {v1, p5, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-direct {p0, p3, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    invoke-direct {p0, p4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    int-to-short v1, v1

    invoke-static {v1, v0, v3}, Lorg/bouncycastle/util/Pack;->shortToLittleEndian(S[BI)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v2, 0x2

    invoke-interface {v1, v0, v3, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v1, p1

    invoke-interface {v0, p1, v3, v1}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-void
.end method

.method private computeSeeds([I[I[I[B)[B
    .locals 6

    const/4 v5, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/2addr v1, v2

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x20

    new-array v0, v0, [B

    const/16 v1, 0x20

    new-array v1, v1, [B

    invoke-direct {p0, p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    array-length v3, p4

    invoke-interface {v2, p4, v5, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    invoke-direct {p0, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    invoke-direct {p0, p3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->updateDigest([I[B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v1, v2, v5, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/2addr v3, v4

    mul-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x20

    invoke-interface {v1, v0, v5, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    return-object v0
.end method

.method private contains([III)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p1, v1

    if-ne v2, p3, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private countNonZeroChallenges([BI)I
    .locals 6

    const v5, 0x55555555

    const/4 v1, 0x0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    add-int/lit8 v1, v0, 0x10

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-gt v1, v4, :cond_0

    ushr-int/lit8 v1, v0, 0x2

    add-int/2addr v1, p2

    invoke-static {p1, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    ushr-int/lit8 v1, v4, 0x1

    and-int/2addr v1, v4

    or-int/2addr v1, v2

    ushr-int/lit8 v2, v4, 0x1

    xor-int/2addr v2, v4

    and-int/2addr v2, v5

    invoke-static {v2}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v2

    add-int/2addr v3, v2

    add-int/lit8 v0, v0, 0x10

    move v2, v1

    goto :goto_0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    sub-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x2

    if-lez v1, :cond_2

    add-int/lit8 v4, v1, 0x7

    div-int/lit8 v4, v4, 0x8

    ushr-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    invoke-static {p1, v0, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v0

    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getTrailingBitsMask(I)I

    move-result v1

    and-int/2addr v0, v1

    ushr-int/lit8 v1, v0, 0x1

    and-int/2addr v1, v0

    or-int/2addr v2, v1

    ushr-int/lit8 v1, v0, 0x1

    xor-int/2addr v0, v1

    and-int/2addr v0, v5

    invoke-static {v0}, Lorg/bouncycastle/util/Integers;->bitCount(I)I

    move-result v0

    add-int/2addr v0, v3

    :goto_1
    and-int v1, v2, v5

    if-nez v1, :cond_1

    :goto_2
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1
.end method

.method private createRandomTape([BI[BII[BI)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    if-ge p7, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v1, v3}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v1, p1, p2, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, p6, v0, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v1, p6, v0, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v2, 0x20

    invoke-interface {v1, p3, v0, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v2

    invoke-interface {v1, v2, v0, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v2

    invoke-interface {v1, v2, v0, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p7}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v2

    invoke-interface {v1, v2, v0, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v1, p6, v0, p7}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V
    .locals 7

    const/4 v6, 0x2

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    mul-int/lit8 v2, v0, 0x2

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    add-int v4, v0, p3

    aget-object v4, p2, v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-interface {v3, v4, v1, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/16 v4, 0x20

    invoke-interface {v3, p4, v1, v4}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v4

    invoke-interface {v3, v4, v1, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {v0}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I)[B

    move-result-object v4

    invoke-interface {v3, v4, v1, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v4, v4, v0

    invoke-interface {v3, v4, v1, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private deserializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BII)I
    .locals 9

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v1

    if-ge p3, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p2, p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->countNonZeroChallenges([BI)I

    move-result v2

    if-gez v2, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/2addr v0, v2

    add-int/lit8 v5, v1, 0x20

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v7, v7, 0x2

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v7, v8

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v7, v8

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/2addr v0, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    sub-int/2addr v6, v2

    mul-int/2addr v5, v6

    add-int/2addr v0, v5

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    mul-int/2addr v2, v5

    add-int/2addr v0, v2

    :cond_2
    if-eq p3, v0, :cond_3

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sigBytesLen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", expected bytesRequired = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, -0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-static {p2, p4, v4, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v0, p4, v1

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/4 v2, 0x0

    const/16 v5, 0x20

    invoke-static {p2, v0, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v1, v0, 0x20

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v2, :cond_8

    invoke-virtual {p0, v4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v5

    aget-object v2, v3, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p2, v1, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, v1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_9

    if-nez v5, :cond_6

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    :goto_2
    aget-object v6, v3, v0

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    const/4 v7, 0x0

    invoke-static {p2, v2, v6, v7, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    :goto_3
    aget-object v2, v3, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {p2, v1, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v1, v2

    aget-object v2, v3, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p2, v1, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v1, v2

    aget-object v2, v3, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    const/4 v6, 0x0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p2, v1, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-eq v5, v2, :cond_4

    const/4 v2, 0x2

    if-ne v5, v2, :cond_7

    :cond_4
    aget-object v2, v3, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    div-int/lit8 v6, v6, 0x4

    invoke-static {p2, v1, v2, v5, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    const/16 v5, 0x81

    if-ne v2, v5, :cond_5

    aget-object v2, v3, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v6, v1

    add-int/lit8 v6, v6, -0x1

    aget-byte v6, p2, v6

    and-int/lit16 v6, v6, 0xff

    aput v6, v2, v5

    :cond_5
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v1, v2

    aget-object v2, v3, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-direct {p0, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([II)Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v0, -0x1

    goto/16 :goto_0

    :cond_6
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_9
    move v1, v2

    goto :goto_3
.end method

.method private deserializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BII)I
    .locals 10

    const/4 v9, 0x1

    const/4 v3, -0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/lit8 v0, v0, 0x20

    array-length v2, p2

    if-ge v2, v0, :cond_1

    move v1, v3

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p2, p4, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, p4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/16 v5, 0x20

    invoke-static {p2, v2, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v2, 0x20

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    invoke-direct {p0, v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->expandChallengeHash([B[I[I)V

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v2, p0, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-virtual {v2, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeedsSize([II)I

    move-result v2

    iput v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v2, v5

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    invoke-direct {p0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v5

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-direct {v6, p0, v7, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    invoke-virtual {v6, v5, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->openMerkleTreeSize([II)I

    move-result v2

    iput v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v2, v0

    new-array v0, v9, [I

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-direct {v5, p0, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    invoke-virtual {v5, v0, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeedsSize([II)I

    move-result v5

    move v0, v1

    :goto_1
    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v6, :cond_4

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v6, v7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v7, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v7, v8, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v7

    aget v6, v6, v7

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v7, v7, -0x1

    if-eq v6, v7, :cond_2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v6

    :cond_2
    add-int/2addr v2, v5

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, v6

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    if-eq p3, v2, :cond_5

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sigLen = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", expected bytesRequired = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_0

    :cond_5
    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    new-array v0, v0, [B

    iput-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    invoke-static {p2, v4, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v4

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    new-array v2, v2, [B

    iput-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-static {p2, v0, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v2, v0

    move v0, v1

    :goto_2
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v4, :cond_0

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v4, v6, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    invoke-direct {v6, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v6, v4, v0

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iput v5, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v6, v6, v0

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    new-array v6, v6, [B

    iput-object v6, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v6, v6, v0

    iget v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    invoke-static {p2, v2, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v2, v4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v6, v7, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v6

    aget v4, v4, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v6, v6, -0x1

    if-eq v4, v6, :cond_6

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {p2, v2, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/lit8 v6, v6, 0x3

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/2addr v6, v7

    invoke-direct {p0, v4, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([BI)Z

    move-result v4

    if-nez v4, :cond_6

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "failed while deserializing aux bits"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_0

    :cond_6
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p2, v2, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v6, v6, v0

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    invoke-static {p2, v2, v6, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    mul-int/lit8 v4, v4, 0x3

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/2addr v4, v6

    iget-object v6, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v6, v6, v0

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    invoke-direct {p0, v6, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->arePaddingBitsZero([BI)Z

    move-result v4

    if-nez v4, :cond_7

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "failed while deserializing msgs bits"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move v1, v3

    goto/16 :goto_0

    :cond_7
    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p2, v2, v4, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, v4

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2
.end method

.method private expandChallengeHash([B[I[I)V
    .locals 11

    const/4 v10, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->ceil_log2(I)I

    move-result v4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    mul-int/lit8 v0, v0, 0x8

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    div-int/2addr v0, v2

    new-array v5, v0, [I

    const/16 v0, 0x40

    new-array v6, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {p1, v1, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v3, v6, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->bitsToChunks(I[BI[I)I

    move-result v7

    move v2, v1

    :goto_1
    if-ge v2, v7, :cond_1

    aget v8, v5, v2

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v8, v9, :cond_0

    aget v8, v5, v2

    invoke-static {p2, v8, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->appendUnique([III)I

    move-result v0

    :cond_0
    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ne v0, v8, :cond_2

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v2, v10}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v6, v1, v7}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v6, v1, v7}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_2
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ge v0, v2, :cond_7

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v4, v6, v2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->bitsToChunks(I[BI[I)I

    move-result v3

    move v2, v1

    :goto_3
    if-ge v2, v3, :cond_5

    aget v7, v5, v2

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v7, v8, :cond_4

    aget v7, v5, v2

    aput v7, p3, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4
    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    if-ne v0, v7, :cond_6

    :cond_5
    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-interface {v2, v10}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v6, v1, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v6, v1, v3}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method static extend(I)I
    .locals 1

    add-int/lit8 v0, p0, -0x1

    xor-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 9

    const/4 v1, 0x0

    iget-object v0, p2, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v2, v2, -0x1

    aget-object v7, v0, v2

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-ge v0, v4, :cond_1

    add-int/2addr v2, v8

    move v4, v1

    :goto_1
    if-ge v4, v8, :cond_0

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v5, v2, 0x1

    invoke-static {v7, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v2

    invoke-static {p1, v3, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v4, v4, 0x1

    move v2, v5

    move v3, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getMissingLeavesList([I)[I
    .locals 4

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v0, v2

    new-array v3, v0, [I

    move v0, v1

    move v2, v1

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, p1, v1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v1

    if-nez v1, :cond_1

    aput v0, v3, v2

    add-int/lit8 v1, v2, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    :cond_0
    return-object v3

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method private implH3([I[I[[[B[B[B[B[[[B)V
    .locals 8

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v4, v0, [B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput-byte v1, p4, v0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v3, p3, v0

    aget-object v3, v3, v1

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v2, v3, v5, v6}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v1, :cond_4

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    const/4 v1, 0x3

    if-ge v2, v1, :cond_3

    const/4 v1, 0x2

    if-ne v2, v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    :goto_4
    iget-object v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    aget-object v5, p7, v0

    aget-object v5, v5, v2

    const/4 v6, 0x0

    invoke-interface {v3, v5, v6, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :cond_2
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    invoke-static {p2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I)[B

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v0, v1, v2, v3}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x0

    const/16 v2, 0x20

    invoke-interface {v0, p5, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x0

    array-length v2, p6

    invoke-interface {v0, p6, v1, v2}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v1, 0x0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, v4, v1, v2}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    const/4 v2, 0x0

    const/4 v1, 0x1

    :goto_5
    if-eqz v1, :cond_7

    const/4 v0, 0x0

    :goto_6
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    if-ge v0, v3, :cond_6

    aget-byte v5, v4, v0

    const/4 v3, 0x0

    :goto_7
    const/16 v6, 0x8

    if-ge v3, v6, :cond_5

    rsub-int/lit8 v6, v3, 0x6

    ushr-int v6, v5, v6

    and-int/lit8 v6, v6, 0x3

    const/4 v7, 0x3

    if-ge v6, v7, :cond_8

    invoke-direct {p0, p4, v2, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->setChallenge([BII)V

    add-int/lit8 v2, v2, 0x1

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ne v2, v6, :cond_8

    const/4 v1, 0x0

    :cond_5
    if-nez v1, :cond_9

    :cond_6
    if-nez v1, :cond_a

    :cond_7
    return-void

    :cond_8
    add-int/lit8 v3, v3, 0x2

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_a
    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Lorg/bouncycastle/crypto/Xof;->update(B)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v3, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, v4, v3, v5}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    const/4 v3, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-interface {v0, v4, v3, v5}, Lorg/bouncycastle/crypto/Xof;->doFinal([BII)I

    goto :goto_5
.end method

.method static indexOf([III)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method static is_picnic3(I)Z
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I
    .locals 3

    invoke-virtual {p5}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v0

    invoke-static {p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->extend(I)I

    move-result v1

    and-int/2addr v1, p4

    invoke-static {p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->extend(I)I

    move-result v2

    and-int/2addr v2, p3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    iget v1, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    if-ltz v1, :cond_0

    iget-object v1, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    iget v2, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    aget-object v1, v1, v2

    iget v2, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    iget v2, p6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    invoke-static {v0, v2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit(III)I

    move-result v0

    :cond_0
    invoke-direct {p0, v0, p6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->wordToMsgs(ILorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity16(I)I

    move-result v0

    and-int v1, p1, p2

    xor-int/2addr v0, v1

    return v0
.end method

.method private mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v0, v0, v6

    iget v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v0

    iget-object v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v1, v1, v7

    iget v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    iget-object v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v2, v2, v8

    iget v3, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v2

    aget v3, p1, v6

    aget v4, p2, v7

    and-int/2addr v3, v4

    aget v4, p1, v7

    aget v5, p2, v6

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    aget v4, p1, v6

    aget v5, p2, v6

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    xor-int/2addr v3, v0

    xor-int/2addr v3, v1

    aput v3, p3, v6

    aget v3, p1, v7

    aget v4, p2, v8

    and-int/2addr v3, v4

    aget v4, p1, v8

    aget v5, p2, v7

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    aget v4, p1, v7

    aget v5, p2, v7

    and-int/2addr v4, v5

    xor-int/2addr v3, v4

    xor-int/2addr v1, v3

    xor-int/2addr v1, v2

    aput v1, p3, v7

    aget v1, p1, v8

    aget v3, p2, v6

    and-int/2addr v1, v3

    aget v3, p1, v6

    aget v4, p2, v8

    and-int/2addr v3, v4

    xor-int/2addr v1, v3

    aget v3, p1, v8

    aget v4, p2, v8

    and-int/2addr v3, v4

    xor-int/2addr v1, v3

    xor-int/2addr v1, v2

    xor-int/2addr v0, v1

    aput v0, p3, v8

    aget-object v0, p5, v6

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v2, p3, v6

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    aget-object v0, p5, v7

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v2, p3, v7

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    aget-object v0, p5, v8

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v2, p3, v8

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    iget v0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    return-void
.end method

.method private mpc_LowMC(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;[I[I)V
    .locals 10

    const/4 v0, 0x0

    array-length v1, p4

    const/4 v2, 0x0

    invoke-static {p4, v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([IIII)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v0, 0x3

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v0, p0

    move-object v1, p4

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant([II[III)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    const/4 v0, 0x3

    if-ge v7, v0, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v7, v0

    aget-object v0, p2, v7

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v4, 0x0

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v8}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, p4, p4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    const/4 v0, 0x1

    move v8, v0

    :goto_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v8, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, p0, v8}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v9

    const/4 v0, 0x0

    move v7, v0

    :goto_2
    const/4 v0, 0x3

    if-ge v7, v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int v2, v7, v0

    aget-object v0, p2, v7

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v4, 0x0

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v9}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_2

    :cond_1
    invoke-direct {p0, p4, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_substitution([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v1, 0x3

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v4, v1, 0x3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p4

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_matrix_mul([II[II[III)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v1, 0x3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v3

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v4

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v0, p0

    move-object v1, p4

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant([II[III)V

    const/4 v0, 0x3

    invoke-direct {p0, p4, p4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_3
    const/4 v1, 0x3

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x3

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v1, v2

    aget-object v2, p2, v0

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {p4, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method private mpc_matrix_mul([II[II[III)V
    .locals 8

    const/4 v0, 0x0

    move v7, v0

    :goto_0
    if-ge v7, p7, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v0, v7

    add-int v2, p2, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v0, v7

    add-int v4, p4, v0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .locals 14

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v0, v0, 0x3

    if-ge v13, v0, :cond_0

    add-int/lit8 v0, v13, 0x2

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v1

    add-int/lit8 v0, v13, 0x2

    aget v3, p2, v0

    add-int/lit8 v0, v13, 0x1

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    add-int/lit8 v0, v13, 0x1

    aget v4, p2, v0

    invoke-static {p1, v13}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v7

    aget v9, p2, v13

    move-object v0, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-direct/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v0

    move-object v5, p0

    move v6, v2

    move v8, v4

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v4

    move-object v6, p0

    move v8, v1

    move v10, v3

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    invoke-direct/range {v6 .. v12}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND(IIIILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)I

    move-result v3

    xor-int/2addr v4, v1

    xor-int v5, v1, v2

    xor-int/2addr v3, v5

    xor-int/2addr v1, v2

    xor-int/2addr v1, v7

    xor-int/2addr v0, v1

    add-int/lit8 v1, v13, 0x2

    invoke-static {p1, v1, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v1, v13, 0x1

    invoke-static {p1, v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    invoke-static {p1, v13, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v0, v13, 0x3

    move v13, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mpc_substitution([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 16

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v1, 0x3

    new-array v3, v1, [I

    const/4 v1, 0x3

    new-array v7, v1, [I

    const/4 v1, 0x3

    new-array v4, v1, [I

    const/4 v1, 0x3

    new-array v8, v1, [I

    const/4 v1, 0x3

    new-array v12, v1, [I

    const/4 v1, 0x0

    move v15, v1

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v15, v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    add-int/lit8 v5, v1, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x20

    add-int v6, v5, v15

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    aput v6, v2, v1

    add-int v6, v5, v15

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    aput v6, v3, v1

    add-int/2addr v5, v15

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    aput v5, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v5, p0

    move-object v6, v3

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    invoke-direct/range {v5 .. v10}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v9, p0

    move-object v10, v7

    move-object v11, v2

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    invoke-direct/range {v9 .. v14}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    const/4 v1, 0x0

    :goto_2
    const/4 v5, 0x3

    if-ge v1, v5, :cond_1

    add-int/lit8 v5, v1, 0x3

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x20

    add-int v6, v5, v15

    add-int/lit8 v6, v6, 0x2

    aget v9, v2, v1

    aget v10, v8, v1

    xor-int/2addr v9, v10

    move-object/from16 v0, p1

    invoke-static {v0, v6, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int v6, v5, v15

    add-int/lit8 v6, v6, 0x1

    aget v9, v2, v1

    aget v10, v3, v1

    xor-int/2addr v9, v10

    aget v10, v12, v1

    xor-int/2addr v9, v10

    move-object/from16 v0, p1

    invoke-static {v0, v6, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/2addr v5, v15

    aget v6, v2, v1

    aget v9, v3, v1

    xor-int/2addr v6, v9

    aget v9, v7, v1

    xor-int/2addr v6, v9

    aget v9, v4, v1

    xor-int/2addr v6, v9

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v15, 0x3

    move v15, v1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method private mpc_xor([I[II)V
    .locals 5

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v1, p3

    :goto_0
    if-ge v0, v1, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v2, p3

    add-int/2addr v2, v0

    aget v3, p1, v2

    aget v4, p2, v0

    xor-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mpc_xor_constant([II[III)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_0

    add-int v1, v0, p2

    aget v2, p1, v1

    add-int v3, v0, p4

    aget v3, p3, v3

    xor-int/2addr v2, v3

    aput v2, p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private mpc_xor_constant_verify([I[IIII)V
    .locals 5

    if-nez p5, :cond_0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x2

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p4, :cond_1

    add-int v2, v1, v0

    aget v3, p1, v2

    add-int v4, v1, p3

    aget v4, p2, v4

    xor-int/2addr v3, v4

    aput v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p5, v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_1
    return-void
.end method

.method private picnic_keygen([B[B[BLjava/security/SecureRandom;)V
    .locals 5

    const/4 v4, 0x0

    array-length v0, p3

    div-int/lit8 v0, v0, 0x4

    new-array v0, v0, [I

    array-length v1, p1

    div-int/lit8 v1, v1, 0x4

    new-array v1, v1, [I

    array-length v2, p2

    div-int/lit8 v2, v2, 0x4

    new-array v2, v2, [I

    invoke-virtual {p4, p3}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p3, v4, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    invoke-virtual {p4, p1}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {p1, v4, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    invoke-direct {p0, v1, v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LowMCEnc([I[I[I)V

    invoke-static {v0, p3, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    invoke-static {v1, p1, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    invoke-static {v2, p2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    return-void
.end method

.method private picnic_read_public_key([I[I[B)V
    .locals 5

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    div-int/lit8 v2, v2, 0x4

    invoke-static {p3, v0, p1, v3, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    invoke-static {p3, v1, p2, v3, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    sub-int/2addr v4, v3

    add-int/2addr v0, v3

    invoke-static {p3, v0, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v0

    aput v0, p1, v2

    add-int v0, v1, v3

    invoke-static {p3, v0, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v0

    aput v0, p2, v2

    :cond_0
    return-void
.end method

.method private picnic_sign([B[B[B)Z
    .locals 11

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v1, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v2, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v3, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v0, v0, 0x1

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    div-int/lit8 v5, v5, 0x4

    invoke-static {p1, v7, v1, v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    invoke-static {p1, v0, v2, v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    invoke-static {p1, v4, v3, v6, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v5, v8, :cond_0

    mul-int/lit8 v8, v5, 0x4

    iget v9, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    sub-int/2addr v9, v8

    add-int v10, v7, v8

    invoke-static {p1, v10, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v10

    aput v10, v1, v5

    add-int/2addr v0, v8

    invoke-static {p1, v0, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v0

    aput v0, v2, v5

    add-int v0, v4, v8

    invoke-static {p1, v0, v9}, Lorg/bouncycastle/util/Pack;->littleEndianToInt_Low([BII)I

    move-result v0

    aput v0, v3, v5

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->is_picnic3(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature;

    invoke-direct {v5, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->sign_picnic1([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature;)I

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Failed to create signature"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move v0, v6

    :goto_0
    return v0

    :cond_1
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v5, p3, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->serializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BI)I

    move-result v0

    if-gez v0, :cond_2

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Failed to serialize signature"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_2
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    invoke-static {v0, p3, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    move v0, v7

    goto :goto_0

    :cond_3
    new-instance v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;

    invoke-direct {v5, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->sign_picnic3([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature2;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Failed to create signature"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_4
    array-length v0, p2

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v5, p3, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->serializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BI)I

    move-result v0

    if-gez v0, :cond_5

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Failed to serialize signature"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    move v0, v6

    goto :goto_0

    :cond_5
    iput v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    invoke-static {v0, p3, v6}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    move v0, v7

    goto :goto_0
.end method

.method private picnic_verify([B[B[BI)I
    .locals 5

    const/4 v0, -0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v1, v1, [I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v2, v2, [I

    invoke-direct {p0, v1, v2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_read_public_key([I[I[B)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    invoke-static {v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->is_picnic3(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    array-length v4, p2

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v3, p3, p4, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->deserializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BII)I

    move-result v4

    if-eqz v4, :cond_0

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Error couldn\'t deserialize signature (2)!"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, v3, v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verify_picnic3(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[I[I[B)I

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature;

    invoke-direct {v3, p0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    array-length v4, p2

    add-int/lit8 v4, v4, 0x4

    invoke-direct {p0, v3, p3, p4, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->deserializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BII)I

    move-result v4

    if-eqz v4, :cond_2

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Error couldn\'t deserialize signature!"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3, v1, v2, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verify(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[I[I[B)I

    move-result v0

    goto :goto_0
.end method

.method private picnic_write_private_key([B[B[B[B)I
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    array-length v1, p4

    if-ge v1, v0, :cond_0

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Failed writing private key!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    int-to-byte v1, v1

    aput-byte v1, p4, v3

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p1, v3, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p2, v3, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p3, v3, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private picnic_write_public_key([B[B[B)I
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    array-length v1, p3

    if-ge v1, v0, :cond_0

    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Failed writing public key!"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->parameters:I

    int-to-byte v1, v1

    aput-byte v1, p3, v3

    const/4 v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p1, v3, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {p2, v3, p3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method private serializeSignature2(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[BI)I
    .locals 6

    const/4 v1, 0x0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/lit8 v0, v0, 0x20

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v2

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v2, v0

    move v0, v1

    :goto_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v3, :cond_2

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v4

    aget v3, v3, v4

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v3

    :cond_0
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    array-length v0, p2

    if-ge v0, v2, :cond_3

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_3
    iget-object v0, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v0, p3

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/16 v3, 0x20

    invoke-static {v2, v1, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x20

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    invoke-static {v2, v1, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    add-int/2addr v0, v2

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    iget v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-static {v2, v1, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    add-int/2addr v2, v0

    move v0, v1

    :goto_2
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v3, :cond_6

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-direct {p0, v3, v4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v0

    iget v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    invoke-static {v3, v1, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v0

    iget v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    add-int/2addr v2, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v4, v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v4

    aget v3, v3, v4

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v4, v4, -0x1

    if-eq v3, v4, :cond_4

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v1, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v3

    :cond_4
    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {v3, v1, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v1, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v3

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v3, v1, p2, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v2, v3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    sub-int v0, v2, p3

    goto/16 :goto_1
.end method

.method private setChallenge([BII)V
    .locals 2

    mul-int/lit8 v0, p2, 0x2

    and-int/lit8 v1, p3, 0x1

    int-to-byte v1, v1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    mul-int/lit8 v0, p2, 0x2

    add-int/lit8 v0, v0, 0x1

    ushr-int/lit8 v1, p3, 0x1

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    return-void
.end method

.method private sign_picnic1([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature;)I
    .locals 23

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v4, 0x3

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Lorg/bouncycastle/pqc/crypto/picnic/View;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, [[Lorg/bouncycastle/pqc/crypto/picnic/View;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, [[[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v4, 0x3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    filled-new-array {v3, v4, v5}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, [[[B

    invoke-direct/range {p0 .. p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->computeSeeds([I[I[I[B)[B

    move-result-object v4

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int v21, v3, v5

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int v3, v3, v21

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-static {v4, v3, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v22, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    invoke-direct/range {v22 .. v23}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v3, v3, 0x9

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v5, v6

    invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    new-array v9, v3, [B

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v7, v3, :cond_5

    aget-object v3, v18, v7

    const/4 v5, 0x0

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/View;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v6, v3, v5

    aget-object v3, v18, v7

    const/4 v5, 0x1

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/View;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v6, v3, v5

    aget-object v3, v18, v7

    const/4 v5, 0x2

    new-instance v6, Lorg/bouncycastle/pqc/crypto/picnic/View;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v6, v3, v5

    const/4 v8, 0x0

    :goto_1
    const/4 v3, 0x2

    if-ge v8, v3, :cond_1

    mul-int v3, v21, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v5, v8

    add-int/2addr v5, v3

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v10, v3

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v4, "createRandomTape failed"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v3, -0x1

    :goto_2
    return v3

    :cond_0
    aget-object v3, v18, v7

    aget-object v3, v3, v8

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v5, 0x0

    invoke-static {v9, v5, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v3, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    move-object/from16 v0, v22

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v5, v5, v8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v9, v3, v5, v6, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    mul-int v3, v21, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v5, v5, 0x2

    add-int v12, v3, v5

    move-object/from16 v0, p5

    iget-object v13, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/4 v15, 0x2

    move-object/from16 v0, v22

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v5, 0x2

    aget-object v16, v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move/from16 v17, v0

    move-object/from16 v10, p0

    move-object v11, v4

    move v14, v7

    invoke-direct/range {v10 .. v17}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v4, "createRandomTape failed"

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v3, -0x1

    goto :goto_2

    :cond_2
    aget-object v3, v18, v7

    const/4 v5, 0x2

    aget-object v3, v3, v5

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    aget-object v5, v18, v7

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    aget-object v6, v18, v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v3, v1, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    iput v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    const/4 v3, 0x0

    array-length v5, v9

    div-int/lit8 v5, v5, 0x4

    invoke-static {v9, v3, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v3

    aget-object v5, v18, v7

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v5, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_LowMC(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[Lorg/bouncycastle/pqc/crypto/picnic/View;[I[I)V

    const/4 v5, 0x0

    invoke-static {v3, v9, v5}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    const/16 v3, 0x10

    new-array v3, v3, [I

    aget-object v5, v18, v7

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v6, v18, v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v8, v18, v7

    const/4 v10, 0x2

    aget-object v8, v8, v10

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v5, v6, v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object/from16 v0, p2

    invoke-static {v3, v0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([I[II)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Simulation failed; output does not match public key (round = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v3, -0x1

    goto/16 :goto_2

    :cond_3
    mul-int v3, v21, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v5, v5, 0x0

    add-int/2addr v3, v5

    aget-object v5, v18, v7

    const/4 v6, 0x0

    aget-object v5, v5, v6

    aget-object v6, v19, v7

    const/4 v8, 0x0

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    mul-int v3, v21, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v5, v5, 0x1

    add-int/2addr v3, v5

    aget-object v5, v18, v7

    const/4 v6, 0x1

    aget-object v5, v5, v6

    aget-object v6, v19, v7

    const/4 v8, 0x1

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    mul-int v3, v21, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v3, v5

    aget-object v5, v18, v7

    const/4 v6, 0x2

    aget-object v5, v5, v6

    aget-object v6, v19, v7

    const/4 v8, 0x2

    aget-object v6, v6, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_4

    const/4 v11, 0x0

    mul-int v3, v21, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v5, v5, 0x0

    add-int v13, v3, v5

    aget-object v3, v18, v7

    const/4 v5, 0x0

    aget-object v14, v3, v5

    aget-object v3, v20, v7

    const/4 v5, 0x0

    aget-object v15, v3, v5

    move-object/from16 v10, p0

    move-object v12, v4

    invoke-direct/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    const/4 v11, 0x1

    mul-int v3, v21, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v5, v5, 0x1

    add-int v13, v3, v5

    aget-object v3, v18, v7

    const/4 v5, 0x1

    aget-object v14, v3, v5

    aget-object v3, v20, v7

    const/4 v5, 0x1

    aget-object v15, v3, v5

    move-object/from16 v10, p0

    move-object v12, v4

    invoke-direct/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    const/4 v11, 0x2

    mul-int v3, v21, v7

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v5, v5, 0x2

    add-int v13, v3, v5

    aget-object v3, v18, v7

    const/4 v5, 0x2

    aget-object v14, v3, v5

    aget-object v3, v20, v7

    const/4 v5, 0x2

    aget-object v15, v3, v5

    move-object/from16 v10, p0

    move-object v12, v4

    invoke-direct/range {v10 .. v15}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p5

    iget-object v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    move-object/from16 v0, p5

    iget-object v11, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, v18

    move-object/from16 v9, v19

    move-object/from16 v12, p4

    move-object/from16 v13, v20

    invoke-direct/range {v5 .. v13}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->H3([I[I[[Lorg/bouncycastle/pqc/crypto/picnic/View;[[[B[B[B[B[[[B)V

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v5, :cond_7

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    aget-object v6, v5, v3

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v7

    mul-int v9, v21, v3

    aget-object v10, v18, v3

    aget-object v11, v19, v3

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_6

    const/4 v12, 0x0

    :goto_4
    move-object/from16 v5, p0

    move-object v8, v4

    invoke-virtual/range {v5 .. v12}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->prove(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;I[BI[Lorg/bouncycastle/pqc/crypto/picnic/View;[[B[[B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    aget-object v12, v20, v3

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method private sign_picnic3([I[I[I[BLorg/bouncycastle/pqc/crypto/picnic/Signature2;)Z
    .locals 19

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/lit8 v2, v2, 0x20

    new-array v3, v2, [B

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->computeSaltAndRootSeed([B[I[I[I[B)V

    const/16 v2, 0x20

    array-length v4, v3

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    const/4 v4, 0x0

    const/16 v5, 0x20

    invoke-static {v3, v4, v5}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    move-object/from16 v0, p5

    iput-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    new-instance v14, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v8

    invoke-virtual {v14}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v9

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v15, v2, [Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v0, v2, [Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move-object/from16 v16, v0

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v7, v2, :cond_0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v15, v7

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v2, v16, v7

    aget-object v2, v16, v7

    add-int v3, v7, v9

    aget-object v3, v8, v3

    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v2, v3, v4, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    aget-object v3, v15, v7

    aget-object v2, v16, v7

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v4

    aget-object v2, v16, v7

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v5

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v3, v3, 0x4

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [[B

    const/16 v2, 0xb0

    new-array v9, v2, [B

    const/4 v2, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v2, v3, :cond_1

    aget-object v3, v15, v2

    aget-object v4, v12, v2

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->computeAuxTape([B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, [[[B

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v7, v2, :cond_3

    const/4 v8, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v2, v2, -0x1

    if-ge v8, v2, :cond_2

    aget-object v2, v13, v7

    aget-object v3, v2, v8

    aget-object v2, v16, v7

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v8, v2, -0x1

    aget-object v2, v15, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    aget-object v2, v13, v7

    aget-object v3, v2, v8

    aget-object v2, v16, v7

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v4

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    move-object v5, v9

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v0, v2, [Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    new-array v5, v2, [I

    const/4 v2, 0x0

    move v9, v2

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v9, v2, :cond_5

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Msg;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v17, v9

    aget-object v2, v12, v9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v2, v3, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v3, v3, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    aget-object v4, v15, v9

    aget-object v6, v17, v9

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v3, "MPC simulation failed, aborting signature"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_5
    return v2

    :cond_4
    aget-object v2, v12, v9

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto :goto_4

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[B

    const/4 v3, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v3, v4, :cond_6

    aget-object v4, v6, v3

    aget-object v5, v13, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_h([B[[B)V

    aget-object v4, v2, v3

    aget-object v5, v12, v3

    aget-object v7, v17, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    new-instance v18, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->buildMerkleTree([[B[B)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v2, v2, [I

    move-object/from16 v0, p5

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    new-array v2, v2, [I

    move-object/from16 v0, p5

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    new-array v2, v2, [B

    move-object/from16 v0, p5

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    move-object/from16 v0, v18

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    const/4 v7, 0x0

    aget-object v7, v2, v7

    move-object/from16 v0, p5

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->HCP([B[I[I[[B[B[B[I[I[B)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->openMerkleTree([II[I)[B

    move-result-object v2

    move-object/from16 v0, p5

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    const/4 v2, 0x0

    aget v2, v4, v2

    move-object/from16 v0, p5

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v2, v3

    new-array v2, v2, [B

    move-object/from16 v0, p5

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    move-object/from16 v0, p5

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v5, v6

    invoke-virtual {v14, v2, v3, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeeds([II[BI)I

    move-result v2

    move-object/from16 v0, p5

    iput v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v2, v2, [Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    move-object/from16 v0, p5

    iput-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    const/4 v2, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v2, v3, :cond_9

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-eqz v3, :cond_8

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    new-instance v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v4, v3, v2

    move-object/from16 v0, p5

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v3, v4, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v6, v6, v3

    aput v6, v4, v5

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v5, v5, v2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v6, v7

    new-array v6, v6, [B

    iput-object v6, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v5, v5, v2

    aget-object v6, v16, v2

    const/4 v7, 0x1

    move-object/from16 v0, p5

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v8, v8, v2

    iget-object v8, v8, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    move-object/from16 v0, p0

    iget v9, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v10, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/2addr v9, v10

    invoke-virtual {v6, v4, v7, v8, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->revealSeeds([II[BI)I

    move-result v4

    iput v4, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v5, v5, v3

    if-eq v5, v4, :cond_7

    move-object/from16 v0, p5

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    aget-object v5, v15, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    :cond_7
    aget-object v4, v12, v2

    const/4 v5, 0x0

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v6, v6, v2

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v17, v2

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v5, v5, v3

    aget-object v4, v4, v5

    const/4 v5, 0x0

    move-object/from16 v0, p5

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v6, v6, v2

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v4, v5, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v4, v13, v2

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v3, v5, v3

    aget-object v3, v4, v3

    const/4 v4, 0x0

    move-object/from16 v0, p5

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v5, v5, v2

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_7

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_5
.end method

.method private simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I
    .locals 6

    const/16 v0, 0x10

    const/4 v1, 0x0

    new-array v2, v0, [I

    new-array v3, v0, [I

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v4

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v0

    invoke-virtual {p0, v2, p1, v4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-virtual {p0, v3, v2, p5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    const/4 v0, 0x1

    :goto_0
    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v0, v4, :cond_0

    invoke-direct {p0, p3, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->tapesToWords([ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    invoke-direct {p0, v3, p3, p2, p4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, p0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v4

    invoke-virtual {p0, v3, v3, v5, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v5, v0, -0x1

    invoke-virtual {v4, p0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v4

    invoke-virtual {p0, v3, v3, v5, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    iget-object v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v4, p0, v0}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v4}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v4

    invoke-virtual {p0, v2, p1, v5, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul([I[I[II)V

    invoke-virtual {p0, v3, v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_array([I[I[II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v3, p6, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([I[II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method private static subarrayEquals([B[BI)Z
    .locals 4

    const/4 v0, 0x0

    array-length v1, p0

    if-lt v1, p2, :cond_0

    array-length v1, p1

    if-ge v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_2

    aget-byte v2, p0, v1

    aget-byte v3, p1, v1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static subarrayEquals([I[II)Z
    .locals 4

    const/4 v0, 0x0

    array-length v1, p0

    if-lt v1, p2, :cond_0

    array-length v1, p1

    if-ge v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v1, v0

    :goto_1
    if-ge v1, p2, :cond_2

    aget v2, p0, v1

    aget v3, p1, v1

    if-ne v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private substitution([I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    and-int v5, v2, v3

    xor-int/2addr v5, v1

    invoke-static {p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v4, v0, 0x1

    xor-int v5, v1, v2

    and-int v6, v1, v3

    xor-int/2addr v5, v6

    invoke-static {p1, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    xor-int v4, v1, v2

    xor-int/2addr v3, v4

    and-int/2addr v1, v2

    xor-int/2addr v1, v3

    invoke-static {p1, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tapesToWords([ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapesToWord()I

    move-result v1

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateDigest([I[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {p1, p2, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([I[BI)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digest:Lorg/bouncycastle/crypto/Xof;

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    invoke-interface {v0, p2, v2, v1}, Lorg/bouncycastle/crypto/Xof;->update([BII)V

    return-void
.end method

.method private verify(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[I[I[B)I
    .locals 26

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, [[[B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, [[[B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    const/4 v3, 0x3

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v20, v2

    check-cast v20, [[[I

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    move-object/from16 v23, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    mul-int/lit8 v2, v2, 0x6

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    new-array v9, v2, [B

    new-instance v11, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v0, v2, [Lorg/bouncycastle/pqc/crypto/picnic/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v0, v2, [Lorg/bouncycastle/pqc/crypto/picnic/View;

    move-object/from16 v25, v0

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v8, v2, :cond_3

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/View;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v24, v8

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/View;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/View;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v25, v8

    aget-object v3, v22, v8

    aget-object v4, v24, v8

    aget-object v5, v25, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v6

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v2, p0

    move-object/from16 v10, p3

    invoke-virtual/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->verifyProof(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;I[BI[B[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Invalid signature. Did not verify"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v3

    aget-object v2, v22, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    const/4 v4, 0x0

    aget-object v5, v24, v8

    aget-object v6, v18, v8

    aget-object v6, v6, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    aget-object v2, v22, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    const/4 v4, 0x0

    aget-object v5, v25, v8

    aget-object v6, v18, v8

    add-int/lit8 v7, v3, 0x1

    rem-int/lit8 v7, v7, 0x3

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->Commit([BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    aget-object v2, v22, v8

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    const/4 v4, 0x0

    aget-object v5, v18, v8

    add-int/lit8 v6, v3, 0x2

    rem-int/lit8 v6, v6, 0x3

    aget-object v5, v5, v6

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    aget-object v2, v22, v8

    iget-object v4, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    const/4 v5, 0x0

    aget-object v6, v24, v8

    aget-object v2, v19, v8

    aget-object v7, v2, v3

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    add-int/lit8 v2, v3, 0x1

    rem-int/lit8 v13, v2, 0x3

    aget-object v2, v22, v8

    iget-object v14, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    const/4 v15, 0x0

    aget-object v16, v25, v8

    aget-object v2, v19, v8

    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v4, v4, 0x3

    aget-object v17, v2, v4

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v17}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->G(I[BILorg/bouncycastle/pqc/crypto/picnic/View;[B)V

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    :goto_2
    aget-object v4, v22, v8

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    const/4 v5, 0x0

    aget-object v6, v19, v8

    add-int/lit8 v7, v3, 0x2

    rem-int/lit8 v7, v7, 0x3

    aget-object v6, v6, v7

    const/4 v7, 0x0

    invoke-static {v4, v5, v6, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    aget-object v2, v20, v8

    aget-object v4, v24, v8

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aput-object v4, v2, v3

    aget-object v2, v20, v8

    add-int/lit8 v4, v3, 0x1

    rem-int/lit8 v4, v4, 0x3

    aget-object v5, v25, v8

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aput-object v5, v2, v4

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v2, v2, [I

    aget-object v4, v24, v8

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    aget-object v5, v25, v8

    iget-object v5, v5, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v2, v4, v5, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->xor_three([I[I[I[I)V

    aget-object v4, v20, v8

    add-int/lit8 v3, v3, 0x2

    rem-int/lit8 v3, v3, 0x3

    aput-object v2, v4, v3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    goto :goto_2

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    new-array v7, v2, [B

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, v20

    move-object/from16 v6, v18

    move-object/from16 v9, p4

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->H3([I[I[[[I[[[B[B[B[B[[[B)V

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-static {v0, v7, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([B[BI)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Invalid signature. Did not verify"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_1

    :cond_4
    move/from16 v2, v21

    goto/16 :goto_1
.end method

.method private verify_picnic3(Lorg/bouncycastle/pqc/crypto/picnic/Signature2;[I[I[B)I
    .locals 20

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    filled-new-array {v2, v3, v4}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, [[[B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, [[B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, [[B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v13, v2, [Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    new-instance v14, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    const/16 v2, 0x40

    new-array v15, v2, [B

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v0, v2, [Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    new-array v0, v2, [Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    move-object/from16 v17, v0

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfo:[B

    move-object/from16 v0, p1

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->iSeedInfoLen:I

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    const/4 v8, 0x0

    invoke-virtual/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->reconstructSeeds([II[BI[BI)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, -0x1

    :goto_0
    return v2

    :cond_0
    const/4 v9, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v9, v3, :cond_3

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v3

    if-nez v3, :cond_2

    new-instance v3, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v3, v16, v9

    aget-object v3, v16, v9

    invoke-virtual {v2, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v3, v4, v5, v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->generateSeeds([B[BI)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    new-instance v3, Lorg/bouncycastle/pqc/crypto/picnic/Tree;

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    move-object/from16 v0, p0

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;II)V

    aput-object v3, v16, v9

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v3, v4, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    aget v3, v6, v3

    aput v3, v4, v5

    aget-object v3, v16, v9

    const/4 v5, 0x1

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v6, v6, v9

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfo:[B

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v7, v7, v9

    iget v7, v7, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->seedInfoLen:I

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual/range {v3 .. v9}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->reconstructSeeds([II[BI[BI)I

    move-result v3

    if-eqz v3, :cond_1

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to reconstruct seeds for round "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    add-int/lit8 v18, v2, -0x1

    const/16 v2, 0xb0

    new-array v9, v2, [B

    const/4 v7, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v7, v2, :cond_9

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Tape;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v17, v7

    aget-object v3, v17, v7

    aget-object v2, v16, v7

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaves()[[B

    move-result-object v4

    aget-object v2, v16, v7

    invoke-virtual {v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeavesOffset()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTapes(Lorg/bouncycastle/pqc/crypto/picnic/Tape;[[BI[BI)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v2

    if-nez v2, :cond_5

    aget-object v2, v17, v7

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->computeAuxTape([B)V

    const/4 v8, 0x0

    :goto_3
    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    aget-object v2, v10, v7

    aget-object v3, v2, v8

    aget-object v2, v16, v7

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_4
    aget-object v2, v17, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getAuxBits([BLorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    aget-object v2, v10, v7

    aget-object v3, v2, v18

    aget-object v2, v16, v7

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    move-object v5, v9

    move/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v3, v4, v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v3

    aget v19, v2, v3

    const/4 v8, 0x0

    :goto_5
    move/from16 v0, v18

    if-ge v8, v0, :cond_7

    move/from16 v0, v19

    if-eq v8, v0, :cond_6

    aget-object v2, v10, v7

    aget-object v3, v2, v8

    aget-object v2, v16, v7

    invoke-virtual {v2, v8}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_7
    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_8

    aget-object v2, v10, v7

    aget-object v3, v2, v18

    aget-object v2, v16, v7

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->getLeaf(I)[B

    move-result-object v4

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v7

    iget-object v5, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    move-object/from16 v0, p1

    iget-object v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    move/from16 v8, v18

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit([B[B[B[BII)V

    :cond_8
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v2, v2, v7

    iget-object v2, v2, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->C:[B

    const/4 v3, 0x0

    aget-object v4, v10, v7

    aget-object v4, v4, v19

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_9
    const/4 v2, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v2, v3, :cond_a

    aget-object v3, v11, v2

    aget-object v4, v10, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_h([B[[B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    new-array v5, v2, [I

    const/4 v2, 0x0

    move v9, v2

    :goto_7
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v9, v2, :cond_e

    new-instance v2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Msg;-><init>(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;)V

    aput-object v2, v13, v9

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->contains([III)Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeP:[I

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    iget v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    invoke-static {v3, v4, v9}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->indexOf([III)I

    move-result v3

    aget v2, v2, v3

    move/from16 v0, v18

    if-eq v2, v0, :cond_b

    aget-object v3, v17, v9

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v4, v4, v9

    iget-object v4, v4, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->aux:[B

    invoke-virtual {v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->setAuxBits([B)V

    :cond_b
    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v9

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->msgs:[B

    const/4 v4, 0x0

    aget-object v6, v13, v9

    iget-object v6, v6, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v6, v6, v2

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v4, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object v3, v17, v9

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v3, v3, v2

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    aget-object v3, v13, v9

    iput v2, v3, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->unopened:I

    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v9

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget-object v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v7, v7, v9

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    array-length v7, v7

    invoke-static {v3, v4, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v7, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v2, v4, v3, v6, v7}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[III)V

    aget-object v4, v17, v9

    aget-object v6, v13, v9

    move-object/from16 v2, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->simulateOnline([ILorg/bouncycastle/pqc/crypto/picnic/Tape;[ILorg/bouncycastle/pqc/crypto/picnic/Msg;[I[I)I

    move-result v2

    if-eqz v2, :cond_c

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MPC simulation failed for round "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", signature invalid"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_c
    aget-object v2, v12, v9

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;

    aget-object v3, v3, v9

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature2$Proof2;->input:[B

    aget-object v4, v13, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->commit_v([B[BLorg/bouncycastle/pqc/crypto/picnic/Msg;)V

    :goto_8
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_7

    :cond_d
    const/4 v2, 0x0

    aput-object v2, v12, v9

    goto :goto_8

    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numOpenedRounds:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p1

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeC:[I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getMissingLeavesList([I)[I

    move-result-object v3

    move-object/from16 v0, p1

    iget-object v4, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfo:[B

    move-object/from16 v0, p1

    iget v5, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->cvInfoLen:I

    invoke-virtual {v14, v3, v2, v4, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->addMerkleNodes([II[BI)I

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_f
    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    invoke-virtual {v14, v12, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->verifyMerkleTree([[B[B)I

    move-result v12

    if-eqz v12, :cond_10

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_10
    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v2, v14, Lorg/bouncycastle/pqc/crypto/picnic/Tree;->nodes:[[B

    const/4 v3, 0x0

    aget-object v7, v2, v3

    move-object/from16 v0, p1

    iget-object v8, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->salt:[B

    move-object/from16 v2, p0

    move-object v3, v15

    move-object v6, v11

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->HCP([B[I[I[[B[B[B[I[I[B)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lorg/bouncycastle/pqc/crypto/picnic/Signature2;->challengeHash:[B

    move-object/from16 v0, p0

    iget v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v2, v15, v3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->subarrayEquals([B[BI)Z

    move-result v2

    if-nez v2, :cond_11

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Challenge does not match, signature invalid"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v2, -0x1

    goto/16 :goto_0

    :cond_11
    move v2, v12

    goto/16 :goto_0
.end method

.method private wordToMsgs(ILorg/bouncycastle/pqc/crypto/picnic/Msg;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCParties:I

    if-ge v0, v1, :cond_0

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit(II)I

    move-result v1

    iget-object v2, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->msgs:[[B

    aget-object v2, v2, v0

    iget v3, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    int-to-byte v1, v1

    invoke-static {v2, v3, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p2, Lorg/bouncycastle/pqc/crypto/picnic/Msg;->pos:I

    return-void
.end method

.method private xor_three([I[I[I[I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    aget v2, p3, v0

    xor-int/2addr v1, v2

    aget v2, p4, v0

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected aux_mpc_sbox([I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x2

    invoke-static {p1, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {p1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v2

    invoke-static {p1, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v3

    add-int/lit8 v4, v0, 0x2

    invoke-static {p2, v4}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v4

    add-int/lit8 v5, v0, 0x1

    invoke-static {p2, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    invoke-static {p2, v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    xor-int/2addr v6, v1

    xor-int/2addr v6, v2

    xor-int/2addr v6, v3

    xor-int/2addr v4, v1

    xor-int/2addr v5, v1

    xor-int/2addr v5, v2

    invoke-direct {p0, v1, v2, v6, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    invoke-direct {p0, v2, v3, v4, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    invoke-direct {p0, v3, v1, v5, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->aux_mpc_AND(IIILorg/bouncycastle/pqc/crypto/picnic/Tape;)V

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_0
    return-void
.end method

.method public crypto_sign([B[B[B)V
    .locals 3

    invoke-direct {p0, p3, p2, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_sign([B[B[B)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x4

    array-length v2, p2

    invoke-static {p2, v0, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public crypto_sign_keypair([B[BLjava/security/SecureRandom;)V
    .locals 3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x4

    new-array v0, v0, [B

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v1, v1, 0x4

    new-array v1, v1, [B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v2, 0x4

    new-array v2, v2, [B

    invoke-direct {p0, v0, v1, v2, p3}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_keygen([B[B[BLjava/security/SecureRandom;)V

    invoke-direct {p0, v1, v0, p1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_write_public_key([B[B[B)I

    invoke-direct {p0, v2, v1, v0, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_write_private_key([B[B[B[B)I

    return-void
.end method

.method public crypto_sign_open([B[B[B)Z
    .locals 4

    const/4 v3, 0x4

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v1

    array-length v2, p1

    add-int/lit8 v2, v2, 0x4

    invoke-static {p2, v3, v2}, Lorg/bouncycastle/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    invoke-direct {p0, p3, v2, p2, v1}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->picnic_verify([B[B[BI)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    array-length v1, p1

    invoke-static {p2, v3, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getChallenge([BI)I
    .locals 1

    invoke-static {p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getCrumbAligned([BI)B

    move-result v0

    return v0
.end method

.method public getPublicKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_PUBLICKEYBYTES:I

    return v0
.end method

.method public getSecretKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_SECRETKEYBYTES:I

    return v0
.end method

.method public getSignatureSize(I)I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    add-int/2addr v0, p1

    return v0
.end method

.method public getTrueSignatureSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->signatureLength:I

    return v0
.end method

.method protected matrix_mul([I[I[II)V
    .locals 7

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, v2

    move-object v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    return-void
.end method

.method protected matrix_mul_offset([II[II[II)V
    .locals 9

    const/16 v0, 0x10

    new-array v3, v0, [I

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aput v1, v3, v0

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    div-int/lit8 v4, v0, 0x20

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x20

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    sub-int v5, v0, v1

    const/4 v0, -0x1

    ushr-int/2addr v0, v5

    const v1, 0x55555555

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v0

    const v1, 0x33333333

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v0

    const v1, 0xf0f0f0f

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/math/raw/Bits;->bitPermuteStepSimple(III)I

    move-result v6

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_0

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v7, v0

    add-int/2addr v7, v2

    add-int v8, p4, v2

    aget v8, p3, v8

    add-int/2addr v7, p6

    aget v7, p5, v7

    and-int/2addr v7, v8

    xor-int/2addr v1, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    if-lez v5, :cond_1

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v2, v0

    add-int/2addr v2, v4

    add-int v7, p4, v4

    aget v7, p3, v7

    add-int/2addr v2, p6

    aget v2, p5, v2

    and-int/2addr v2, v7

    and-int/2addr v2, v6

    xor-int/2addr v1, v2

    :cond_1
    invoke-static {v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->parity32(I)I

    move-result v1

    invoke-static {v3, v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v3, v0, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v0, v0, v6

    iget v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v0

    iget-object v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    aget-object v1, v1, v7

    iget v2, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v1

    aget v2, p1, v6

    aget v3, p1, v7

    aget v4, p2, v6

    aget v5, p2, v7

    and-int/2addr v5, v2

    and-int/2addr v3, v4

    xor-int/2addr v3, v5

    and-int/2addr v2, v4

    xor-int/2addr v2, v3

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    aput v0, p3, v6

    iget-object v0, p5, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    aget v2, p3, v6

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBit([BIB)V

    iget-object v0, p6, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget v1, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    invoke-static {v0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBit([BI)B

    move-result v0

    aput v0, p3, v7

    iget v0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p4, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    return-void
.end method

.method mpc_LowMC_verify(Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/Tape;[I[II)V
    .locals 9

    const/4 v0, 0x0

    array-length v1, p4

    const/4 v2, 0x0

    invoke-static {p4, v0, v1, v2}, Lorg/bouncycastle/util/Arrays;->fill([IIII)V

    const/4 v3, 0x0

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v0, p0

    move-object v1, p4

    move-object v2, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant_verify([I[IIII)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v4, 0x0

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v4, 0x0

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    const/4 v0, 0x2

    invoke-direct {p0, p4, p4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    const/4 v0, 0x1

    move v8, v0

    :goto_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numRounds:I

    if-gt v8, v0, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    invoke-virtual {v0, p0, v8}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->KMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v7

    const/4 v2, 0x0

    iget-object v3, p1, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v4, 0x0

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v4, 0x0

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v7}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    move-object v0, p0

    move-object v1, p4

    invoke-virtual/range {v0 .. v6}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->matrix_mul_offset([II[II[II)V

    invoke-virtual {p0, p4, p3, p1, p2}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_substitution_verify([ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->LMatrix(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v2, v1, 0x2

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v4, v1, 0x2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v5

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v6

    const/4 v7, 0x2

    move-object v0, p0

    move-object v1, p4

    move-object v3, p4

    invoke-direct/range {v0 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_matrix_mul([II[II[III)V

    iget-object v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->lowmcConstants:Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;

    add-int/lit8 v1, v8, -0x1

    invoke-virtual {v0, p0, v1}, Lorg/bouncycastle/pqc/crypto/picnic/LowmcConstants;->RConstant(Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;I)Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getData()[I

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/pqc/crypto/picnic/KMatricesWithPointer;->getMatrixPointer()I

    move-result v3

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    move-object v0, p0

    move-object v1, p4

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor_constant_verify([I[IIII)V

    const/4 v0, 0x2

    invoke-direct {p0, p4, p4, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_xor([I[II)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {p4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/picnic/View;->outputShare:[I

    const/4 v2, 0x0

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {p4, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method mpc_substitution_verify([ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V
    .locals 18

    const/4 v1, 0x2

    new-array v2, v1, [I

    const/4 v1, 0x2

    new-array v3, v1, [I

    const/4 v1, 0x2

    new-array v0, v1, [I

    move-object/from16 v17, v0

    const/4 v1, 0x2

    new-array v4, v1, [I

    const/4 v1, 0x2

    new-array v8, v1, [I

    const/4 v1, 0x2

    new-array v12, v1, [I

    const/4 v1, 0x0

    move/from16 v16, v1

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numSboxes:I

    mul-int/lit8 v1, v1, 0x3

    move/from16 v0, v16

    if-ge v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    const/4 v5, 0x2

    if-ge v1, v5, :cond_0

    add-int/lit8 v5, v1, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x20

    add-int v6, v5, v16

    add-int/lit8 v6, v6, 0x2

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    aput v6, v2, v1

    add-int v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p1

    invoke-static {v0, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v6

    aput v6, v3, v1

    add-int v5, v5, v16

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->getBitFromWordArray([II)I

    move-result v5

    aput v5, v17, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v1, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v5, p0

    move-object v6, v3

    move-object/from16 v7, v17

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-virtual/range {v5 .. v11}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    move-object/from16 v9, p0

    move-object/from16 v10, v17

    move-object v11, v2

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    invoke-virtual/range {v9 .. v15}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_AND_verify([I[I[ILorg/bouncycastle/pqc/crypto/picnic/Tape;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;)V

    const/4 v1, 0x0

    :goto_2
    const/4 v5, 0x2

    if-ge v1, v5, :cond_1

    add-int/lit8 v5, v1, 0x2

    move-object/from16 v0, p0

    iget v6, v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    mul-int/2addr v5, v6

    mul-int/lit8 v5, v5, 0x20

    add-int v6, v5, v16

    add-int/lit8 v6, v6, 0x2

    aget v7, v2, v1

    aget v9, v8, v1

    xor-int/2addr v7, v9

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int v6, v5, v16

    add-int/lit8 v6, v6, 0x1

    aget v7, v2, v1

    aget v9, v3, v1

    xor-int/2addr v7, v9

    aget v9, v12, v1

    xor-int/2addr v7, v9

    move-object/from16 v0, p1

    invoke-static {v0, v6, v7}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int v5, v5, v16

    aget v6, v2, v1

    aget v7, v3, v1

    xor-int/2addr v6, v7

    aget v7, v17, v1

    xor-int/2addr v6, v7

    aget v7, v4, v1

    xor-int/2addr v6, v7

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->setBitInWordArray([III)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v16, 0x3

    move/from16 v16, v1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method prove(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;I[BI[Lorg/bouncycastle/pqc/crypto/picnic/View;[[B[[B)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_3

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v0, v0, 0x0

    add-int/2addr v0, p4

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p4

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    if-eq p2, v4, :cond_0

    if-ne p2, v5, :cond_1

    :cond_0
    aget-object v0, p5, v5

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    add-int/lit8 v0, p2, 0x1

    rem-int/lit8 v0, v0, 0x3

    aget-object v0, p5, v0

    iget-object v0, v0, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p2, 0x2

    rem-int/lit8 v0, v0, 0x3

    aget-object v0, p6, v0

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v0, v4, :cond_2

    if-nez p2, :cond_6

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    :goto_1
    add-int/lit8 v1, p2, 0x2

    rem-int/lit8 v1, v1, 0x3

    aget-object v1, p7, v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {v1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    return-void

    :cond_3
    if-ne p2, v4, :cond_4

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p4

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_4
    if-ne p2, v5, :cond_5

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p4

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v0, v0, 0x0

    add-int/2addr v0, p4

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {p3, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_5
    sget-object v0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v1, "Invalid challenge"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "challenge"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    goto :goto_1
.end method

.method serializeSignature(Lorg/bouncycastle/pqc/crypto/picnic/Signature;[BI)I
    .locals 9

    const/4 v8, 0x1

    const/4 v1, 0x0

    iget-object v4, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->proofs:[Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;

    iget-object v5, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->challengeBits:[B

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    mul-int/lit8 v3, v3, 0x2

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v3, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v3, v6

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v3, v6

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v2, v8, :cond_0

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/2addr v2, v3

    add-int/2addr v0, v2

    :cond_0
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->CRYPTO_BYTES:I

    if-ge v2, v0, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    invoke-static {v5, v1, p2, p3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->numBytes(I)I

    move-result v0

    add-int/2addr v0, p3

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature;->salt:[B

    const/16 v3, 0x20

    invoke-static {v2, v1, p2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v0, 0x20

    move v0, v1

    :goto_1
    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->numMPCRounds:I

    if-ge v0, v3, :cond_5

    invoke-virtual {p0, v5, v0}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->getChallenge([BI)I

    move-result v6

    aget-object v3, v4, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3Commitment:[B

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    invoke-static {v3, v1, p2, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->digestSizeBytes:I

    add-int/2addr v3, v2

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->transform:I

    if-ne v2, v8, :cond_6

    if-nez v6, :cond_4

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithInputBytes:I

    :goto_2
    aget-object v7, v4, v0

    iget-object v7, v7, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->view3UnruhG:[B

    invoke-static {v7, v1, p2, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    :goto_3
    aget-object v3, v4, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v3, v1, p2, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int/2addr v2, v3

    aget-object v3, v4, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v3, v1, p2, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v2, v3

    aget-object v3, v4, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    iget v7, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    invoke-static {v3, v1, p2, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->seedSizeBytes:I

    add-int/2addr v2, v3

    if-eq v6, v8, :cond_2

    const/4 v3, 0x2

    if-ne v6, v3, :cond_3

    :cond_2
    aget-object v3, v4, v0

    iget-object v3, v3, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v3, v1, v6, p2, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    iget v3, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    add-int/2addr v2, v3

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->UnruhGWithoutInputBytes:I

    goto :goto_2

    :cond_5
    sub-int v0, v2, p3

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_3
.end method

.method verifyProof(Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;I[BI[B[ILorg/bouncycastle/pqc/crypto/picnic/Tape;)Z
    .locals 9

    iget-object v1, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->communicatedBits:[B

    const/4 v2, 0x0

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->communicatedBits:[B

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    invoke-static {v1, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v1, 0x0

    move-object/from16 v0, p9

    iput v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->pos:I

    const/4 v1, 0x0

    packed-switch p4, :pswitch_data_0

    sget-object v2, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v3, "Invalid Challenge!"

    invoke-virtual {v2, v3}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    sget-object v1, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->LOG:Ljava/util/logging/Logger;

    const-string v2, "Failed to generate random tapes, signature verification will fail (but signature may actually be valid)"

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    return v1

    :pswitch_0
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v8, v1, v4

    move-object v1, p0

    move-object v4, p5

    move v5, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    move-object/from16 v0, p9

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_1

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v8, v1, v4

    move-object v1, p0

    move-object v4, p5

    move v5, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    move-object/from16 v0, p9

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    :pswitch_1
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    const/4 v3, 0x0

    const/4 v6, 0x1

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v8, v1, v4

    move-object v1, p0

    move-object v4, p5

    move v5, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    move-object/from16 v0, p9

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_2

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p9

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v4, 0x1

    aget-object v7, v1, v4

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move-object v1, p0

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_3
    if-eqz v1, :cond_0

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    const/4 v3, 0x0

    iget-object v4, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    :pswitch_2
    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed1:[B

    const/4 v3, 0x0

    const/4 v6, 0x2

    move-object/from16 v0, p9

    iget-object v1, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v4, 0x0

    aget-object v7, v1, v4

    iget v8, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move-object v1, p0

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->inputShare:[I

    const/4 v3, 0x0

    iget-object v4, p2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    const/4 v5, 0x0

    iget v6, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-eqz v1, :cond_3

    iget-object v2, p1, Lorg/bouncycastle/pqc/crypto/picnic/Signature$Proof;->seed2:[B

    const/4 v3, 0x0

    const/4 v6, 0x0

    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    iget v4, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    add-int v8, v1, v4

    move-object v1, p0

    move-object v4, p5

    move v5, p6

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v8}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->createRandomTape([BI[BII[BI)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    :goto_4
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    iget-object v3, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBytes:I

    move-object/from16 v0, p9

    iget-object v3, v0, Lorg/bouncycastle/pqc/crypto/picnic/Tape;->tapes:[[B

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const/4 v4, 0x0

    iget v5, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->andSizeBytes:I

    move-object/from16 v0, p7

    invoke-static {v0, v2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    :cond_4
    iget-object v1, p2, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    iget-object v1, p3, Lorg/bouncycastle/pqc/crypto/picnic/View;->inputShare:[I

    iget v2, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeBits:I

    invoke-static {v1, v2}, Lorg/bouncycastle/pqc/crypto/picnic/Utils;->zeroTrailingBits([II)V

    const/4 v1, 0x0

    move-object/from16 v0, p7

    array-length v2, v0

    div-int/lit8 v2, v2, 0x4

    move-object/from16 v0, p7

    invoke-static {v0, v1, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BII)[I

    move-result-object v5

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p9

    move-object/from16 v6, p8

    move v7, p4

    invoke-virtual/range {v1 .. v7}, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->mpc_LowMC_verify(Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/View;Lorg/bouncycastle/pqc/crypto/picnic/Tape;[I[II)V

    const/4 v1, 0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected xor_array([I[I[II)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/pqc/crypto/picnic/PicnicEngine;->stateSizeWords:I

    if-ge v0, v1, :cond_0

    aget v1, p2, v0

    add-int v2, v0, p4

    aget v2, p3, v2

    xor-int/2addr v1, v2

    aput v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
