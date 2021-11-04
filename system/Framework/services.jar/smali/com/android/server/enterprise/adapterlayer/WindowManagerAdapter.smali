.class public Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;
.super Ljava/lang/Object;
.source "WindowManagerAdapter.java"


# static fields
.field private static final DBG:Z = true

.field private static final PRESS_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WindowManagerAdapter"

.field private static sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;


# instance fields
.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 48
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Integer;

    .line 49
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 50
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v1

    .line 51
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    .line 48
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->PRESS_TYPES:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 55
    return-void
.end method

.method private clearAllConfiguration(II)V
    .registers 9
    .param p1, "priority"    # I
    .param p2, "keyCode"    # I

    .line 100
    const-string v0, "WindowManagerAdapter"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 107
    .local v1, "token":J
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearKeyCustomizeEventByKeyCode with priority/keyCode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    const/4 v4, 0x1

    invoke-interface {v3, p1, p2, v4}, Landroid/view/IWindowManager;->clearKeyCustomizeEventByKeyCode(IIZ)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_28} :catch_2b
    .catchall {:try_start_6 .. :try_end_28} :catchall_29

    goto :goto_40

    .line 114
    :catchall_29
    move-exception v0

    goto :goto_45

    .line 111
    :catch_2b
    move-exception v3

    .line 112
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "fail to clearAllConfiguration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_29

    .line 114
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    nop

    .line 116
    return-void

    .line 114
    :goto_45
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    throw v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;
    .registers 2

    const-class v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    monitor-enter v0

    .line 58
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    if-nez v1, :cond_e

    .line 59
    new-instance v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    invoke-direct {v1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;

    .line 61
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->sInstance:Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 57
    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getKeyCustomizeEvent(ILjava/lang/Integer;)Landroid/view/WindowManager$KeyCustomizeInfo;
    .registers 10
    .param p1, "keyCode"    # I
    .param p2, "pressType"    # Ljava/lang/Integer;

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "keyCustomizeInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 150
    .local v1, "token":J
    :try_start_5
    iget-object v3, p0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    .line 151
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 150
    invoke-interface {v3, v4, p1}, Landroid/view/IWindowManager;->getKeyCustomizeEvent(II)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v3
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_f} :catch_16
    .catchall {:try_start_5 .. :try_end_f} :catchall_14

    move-object v0, v3

    .line 155
    :goto_10
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    goto :goto_2e

    .line 155
    :catchall_14
    move-exception v3

    goto :goto_2f

    .line 152
    :catch_16
    move-exception v3

    .line 153
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_17
    const-string v4, "WindowManagerAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fail to getKeyCustomizeEvent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_17 .. :try_end_2d} :catchall_14

    .end local v3    # "e":Landroid/os/RemoteException;
    goto :goto_10

    .line 157
    :goto_2e
    return-object v0

    .line 155
    :goto_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 156
    throw v3
.end method

.method private keyCustomizeInfoToString(Landroid/view/WindowManager$KeyCustomizeInfo;)Ljava/lang/String;
    .registers 6
    .param p1, "keyCustomizeInfo"    # Landroid/view/WindowManager$KeyCustomizeInfo;

    .line 84
    const/16 v0, 0xff

    .line 85
    .local v0, "LENGTH_LIMIT":I
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0xff

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 86
    .local v1, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "priority/keyCode/action/dispatching/intent : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    iget v2, p1, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget v3, p1, Landroid/view/WindowManager$KeyCustomizeInfo;->keyCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    iget v3, p1, Landroid/view/WindowManager$KeyCustomizeInfo;->action:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    iget v3, p1, Landroid/view/WindowManager$KeyCustomizeInfo;->dispatching:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v2, p1, Landroid/view/WindowManager$KeyCustomizeInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private putKeyCustomizeEvent(IIILandroid/content/Intent;III)V
    .registers 21
    .param p1, "priority"    # I
    .param p2, "keyCode"    # I
    .param p3, "action"    # I
    .param p4, "intent"    # Landroid/content/Intent;
    .param p5, "dispatching"    # I
    .param p6, "pressType"    # I
    .param p7, "userId"    # I

    .line 66
    move-object v1, p0

    move/from16 v2, p6

    const-string v3, "WindowManagerAdapter"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 68
    .local v4, "token":J
    :try_start_9
    new-instance v0, Landroid/view/WindowManager$KeyCustomizeInfo;

    move-object v6, v0

    move v7, p1

    move v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p7

    invoke-direct/range {v6 .. v12}, Landroid/view/WindowManager$KeyCustomizeInfo;-><init>(IIILandroid/content/Intent;II)V

    .line 72
    .local v0, "keyCustomizeInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putKeyCustomizeEvent with pressType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {p0, v0}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->keyCustomizeInfoToString(Landroid/view/WindowManager$KeyCustomizeInfo;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-static {v3, v6}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v6, v1, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v6, v2, v0}, Landroid/view/IWindowManager;->putKeyCustomizeEvent(ILandroid/view/WindowManager$KeyCustomizeInfo;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_3f} :catch_42
    .catchall {:try_start_9 .. :try_end_3f} :catchall_40

    .end local v0    # "keyCustomizeInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    goto :goto_57

    .line 79
    :catchall_40
    move-exception v0

    goto :goto_5c

    .line 76
    :catch_42
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :try_start_43
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail to putKeyCustomizeEvent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_57
    .catchall {:try_start_43 .. :try_end_57} :catchall_40

    .line 79
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_57
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    nop

    .line 81
    return-void

    .line 79
    :goto_5c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    throw v0
.end method


# virtual methods
.method public blockKeyCode(I)V
    .registers 10
    .param p1, "hwKeyId"    # I

    .line 119
    const/16 v1, 0x32

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x3

    const/4 v7, -0x2

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->putKeyCustomizeEvent(IIILandroid/content/Intent;III)V

    .line 122
    return-void
.end method

.method public clearAllConfiguration(I)V
    .registers 3
    .param p1, "keyCode"    # I

    .line 132
    const/16 v0, 0x32

    invoke-direct {p0, v0, p1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->clearAllConfiguration(II)V

    .line 133
    return-void
.end method

.method public customizeKeyCode(Ljava/util/Set;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/enterprise/common/KeyCustomInfo;",
            ">;)V"
        }
    .end annotation

    .line 125
    .local p1, "keyCustomInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/server/enterprise/common/KeyCustomInfo;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/common/KeyCustomInfo;

    .line 126
    .local v1, "each":Lcom/android/server/enterprise/common/KeyCustomInfo;
    invoke-virtual {v1}, Lcom/android/server/enterprise/common/KeyCustomInfo;->getPriority()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/server/enterprise/common/KeyCustomInfo;->getKeyCode()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/enterprise/common/KeyCustomInfo;->getAction()I

    move-result v5

    .line 127
    invoke-virtual {v1}, Lcom/android/server/enterprise/common/KeyCustomInfo;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/enterprise/common/KeyCustomInfo;->getDispatching()I

    move-result v7

    invoke-virtual {v1}, Lcom/android/server/enterprise/common/KeyCustomInfo;->getPressType()I

    move-result v8

    invoke-virtual {v1}, Lcom/android/server/enterprise/common/KeyCustomInfo;->getUserId()I

    move-result v9

    .line 126
    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->putKeyCustomizeEvent(IIILandroid/content/Intent;III)V

    .line 128
    .end local v1    # "each":Lcom/android/server/enterprise/common/KeyCustomInfo;
    goto :goto_4

    .line 129
    :cond_31
    return-void
.end method

.method public hasConfigurations(I)Z
    .registers 7
    .param p1, "keyCode"    # I

    .line 136
    sget-object v0, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->PRESS_TYPES:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 137
    .local v1, "pressType":Ljava/lang/Integer;
    invoke-direct {p0, p1, v1}, Lcom/android/server/enterprise/adapterlayer/WindowManagerAdapter;->getKeyCustomizeEvent(ILjava/lang/Integer;)Landroid/view/WindowManager$KeyCustomizeInfo;

    move-result-object v2

    .line 138
    .local v2, "keyCustomizeInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    if-eqz v2, :cond_20

    iget v3, v2, Landroid/view/WindowManager$KeyCustomizeInfo;->priority:I

    const/16 v4, 0x32

    if-ne v3, v4, :cond_20

    .line 140
    const/4 v0, 0x1

    return v0

    .line 142
    .end local v1    # "pressType":Ljava/lang/Integer;
    .end local v2    # "keyCustomizeInfo":Landroid/view/WindowManager$KeyCustomizeInfo;
    :cond_20
    goto :goto_6

    .line 143
    :cond_21
    const/4 v0, 0x0

    return v0
.end method
