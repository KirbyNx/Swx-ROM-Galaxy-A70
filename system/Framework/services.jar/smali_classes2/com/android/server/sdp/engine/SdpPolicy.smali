.class public Lcom/android/server/sdp/engine/SdpPolicy;
.super Ljava/lang/Object;
.source "SdpPolicy.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

.field private mPrivilegedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;Lcom/samsung/android/knox/sdp/core/SdpDomain;Ljava/util/List;)V
    .registers 5
    .param p1, "info"    # Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;
    .param p2, "owner"    # Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;)V"
        }
    .end annotation

    .line 24
    .local p3, "privilegedApps":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/sdp/core/SdpDomain;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 27
    iput-object p3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    .line 28
    return-void
.end method

.method private matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 5
    .param p1, "domain1"    # Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .param p2, "domain2"    # Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 107
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 9
    .param p1, "privilegedApp"    # Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 54
    const/4 v0, 0x0

    .line 55
    .local v0, "ret":Z
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "candidateAlias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "candidatePkg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    .line 60
    :try_start_17
    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_36

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 61
    .local v4, "domain":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 63
    .local v5, "preExistingPkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_35

    .line 64
    const/4 v3, 0x0

    return v3

    .line 66
    .end local v4    # "domain":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .end local v5    # "preExistingPkg":Ljava/lang/String;
    :cond_35
    goto :goto_1d

    .line 67
    :cond_36
    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3c} :catch_3e

    move v0, v3

    .line 70
    goto :goto_42

    .line 68
    :catch_3e
    move-exception v3

    .line 69
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_42
    :goto_42
    return v0
.end method

.method public getAlias()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getOwner()Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    return-object v0
.end method

.method public getPrivilegedApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/sdp/core/SdpDomain;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    return-object v0
.end method

.method public isAuthorized(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 5
    .param p1, "domain"    # Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 115
    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 116
    .local v1, "element":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    invoke-direct {p0, p1, v1}, Lcom/android/server/sdp/engine/SdpPolicy;->matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 117
    const/4 v0, 0x1

    return v0

    .line 118
    .end local v1    # "element":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    :cond_1a
    goto :goto_6

    .line 120
    :cond_1b
    const/4 v0, 0x0

    return v0
.end method

.method public isOwner(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 3
    .param p1, "domain"    # Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 102
    iget-object v0, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-direct {p0, v0, p1}, Lcom/android/server/sdp/engine/SdpPolicy;->matches(Lcom/samsung/android/knox/sdp/core/SdpDomain;Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z

    move-result v0

    return v0
.end method

.method public removePrivilegedApp(Lcom/samsung/android/knox/sdp/core/SdpDomain;)Z
    .registers 9
    .param p1, "privilegedApp"    # Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 76
    const/4 v0, 0x0

    .line 77
    .local v0, "ret":Z
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getAlias()Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, "targetAlias":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 80
    .local v2, "targetPkg":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_41

    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    .line 82
    :try_start_17
    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 83
    .local v4, "domain":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    invoke-virtual {v4}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 85
    .local v5, "preExistingPkg":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3b

    .line 86
    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v3
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_39} :catch_3d

    move v0, v3

    .line 87
    goto :goto_3c

    .line 89
    .end local v4    # "domain":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    .end local v5    # "preExistingPkg":Ljava/lang/String;
    :cond_3b
    goto :goto_1d

    .line 92
    :cond_3c
    :goto_3c
    goto :goto_41

    .line 90
    :catch_3d
    move-exception v3

    .line 91
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_41
    :goto_41
    return v0
.end method

.method public serialize()[B
    .registers 4

    .line 32
    const/4 v0, 0x0

    .line 34
    .local v0, "out":Ljava/io/ObjectOutput;
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    .local v1, "bos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v0, v2

    .line 36
    invoke-interface {v0, p0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 37
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_13} :catch_14

    return-object v2

    .line 38
    .end local v1    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_14
    move-exception v1

    .line 39
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 42
    .end local v1    # "e":Ljava/io/IOException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 126
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "SdpPolicy {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alias:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mAlias:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    iget-object v2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    if-eqz v2, :cond_47

    .line 130
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mOwner:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mOwner:Lcom/samsung/android/knox/sdp/core/SdpDomain;

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    :cond_47
    iget-object v2, p0, Lcom/android/server/sdp/engine/SdpPolicy;->mPrivilegedApps:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_76

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/sdp/core/SdpDomain;

    .line 134
    .local v3, "element":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mPrivilegedApps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/samsung/android/knox/sdp/core/SdpDomain;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .end local v3    # "element":Lcom/samsung/android/knox/sdp/core/SdpDomain;
    goto :goto_4d

    .line 137
    :cond_76
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
