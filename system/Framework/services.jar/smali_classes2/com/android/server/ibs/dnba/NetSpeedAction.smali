.class public Lcom/android/server/ibs/dnba/NetSpeedAction;
.super Ljava/lang/Object;
.source "NetSpeedAction.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetSpeedAction"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsSetRule:Z

.field public mLastLimitSpeed:I

.field private mNetSpeedLogger:Lcom/android/server/ibs/dnba/NetSpeedLogger;

.field private mNwService:Landroid/os/INetworkManagementService;

.field final mRulesLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/ibs/dnba/NetSpeedLogger;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "netspeedlogger"    # Lcom/android/server/ibs/dnba/NetSpeedLogger;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mRulesLock:Ljava/lang/Object;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mIsSetRule:Z

    .line 41
    iput-object p1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNetSpeedLogger:Lcom/android/server/ibs/dnba/NetSpeedLogger;

    .line 43
    return-void
.end method

.method private addDumpLog(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/lang/String;)V
    .registers 5
    .param p1, "app"    # Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .param p2, "reason"    # Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mEndtime:Ljava/lang/String;

    .line 195
    invoke-virtual {p0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->getNetSpeedLimitStats()[Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "strings":[Ljava/lang/String;
    if-eqz v0, :cond_16

    .line 197
    const/4 v1, 0x0

    aget-object v1, v0, v1

    iput-object v1, p1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedPackage:Ljava/lang/String;

    .line 198
    const/4 v1, 0x1

    aget-object v1, v0, v1

    iput-object v1, p1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mDroppedBytes:Ljava/lang/String;

    .line 200
    :cond_16
    iput-object p2, p1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mReleasedReason:Ljava/lang/String;

    .line 201
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNetSpeedLogger:Lcom/android/server/ibs/dnba/NetSpeedLogger;

    invoke-virtual {v1, p1}, Lcom/android/server/ibs/dnba/NetSpeedLogger;->add(Lcom/android/server/ibs/dnba/NetSpeedStatus;)V

    .line 202
    return-void
.end method

.method private getCurrentTime()Ljava/lang/String;
    .registers 4

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 142
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 143
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const-string v2, "%tm-%td %tH:%tM:%tS.%tL"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getNetworkManagementService()Landroid/os/INetworkManagementService;
    .registers 3

    .line 131
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_13

    .line 132
    const-string/jumbo v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 133
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_13

    .line 134
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    .line 137
    .end local v0    # "binder":Landroid/os/IBinder;
    :cond_13
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method


# virtual methods
.method public enableLimitAction(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/util/List;I)V
    .registers 7
    .param p1, "app"    # Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .param p3, "maxLimitSpeed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;I)V"
        }
    .end annotation

    .line 147
    .local p2, "limitApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "limit app uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "current speed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "limit speed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mLastLimitSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetSpeedAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/server/ibs/dnba/NetSpeedStatus;->mStartTime:Ljava/lang/String;

    .line 149
    iget-boolean v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mIsSetRule:Z

    const/4 v2, 0x1

    if-nez v0, :cond_5d

    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mLastLimitSpeed:I

    if-nez v0, :cond_5d

    .line 150
    invoke-virtual {p0, p3, v2}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetSpeedLimit(IZ)Z

    move-result v0

    if-nez v0, :cond_5b

    .line 151
    const-string/jumbo v0, "set DNBA rule failed! "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 154
    :cond_5b
    iput p3, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mLastLimitSpeed:I

    .line 157
    :cond_5d
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 158
    invoke-virtual {p1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetUidRuleMap(IZ)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 159
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_70
    return-void
.end method

.method public getNetSpeedLimitStats()[Ljava/lang/String;
    .registers 7

    .line 95
    const-string v0, "NetSpeedAction"

    const-string v1, "getNetSpeedLimitStats start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_13

    .line 98
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_13

    .line 99
    const/4 v0, 0x0

    return-object v0

    .line 102
    :cond_13
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mRulesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 104
    :try_start_16
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getAdaptiveSpeedLimitNetworkStats()[Ljava/lang/String;

    move-result-object v1
    :try_end_1c
    .catch Ljava/lang/IllegalStateException; {:try_start_16 .. :try_end_1c} :catch_39
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1c} :catch_1f
    .catchall {:try_start_16 .. :try_end_1c} :catchall_1d

    .line 112
    .local v1, "strings":[Ljava/lang/String;
    goto :goto_52

    .line 111
    .end local v1    # "strings":[Ljava/lang/String;
    :catchall_1d
    move-exception v1

    goto :goto_54

    .line 108
    :catch_1f
    move-exception v1

    .line 109
    .local v1, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    .line 110
    .local v2, "strings":[Ljava/lang/String;
    :try_start_21
    const-string v3, "NetSpeedAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetSpeedLimitStats IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    move-object v1, v2

    .end local v1    # "e":Landroid/os/RemoteException;
    goto :goto_52

    .line 105
    .end local v2    # "strings":[Ljava/lang/String;
    :catch_39
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    .line 107
    .restart local v2    # "strings":[Ljava/lang/String;
    const-string v3, "NetSpeedAction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNetSpeedLimitStats IllegalStateException"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catchall {:try_start_21 .. :try_end_51} :catchall_1d

    .line 112
    move-object v1, v2

    .line 113
    .end local v2    # "strings":[Ljava/lang/String;
    .local v1, "strings":[Ljava/lang/String;
    :goto_52
    :try_start_52
    monitor-exit v0

    .line 114
    return-object v1

    .line 112
    .end local v1    # "strings":[Ljava/lang/String;
    :goto_54
    nop

    .end local p0    # "this":Lcom/android/server/ibs/dnba/NetSpeedAction;
    throw v1

    .line 113
    .restart local p0    # "this":Lcom/android/server/ibs/dnba/NetSpeedAction;
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_52 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public releaseLimitAction(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/util/List;Ljava/lang/String;)Z
    .registers 6
    .param p1, "app"    # Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .param p3, "reason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 165
    .local p2, "limitApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "release app uid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "current speed = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getCurSpeed()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "limit speed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mLastLimitSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NetSpeedAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-direct {p0, p1, p3}, Lcom/android/server/ibs/dnba/NetSpeedAction;->addDumpLog(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/lang/String;)V

    .line 167
    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 168
    invoke-virtual {p1}, Lcom/android/server/ibs/dnba/NetSpeedStatus;->getUid()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetUidRuleMap(IZ)Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 169
    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 171
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_6b

    .line 172
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mLastLimitSpeed:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetSpeedLimit(IZ)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 173
    iput-boolean v1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mIsSetRule:Z

    .line 174
    iput v1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mLastLimitSpeed:I

    goto :goto_6b

    .line 175
    :cond_69
    return v1

    .line 170
    :cond_6a
    return v1

    .line 178
    :cond_6b
    :goto_6b
    const/4 v0, 0x1

    return v0
.end method

.method public setDropRule(IZ)Z
    .registers 5
    .param p1, "speed"    # I
    .param p2, "allow"    # Z

    .line 118
    const-string v0, "NetSpeedAction"

    const-string v1, "controlBgSpeedLimitDropRule start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "isSucess":Z
    invoke-virtual {p0, p1, p2}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetSpeedLimit(IZ)Z

    move-result v0

    .line 121
    return v0
.end method

.method public setNetSpeedLimit(IZ)Z
    .registers 6
    .param p1, "speed"    # I
    .param p2, "allow"    # Z

    .line 46
    const-string v0, "NetSpeedAction"

    const-string/jumbo v1, "setAdaptiveSpeedLimit start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    if-nez v0, :cond_14

    .line 48
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_14

    .line 49
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_14
    const/4 v0, 0x0

    .line 54
    .local v0, "isSucess":Z
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 57
    :try_start_18
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setAdaptiveSpeedLimitRule(IZ)Z

    move-result v2
    :try_end_1e
    .catch Ljava/lang/IllegalStateException; {:try_start_18 .. :try_end_1e} :catch_26
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_23
    .catchall {:try_start_18 .. :try_end_1e} :catchall_20

    move v0, v2

    goto :goto_28

    .line 63
    :catchall_20
    move-exception v2

    .line 65
    nop

    .end local v0    # "isSucess":Z
    .end local p0    # "this":Lcom/android/server/ibs/dnba/NetSpeedAction;
    .end local p1    # "speed":I
    .end local p2    # "allow":Z
    :try_start_22
    throw v2

    .line 60
    .restart local v0    # "isSucess":Z
    .restart local p0    # "this":Lcom/android/server/ibs/dnba/NetSpeedAction;
    .restart local p1    # "speed":I
    .restart local p2    # "allow":Z
    :catch_23
    move-exception v2

    .line 62
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_28

    .line 58
    :catch_26
    move-exception v2

    .line 59
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 65
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_28
    nop

    .line 66
    monitor-exit v1

    .line 67
    return v0

    .line 66
    :catchall_2b
    move-exception v2

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw v2
.end method

.method public setNetUidRuleMap(IZ)Z
    .registers 6
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .line 71
    iget-object v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 72
    invoke-direct {p0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->getNetworkManagementService()Landroid/os/INetworkManagementService;

    move-result-object v0

    if-nez v0, :cond_c

    .line 73
    return v1

    .line 77
    :cond_c
    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 78
    return v1

    .line 80
    :cond_13
    const/4 v0, 0x0

    .line 81
    .local v0, "isSucess":Z
    iget-object v1, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mRulesLock:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_17
    iget-object v2, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mNwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->setLimitUidRuleMap(IZ)Z

    move-result v2
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_17 .. :try_end_1d} :catch_25
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_22
    .catchall {:try_start_17 .. :try_end_1d} :catchall_1f

    move v0, v2

    goto :goto_27

    .line 88
    :catchall_1f
    move-exception v2

    .line 90
    nop

    .end local v0    # "isSucess":Z
    .end local p0    # "this":Lcom/android/server/ibs/dnba/NetSpeedAction;
    .end local p1    # "uid":I
    .end local p2    # "allow":Z
    :try_start_21
    throw v2

    .line 86
    .restart local v0    # "isSucess":Z
    .restart local p0    # "this":Lcom/android/server/ibs/dnba/NetSpeedAction;
    .restart local p1    # "uid":I
    .restart local p2    # "allow":Z
    :catch_22
    move-exception v2

    .line 87
    .local v2, "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_27

    .line 84
    :catch_25
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/IllegalStateException;
    const/4 v0, 0x0

    .line 90
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    :goto_27
    nop

    .line 91
    monitor-exit v1

    .line 92
    return v0

    .line 91
    :catchall_2a
    move-exception v2

    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2a

    throw v2
.end method

.method public setReturnRule(IZ)Z
    .registers 4
    .param p1, "uid"    # I
    .param p2, "allow"    # Z

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetUidRuleMap(IZ)Z

    move-result v0

    return v0
.end method

.method public updateLimitAction(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/util/List;I)V
    .registers 6
    .param p1, "app"    # Lcom/android/server/ibs/dnba/NetSpeedStatus;
    .param p3, "limitSpeed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            "Ljava/util/List<",
            "Lcom/android/server/ibs/dnba/NetSpeedStatus;",
            ">;I)V"
        }
    .end annotation

    .line 182
    .local p2, "limitApps":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/ibs/dnba/NetSpeedStatus;>;"
    const-string v0, "NetSpeedAction"

    const-string v1, "Update Limit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-direct {p0, p1, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->addDumpLog(Lcom/android/server/ibs/dnba/NetSpeedStatus;Ljava/lang/String;)V

    .line 184
    iget v0, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mLastLimitSpeed:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetSpeedLimit(IZ)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    .line 185
    :cond_14
    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/android/server/ibs/dnba/NetSpeedAction;->setNetSpeedLimit(IZ)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 186
    iput p3, p0, Lcom/android/server/ibs/dnba/NetSpeedAction;->mLastLimitSpeed:I

    .line 190
    return-void

    .line 188
    :cond_1e
    return-void
.end method
