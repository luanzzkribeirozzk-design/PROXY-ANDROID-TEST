.class public Lorg/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/modes/gcm/GCMExponentiator;


# instance fields
.field private x:[J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public exponentiateX(J[B)V
    .locals 7

    const-wide/16 v4, 0x0

    invoke-static {}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->oneAsLongs()[J

    move-result-object v0

    cmp-long v1, p1, v4

    if-lez v1, :cond_2

    const/4 v1, 0x2

    new-array v1, v1, [J

    iget-object v2, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[J

    invoke-static {v2, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->copy([J[J)V

    :cond_0
    const-wide/16 v2, 0x1

    and-long/2addr v2, p1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    invoke-static {v0, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->multiply([J[J)V

    :cond_1
    invoke-static {v1, v1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->square([J[J)V

    const/4 v2, 0x1

    ushr-long/2addr p1, v2

    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    :cond_2
    invoke-static {v0, p3}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asBytes([J[B)V

    return-void
.end method

.method public init([B)V
    .locals 1

    invoke-static {p1}, Lorg/bouncycastle/crypto/modes/gcm/GCMUtil;->asLongs([B)[J

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/crypto/modes/gcm/BasicGCMExponentiator;->x:[J

    return-void
.end method
