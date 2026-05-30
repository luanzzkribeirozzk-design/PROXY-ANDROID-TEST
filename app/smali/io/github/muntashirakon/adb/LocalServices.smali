.class public Lio/github/muntashirakon/adb/LocalServices;
.super Ljava/lang/Object;
.source "LocalServices.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/github/muntashirakon/adb/LocalServices$Services;
    }
.end annotation


# static fields
.field public static final BACKUP:I = 0xe

.field public static final CONNECT_JDWP:I = 0xa

.field public static final FILE:I = 0x3

.field public static final FRAMEBUFFER:I = 0x9

.field public static final LOCAL_UNIX_SOCKET:I = 0x5

.field public static final LOCAL_UNIX_SOCKET_ABSTRACT:I = 0x7

.field public static final LOCAL_UNIX_SOCKET_FILE_SYSTEM:I = 0x8

.field public static final LOCAL_UNIX_SOCKET_RESERVED:I = 0x6

.field public static final REMOUNT:I = 0x2

.field public static final RESTORE:I = 0xf

.field public static final REVERSE:I = 0xd

.field static final SERVICE_FIRST:I = 0x1

.field static final SERVICE_LAST:I = 0xf

.field public static final SHELL:I = 0x1

.field public static final SYNC:I = 0xc

.field public static final TCP_CONNECT:I = 0x4

.field public static final TRACK_JDWP:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static varargs getDestination(I[Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "service"    # I
    .param p1, "args"    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 177
    invoke-static {p0}, Lio/github/muntashirakon/adb/LocalServices;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, "serviceName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .local v1, "destination":Ljava/lang/StringBuilder;
    packed-switch p0, :pswitch_data_0

    .line 269
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 181
    :pswitch_0
    array-length v5, p1

    move v4, v3

    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v0, p1, v4

    .line 182
    .local v0, "arg":Ljava/lang/String;
    const-string v3, "\""

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 183
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Arguments for inline shell cannot contain double quotations."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 186
    :cond_1
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 187
    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    :goto_2
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_1

    .line 188
    :cond_2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 192
    .end local v0    # "arg":Ljava/lang/String;
    :pswitch_1
    array-length v4, p1

    if-nez v4, :cond_3

    .line 193
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "File name must be specified."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 194
    :cond_3
    array-length v4, p1

    if-eq v4, v6, :cond_4

    .line 195
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service expects exactly one argument, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supplied."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 198
    :cond_4
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 201
    :pswitch_2
    array-length v4, p1

    if-nez v4, :cond_5

    .line 202
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Port number must be specified."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 203
    :cond_5
    array-length v4, p1

    if-ne v4, v6, :cond_6

    .line 204
    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 205
    :cond_6
    array-length v4, p1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 206
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x3a

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, p1, v6

    .line 208
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 210
    :cond_7
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid number of arguments supplied."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :pswitch_3
    array-length v4, p1

    if-nez v4, :cond_8

    .line 218
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Path must be specified."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 219
    :cond_8
    array-length v4, p1

    if-eq v4, v6, :cond_9

    .line 220
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service expects exactly one argument, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supplied."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 223
    :cond_9
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 226
    :pswitch_4
    array-length v4, p1

    if-nez v4, :cond_a

    .line 227
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "PID must be specified."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 228
    :cond_a
    array-length v4, p1

    if-eq v4, v6, :cond_b

    .line 229
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service expects exactly one argument, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supplied."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 232
    :cond_b
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 235
    :pswitch_5
    array-length v4, p1

    if-nez v4, :cond_c

    .line 236
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Forward command must be specified."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 237
    :cond_c
    array-length v4, p1

    if-eq v4, v6, :cond_d

    .line 238
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Service expects exactly one argument, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " supplied."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 241
    :cond_d
    aget-object v4, p1, v3

    if-nez v4, :cond_e

    .line 242
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Forward command is empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 244
    :cond_e
    const-string v4, "list-forward"

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const-string v4, "killforward-all"

    aget-object v5, p1, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 245
    :cond_f
    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 246
    :cond_10
    aget-object v4, p1, v3

    const-string v5, "forward:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_11

    aget-object v4, p1, v3

    const-string v5, "killforward:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 247
    :cond_11
    aget-object v3, p1, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 249
    :cond_12
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid forward command."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 253
    :pswitch_6
    array-length v3, p1

    if-nez v3, :cond_13

    .line 254
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "At least one package must be specified or use -shared/-all."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 258
    :cond_13
    :pswitch_7
    const-string v3, " "

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 264
    :pswitch_8
    array-length v3, p1

    if-eqz v3, :cond_0

    .line 265
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Service expects no arguments."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_5
        :pswitch_6
        :pswitch_8
    .end packed-switch
.end method

.method static getServiceName(I)Ljava/lang/String;
    .locals 3
    .param p0, "service"    # I
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .prologue
    .line 139
    packed-switch p0, :pswitch_data_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :pswitch_0
    const-string v0, "shell:"

    .line 169
    :goto_0
    return-object v0

    .line 143
    :pswitch_1
    const-string v0, "jdwp:"

    goto :goto_0

    .line 145
    :pswitch_2
    const-string v0, "dev:"

    goto :goto_0

    .line 147
    :pswitch_3
    const-string v0, "framebuffer:"

    goto :goto_0

    .line 149
    :pswitch_4
    const-string v0, "local:"

    goto :goto_0

    .line 151
    :pswitch_5
    const-string v0, "localabstract:"

    goto :goto_0

    .line 153
    :pswitch_6
    const-string v0, "localfilesystem:"

    goto :goto_0

    .line 155
    :pswitch_7
    const-string v0, "localreserved:"

    goto :goto_0

    .line 157
    :pswitch_8
    const-string v0, "remount:"

    goto :goto_0

    .line 159
    :pswitch_9
    const-string v0, "reverse:"

    goto :goto_0

    .line 161
    :pswitch_a
    const-string v0, "sync:"

    goto :goto_0

    .line 163
    :pswitch_b
    const-string v0, "tcp:"

    goto :goto_0

    .line 165
    :pswitch_c
    const-string v0, "track-jdwp"

    goto :goto_0

    .line 167
    :pswitch_d
    const-string v0, "backup:"

    goto :goto_0

    .line 169
    :pswitch_e
    const-string v0, "restore:"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8
        :pswitch_2
        :pswitch_b
        :pswitch_4
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_1
        :pswitch_c
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method
