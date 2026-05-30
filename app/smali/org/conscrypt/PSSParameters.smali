.class public Lorg/conscrypt/PSSParameters;
.super Ljava/security/AlgorithmParametersSpi;
.source "PSSParameters.java"


# instance fields
.field private spec:Ljava/security/spec/PSSParameterSpec;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/security/AlgorithmParametersSpi;-><init>()V

    .line 33
    sget-object v0, Ljava/security/spec/PSSParameterSpec;->DEFAULT:Ljava/security/spec/PSSParameterSpec;

    iput-object v0, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 35
    return-void
.end method


# virtual methods
.method protected engineGetEncoded()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    const-wide/16 v0, 0x0

    .line 116
    .local v0, "cbbRef":J
    const-wide/16 v4, 0x0

    .line 118
    .local v4, "seqRef":J
    :try_start_0
    invoke-static {}, Lorg/conscrypt/NativeCrypto;->asn1_write_init()J

    move-result-wide v0

    .line 119
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_sequence(J)J

    move-result-wide v4

    .line 120
    iget-object v3, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getDigestAlgorithm()Ljava/lang/String;

    move-result-object v8

    iget-object v3, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 121
    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getMGFParameters()Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v3

    check-cast v3, Ljava/security/spec/MGF1ParameterSpec;

    .line 120
    invoke-static {v4, v5, v8, v3}, Lorg/conscrypt/OAEPParameters;->writeHashAndMgfHash(JLjava/lang/String;Ljava/security/spec/MGF1ParameterSpec;)V

    .line 123
    iget-object v3, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v3

    const/16 v8, 0x14

    if-eq v3, v8, :cond_0

    .line 124
    const-wide/16 v6, 0x0

    .line 126
    .local v6, "tagRef":J
    const/4 v3, 0x2

    :try_start_1
    invoke-static {v4, v5, v3}, Lorg/conscrypt/NativeCrypto;->asn1_write_tag(JI)J

    move-result-wide v6

    .line 127
    iget-object v3, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    invoke-virtual {v3}, Ljava/security/spec/PSSParameterSpec;->getSaltLength()I

    move-result v3

    int-to-long v8, v3

    invoke-static {v6, v7, v8, v9}, Lorg/conscrypt/NativeCrypto;->asn1_write_uint64(JJ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 130
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 134
    .end local v6    # "tagRef":J
    :cond_0
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_finish(J)[B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 139
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 140
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 134
    return-object v3

    .line 129
    .restart local v6    # "tagRef":J
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_flush(J)V

    .line 130
    invoke-static {v6, v7}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 135
    .end local v6    # "tagRef":J
    :catch_0
    move-exception v2

    .line 136
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_cleanup(J)V

    .line 137
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 139
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v3

    invoke-static {v4, v5}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    .line 140
    invoke-static {v0, v1}, Lorg/conscrypt/NativeCrypto;->asn1_write_free(J)V

    throw v3
.end method

.method protected engineGetEncoded(Ljava/lang/String;)[B
    .locals 3
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 146
    if-eqz p1, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lorg/conscrypt/PSSParameters;->engineGetEncoded()[B

    move-result-object v0

    return-object v0

    .line 149
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineGetParameterSpec(Ljava/lang/Class;)Ljava/security/spec/AlgorithmParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/security/spec/AlgorithmParameterSpec;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "aClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    const-class v0, Ljava/security/spec/PSSParameterSpec;

    if-ne p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    return-object v0

    .line 109
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit(Ljava/security/spec/AlgorithmParameterSpec;)V
    .locals 2
    .param p1, "algorithmParameterSpec"    # Ljava/security/spec/AlgorithmParameterSpec;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/spec/InvalidParameterSpecException;
        }
    .end annotation

    .prologue
    .line 40
    instance-of v0, p1, Ljava/security/spec/PSSParameterSpec;

    if-eqz v0, :cond_0

    .line 41
    check-cast p1, Ljava/security/spec/PSSParameterSpec;

    .end local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    iput-object p1, p0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;

    .line 45
    return-void

    .line 43
    .restart local p1    # "algorithmParameterSpec":Ljava/security/spec/AlgorithmParameterSpec;
    :cond_0
    new-instance v0, Ljava/security/spec/InvalidParameterSpecException;

    const-string v1, "Only PSSParameterSpec is supported"

    invoke-direct {v0, v1}, Ljava/security/spec/InvalidParameterSpecException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineInit([B)V
    .locals 20
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    const-wide/16 v10, 0x0

    .line 50
    .local v10, "readRef":J
    const-wide/16 v14, 0x0

    .line 52
    .local v14, "seqRef":J
    :try_start_0
    invoke-static/range {p1 .. p1}, Lorg/conscrypt/NativeCrypto;->asn1_read_init([B)J

    move-result-wide v10

    .line 53
    invoke-static {v10, v11}, Lorg/conscrypt/NativeCrypto;->asn1_read_sequence(J)J

    move-result-wide v14

    .line 54
    const/16 v6, 0x14

    .line 55
    .local v6, "saltLength":I
    invoke-static {v14, v15}, Lorg/conscrypt/OAEPParameters;->readHash(J)Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "hash":Ljava/lang/String;
    invoke-static {v14, v15}, Lorg/conscrypt/OAEPParameters;->readMgfHash(J)Ljava/lang/String;

    move-result-object v8

    .line 57
    .local v8, "mgfHash":Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {v14, v15, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 58
    const-wide/16 v12, 0x0

    .line 60
    .local v12, "saltRef":J
    :try_start_1
    invoke-static {v14, v15}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v12

    .line 61
    invoke-static {v12, v13}, Lorg/conscrypt/NativeCrypto;->asn1_read_uint64(J)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v4

    long-to-int v6, v4

    .line 63
    :try_start_2
    invoke-static {v12, v13}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 66
    .end local v12    # "saltRef":J
    :cond_0
    const/4 v2, 0x3

    invoke-static {v14, v15, v2}, Lorg/conscrypt/NativeCrypto;->asn1_read_next_tag_is(JI)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    const-wide/16 v18, 0x0

    .line 70
    .local v18, "trailerRef":J
    :try_start_3
    invoke-static {v14, v15}, Lorg/conscrypt/NativeCrypto;->asn1_read_tagged(J)J

    move-result-wide v18

    .line 71
    invoke-static/range {v18 .. v19}, Lorg/conscrypt/NativeCrypto;->asn1_read_uint64(J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-wide v4

    long-to-int v2, v4

    int-to-long v0, v2

    move-wide/from16 v16, v0

    .line 73
    .local v16, "trailerField":J
    :try_start_4
    invoke-static/range {v18 .. v19}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 76
    const-wide/16 v4, 0x1

    cmp-long v2, v16, v4

    if-eqz v2, :cond_1

    .line 77
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Error reading ASN.1 encoding"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 88
    .end local v3    # "hash":Ljava/lang/String;
    .end local v6    # "saltLength":I
    .end local v8    # "mgfHash":Ljava/lang/String;
    .end local v16    # "trailerField":J
    .end local v18    # "trailerRef":J
    :catchall_0
    move-exception v2

    invoke-static {v14, v15}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 89
    invoke-static {v10, v11}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v2

    .line 63
    .restart local v3    # "hash":Ljava/lang/String;
    .restart local v6    # "saltLength":I
    .restart local v8    # "mgfHash":Ljava/lang/String;
    .restart local v12    # "saltRef":J
    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {v12, v13}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v2

    .line 73
    .end local v12    # "saltRef":J
    .restart local v18    # "trailerRef":J
    :catchall_2
    move-exception v2

    invoke-static/range {v18 .. v19}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    throw v2

    .line 81
    .end local v18    # "trailerRef":J
    :cond_1
    invoke-static {v14, v15}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 82
    invoke-static {v10, v11}, Lorg/conscrypt/NativeCrypto;->asn1_read_is_empty(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 83
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Error reading ASN.1 encoding"

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 85
    :cond_3
    new-instance v2, Ljava/security/spec/PSSParameterSpec;

    const-string v4, "MGF1"

    new-instance v5, Ljava/security/spec/MGF1ParameterSpec;

    invoke-direct {v5, v8}, Ljava/security/spec/MGF1ParameterSpec;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    invoke-direct/range {v2 .. v7}, Ljava/security/spec/PSSParameterSpec;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/security/spec/AlgorithmParameterSpec;II)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lorg/conscrypt/PSSParameters;->spec:Ljava/security/spec/PSSParameterSpec;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 88
    invoke-static {v14, v15}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 89
    invoke-static {v10, v11}, Lorg/conscrypt/NativeCrypto;->asn1_read_free(J)V

    .line 91
    return-void
.end method

.method protected engineInit([BLjava/lang/String;)V
    .locals 3
    .param p1, "bytes"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    if-eqz p2, :cond_0

    const-string v0, "ASN.1"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "X.509"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lorg/conscrypt/PSSParameters;->engineInit([B)V

    .line 100
    return-void

    .line 98
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected engineToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "Conscrypt PSS AlgorithmParameters"

    return-object v0
.end method
