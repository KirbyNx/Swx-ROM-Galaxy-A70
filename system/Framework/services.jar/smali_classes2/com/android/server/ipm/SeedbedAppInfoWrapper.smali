.class public Lcom/android/server/ipm/SeedbedAppInfoWrapper;
.super Ljava/lang/Object;
.source "SeedbedAppInfoWrapper.java"


# static fields
.field private static MAX_SIZE:I

.field private static mBlackList:[Ljava/lang/String;


# instance fields
.field private DEBUG:Z

.field private TAG:Ljava/lang/String;

.field private mAppInfoLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/ipm/SeedbedAppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 16
    const/16 v0, 0xa

    sput v0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->MAX_SIZE:I

    .line 19
    const-string v0, "com.sec.android.app.tinym"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mBlackList:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string/jumbo v0, "seedbed-SeedbedAppInfoWrapper"

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    .line 14
    sget-boolean v0, Lcom/android/server/ipm/SeedbedPreloadController;->DEBUG:Z

    iput-boolean v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    .line 25
    return-void
.end method

.method private isAppInfoListsMax()Z
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sget v1, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->MAX_SIZE:I

    if-lt v0, v1, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isEmpty()Z
    .registers 2

    .line 160
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    if-nez v0, :cond_6

    .line 161
    const/4 v0, 0x0

    return v0

    .line 162
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public deleteAllAppInfoFromList()V
    .registers 3

    .line 146
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    monitor-enter v0

    .line 147
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 148
    monitor-exit v0

    .line 149
    return-void

    .line 148
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method public deleteAppInfoFromLists(ILjava/lang/String;)I
    .registers 9
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 94
    iget-boolean v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    if-eqz v0, :cond_22

    .line 95
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAppInfoFromLists uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkgname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_22
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    monitor-enter v0

    .line 97
    :try_start_25
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isEmpty()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2e

    .line 98
    monitor-exit v0

    return v2

    .line 99
    :cond_2e
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_36
    if-ltz v1, :cond_87

    .line 100
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ipm/SeedbedAppInfo;

    .line 101
    .local v3, "sdInfo":Lcom/android/server/ipm/SeedbedAppInfo;
    invoke-virtual {v3}, Lcom/android/server/ipm/SeedbedAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-virtual {v3}, Lcom/android/server/ipm/SeedbedAppInfo;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_84

    .line 102
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-boolean v2, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    if-eqz v2, :cond_82

    .line 104
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/ipm/SeedbedAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    .line 105
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    :cond_82
    monitor-exit v0

    return v1

    .line 99
    .end local v3    # "sdInfo":Lcom/android/server/ipm/SeedbedAppInfo;
    :cond_84
    add-int/lit8 v1, v1, -0x1

    goto :goto_36

    .line 109
    .end local v1    # "i":I
    :cond_87
    monitor-exit v0

    .line 110
    return v2

    .line 109
    :catchall_89
    move-exception v1

    monitor-exit v0
    :try_end_8b
    .catchall {:try_start_25 .. :try_end_8b} :catchall_89

    throw v1
.end method

.method public deleteAppInfoFromListsByIndex(I)V
    .registers 6
    .param p1, "index"    # I

    .line 114
    iget-boolean v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 115
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAppInfoFromListsByIndex "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :cond_1a
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    monitor-enter v0

    .line 117
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 118
    monitor-exit v0

    return-void

    .line 119
    :cond_25
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 120
    iget-boolean v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    if-eqz v1, :cond_52

    .line 121
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "  len:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_52
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_54
    move-exception v1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_1d .. :try_end_56} :catchall_54

    throw v1
.end method

.method public deleteAppInfoFromListsByUser(I)V
    .registers 8
    .param p1, "userId"    # I

    .line 126
    iget-boolean v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 127
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleteAppInfoFromListsByUser "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_1a
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    monitor-enter v0

    .line 129
    :try_start_1d
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_25

    .line 130
    monitor-exit v0

    return-void

    .line 131
    :cond_25
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 132
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ipm/SeedbedAppInfo;>;"
    :goto_2b
    if-eqz v1, :cond_65

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 133
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/SeedbedAppInfo;

    .line 134
    .local v2, "info":Lcom/android/server/ipm/SeedbedAppInfo;
    invoke-virtual {v2}, Lcom/android/server/ipm/SeedbedAppInfo;->getUid()I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    if-ne v3, p1, :cond_46

    .line 135
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 137
    :cond_46
    iget-boolean v3, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    if-eqz v3, :cond_64

    .line 138
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delete user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/ipm/SeedbedAppInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .end local v2    # "info":Lcom/android/server/ipm/SeedbedAppInfo;
    :cond_64
    goto :goto_2b

    .line 140
    :cond_65
    iget-boolean v2, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    if-eqz v2, :cond_85

    .line 141
    iget-object v2, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delete user len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/ipm/SeedbedAppInfo;>;"
    :cond_85
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_87
    move-exception v1

    monitor-exit v0
    :try_end_89
    .catchall {:try_start_1d .. :try_end_89} :catchall_87

    throw v1
.end method

.method public dumpList(Ljava/io/PrintWriter;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 180
    const-string v0, "dump seedbed process app list: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    monitor-enter v0

    .line 182
    :try_start_8
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/SeedbedAppInfo;

    .line 183
    .local v2, "info":Lcom/android/server/ipm/SeedbedAppInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/ipm/SeedbedAppInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 184
    .end local v2    # "info":Lcom/android/server/ipm/SeedbedAppInfo;
    goto :goto_e

    .line 185
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_8 .. :try_end_34} :catchall_3a

    .line 186
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    return-void

    .line 185
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw v1
.end method

.method public getAppInfoByIndex(I)Lcom/android/server/ipm/SeedbedAppInfo;
    .registers 5
    .param p1, "index"    # I

    .line 32
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    monitor-enter v0

    .line 33
    :try_start_3
    invoke-direct {p0}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_c

    .line 34
    monitor-exit v0

    return-object v2

    .line 35
    :cond_c
    sget v1, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->MAX_SIZE:I

    if-ge p1, v1, :cond_1a

    .line 36
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/ipm/SeedbedAppInfo;

    monitor-exit v0

    return-object v1

    .line 38
    :cond_1a
    monitor-exit v0

    .line 39
    return-object v2

    .line 38
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public getAppInfoList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/ipm/SeedbedAppInfo;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    return-object v0
.end method

.method public getSize()I
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public insertAppInfoToLists(ILjava/lang/String;J)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 80
    iget-boolean v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 81
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "insertAppInfoToLists uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkgname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :cond_23
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    monitor-enter v0

    .line 83
    :try_start_26
    invoke-virtual {p0, p2, p1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->isAppInfoListsExist(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_36

    .line 84
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    new-instance v2, Lcom/android/server/ipm/SeedbedAppInfo;

    invoke-direct {v2, p3, p4, p2, p1}, Lcom/android/server/ipm/SeedbedAppInfo;-><init>(JLjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_36
    monitor-exit v0

    .line 86
    return-void

    .line 85
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_26 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method public isAppInfoListsExist(Ljava/lang/String;I)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 51
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    monitor-enter v0

    .line 52
    :try_start_3
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/ipm/SeedbedAppInfo;

    .line 53
    .local v2, "info":Lcom/android/server/ipm/SeedbedAppInfo;
    invoke-virtual {v2}, Lcom/android/server/ipm/SeedbedAppInfo;->getUid()I

    move-result v3

    if-ne v3, p2, :cond_4b

    .line 54
    invoke-virtual {v2}, Lcom/android/server/ipm/SeedbedAppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 55
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppInfoLists uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " pkgname:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 58
    .end local v2    # "info":Lcom/android/server/ipm/SeedbedAppInfo;
    :cond_4b
    goto :goto_9

    .line 59
    :cond_4c
    monitor-exit v0

    .line 60
    const/4 v0, 0x0

    return v0

    .line 59
    :catchall_4f
    move-exception v1

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw v1
.end method

.method public isBlackListApp(Ljava/lang/String;)Z
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mBlackList:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 44
    const/4 v0, 0x1

    return v0

    .line 46
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public isFull()Z
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    if-eqz v0, :cond_e

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 168
    .local v0, "len":I
    sget v1, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->MAX_SIZE:I

    if-lt v0, v1, :cond_e

    .line 169
    const/4 v1, 0x1

    return v1

    .line 172
    .end local v0    # "len":I
    :cond_e
    const/4 v0, 0x0

    return v0
.end method

.method public setSeedbedListSize(I)V
    .registers 2
    .param p1, "size"    # I

    .line 176
    sput p1, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->MAX_SIZE:I

    .line 177
    return-void
.end method

.method public updateAppInfoToLists(ILjava/lang/String;J)V
    .registers 8
    .param p1, "uid"    # I
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "time"    # J

    .line 64
    iget-boolean v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->DEBUG:Z

    if-eqz v0, :cond_23

    .line 65
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAppInfoToLists uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pkgname:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_23
    iget-object v0, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    monitor-enter v0

    .line 67
    const/4 v1, 0x0

    :try_start_27
    invoke-virtual {p0, v1}, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->deleteAppInfoFromListsByIndex(I)V

    .line 68
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedAppInfoWrapper;->mAppInfoLists:Ljava/util/List;

    new-instance v2, Lcom/android/server/ipm/SeedbedAppInfo;

    invoke-direct {v2, p3, p4, p2, p1}, Lcom/android/server/ipm/SeedbedAppInfo;-><init>(JLjava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 69
    :catchall_36
    move-exception v1

    monitor-exit v0
    :try_end_38
    .catchall {:try_start_27 .. :try_end_38} :catchall_36

    throw v1
.end method
