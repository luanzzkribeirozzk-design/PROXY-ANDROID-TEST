.class public Lorg/bouncycastle/util/Longs;
.super Ljava/lang/Object;


# static fields
.field public static final BYTES:I = 0x8

.field public static final SIZE:I = 0x40


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static highestOneBit(J)J
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static lowestOneBit(J)J
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->lowestOneBit(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static numberOfLeadingZeros(J)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfLeadingZeros(J)I

    move-result v0

    return v0
.end method

.method public static numberOfTrailingZeros(J)I
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    return v0
.end method

.method public static reverse(J)J
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->reverse(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static reverseBytes(J)J
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->reverseBytes(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static rotateLeft(JI)J
    .locals 2

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateLeft(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static rotateRight(JI)J
    .locals 2

    invoke-static {p0, p1, p2}, Ljava/lang/Long;->rotateRight(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static valueOf(J)Ljava/lang/Long;
    .locals 2

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
