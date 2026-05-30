.class public Lorg/bouncycastle/crypto/engines/AsconEngine;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/AEADCipher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;,
        Lorg/bouncycastle/crypto/engines/AsconEngine$State;
    }
.end annotation


# instance fields
.field private final ASCON_AEAD_RATE:I

.field private final ASCON_IV:J

.field private final CRYPTO_ABYTES:I

.field private final CRYPTO_KEYBYTES:I

.field private K0:J

.field private K1:J

.field private K2:J

.field private N0:J

.field private N1:J

.field private final algorithmName:Ljava/lang/String;

.field private final asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

.field private initialAssociatedText:[B

.field private final m_buf:[B

.field private m_bufPos:I

.field private final m_bufferSizeDecrypt:I

.field private m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

.field private mac:[B

.field private final nr:I

.field private x0:J

.field private x1:J

.field private x2:J

.field private x3:J

.field private x4:J


# direct methods
.method public constructor <init>(Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;)V
    .locals 4

    const/16 v0, 0x8

    const/16 v3, 0x10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->Uninitialized:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v1, 0x0

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

    invoke-virtual {p1}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameter setting for ASCON AEAD"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    const/16 v1, 0x14

    iput v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v2, -0x5fbff3fa00000000L    # -2.393674885049323E-153

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string v1, "Ascon-80pq AEAD"

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    :goto_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne v1, v0, :cond_0

    const/4 v0, 0x6

    :cond_0
    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    return-void

    :pswitch_1
    iput v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v2, -0x7f7ff3f800000000L

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string v1, "Ascon-128a AEAD"

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    iput v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    iput v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const-wide v2, -0x7fbff3fa00000000L    # -1.785284289241434E-307

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    const-string v1, "Ascon-128 AEAD"

    iput-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private P(I)V
    .locals 2

    const/16 v0, 0x8

    if-lt p1, v0, :cond_1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    const-wide/16 v0, 0xf0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xe1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xd2

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xc3

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    :cond_0
    const-wide/16 v0, 0xb4

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0xa5

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    :cond_1
    const-wide/16 v0, 0x96

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x87

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x78

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x69

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x5a

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ROUND(J)V

    return-void
.end method

.method private PAD(I)J
    .locals 3

    const-wide/16 v0, 0x80

    shl-int/lit8 v2, p1, 0x3

    rsub-int/lit8 v2, v2, 0x38

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method private ROUND(J)V
    .locals 15

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v0, v2

    xor-long v0, v0, p1

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v4, v6

    xor-long v4, v4, p1

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v2, v4

    xor-long v2, v2, p1

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v4, v6

    xor-long v4, v4, p1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    xor-long/2addr v2, v4

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v4, v6

    xor-long v4, v4, p1

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    and-long/2addr v6, v8

    xor-long/2addr v4, v6

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v6, v8

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    xor-long/2addr v6, v8

    xor-long v6, v6, p1

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v12, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v10, v12

    and-long/2addr v8, v10

    xor-long/2addr v6, v8

    iget-wide v8, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v8, v10

    iget-wide v10, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v12, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    xor-long/2addr v10, v12

    iget-wide v12, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    and-long/2addr v10, v12

    xor-long/2addr v8, v10

    const/16 v10, 0x13

    invoke-static {v0, v1, v10}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v10

    xor-long/2addr v10, v0

    const/16 v12, 0x1c

    invoke-static {v0, v1, v12}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v0

    xor-long/2addr v0, v10

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    const/16 v0, 0x27

    invoke-static {v2, v3, v0}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v0

    xor-long/2addr v0, v2

    const/16 v10, 0x3d

    invoke-static {v2, v3, v10}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    const/4 v0, 0x1

    invoke-static {v4, v5, v0}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v0

    xor-long/2addr v0, v4

    const/4 v2, 0x6

    invoke-static {v4, v5, v2}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    const-wide/16 v2, -0x1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    const/16 v0, 0xa

    invoke-static {v6, v7, v0}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v0

    xor-long/2addr v0, v6

    const/16 v2, 0x11

    invoke-static {v6, v7, v2}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    const/4 v0, 0x7

    invoke-static {v8, v9, v0}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v0

    xor-long/2addr v0, v8

    const/16 v2, 0x29

    invoke-static {v8, v9, v2}, Lorg/bouncycastle/util/Longs;->rotateRight(JI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    return-void
.end method

.method private ascon_aeadinit()V
    .locals 5

    const/16 v4, 0x14

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_IV:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v0, v4, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-ne v0, v4, :cond_1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    return-void
.end method

.method private checkAAD()V
    .locals 3

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    :goto_0
    :pswitch_1
    return-void

    :pswitch_2
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncAad:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private checkData()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-object v2, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v3}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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
    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    :goto_0
    :pswitch_1
    return v0

    :pswitch_2
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncData:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    move v0, v1

    goto :goto_0

    :pswitch_3
    move v0, v1

    goto :goto_0

    :pswitch_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method private finishAAD(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V
    .locals 10

    const-wide/16 v8, -0x1

    const/16 v4, 0x8

    const/4 v6, 0x0

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    const-wide/16 v2, 0x1

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iput v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void

    :pswitch_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    const/16 v2, -0x80

    aput-byte v2, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    if-lt v0, v4, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v2, v4}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/lit8 v4, v4, -0x8

    shl-int/lit8 v4, v4, 0x3

    rsub-int/lit8 v4, v4, 0x38

    shl-long v4, v8, v4

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v2, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    shl-int/lit8 v4, v4, 0x3

    rsub-int/lit8 v4, v4, 0x38

    shl-long v4, v8, v4

    and-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V
    .locals 7

    const/16 v6, 0x20

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$AsconParameters:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    :goto_0
    const/16 v0, 0xc

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iput-object p1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    return-void

    :pswitch_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    goto :goto_0

    :pswitch_2
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    shl-long/2addr v2, v6

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shr-long/2addr v4, v6

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    shl-long/2addr v2, v6

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shr-long/2addr v4, v6

    or-long/2addr v2, v4

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x2:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    shl-long/2addr v2, v6

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private processBufferAAD([BI)V
    .locals 4

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :cond_0
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void
.end method

.method private processBufferDecrypt([BI[BI)V
    .locals 5

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, v0

    invoke-static {v2, v3, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    add-int/lit8 v0, p2, 0x8

    invoke-static {p1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v2, v0

    add-int/lit8 v4, p4, 0x8

    invoke-static {v2, v3, p3, v4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void
.end method

.method private processBufferEncrypt([BI[BI)V
    .locals 4

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, p4

    array-length v1, p3

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p3, p4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 v2, p2, 0x8

    invoke-static {p1, v2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    add-int/lit8 v2, p4, 0x8

    invoke-static {v0, v1, p3, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->nr:I

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->P(I)V

    return-void
.end method

.method private processFinalDecrypt([BII[BI)V
    .locals 10

    const-wide/16 v8, -0x1

    const/16 v0, 0x8

    if-lt p3, v0, :cond_1

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v2, v3, p4, p5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v1, p5, 0x8

    add-int/lit8 v2, p3, -0x8

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v4

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v6, v4

    iput-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {v6, v7, p4, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    shl-int/lit8 v2, v2, 0x3

    ushr-long v2, v8, v2

    and-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    xor-long/2addr v0, v4

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    :cond_0
    :goto_0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return-void

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    if-eqz p3, :cond_0

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v2, v3, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    shl-int/lit8 v4, p3, 0x3

    ushr-long v4, v8, v4

    and-long/2addr v2, v4

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    goto :goto_0
.end method

.method private processFinalEncrypt([BII[BI)V
    .locals 8

    const/16 v0, 0x8

    if-lt p3, v0, :cond_1

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p4, p5}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    add-int/lit8 v0, p2, 0x8

    add-int/lit8 v1, p5, 0x8

    add-int/lit8 v2, p3, -0x8

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    if-eqz v2, :cond_0

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {p1, v0, v2}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v6

    xor-long/2addr v4, v6

    iput-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    iget-wide v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x1:J

    invoke-static {v4, v5, p4, v1, v2}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    :cond_0
    :goto_0
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->finishData(Lorg/bouncycastle/crypto/engines/AsconEngine$State;)V

    return-void

    :cond_1
    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-direct {p0, p3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->PAD(I)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {p1, p2, p3}, Lorg/bouncycastle/util/Pack;->littleEndianToLong_High([BII)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x0:J

    invoke-static {v0, v1, p4, p5, p3}, Lorg/bouncycastle/util/Pack;->longToLittleEndian_High(J[BII)V

    goto :goto_0
.end method

.method private reset(Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clear([B)V

    iput v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v1}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

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
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    :pswitch_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->ascon_aeadinit()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processAADBytes([BII)V

    :cond_1
    :goto_0
    return-void

    :pswitch_2
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncFinal:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Lorg/bouncycastle/crypto/InvalidCipherTextException;,
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int v6, v0, v1

    add-int v0, p2, v6

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processFinalEncrypt([BII[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    invoke-static {v0, v1, v3, v2}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    const/16 v4, 0x8

    invoke-static {v0, v1, v3, v4}, Lorg/bouncycastle/util/Pack;->longToBigEndian(J[BI)V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v1, p2

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-static {v0, v2, p1, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    move v0, v6

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-ge v0, v1, :cond_2

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    const-string v1, "data too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int v0, p2, v6

    array-length v1, p1

    if-le v0, v1, :cond_3

    new-instance v0, Lorg/bouncycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processFinalDecrypt([BII[BI)V

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/lit8 v3, v3, 0x8

    invoke-static {v2, v3}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    iget-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x3:J

    iget-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->x4:J

    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    new-instance v0, Lorg/bouncycastle/crypto/InvalidCipherTextException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mac check in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/InvalidCipherTextException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    move v0, v6

    goto :goto_0
.end method

.method public getAlgorithmName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->algorithmName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlgorithmVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "v1.2"

    return-object v0
.end method

.method public getIVBytesSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    return v0
.end method

.method public getKeyBytesSize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    return v0
.end method

.method public getMac()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->mac:[B

    return-object v0
.end method

.method public getOutputSize(I)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v1

    :goto_0
    return v0

    :pswitch_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    add-int/2addr v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public getUpdateOutputSize(I)I
    .locals 4

    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sget-object v1, Lorg/bouncycastle/crypto/engines/AsconEngine$1;->$SwitchMap$org$bouncycastle$crypto$engines$AsconEngine$State:[I

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    invoke-virtual {v2}, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    rem-int v1, v0, v1

    sub-int/2addr v0, v1

    return v0

    :pswitch_1
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_2
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, v1

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    sub-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :pswitch_3
    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public init(ZLorg/bouncycastle/crypto/CipherParameters;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const/16 v7, 0x8

    const/4 v6, 0x0

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

    iput-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/AEADParameters;->getMacSize()I

    move-result v0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

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

    const-string v1, "Ascon Init parameters must include a key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    instance-of v0, p2, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lorg/bouncycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getParameters()Lorg/bouncycastle/crypto/CipherParameters;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/bouncycastle/crypto/params/ParametersWithIV;->getIV()[B

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->initialAssociatedText:[B

    move-object v2, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid parameters passed to Ascon"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz v0, :cond_4

    array-length v1, v0

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    if-eq v1, v3, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires exactly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_ABYTES:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes of IV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {v2}, Lorg/bouncycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v1

    array-length v2, v1

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    if-eq v2, v3, :cond_6

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->asconParameters:Lorg/bouncycastle/crypto/engines/AsconEngine$AsconParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " key must be "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes long"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v2, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;

    invoke-virtual {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->getAlgorithmName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-static {p1}, Lorg/bouncycastle/crypto/engines/Utils;->getPurpose(Z)Lorg/bouncycastle/crypto/CryptoServicePurpose;

    move-result-object v5

    invoke-direct {v2, v3, v4, p2, v5}, Lorg/bouncycastle/crypto/constraints/DefaultServiceProperties;-><init>(Ljava/lang/String;ILjava/lang/Object;Lorg/bouncycastle/crypto/CryptoServicePurpose;)V

    invoke-static {v2}, Lorg/bouncycastle/crypto/CryptoServicesRegistrar;->checkConstraints(Lorg/bouncycastle/crypto/CryptoServiceProperties;)V

    invoke-static {v0, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N0:J

    invoke-static {v0, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->N1:J

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v2, 0x10

    if-ne v0, v2, :cond_7

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    invoke-static {v1, v7}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    :goto_1
    if-eqz p1, :cond_9

    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->EncInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    :goto_2
    iput-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_state:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return-void

    :cond_7
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->CRYPTO_KEYBYTES:I

    const/16 v2, 0x14

    if-ne v0, v2, :cond_8

    invoke-static {v1, v6}, Lorg/bouncycastle/util/Pack;->bigEndianToInt([BI)I

    move-result v0

    int-to-long v2, v0

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K0:J

    const/4 v0, 0x4

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v2

    iput-wide v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K1:J

    const/16 v0, 0xc

    invoke-static {v1, v0}, Lorg/bouncycastle/util/Pack;->bigEndianToLong([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->K2:J

    goto :goto_1

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :cond_9
    sget-object v0, Lorg/bouncycastle/crypto/engines/AsconEngine$State;->DecInit:Lorg/bouncycastle/crypto/engines/AsconEngine$State;

    goto :goto_2
.end method

.method public processAADByte(B)V
    .locals 2

    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    aput-byte p1, v0, v1

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    :cond_0
    return-void
.end method

.method public processAADBytes([BII)V
    .locals 4

    const/4 v3, 0x0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-gtz p3, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkAAD()V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    if-lez v0, :cond_3

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v1

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v0, v3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    :cond_3
    :goto_1
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v0, :cond_4

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferAAD([BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v0

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr p3, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v0, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

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

    invoke-virtual/range {v0 .. v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBytes([BII[BI)I

    move-result v0

    return v0
.end method

.method public processBytes([BII[BI)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/crypto/DataLengthException;
        }
    .end annotation

    const/4 v1, 0x0

    add-int v0, p2, p3

    array-length v2, p1

    if-le v0, v2, :cond_0

    new-instance v0, Lorg/bouncycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/bouncycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-direct {p0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->checkData()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    if-lez v0, :cond_8

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    if-ge p3, v0, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-direct {p0, v0, v1, p4, p5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    :goto_1
    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt p3, v2, :cond_7

    add-int v2, p5, v0

    invoke-direct {p0, p1, p2, p4, v2}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferEncrypt([BI[BI)V

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr p2, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr p3, v2

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, v2

    goto :goto_1

    :cond_2
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v2

    if-ge p3, v0, :cond_3

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    goto :goto_0

    :cond_3
    move v2, v1

    :cond_4
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    if-lt v3, v4, :cond_5

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v4, p5, v2

    invoke-direct {p0, v3, v1, p4, v4}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v3, v4

    iput v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget-object v5, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v6, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {v3, v4, v5, v1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v2, v3

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, v3

    if-ge p3, v0, :cond_4

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v1, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    move v1, v2

    goto :goto_0

    :cond_5
    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    sub-int/2addr v0, v3

    iget-object v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    invoke-static {p1, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int v4, p2, v0

    sub-int v3, p3, v0

    iget-object v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    add-int v5, p5, v2

    invoke-direct {p0, v0, v1, p4, v5}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v0, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, v2

    move v2, v3

    :goto_2
    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufferSizeDecrypt:I

    if-lt v2, v3, :cond_6

    add-int v3, p5, v0

    invoke-direct {p0, p1, v4, p4, v3}, Lorg/bouncycastle/crypto/engines/AsconEngine;->processBufferDecrypt([BI[BI)V

    iget v3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v3, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    sub-int/2addr v2, v4

    iget v4, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->ASCON_AEAD_RATE:I

    add-int/2addr v0, v4

    move v4, v3

    goto :goto_2

    :cond_6
    move p3, v2

    move p2, v4

    :cond_7
    iget-object v2, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_buf:[B

    invoke-static {p1, p2, v2, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput p3, p0, Lorg/bouncycastle/crypto/engines/AsconEngine;->m_bufPos:I

    move v1, v0

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/crypto/engines/AsconEngine;->reset(Z)V

    return-void
.end method
