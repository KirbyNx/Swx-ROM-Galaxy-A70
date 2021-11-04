.class public Lcom/android/server/am/ProcessCpusetController;
.super Ljava/lang/Object;
.source "ProcessCpusetController.java"


# static fields
.field public static final FGS_GROUP_BACKGROUND:I = 0x2

.field public static final FGS_GROUP_DEFAULT:I = 0x0

.field public static final FGS_GROUP_MODERATE:I = 0x1

.field static final TAG:Ljava/lang/String;

.field private static mController:Lcom/android/server/am/ProcessCpusetController;


# instance fields
.field private final mAm:Lcom/android/server/am/ActivityManagerService;

.field private final mContext:Landroid/content/Context;

.field private final mSystemPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 31
    const-class v0, Lcom/android/server/am/ProcessCpusetController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ProcessCpusetController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 47
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/ProcessCpusetController;->mContext:Landroid/content/Context;

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessCpusetController;->mSystemPackage:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static getController()Lcom/android/server/am/ProcessCpusetController;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/server/am/ProcessCpusetController;->mController:Lcom/android/server/am/ProcessCpusetController;

    return-object v0
.end method

.method static getController(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/ProcessCpusetController;
    .registers 2
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    .line 62
    invoke-static {p0}, Lcom/android/server/am/ProcessCpusetController;->prepareController(Lcom/android/server/am/ActivityManagerService;)V

    .line 63
    invoke-static {}, Lcom/android/server/am/ProcessCpusetController;->getController()Lcom/android/server/am/ProcessCpusetController;

    move-result-object v0

    return-object v0
.end method

.method private hasOngoingNotifcation(Ljava/lang/String;)Z
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .line 157
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    .line 158
    .local v0, "inm":Landroid/app/INotificationManager;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 159
    return v1

    .line 161
    :cond_8
    :try_start_8
    iget-object v2, p0, Lcom/android/server/am/ProcessCpusetController;->mSystemPackage:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 162
    .local v2, "actives":[Landroid/service/notification/StatusBarNotification;
    if-nez v2, :cond_11

    .line 163
    return v1

    .line 164
    :cond_11
    array-length v3, v2

    move v4, v1

    :goto_13
    if-ge v4, v3, :cond_33

    aget-object v5, v2, v4

    .line 165
    .local v5, "sbn":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 166
    .local v6, "notiPackage":Ljava/lang/String;
    if-eqz v6, :cond_30

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_24

    .line 167
    goto :goto_30

    .line 168
    :cond_24
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    iget v7, v7, Landroid/app/Notification;->flags:I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_34

    and-int/lit8 v7, v7, 0x22

    if-eqz v7, :cond_30

    .line 169
    const/4 v1, 0x1

    return v1

    .line 164
    .end local v5    # "sbn":Landroid/service/notification/StatusBarNotification;
    .end local v6    # "notiPackage":Ljava/lang/String;
    :cond_30
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 173
    .end local v2    # "actives":[Landroid/service/notification/StatusBarNotification;
    :cond_33
    goto :goto_38

    .line 171
    :catch_34
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_38
    return v1
.end method

.method private isAllowSlowdownKill(Lcom/android/server/am/ProcessRecord;Z)Z
    .registers 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "abnormal"    # Z

    .line 145
    const/4 v0, 0x0

    if-eqz p2, :cond_8

    iget-boolean v1, p1, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    if-nez v1, :cond_8

    return v0

    .line 146
    :cond_8
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setAdj:I

    const/16 v2, 0x1f4

    if-ge v1, v2, :cond_f

    return v0

    .line 147
    :cond_f
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_18

    return v0

    .line 149
    :cond_18
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_2d

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2d

    .line 150
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessCpusetController;->hasOngoingNotifcation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 151
    return v0

    .line 153
    :cond_2d
    const/4 v0, 0x1

    return v0
.end method

.method static declared-synchronized prepareController(Lcom/android/server/am/ActivityManagerService;)V
    .registers 3
    .param p0, "service"    # Lcom/android/server/am/ActivityManagerService;

    const-class v0, Lcom/android/server/am/ProcessCpusetController;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/android/server/am/ProcessCpusetController;->mController:Lcom/android/server/am/ProcessCpusetController;

    if-nez v1, :cond_13

    if-nez p0, :cond_a

    goto :goto_13

    .line 54
    :cond_a
    new-instance v1, Lcom/android/server/am/ProcessCpusetController;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessCpusetController;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v1, Lcom/android/server/am/ProcessCpusetController;->mController:Lcom/android/server/am/ProcessCpusetController;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    .line 55
    monitor-exit v0

    return-void

    .line 53
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    .line 51
    .end local p0    # "service":Lcom/android/server/am/ActivityManagerService;
    :catchall_15
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public resetAbnormalList()V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 68
    iget-object v1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v1, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_12
    if-ltz v1, :cond_28

    .line 69
    iget-object v2, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 70
    .local v2, "proc":Lcom/android/server/am/ProcessRecord;
    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    iput-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    .line 68
    .end local v2    # "proc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    .line 72
    .end local v1    # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_slowdown"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 73
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_3 .. :try_end_31} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 74
    return-void

    .line 73
    :catchall_35
    move-exception v1

    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setFGSGroup(II)Z
    .registers 8
    .param p1, "uid"    # I
    .param p2, "group"    # I

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_4
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 134
    iget-object v2, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v2, v2, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 135
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_25

    .line 136
    iput p2, v2, Lcom/android/server/am/UidRecord;->FGSGroup:I

    .line 137
    iget-object v3, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v4, "updateOomAdj_slowdown"

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 138
    const/4 v0, 0x1

    .line 140
    .end local v2    # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_4 .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 141
    return v0

    .line 140
    :catchall_2a
    move-exception v2

    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public setProcessSlowdown(ILjava/lang/String;)Z
    .registers 14
    .param p1, "pid"    # I
    .param p2, "type"    # Ljava/lang/String;

    .line 78
    const-string v0, "abnormal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 79
    .local v0, "abnormal":Z
    const-string/jumbo v1, "kill"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 80
    .local v1, "kill":Z
    const-string/jumbo v2, "stay"

    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 81
    .local v2, "stay":Z
    const-string/jumbo v3, "release"

    invoke-virtual {p2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    .line 83
    .local v3, "release":Z
    const/4 v4, 0x0

    if-nez v0, :cond_62

    if-nez v1, :cond_62

    if-nez v2, :cond_62

    if-nez v3, :cond_62

    .line 84
    sget-object v5, Lcom/android/server/am/ProcessCpusetController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slowdown: pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " abnormal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " kill="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " stay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " release="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    sget-object v5, Lcom/android/server/am/ProcessCpusetController;->TAG:Ljava/lang/String;

    const-string v6, "Slowdown: Value is not set. type needs at least 1 target group."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return v4

    .line 89
    :cond_62
    sget-object v5, Lcom/android/server/am/ProcessCpusetController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Slowdown: pid : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " abnormal="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " kill="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " stay="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " release="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v5, 0x0

    .line 92
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v6, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_9c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 93
    iget-object v7, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v7, v7, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    .local v7, "i":I
    :goto_ab
    if-ltz v7, :cond_c2

    .line 94
    iget-object v9, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v9, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/ProcessRecord;

    .line 95
    .local v9, "proc":Lcom/android/server/am/ProcessRecord;
    iget v10, v9, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v10, p1, :cond_bf

    .line 96
    move-object v5, v9

    .line 97
    goto :goto_c2

    .line 93
    .end local v9    # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_bf
    add-int/lit8 v7, v7, -0x1

    goto :goto_ab

    .line 100
    .end local v7    # "i":I
    :cond_c2
    :goto_c2
    monitor-exit v6
    :try_end_c3
    .catchall {:try_start_9c .. :try_end_c3} :catchall_130

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 101
    if-nez v5, :cond_e4

    .line 102
    sget-object v6, Lcom/android/server/am/ProcessCpusetController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Slowdown: pid "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is nonexistent"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return v4

    .line 105
    :cond_e4
    if-eqz v1, :cond_108

    .line 106
    invoke-direct {p0, v5, v0}, Lcom/android/server/am/ProcessCpusetController;->isAllowSlowdownKill(Lcom/android/server/am/ProcessRecord;Z)Z

    move-result v4

    if-eqz v4, :cond_117

    .line 107
    iget-object v4, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_ef
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 108
    iget-boolean v6, v5, Lcom/android/server/am/ProcessRecord;->killed:Z

    if-nez v6, :cond_fd

    .line 109
    sget-object v6, Lcom/android/server/am/ProcessCpusetController;->TAG:Ljava/lang/String;

    const-string v7, "Do nothing"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_fd
    monitor-exit v4
    :try_end_fe
    .catchall {:try_start_ef .. :try_end_fe} :catchall_102

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_117

    :catchall_102
    move-exception v6

    :try_start_103
    monitor-exit v4
    :try_end_104
    .catchall {:try_start_103 .. :try_end_104} :catchall_102

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 114
    :cond_108
    if-eqz v3, :cond_111

    .line 115
    if-eqz v0, :cond_117

    .line 116
    iput-boolean v4, v5, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    iput-boolean v4, v5, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    goto :goto_117

    .line 118
    :cond_111
    if-eqz v0, :cond_117

    .line 119
    iput-boolean v8, v5, Lcom/android/server/am/ProcessRecord;->slowAbnormal:Z

    .line 120
    iput-boolean v2, v5, Lcom/android/server/am/ProcessRecord;->slowAbnormalStay:Z

    .line 124
    :cond_117
    :goto_117
    iget-object v4, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_11a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 125
    iget-object v6, p0, Lcom/android/server/am/ProcessCpusetController;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v7, "updateOomAdj_slowdown"

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 126
    monitor-exit v4
    :try_end_126
    .catchall {:try_start_11a .. :try_end_126} :catchall_12a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 128
    return v8

    .line 126
    :catchall_12a
    move-exception v6

    :try_start_12b
    monitor-exit v4
    :try_end_12c
    .catchall {:try_start_12b .. :try_end_12c} :catchall_12a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v6

    .line 100
    :catchall_130
    move-exception v4

    :try_start_131
    monitor-exit v6
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_130

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4
.end method
