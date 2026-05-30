.class abstract Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;
.super Ljava/lang/Object;
.source "OpenSSLX509CertificateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/conscrypt/OpenSSLX509CertificateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "Parser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 68
    .local p0, "this":Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/conscrypt/OpenSSLX509CertificateFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/conscrypt/OpenSSLX509CertificateFactory$1;

    .prologue
    .line 68
    .local p0, "this":Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    invoke-direct {p0}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/List",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method protected abstract fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation
.end method

.method generateItem(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 10
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    const/4 v7, 0x0

    .line 70
    if-nez p1, :cond_0

    .line 71
    new-instance v7, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "inStream == null"

    invoke-direct {v7, v8}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 74
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    .line 75
    .local v5, "markable":Z
    if-eqz v5, :cond_1

    .line 76
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {p1, v8}, Ljava/io/InputStream;->mark(I)V

    .line 79
    :cond_1
    new-instance v6, Ljava/io/PushbackInputStream;

    const/16 v8, 0x40

    invoke-direct {v6, p1, v8}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 81
    .local v6, "pbis":Ljava/io/PushbackInputStream;
    :try_start_0
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v8

    array-length v8, v8

    new-array v0, v8, [B

    .line 83
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 84
    .local v4, "len":I
    if-gez v4, :cond_3

    .line 86
    new-instance v7, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "inStream is empty"

    invoke-direct {v7, v8}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    :catch_0
    move-exception v2

    .line 113
    .local v2, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_2

    .line 115
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 120
    :cond_2
    :goto_0
    new-instance v7, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v7, v2}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 88
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v4    # "len":I
    :cond_3
    const/4 v8, 0x0

    :try_start_2
    invoke-virtual {v6, v0, v8, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 90
    const/4 v8, 0x0

    aget-byte v8, v0, v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_6

    .line 91
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v8

    array-length v8, v8

    if-ne v4, v8, :cond_7

    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v8

    invoke-static {v8, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 92
    invoke-virtual {p0, v6}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v3

    .line 93
    .local v3, "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_5

    .line 110
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_4
    :goto_1
    return-object v7

    .line 96
    .restart local v3    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_5
    const/4 v8, 0x0

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .end local v3    # "items":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_6
    const/4 v8, 0x4

    aget-byte v8, v0, v8

    const/4 v9, 0x6

    if-ne v8, v9, :cond_8

    .line 104
    invoke-virtual {p0, v6}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_4

    .line 108
    const/4 v7, 0x0

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 98
    .end local v1    # "certs":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_7
    invoke-virtual {p0, v6}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509PemInputStream(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_1

    .line 110
    :cond_8
    invoke-virtual {p0, v6}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromX509DerInputStream(Ljava/io/InputStream;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    goto :goto_1

    .line 116
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    .restart local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method generateItems(Ljava/io/InputStream;)Ljava/util/Collection;
    .locals 10
    .param p1, "inStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")",
            "Ljava/util/Collection",
            "<+TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
        }
    .end annotation

    .prologue
    .local p0, "this":Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;, "Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser<TT;>;"
    const/16 v9, 0x40

    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v7, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "inStream == null"

    invoke-direct {v7, v8}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 130
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v7

    if-nez v7, :cond_1

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    return-object v2

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "e":Ljava/io/IOException;
    new-instance v7, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "Problem reading input stream"

    invoke-direct {v7, v8, v3}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v7

    .line 139
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v5

    .line 140
    .local v5, "markable":Z
    if-eqz v5, :cond_2

    .line 141
    invoke-virtual {p1, v9}, Ljava/io/InputStream;->mark(I)V

    .line 145
    :cond_2
    new-instance v6, Ljava/io/PushbackInputStream;

    invoke-direct {v6, p1, v9}, Ljava/io/PushbackInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 147
    .local v6, "pbis":Ljava/io/PushbackInputStream;
    :try_start_1
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v7

    array-length v7, v7

    new-array v0, v7, [B

    .line 149
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/PushbackInputStream;->read([B)I

    move-result v4

    .line 150
    .local v4, "len":I
    if-gez v4, :cond_4

    .line 152
    new-instance v7, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    const-string v8, "inStream is empty"

    invoke-direct {v7, v8}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    .end local v0    # "buffer":[B
    .end local v4    # "len":I
    :catch_1
    move-exception v3

    .line 165
    .local v3, "e":Ljava/lang/Exception;
    if-eqz v5, :cond_3

    .line 167
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 172
    :cond_3
    :goto_1
    new-instance v7, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;

    invoke-direct {v7, v3}, Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;-><init>(Ljava/lang/Exception;)V

    throw v7

    .line 154
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v0    # "buffer":[B
    .restart local v4    # "len":I
    :cond_4
    const/4 v7, 0x0

    :try_start_3
    invoke-virtual {v6, v0, v7, v4}, Ljava/io/PushbackInputStream;->unread([BII)V

    .line 156
    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v7

    array-length v7, v7

    if-ne v4, v7, :cond_5

    invoke-static {}, Lorg/conscrypt/OpenSSLX509CertificateFactory;->access$000()[B

    move-result-object v7

    invoke-static {v7, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 157
    invoke-virtual {p0, v6}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7PemInputStream(Ljava/io/InputStream;)Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 161
    :cond_5
    const/4 v7, 0x4

    aget-byte v7, v0, v7

    const/4 v8, 0x6

    if-ne v7, v8, :cond_6

    .line 162
    invoke-virtual {p0, v6}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->fromPkcs7DerInputStream(Ljava/io/InputStream;)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    goto :goto_0

    .line 179
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v2, "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_7
    if-eqz v5, :cond_8

    .line 187
    invoke-virtual {p1, v9}, Ljava/io/InputStream;->mark(I)V

    .line 191
    :cond_8
    :try_start_4
    invoke-virtual {p0, v6}, Lorg/conscrypt/OpenSSLX509CertificateFactory$Parser;->generateItem(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v1

    .line 192
    .local v1, "c":Ljava/lang/Object;, "TT;"
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException; {:try_start_4 .. :try_end_4} :catch_2

    .line 208
    .end local v1    # "c":Ljava/lang/Object;, "TT;"
    :goto_2
    if-nez v1, :cond_7

    goto :goto_0

    .line 193
    :catch_2
    move-exception v3

    .line 198
    .local v3, "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    if-eqz v5, :cond_9

    .line 200
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 206
    :cond_9
    :goto_3
    const/4 v1, 0x0

    .restart local v1    # "c":Ljava/lang/Object;, "TT;"
    goto :goto_2

    .line 168
    .end local v0    # "buffer":[B
    .end local v1    # "c":Ljava/lang/Object;, "TT;"
    .end local v2    # "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .end local v4    # "len":I
    .local v3, "e":Ljava/lang/Exception;
    :catch_3
    move-exception v7

    goto :goto_1

    .line 201
    .restart local v0    # "buffer":[B
    .restart local v2    # "coll":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local v3, "e":Lorg/conscrypt/OpenSSLX509CertificateFactory$ParsingException;
    .restart local v4    # "len":I
    :catch_4
    move-exception v7

    goto :goto_3
.end method
