.class public Lorg/bouncycastle/crypto/engines/SparkleEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;,
        Lorg/bouncycastle/crypto/engines/SparkleEngine$State;
    }
.end annotation


# static fields
.field private static final RCON:[I


# instance fields
.field private final CAP_MASK:I

.field private final KEY_BYTES:I

.field private final KEY_WORDS:I

.field private final RATE_BYTES:I

.field private final RATE_WORDS:I

.field private final SCHWAEMM_KEY_LEN:I

.field private final SCHWAEMM_NONCE_LEN:I

.field private final SPARKLE_STEPS_BIG:I

.field private final SPARKLE_STEPS_SLIM:I

.field private final STATE_WORDS:I

.field private final TAG_BYTES:I

.field private final TAG_WORDS:I

.field private final _A0:I

.field private final _A1:I

.field private final _M2:I

.field private final _M3:I

.field private algorithmName:Ljava/lang/String;

.field private encrypted:Z

.field private initialAssociatedText:[B

.field private final k:[I

.field private final m_buf:[B

.field private m_bufPos:I

.field private final m_bufferSizeDecrypt:I

.field private m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

.field private final npub:[I

.field private final state:[I

.field private tag:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    return-void

    :array_0
    .array-data 4
        -0x481eae9e
        -0x408ea780
        0x38b4da56
        0x324e7738
        -0x44ee7a15
        0x4f7c7b57
        -0x30405e38
        -0x3d4cd6c3
    .end array-data
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;)V
    .locals 7

    const/4 v5, 0x7

    const/16 v2, 0xc0

    const/4 v6, 0x1

    const/16 v3, 0x100

    const/16 v1, 0x80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$SparkleParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine$SparkleParameters;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid definition of SCHWAEMM instance"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    const/16 v0, 0xa

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string v0, "SCHWAEMM128-128"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    move v0, v1

    move v4, v1

    move v5, v3

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    ushr-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    ushr-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_BYTES:I

    ushr-int/lit8 v1, v4, 0x5

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_WORDS:I

    ushr-int/lit8 v1, v4, 0x3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    ushr-int/lit8 v1, v5, 0x5

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    ushr-int/lit8 v1, v1, 0x5

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    ushr-int/lit8 v1, v1, 0x3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    ushr-int/lit8 v1, v0, 0x6

    ushr-int/lit8 v0, v0, 0x5

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    if-le v2, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    shl-int v0, v6, v1

    shl-int/lit8 v0, v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A0:I

    shl-int v0, v6, v1

    xor-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A1:I

    shl-int v0, v6, v1

    xor-int/lit8 v0, v0, 0x2

    shl-int/lit8 v0, v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M2:I

    shl-int v0, v6, v1

    xor-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x18

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M3:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    return-void

    :pswitch_1
    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    const/16 v3, 0x180

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    const/16 v0, 0xb

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string v0, "SCHWAEMM256-128"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    move v0, v1

    move v4, v1

    move v5, v3

    goto/16 :goto_0

    :pswitch_2
    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    const/16 v3, 0x180

    iput v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    const/16 v0, 0xb

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string v0, "SCHWAEMM192-192"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    move v0, v2

    move v4, v2

    move v5, v3

    goto/16 :goto_0

    :pswitch_3
    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_KEY_LEN:I

    iput v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SCHWAEMM_NONCE_LEN:I

    const/16 v1, 0x200

    const/16 v0, 0x8

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    const/16 v0, 0xc

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    const-string v0, "SCHWAEMM256-256"

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    move v0, v3

    move v4, v3

    move v5, v1

    goto/16 :goto_0

    :cond_0
    const/4 v0, -0x1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static ELL(I)I
    .locals 2

    const/16 v0, 0x10

    invoke-static {p0, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v0

    const v1, 0xffff

    and-int/2addr v1, p0

    xor-int/2addr v0, v1

    return v0
.end method

.method private checkAAD()V
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    :goto_0
    :pswitch_2
    return-void

    :pswitch_3
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private checkData()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    sget-object v1, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/SparkleEngine$State;)V

    :goto_0
    :pswitch_2
    return v0

    :pswitch_3
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/SparkleEngine$State;)V

    move v0, v1

    goto :goto_0

    :pswitch_4
    move v0, v1

    goto :goto_0

    :pswitch_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be reused for encryption"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method private finishAAD(Lorg/bouncycastle/crypto/engines/SparkleEngine$State;)V
    .locals 2

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    return-void

    :sswitch_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processFinalAAD()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method private processBufferAAD([BI)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v3, v1

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p2

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int/2addr v4, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v8, v0

    aget v7, v7, v8

    xor-int/2addr v4, v7

    aput v4, v6, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int/2addr v2, v3

    xor-int/2addr v2, v5

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v6, v1

    add-int/2addr v5, v6

    aget v3, v3, v5

    xor-int/2addr v2, v3

    aput v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    return-void
.end method

.method private processBufferDecrypt([BI[BI)V
    .locals 11

    array-length v0, p3

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v0, v1

    if-le p4, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v3, v1

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p2

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v2, v3

    xor-int/2addr v7, v4

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v9, v0

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v2, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v10, v1

    add-int/2addr v9, v10

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v1

    xor-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p4

    invoke-static {v2, p3, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    xor-int v2, v5, v3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p4

    invoke-static {v2, p3, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    return-void
.end method

.method private processBufferEncrypt([BI[BI)V
    .locals 11

    array-length v0, p3

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v0, v1

    if-le p4, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v3, v1

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p2

    invoke-static {p1, v4}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    mul-int/lit8 v5, v1, 0x4

    add-int/2addr v5, p2

    invoke-static {p1, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v3, v4

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v9, v0

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v0

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v7, v2, v3

    xor-int/2addr v7, v5

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v9, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v10, v1

    add-int/2addr v9, v10

    aget v8, v8, v9

    xor-int/2addr v7, v8

    aput v7, v6, v1

    xor-int/2addr v2, v4

    mul-int/lit8 v4, v0, 0x4

    add-int/2addr v4, p4

    invoke-static {v2, p3, v4}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    xor-int v2, v5, v3

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v1, p4

    invoke-static {v2, p3, v1}, Lorg/bouncycastle/util/Pack;->intToLittleEndian(I[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_SLIM:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    return-void
.end method

.method private processFinalAAD()V
    .locals 9

    const/4 v0, 0x0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A0:I

    xor-int/2addr v3, v4

    aput v3, v1, v2

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    const/16 v3, -0x80

    aput-byte v3, v1, v2

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    aput-byte v0, v1, v2

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v2, v2, -0x1

    aget v3, v1, v2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_A1:I

    xor-int/2addr v3, v4

    aput v3, v1, v2

    :cond_1
    :goto_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v2, v2, v0

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    mul-int/lit8 v5, v0, 0x4

    invoke-static {v4, v5}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v4

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    mul-int/lit8 v6, v1, 0x4

    invoke-static {v5, v6}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI)I

    move-result v5

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int/2addr v4, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v8, v0

    aget v7, v7, v8

    xor-int/2addr v4, v7

    aput v4, v6, v0

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int/2addr v2, v3

    xor-int/2addr v2, v5

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v6, v1

    add-int/2addr v5, v6

    aget v3, v3, v5

    xor-int/2addr v2, v3

    aput v2, v4, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    return-void
.end method

.method private reset(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iput v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iput-boolean v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " needs to be initialized"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    :pswitch_1
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    invoke-static {v0, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v4, v1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processAADBytes([BII)V

    :cond_1
    :goto_0
    return-void

    :pswitch_2
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static sparkle_opt([II)V
    .locals 1

    array-length v0, p0

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :sswitch_0
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt8([II)V

    :goto_0
    return-void

    :sswitch_1
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12([II)V

    goto :goto_0

    :sswitch_2
    invoke-static {p0, p1}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16([II)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x8 -> :sswitch_0
        0xc -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public static sparkle_opt12(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "This method is only for use by SparkleDigest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt12([II)V

    return-void
.end method

.method static sparkle_opt12([II)V
    .locals 20

    const/4 v1, 0x0

    aget v19, p0, v1

    const/4 v1, 0x1

    aget v18, p0, v1

    const/4 v1, 0x2

    aget v17, p0, v1

    const/4 v1, 0x3

    aget v16, p0, v1

    const/4 v1, 0x4

    aget v15, p0, v1

    const/4 v1, 0x5

    aget v13, p0, v1

    const/4 v1, 0x6

    aget v11, p0, v1

    const/4 v1, 0x7

    aget v9, p0, v1

    const/16 v1, 0x8

    aget v7, p0, v1

    const/16 v1, 0x9

    aget v5, p0, v1

    const/16 v1, 0xa

    aget v3, p0, v1

    const/16 v1, 0xb

    aget v2, p0, v1

    const/4 v1, 0x0

    move v4, v3

    move v6, v5

    move v8, v7

    move v10, v9

    move v12, v11

    move v14, v13

    :goto_0
    move/from16 v0, p1

    if-ge v1, v0, :cond_0

    sget-object v3, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v5, v1, 0x7

    aget v3, v3, v5

    xor-int v3, v3, v18

    xor-int v5, v16, v1

    sget-object v7, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v9, 0x0

    aget v7, v7, v9

    const/16 v9, 0x1f

    invoke-static {v3, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    add-int v9, v9, v19

    const/16 v11, 0x18

    invoke-static {v9, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    xor-int/2addr v3, v11

    xor-int/2addr v9, v7

    const/16 v11, 0x11

    invoke-static {v3, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    add-int/2addr v9, v11

    const/16 v11, 0x11

    invoke-static {v9, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    xor-int/2addr v3, v11

    xor-int/2addr v9, v7

    add-int/2addr v9, v3

    const/16 v11, 0x1f

    invoke-static {v9, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    xor-int/2addr v3, v11

    xor-int/2addr v9, v7

    const/16 v11, 0x18

    invoke-static {v3, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    add-int/2addr v9, v11

    const/16 v11, 0x10

    invoke-static {v9, v11}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v11

    xor-int/2addr v11, v3

    xor-int v13, v9, v7

    sget-object v3, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v7, 0x1

    aget v3, v3, v7

    const/16 v7, 0x1f

    invoke-static {v5, v7}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    add-int v7, v7, v17

    const/16 v9, 0x18

    invoke-static {v7, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    xor-int/2addr v5, v9

    xor-int/2addr v7, v3

    const/16 v9, 0x11

    invoke-static {v5, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    add-int/2addr v7, v9

    const/16 v9, 0x11

    invoke-static {v7, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    xor-int/2addr v5, v9

    xor-int/2addr v7, v3

    add-int/2addr v7, v5

    const/16 v9, 0x1f

    invoke-static {v7, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    xor-int/2addr v5, v9

    xor-int/2addr v7, v3

    const/16 v9, 0x18

    invoke-static {v5, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    add-int/2addr v9, v7

    const/16 v7, 0x10

    invoke-static {v9, v7}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v7

    xor-int/2addr v7, v5

    xor-int/2addr v9, v3

    sget-object v3, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v5, 0x2

    aget v5, v3, v5

    const/16 v3, 0x1f

    invoke-static {v14, v3}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v3

    add-int/2addr v3, v15

    const/16 v15, 0x18

    invoke-static {v3, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v14, v15

    xor-int/2addr v3, v5

    const/16 v15, 0x11

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v3, v15

    const/16 v15, 0x11

    invoke-static {v3, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v14, v15

    xor-int/2addr v3, v5

    add-int/2addr v3, v14

    const/16 v15, 0x1f

    invoke-static {v3, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v14, v15

    xor-int/2addr v3, v5

    const/16 v15, 0x18

    invoke-static {v14, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v15, v3

    const/16 v3, 0x10

    invoke-static {v15, v3}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v3

    xor-int/2addr v3, v14

    xor-int/2addr v5, v15

    sget-object v14, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v15, 0x3

    aget v14, v14, v15

    const/16 v15, 0x1f

    invoke-static {v10, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v12, v15

    const/16 v15, 0x18

    invoke-static {v12, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v10, v15

    xor-int/2addr v12, v14

    const/16 v15, 0x11

    invoke-static {v10, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v12, v15

    const/16 v15, 0x11

    invoke-static {v12, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v10, v15

    xor-int/2addr v12, v14

    add-int/2addr v12, v10

    const/16 v15, 0x1f

    invoke-static {v12, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v10, v15

    xor-int/2addr v12, v14

    const/16 v15, 0x18

    invoke-static {v10, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v12, v15

    const/16 v15, 0x10

    invoke-static {v12, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v10, v15

    xor-int/2addr v12, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v15, 0x4

    aget v14, v14, v15

    const/16 v15, 0x1f

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v8, v15

    const/16 v15, 0x18

    invoke-static {v8, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v6, v15

    xor-int/2addr v8, v14

    const/16 v15, 0x11

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v8, v15

    const/16 v15, 0x11

    invoke-static {v8, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v6, v15

    xor-int/2addr v8, v14

    add-int/2addr v8, v6

    const/16 v15, 0x1f

    invoke-static {v8, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v6, v15

    xor-int/2addr v8, v14

    const/16 v15, 0x18

    invoke-static {v6, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v8, v15

    const/16 v15, 0x10

    invoke-static {v8, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v6, v15

    xor-int/2addr v8, v14

    sget-object v14, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v15, 0x5

    aget v14, v14, v15

    const/16 v15, 0x1f

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v4, v15

    const/16 v15, 0x18

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v2, v15

    xor-int/2addr v4, v14

    const/16 v15, 0x11

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v4, v15

    const/16 v15, 0x11

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v2, v15

    xor-int/2addr v4, v14

    add-int/2addr v4, v2

    const/16 v15, 0x1f

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v2, v15

    xor-int/2addr v4, v14

    const/16 v15, 0x18

    invoke-static {v2, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    add-int/2addr v4, v15

    const/16 v15, 0x10

    invoke-static {v4, v15}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v15

    xor-int/2addr v2, v15

    xor-int/2addr v4, v14

    xor-int v14, v13, v9

    xor-int/2addr v14, v5

    invoke-static {v14}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v14

    xor-int v15, v11, v7

    xor-int/2addr v15, v3

    invoke-static {v15}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v15

    xor-int/2addr v12, v13

    xor-int/2addr v10, v11

    xor-int/2addr v8, v9

    xor-int/2addr v6, v7

    xor-int/2addr v4, v5

    xor-int/2addr v2, v3

    xor-int v19, v8, v15

    xor-int v18, v6, v14

    xor-int v17, v4, v15

    xor-int v16, v2, v14

    xor-int/2addr v15, v12

    xor-int/2addr v14, v10

    add-int/lit8 v1, v1, 0x1

    move v2, v3

    move v4, v5

    move v6, v7

    move v8, v9

    move v10, v11

    move v12, v13

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x0

    aput v19, p0, v1

    const/4 v1, 0x1

    aput v18, p0, v1

    const/4 v1, 0x2

    aput v17, p0, v1

    const/4 v1, 0x3

    aput v16, p0, v1

    const/4 v1, 0x4

    aput v15, p0, v1

    const/4 v1, 0x5

    aput v14, p0, v1

    const/4 v1, 0x6

    aput v12, p0, v1

    const/4 v1, 0x7

    aput v10, p0, v1

    const/16 v1, 0x8

    aput v8, p0, v1

    const/16 v1, 0x9

    aput v6, p0, v1

    const/16 v1, 0xa

    aput v4, p0, v1

    const/16 v1, 0xb

    aput v2, p0, v1

    return-void
.end method

.method public static sparkle_opt16(Lorg/bouncycastle/crypto/digests/SparkleDigest$Friend;[II)V
    .locals 2

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "This method is only for use by SparkleDigest"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt16([II)V

    return-void
.end method

.method static sparkle_opt16([II)V
    .locals 27

    const/4 v2, 0x0

    aget v26, p0, v2

    const/4 v2, 0x1

    aget v25, p0, v2

    const/4 v2, 0x2

    aget v24, p0, v2

    const/4 v2, 0x3

    aget v23, p0, v2

    const/4 v2, 0x4

    aget v22, p0, v2

    const/4 v2, 0x5

    aget v21, p0, v2

    const/4 v2, 0x6

    aget v20, p0, v2

    const/4 v2, 0x7

    aget v18, p0, v2

    const/16 v2, 0x8

    aget v16, p0, v2

    const/16 v2, 0x9

    aget v14, p0, v2

    const/16 v2, 0xa

    aget v12, p0, v2

    const/16 v2, 0xb

    aget v10, p0, v2

    const/16 v2, 0xc

    aget v8, p0, v2

    const/16 v2, 0xd

    aget v6, p0, v2

    const/16 v2, 0xe

    aget v4, p0, v2

    const/16 v2, 0xf

    aget v3, p0, v2

    const/4 v2, 0x0

    move v5, v4

    move v7, v6

    move v9, v8

    move v11, v10

    move v13, v12

    move v15, v14

    move/from16 v17, v16

    move/from16 v19, v18

    :goto_0
    move/from16 v0, p1

    if-ge v2, v0, :cond_0

    sget-object v4, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v6, v2, 0x7

    aget v4, v4, v6

    xor-int v4, v4, v25

    xor-int v6, v23, v2

    sget-object v8, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v10, 0x0

    aget v8, v8, v10

    const/16 v10, 0x1f

    invoke-static {v4, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int v10, v10, v26

    const/16 v12, 0x18

    invoke-static {v10, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v12

    xor-int/2addr v4, v12

    xor-int/2addr v10, v8

    const/16 v12, 0x11

    invoke-static {v4, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v12

    add-int/2addr v10, v12

    const/16 v12, 0x11

    invoke-static {v10, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v12

    xor-int/2addr v4, v12

    xor-int/2addr v10, v8

    add-int/2addr v10, v4

    const/16 v12, 0x1f

    invoke-static {v10, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v12

    xor-int/2addr v4, v12

    xor-int/2addr v10, v8

    const/16 v12, 0x18

    invoke-static {v4, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v12

    add-int/2addr v10, v12

    const/16 v12, 0x10

    invoke-static {v10, v12}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v12

    xor-int v16, v4, v12

    xor-int v18, v10, v8

    sget-object v4, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v8, 0x1

    aget v4, v4, v8

    const/16 v8, 0x1f

    invoke-static {v6, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v8

    add-int v8, v8, v24

    const/16 v10, 0x18

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v6, v10

    xor-int/2addr v8, v4

    const/16 v10, 0x11

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v8, v10

    const/16 v10, 0x11

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v6, v10

    xor-int/2addr v8, v4

    add-int/2addr v8, v6

    const/16 v10, 0x1f

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v6, v10

    xor-int/2addr v8, v4

    const/16 v10, 0x18

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v8, v10

    const/16 v10, 0x10

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int v12, v6, v10

    xor-int v14, v8, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v6, 0x2

    aget v4, v4, v6

    const/16 v6, 0x1f

    move/from16 v0, v21

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    add-int v6, v6, v22

    const/16 v8, 0x18

    invoke-static {v6, v8}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v8

    xor-int v8, v8, v21

    xor-int/2addr v6, v4

    const/16 v10, 0x11

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v6, v10

    const/16 v10, 0x11

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v8, v10

    xor-int/2addr v6, v4

    add-int/2addr v6, v8

    const/16 v10, 0x1f

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v8, v10

    xor-int/2addr v6, v4

    const/16 v10, 0x18

    invoke-static {v8, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v6, v10

    const/16 v10, 0x10

    invoke-static {v6, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v8, v10

    xor-int v10, v6, v4

    sget-object v4, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v6, 0x3

    aget v6, v4, v6

    const/16 v4, 0x1f

    move/from16 v0, v19

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v4

    add-int v4, v4, v20

    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v19, v19, v20

    xor-int/2addr v4, v6

    const/16 v20, 0x11

    invoke-static/range {v19 .. v20}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v4, v4, v20

    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v19, v19, v20

    xor-int/2addr v4, v6

    add-int v4, v4, v19

    const/16 v20, 0x1f

    move/from16 v0, v20

    invoke-static {v4, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v19, v19, v20

    xor-int/2addr v4, v6

    const/16 v20, 0x18

    invoke-static/range {v19 .. v20}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v20, v20, v4

    const/16 v4, 0x10

    move/from16 v0, v20

    invoke-static {v0, v4}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v4

    xor-int v4, v4, v19

    xor-int v6, v6, v20

    sget-object v19, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/16 v20, 0x4

    aget v19, v19, v20

    const/16 v20, 0x1f

    move/from16 v0, v20

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v17, v17, v20

    const/16 v20, 0x18

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v15, v15, v20

    xor-int v17, v17, v19

    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v17, v17, v20

    const/16 v20, 0x11

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v15, v15, v20

    xor-int v17, v17, v19

    add-int v17, v17, v15

    const/16 v20, 0x1f

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v15, v15, v20

    xor-int v17, v17, v19

    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-static {v15, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v17, v17, v20

    const/16 v20, 0x10

    move/from16 v0, v17

    move/from16 v1, v20

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v15, v15, v20

    xor-int v17, v17, v19

    sget-object v19, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/16 v20, 0x5

    aget v19, v19, v20

    const/16 v20, 0x1f

    move/from16 v0, v20

    invoke-static {v11, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v13, v13, v20

    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-static {v13, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v11, v11, v20

    xor-int v13, v13, v19

    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-static {v11, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v13, v13, v20

    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-static {v13, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v11, v11, v20

    xor-int v13, v13, v19

    add-int/2addr v13, v11

    const/16 v20, 0x1f

    move/from16 v0, v20

    invoke-static {v13, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v11, v11, v20

    xor-int v13, v13, v19

    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-static {v11, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v13, v13, v20

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-static {v13, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v11, v11, v20

    xor-int v13, v13, v19

    sget-object v19, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/16 v20, 0x6

    aget v19, v19, v20

    const/16 v20, 0x1f

    move/from16 v0, v20

    invoke-static {v7, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v9, v9, v20

    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-static {v9, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v7, v7, v20

    xor-int v9, v9, v19

    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-static {v7, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v9, v9, v20

    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-static {v9, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v7, v7, v20

    xor-int v9, v9, v19

    add-int/2addr v9, v7

    const/16 v20, 0x1f

    move/from16 v0, v20

    invoke-static {v9, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v7, v7, v20

    xor-int v9, v9, v19

    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-static {v7, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v9, v9, v20

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-static {v9, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v7, v7, v20

    xor-int v9, v9, v19

    sget-object v19, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/16 v20, 0x7

    aget v19, v19, v20

    const/16 v20, 0x1f

    move/from16 v0, v20

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v5, v5, v20

    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v3, v3, v20

    xor-int v5, v5, v19

    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v5, v5, v20

    const/16 v20, 0x11

    move/from16 v0, v20

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v3, v3, v20

    xor-int v5, v5, v19

    add-int/2addr v5, v3

    const/16 v20, 0x1f

    move/from16 v0, v20

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v3, v3, v20

    xor-int v5, v5, v19

    const/16 v20, 0x18

    move/from16 v0, v20

    invoke-static {v3, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    add-int v5, v5, v20

    const/16 v20, 0x10

    move/from16 v0, v20

    invoke-static {v5, v0}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v20

    xor-int v3, v3, v20

    xor-int v5, v5, v19

    xor-int v19, v18, v14

    xor-int v19, v19, v10

    xor-int v19, v19, v6

    invoke-static/range {v19 .. v19}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v19

    xor-int v20, v16, v12

    xor-int v20, v20, v8

    xor-int v20, v20, v4

    invoke-static/range {v20 .. v20}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v20

    xor-int v17, v17, v18

    xor-int v15, v15, v16

    xor-int/2addr v13, v14

    xor-int/2addr v11, v12

    xor-int/2addr v9, v10

    xor-int/2addr v7, v8

    xor-int/2addr v5, v6

    xor-int/2addr v3, v4

    xor-int v26, v13, v20

    xor-int v25, v11, v19

    xor-int v24, v9, v20

    xor-int v23, v7, v19

    xor-int v22, v5, v20

    xor-int v21, v3, v19

    xor-int v20, v20, v17

    xor-int v19, v19, v15

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    move v5, v6

    move v7, v8

    move v9, v10

    move v11, v12

    move v13, v14

    move/from16 v15, v16

    move/from16 v17, v18

    goto/16 :goto_0

    :cond_0
    const/4 v2, 0x0

    aput v26, p0, v2

    const/4 v2, 0x1

    aput v25, p0, v2

    const/4 v2, 0x2

    aput v24, p0, v2

    const/4 v2, 0x3

    aput v23, p0, v2

    const/4 v2, 0x4

    aput v22, p0, v2

    const/4 v2, 0x5

    aput v21, p0, v2

    const/4 v2, 0x6

    aput v20, p0, v2

    const/4 v2, 0x7

    aput v19, p0, v2

    const/16 v2, 0x8

    aput v17, p0, v2

    const/16 v2, 0x9

    aput v15, p0, v2

    const/16 v2, 0xa

    aput v13, p0, v2

    const/16 v2, 0xb

    aput v11, p0, v2

    const/16 v2, 0xc

    aput v9, p0, v2

    const/16 v2, 0xd

    aput v7, p0, v2

    const/16 v2, 0xe

    aput v5, p0, v2

    const/16 v2, 0xf

    aput v3, p0, v2

    return-void
.end method

.method static sparkle_opt8([II)V
    .locals 13

    const/4 v0, 0x0

    aget v12, p0, v0

    const/4 v0, 0x1

    aget v11, p0, v0

    const/4 v0, 0x2

    aget v10, p0, v0

    const/4 v0, 0x3

    aget v8, p0, v0

    const/4 v0, 0x4

    aget v6, p0, v0

    const/4 v0, 0x5

    aget v4, p0, v0

    const/4 v0, 0x6

    aget v2, p0, v0

    const/4 v0, 0x7

    aget v1, p0, v0

    const/4 v0, 0x0

    move v3, v2

    move v5, v4

    move v7, v6

    move v9, v8

    :goto_0
    if-ge v0, p1, :cond_0

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    and-int/lit8 v4, v0, 0x7

    aget v2, v2, v4

    xor-int/2addr v2, v11

    xor-int v4, v9, v0

    sget-object v6, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v8, 0x0

    aget v8, v6, v8

    const/16 v6, 0x1f

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    add-int/2addr v6, v12

    const/16 v9, 0x18

    invoke-static {v6, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    xor-int/2addr v2, v9

    xor-int/2addr v6, v8

    const/16 v9, 0x11

    invoke-static {v2, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    add-int/2addr v6, v9

    const/16 v9, 0x11

    invoke-static {v6, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    xor-int/2addr v2, v9

    xor-int/2addr v6, v8

    add-int/2addr v6, v2

    const/16 v9, 0x1f

    invoke-static {v6, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    xor-int/2addr v2, v9

    xor-int/2addr v6, v8

    const/16 v9, 0x18

    invoke-static {v2, v9}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v9

    add-int/2addr v9, v6

    const/16 v6, 0x10

    invoke-static {v9, v6}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v6

    xor-int/2addr v6, v2

    xor-int/2addr v8, v9

    sget-object v2, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v9, 0x1

    aget v9, v2, v9

    const/16 v2, 0x1f

    invoke-static {v4, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v2

    add-int/2addr v2, v10

    const/16 v10, 0x18

    invoke-static {v2, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v4, v10

    xor-int/2addr v2, v9

    const/16 v10, 0x11

    invoke-static {v4, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v2, v10

    const/16 v10, 0x11

    invoke-static {v2, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v4, v10

    xor-int/2addr v2, v9

    add-int/2addr v2, v4

    const/16 v10, 0x1f

    invoke-static {v2, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v4, v10

    xor-int/2addr v2, v9

    const/16 v10, 0x18

    invoke-static {v4, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v10, v2

    const/16 v2, 0x10

    invoke-static {v10, v2}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v2

    xor-int/2addr v2, v4

    xor-int v4, v10, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v10, 0x2

    aget v9, v9, v10

    const/16 v10, 0x1f

    invoke-static {v5, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v7, v10

    const/16 v10, 0x18

    invoke-static {v7, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v5, v10

    xor-int/2addr v7, v9

    const/16 v10, 0x11

    invoke-static {v5, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v7, v10

    const/16 v10, 0x11

    invoke-static {v7, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v5, v10

    xor-int/2addr v7, v9

    add-int/2addr v7, v5

    const/16 v10, 0x1f

    invoke-static {v7, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v5, v10

    xor-int/2addr v7, v9

    const/16 v10, 0x18

    invoke-static {v5, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v7, v10

    const/16 v10, 0x10

    invoke-static {v7, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v5, v10

    xor-int/2addr v7, v9

    sget-object v9, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RCON:[I

    const/4 v10, 0x3

    aget v9, v9, v10

    const/16 v10, 0x1f

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v3, v10

    const/16 v10, 0x18

    invoke-static {v3, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v1, v10

    xor-int/2addr v3, v9

    const/16 v10, 0x11

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v3, v10

    const/16 v10, 0x11

    invoke-static {v3, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v1, v10

    xor-int/2addr v3, v9

    add-int/2addr v3, v1

    const/16 v10, 0x1f

    invoke-static {v3, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v1, v10

    xor-int/2addr v3, v9

    const/16 v10, 0x18

    invoke-static {v1, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    add-int/2addr v3, v10

    const/16 v10, 0x10

    invoke-static {v3, v10}, Lorg/bouncycastle/util/Integers;->rotateRight(II)I

    move-result v10

    xor-int/2addr v1, v10

    xor-int/2addr v3, v9

    xor-int v9, v8, v4

    invoke-static {v9}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v9

    xor-int v10, v6, v2

    invoke-static {v10}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->ELL(I)I

    move-result v10

    xor-int/2addr v7, v8

    xor-int/2addr v5, v6

    xor-int/2addr v3, v4

    xor-int/2addr v1, v2

    xor-int v12, v3, v10

    xor-int v11, v1, v9

    xor-int/2addr v10, v7

    xor-int/2addr v9, v5

    add-int/lit8 v0, v0, 0x1

    move v1, v2

    move v3, v4

    move v5, v6

    move v7, v8

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x0

    aput v12, p0, v0

    const/4 v0, 0x1

    aput v11, p0, v0

    const/4 v0, 0x2

    aput v10, p0, v0

    const/4 v0, 0x3

    aput v9, p0, v0

    const/4 v0, 0x4

    aput v7, p0, v0

    const/4 v0, 0x5

    aput v5, p0, v0

    const/4 v0, 0x6

    aput v3, p0, v0

    const/4 v0, 0x7

    aput v1, p0, v0

    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkData()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr v0, v1

    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v0

    if-le p2, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    if-ge v0, v1, :cond_1

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->encrypted:Z

    if-nez v1, :cond_3

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-lez v1, :cond_b

    :cond_3
    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->STATE_WORDS:I

    add-int/lit8 v5, v1, -0x1

    aget v6, v3, v5

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ge v1, v7, :cond_4

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M2:I

    :goto_1
    xor-int/2addr v1, v6

    aput v1, v3, v5

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    new-array v5, v1, [I

    move v1, v2

    :goto_2
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-ge v1, v3, :cond_5

    ushr-int/lit8 v3, v1, 0x2

    aget v6, v5, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    aget-byte v7, v7, v1

    and-int/lit16 v7, v7, 0xff

    and-int/lit8 v8, v1, 0x3

    shl-int/lit8 v8, v8, 0x3

    shl-int/2addr v7, v8

    or-int/2addr v6, v7

    aput v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->_M3:I

    goto :goto_1

    :cond_5
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ge v1, v3, :cond_7

    if-nez v4, :cond_6

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    and-int/lit8 v1, v1, 0x3

    shl-int/lit8 v1, v1, 0x3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v3, v3, 0x2

    aget v6, v5, v3

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v8, v8, 0x2

    aget v7, v7, v8

    ushr-int/2addr v7, v1

    shl-int v1, v7, v1

    or-int/2addr v1, v6

    aput v1, v5, v3

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x1

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    sub-int/2addr v6, v1

    invoke-static {v3, v1, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    ushr-int/lit8 v1, v1, 0x2

    aget v3, v5, v1

    const/16 v6, 0x80

    iget v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    and-int/lit8 v7, v7, 0x3

    shl-int/lit8 v7, v7, 0x3

    shl-int/2addr v6, v7

    xor-int/2addr v3, v6

    aput v3, v5, v1

    :cond_7
    move v1, v2

    :goto_3
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v3, v3, 0x2

    if-ge v1, v3, :cond_9

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v1

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v6, v6, v1

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v7, v7, v3

    if-eqz v4, :cond_8

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v9, v5, v1

    xor-int/2addr v9, v7

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v11, v1

    aget v10, v10, v11

    xor-int/2addr v9, v10

    aput v9, v8, v1

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v9, v6, v7

    aget v10, v5, v3

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v12, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v12, v3

    add-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    aput v9, v8, v3

    :goto_4
    aget v8, v5, v1

    xor-int/2addr v6, v8

    aput v6, v5, v1

    aget v6, v5, v3

    xor-int/2addr v6, v7

    aput v6, v5, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    xor-int v9, v6, v7

    aget v10, v5, v1

    xor-int/2addr v9, v10

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v11, v1

    aget v10, v10, v11

    xor-int/2addr v9, v10

    aput v9, v8, v1

    iget-object v8, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    aget v9, v5, v3

    xor-int/2addr v9, v6

    iget-object v10, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v11, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v12, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->CAP_MASK:I

    and-int/2addr v12, v3

    add-int/2addr v11, v12

    aget v10, v10, v11

    xor-int/2addr v9, v10

    aput v9, v8, v3

    goto :goto_4

    :cond_9
    move v1, v2

    :goto_5
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-ge v1, v3, :cond_a

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v6, v1, 0x2

    aget v6, v5, v6

    and-int/lit8 v7, v1, 0x3

    shl-int/lit8 v7, v7, 0x3

    ushr-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, p1, p2

    add-int/lit8 v1, v1, 0x1

    move p2, v3

    goto :goto_5

    :cond_a
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->SPARKLE_STEPS_BIG:I

    invoke-static {v1, v3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->sparkle_opt([II)V

    :cond_b
    move v1, v2

    :goto_6
    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    if-ge v1, v3, :cond_c

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    add-int/2addr v5, v1

    aget v6, v3, v5

    iget-object v7, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    aget v7, v7, v1

    xor-int/2addr v6, v7

    aput v6, v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_c
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    new-array v1, v1, [B

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->state:[I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_WORDS:I

    iget-object v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    invoke-static {v1, v3, v5, v6, v2}, Lorg/bouncycastle/util/Pack;->intToLittleEndian([III[BI)V

    if-eqz v4, :cond_f

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    invoke-static {v1, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_d
    if-nez v4, :cond_e

    const/4 v2, 0x1

    :cond_e
    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->reset(Z)V

    return v0

    :cond_f
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {v1, v3, v2, v5, v6}, Lorg/bouncycastle/util/Arrays;->constantTimeAreEqual(I[BI[BI)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mac does not match"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getIVBytesSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_BYTES:I

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->tag:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :pswitch_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    add-int/2addr v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getUpdateOutputSize(I)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lorg/bouncycastle/crypto/engines/SparkleEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$SparkleEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    return v0

    :pswitch_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v4, 0x0

    instance-of v0, p2, Lorg/bouncycastle/crypto/params/AEADParameters;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/AEADParameters;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getKey()Lorg/bouncycastle/crypto/params/KeyParameter;

    move-result-object v2

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getNonce()[B

    move-result-object v1

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getAssociatedText()[B

    move-result-object v3

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->TAG_BYTES:I

    mul-int/lit8 v3, v3, 0x8

    if-eq v0, v3, :cond_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid value for MAC size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Sparkle init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    instance-of v3, v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    if-eqz v3, :cond_8

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    :goto_1
    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->initialAssociatedText:[B

    move-object v2, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to Sparkle"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->KEY_WORDS:I

    mul-int/lit8 v1, v1, 0x4

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKeyLength()I

    move-result v3

    if-eq v1, v3, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires exactly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of key"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_WORDS:I

    mul-int/lit8 v1, v1, 0x4

    if-eqz v0, :cond_5

    array-length v3, v0

    if-eq v1, v3, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->algorithmName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " requires exactly "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->k:[I

    invoke-static {v1, v4, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->npub:[I

    invoke-static {v0, v4, v1}, Lorg/bouncycastle/util/Pack;->littleEndianToInt([BI[I)V

    new-instance v0, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v3

    invoke-direct {v0, v1, v2, p2, v3}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v0}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    if-eqz p1, :cond_7

    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    :goto_2
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_state:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->reset()V

    return-void

    :cond_7
    sget-object v0, Lorg/bouncycastle/crypto/engines/SparkleEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/SparkleEngine$State;

    goto :goto_2

    :cond_8
    move-object v1, v2

    goto/16 :goto_1
.end method

.method public processAADByte(B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkAAD()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v0, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferAAD([BI)V

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkAAD()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-lez v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int/2addr v0, v1

    if-gt p3, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferAAD([BI)V

    :cond_3
    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-le p3, v0, :cond_4

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferAAD([BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr p2, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr p3, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    goto :goto_0
.end method

.method public processByte(B[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-array v1, v3, [B

    aput-byte p1, v1, v2

    move-object v0, p0

    move-object v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v1, 0x0

    array-length v0, p1

    sub-int/2addr v0, p3

    if-le p2, v0, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->checkData()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    if-lez v0, :cond_8

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    if-gt p3, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v0, v1, p4, p5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferEncrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-le p3, v2, :cond_7

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferEncrypt([BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr p2, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr p3, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int v2, v0, v2

    if-gt p3, v2, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    if-le v0, v3, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-direct {p0, v0, v1, p4, p5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferDecrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v5, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {v0, v3, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v2, v3

    if-gt p3, v2, :cond_5

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    add-int/2addr v1, p3

    iput v1, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    move v1, v0

    goto :goto_0

    :cond_4
    move v0, v1

    :cond_5
    iget v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    invoke-static {p1, p2, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v3, p2, v2

    sub-int v2, p3, v2

    iget-object v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    add-int v5, p5, v0

    invoke-direct {p0, v4, v1, p4, v5}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferDecrypt([BI[BI)V

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v0, v4

    :goto_2
    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufferSizeDecrypt:I

    if-le v2, v4, :cond_6

    add-int v4, p5, v0

    invoke-direct {p0, p1, v3, p4, v4}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->processBufferDecrypt([BI[BI)V

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->RATE_BYTES:I

    add-int/2addr v0, v4

    goto :goto_2

    :cond_6
    move p3, v2

    move p2, v3

    :cond_7
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_buf:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/SparkleEngine;->m_bufPos:I

    move v1, v0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/SparkleEngine;->reset(Z)V

    return-void
.end method
