.class public final Lorg/conscrypt/ClientSessionContext;
.super Lorg/conscrypt/AbstractSessionContext;
.source "ClientSessionContext.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/conscrypt/ClientSessionContext$HostAndPort;
    }
.end annotation


# instance fields
.field private persistentCache:Lorg/conscrypt/SSLClientSessionCache;

.field private final sessionsByHostAndPort:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lorg/conscrypt/ClientSessionContext$HostAndPort;",
            "Ljava/util/List",
            "<",
            "Lorg/conscrypt/NativeSslSession;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 45
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/conscrypt/AbstractSessionContext;-><init>(I)V

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    .line 46
    return-void
.end method

.method private getSession(Ljava/lang/String;I)Lorg/conscrypt/NativeSslSession;
    .locals 8
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I

    .prologue
    const/4 v6, 0x0

    .line 118
    if-nez p1, :cond_1

    move-object v3, v6

    .line 148
    :cond_0
    :goto_0
    return-object v3

    .line 122
    :cond_1
    new-instance v2, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, p1, p2}, Lorg/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 123
    .local v2, "key":Lorg/conscrypt/ClientSessionContext$HostAndPort;
    const/4 v3, 0x0

    .line 124
    .local v3, "session":Lorg/conscrypt/NativeSslSession;
    iget-object v7, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v7

    .line 125
    :try_start_0
    iget-object v5, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 126
    .local v4, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 127
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/conscrypt/NativeSslSession;

    move-object v3, v0

    .line 129
    :cond_2
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v5

    if-nez v5, :cond_0

    .line 137
    :cond_3
    iget-object v5, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    if-eqz v5, :cond_4

    .line 138
    iget-object v5, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    invoke-interface {v5, p1, p2}, Lorg/conscrypt/SSLClientSessionCache;->getSessionData(Ljava/lang/String;I)[B

    move-result-object v1

    .line 139
    .local v1, "data":[B
    if-eqz v1, :cond_4

    .line 140
    invoke-static {p0, v1, p1, p2}, Lorg/conscrypt/NativeSslSession;->newInstance(Lorg/conscrypt/AbstractSessionContext;[BLjava/lang/String;I)Lorg/conscrypt/NativeSslSession;

    move-result-object v3

    .line 141
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lorg/conscrypt/NativeSslSession;->isValid()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 142
    invoke-direct {p0, v2, v3}, Lorg/conscrypt/ClientSessionContext;->putSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V

    goto :goto_0

    .line 129
    .end local v1    # "data":[B
    .end local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .restart local v4    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    :cond_4
    move-object v3, v6

    .line 148
    goto :goto_0
.end method

.method private putSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V
    .locals 4
    .param p1, "key"    # Lorg/conscrypt/ClientSessionContext$HostAndPort;
    .param p2, "session"    # Lorg/conscrypt/NativeSslSession;

    .prologue
    .line 152
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v2

    .line 153
    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .restart local v0    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {v1}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v1

    invoke-virtual {p2}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v3

    if-eq v1, v3, :cond_2

    .line 162
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 163
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/conscrypt/NativeSslSession;

    invoke-virtual {p0, v1}, Lorg/conscrypt/ClientSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V

    goto :goto_0

    .line 170
    .end local v0    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 167
    .restart local v0    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    :cond_1
    :try_start_1
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    :cond_2
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    return-void
.end method

.method private removeSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V
    .locals 3
    .param p1, "key"    # Lorg/conscrypt/ClientSessionContext$HostAndPort;
    .param p2, "session"    # Lorg/conscrypt/NativeSslSession;

    .prologue
    .line 174
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v2

    .line 175
    :try_start_0
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 176
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    if-eqz v0, :cond_0

    .line 177
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_0
    monitor-exit v2

    .line 183
    return-void

    .line 182
    .end local v0    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method declared-synchronized getCachedSession(Ljava/lang/String;ILorg/conscrypt/SSLParametersImpl;)Lorg/conscrypt/NativeSslSession;
    .locals 11
    .param p1, "hostName"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "sslParameters"    # Lorg/conscrypt/SSLParametersImpl;

    .prologue
    .line 61
    monitor-enter p0

    if-nez p1, :cond_1

    .line 62
    const/4 v6, 0x0

    .line 97
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v6

    .line 65
    :cond_1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/conscrypt/ClientSessionContext;->getSession(Ljava/lang/String;I)Lorg/conscrypt/NativeSslSession;

    move-result-object v6

    .line 66
    .local v6, "session":Lorg/conscrypt/NativeSslSession;
    if-nez v6, :cond_2

    .line 67
    const/4 v6, 0x0

    goto :goto_0

    .line 70
    :cond_2
    invoke-virtual {v6}, Lorg/conscrypt/NativeSslSession;->getProtocol()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "protocol":Ljava/lang/String;
    const/4 v5, 0x0

    .line 72
    .local v5, "protocolFound":Z
    iget-object v8, p3, Lorg/conscrypt/SSLParametersImpl;->enabledProtocols:[Ljava/lang/String;

    array-length v9, v8

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_3

    aget-object v3, v8, v7

    .line 73
    .local v3, "enabledProtocol":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 74
    const/4 v5, 0x1

    .line 78
    .end local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_3
    if-nez v5, :cond_5

    .line 79
    const/4 v6, 0x0

    goto :goto_0

    .line 72
    .restart local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 82
    .end local v3    # "enabledProtocol":Ljava/lang/String;
    :cond_5
    invoke-virtual {v6}, Lorg/conscrypt/NativeSslSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "cipherSuite":Ljava/lang/String;
    const/4 v1, 0x0

    .line 84
    .local v1, "cipherSuiteFound":Z
    invoke-virtual {p3}, Lorg/conscrypt/SSLParametersImpl;->getEnabledCipherSuites()[Ljava/lang/String;

    move-result-object v8

    array-length v9, v8

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v9, :cond_6

    aget-object v2, v8, v7

    .line 85
    .local v2, "enabledCipherSuite":Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 86
    const/4 v1, 0x1

    .line 90
    .end local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_8

    .line 91
    const/4 v6, 0x0

    goto :goto_0

    .line 84
    .restart local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 94
    .end local v2    # "enabledCipherSuite":Ljava/lang/String;
    :cond_8
    invoke-virtual {v6}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 95
    invoke-virtual {p0, v6}, Lorg/conscrypt/ClientSessionContext;->removeSession(Lorg/conscrypt/NativeSslSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 61
    .end local v0    # "cipherSuite":Ljava/lang/String;
    .end local v1    # "cipherSuiteFound":Z
    .end local v4    # "protocol":Ljava/lang/String;
    .end local v5    # "protocolFound":Z
    .end local v6    # "session":Lorg/conscrypt/NativeSslSession;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method getSessionFromPersistentCache([B)Lorg/conscrypt/NativeSslSession;
    .locals 1
    .param p1, "sessionId"    # [B

    .prologue
    .line 219
    const/4 v0, 0x0

    return-object v0
.end method

.method onBeforeAddSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 6
    .param p1, "session"    # Lorg/conscrypt/NativeSslSession;

    .prologue
    .line 187
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, "host":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v3

    .line 189
    .local v3, "port":I
    if-nez v1, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    new-instance v2, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v2, v1, v3}, Lorg/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 194
    .local v2, "key":Lorg/conscrypt/ClientSessionContext$HostAndPort;
    invoke-direct {p0, v2, p1}, Lorg/conscrypt/ClientSessionContext;->putSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V

    .line 197
    iget-object v4, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->isSingleUse()Z

    move-result v4

    if-nez v4, :cond_0

    .line 198
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toBytes()[B

    move-result-object v0

    .line 199
    .local v0, "data":[B
    if-eqz v0, :cond_0

    .line 200
    iget-object v4, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->toSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Lorg/conscrypt/SSLClientSessionCache;->putSessionData(Ljavax/net/ssl/SSLSession;[B)V

    goto :goto_0
.end method

.method onBeforeRemoveSession(Lorg/conscrypt/NativeSslSession;)V
    .locals 3
    .param p1, "session"    # Lorg/conscrypt/NativeSslSession;

    .prologue
    .line 207
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    invoke-virtual {p1}, Lorg/conscrypt/NativeSslSession;->getPeerPort()I

    move-result v2

    .line 212
    .local v2, "port":I
    new-instance v1, Lorg/conscrypt/ClientSessionContext$HostAndPort;

    invoke-direct {v1, v0, v2}, Lorg/conscrypt/ClientSessionContext$HostAndPort;-><init>(Ljava/lang/String;I)V

    .line 213
    .local v1, "hostAndPortKey":Lorg/conscrypt/ClientSessionContext$HostAndPort;
    invoke-direct {p0, v1, p1}, Lorg/conscrypt/ClientSessionContext;->removeSession(Lorg/conscrypt/ClientSessionContext$HostAndPort;Lorg/conscrypt/NativeSslSession;)V

    goto :goto_0
.end method

.method public setPersistentCache(Lorg/conscrypt/SSLClientSessionCache;)V
    .locals 0
    .param p1, "persistentCache"    # Lorg/conscrypt/SSLClientSessionCache;

    .prologue
    .line 53
    iput-object p1, p0, Lorg/conscrypt/ClientSessionContext;->persistentCache:Lorg/conscrypt/SSLClientSessionCache;

    .line 54
    return-void
.end method

.method size()I
    .locals 5

    .prologue
    .line 101
    const/4 v1, 0x0

    .line 102
    .local v1, "size":I
    iget-object v3, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    monitor-enter v3

    .line 103
    :try_start_0
    iget-object v2, p0, Lorg/conscrypt/ClientSessionContext;->sessionsByHostAndPort:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 104
    .local v0, "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v1, v4

    .line 105
    goto :goto_0

    .line 106
    .end local v0    # "sessions":Ljava/util/List;, "Ljava/util/List<Lorg/conscrypt/NativeSslSession;>;"
    :cond_0
    monitor-exit v3

    .line 107
    return v1

    .line 106
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
