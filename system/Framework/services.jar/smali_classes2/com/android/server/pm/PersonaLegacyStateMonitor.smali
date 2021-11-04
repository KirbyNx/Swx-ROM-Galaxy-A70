.class public Lcom/android/server/pm/PersonaLegacyStateMonitor;
.super Ljava/lang/Object;
.source "PersonaLegacyStateMonitor.java"


# static fields
.field private static final MDM_ENTERPRISE_CONTAINER_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field private static final TAG:Ljava/lang/String; = "PersonaManagerService::LegacyStateMonitor"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mObserverList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/ISystemPersonaObserver;",
            ">;"
        }
    .end annotation
.end field

.field mStateMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/samsung/android/knox/SemPersonaState;",
            ">;"
        }
    .end annotation
.end field

.field private mUserManager:Landroid/os/UserManager;

.field receiver:Landroid/os/ContainerStateReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "c"    # Landroid/content/Context;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 53
    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 288
    new-instance v0, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/PersonaLegacyStateMonitor$1;-><init>(Lcom/android/server/pm/PersonaLegacyStateMonitor;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->receiver:Landroid/os/ContainerStateReceiver;

    .line 60
    iput-object p1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    .line 61
    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    .line 62
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 63
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    .line 64
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 65
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 66
    invoke-virtual {p0}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->init()V

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/pm/PersonaLegacyStateMonitor;ILcom/samsung/android/knox/SemPersonaState;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/pm/PersonaLegacyStateMonitor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/samsung/android/knox/SemPersonaState;

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 47
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Lcom/android/server/enterprise/storage/EdmStorageProvider;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 47
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/pm/PersonaLegacyStateMonitor;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/pm/PersonaLegacyStateMonitor;

    .line 47
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/pm/PersonaLegacyStateMonitor;Ljava/lang/String;II)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/pm/PersonaLegacyStateMonitor;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForRemoveContainer(Ljava/lang/String;II)V

    return-void
.end method

.method private notifyStateChange(ILcom/samsung/android/knox/SemPersonaState;)V
    .registers 27
    .param p1, "id"    # I
    .param p2, "state"    # Lcom/samsung/android/knox/SemPersonaState;

    .line 102
    move-object/from16 v7, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemPersonaState;

    .line 103
    .local v0, "oldState":Lcom/samsung/android/knox/SemPersonaState;
    if-nez v0, :cond_18

    .line 104
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->INVALID:Lcom/samsung/android/knox/SemPersonaState;

    move-object v10, v0

    goto :goto_19

    .line 103
    :cond_18
    move-object v10, v0

    .line 106
    .end local v0    # "oldState":Lcom/samsung/android/knox/SemPersonaState;
    .local v10, "oldState":Lcom/samsung/android/knox/SemPersonaState;
    :goto_19
    if-ne v9, v10, :cond_1c

    .line 107
    return-void

    .line 109
    :cond_1c
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 110
    .local v0, "i":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStateChange(id:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") from old state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " i:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v11, "PersonaManagerService::LegacyStateMonitor"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_51
    if-lez v0, :cond_68

    .line 112
    add-int/lit8 v1, v0, -0x1

    .line 114
    .end local v0    # "i":I
    .local v1, "i":I
    :try_start_55
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ISystemPersonaObserver;

    invoke-interface {v0, v8, v10, v9}, Landroid/content/pm/ISystemPersonaObserver;->onStateChange(ILcom/samsung/android/knox/SemPersonaState;Lcom/samsung/android/knox/SemPersonaState;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_60} :catch_61

    goto :goto_65

    .line 115
    :catch_61
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 117
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_65
    nop

    .line 111
    move v0, v1

    goto :goto_51

    .line 119
    .end local v1    # "i":I
    .local v0, "i":I
    :cond_68
    iget-object v1, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 122
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.knox.container.action.observer"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v12, v1

    .line 123
    .local v12, "onStateChangeIntent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.sec.knox.container.category.observer.containerid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 124
    const-string v1, "com.sec.knox.container.category.observer.onstatechange"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    invoke-virtual/range {p2 .. p2}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.knox.container.extra.observer.newstate"

    invoke-virtual {v12, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 127
    invoke-virtual {v10}, Lcom/samsung/android/knox/SemPersonaState;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sec.knox.container.extra.observer.previousstate"

    invoke-virtual {v12, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    iget-object v1, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "com.samsung.container.OBSERVER"

    invoke-virtual {v1, v12, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 131
    const-string/jumbo v1, "propagateNewStateChange() sendBroadcast()"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v8}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getMUMContainerOwnerUid(I)I

    move-result v13

    .line 135
    .local v13, "ownerUid":I
    invoke-static {v13}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 137
    .local v14, "ownerId":I
    invoke-static {v10}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v15

    .line 138
    .local v15, "tOldState":I
    invoke-static/range {p2 .. p2}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I

    move-result v6

    .line 140
    .local v6, "tState":I
    const-string v5, " Package is "

    const/16 v16, 0x0

    if-eq v15, v6, :cond_152

    .line 141
    iget-object v1, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v4

    .line 142
    .local v4, "pkgNames":[Ljava/lang/String;
    const-string v3, "Sending admin lock intent to MDM for user "

    if-eqz v4, :cond_129

    .line 143
    array-length v2, v4

    move/from16 v1, v16

    :goto_d8
    if-ge v1, v2, :cond_11d

    move/from16 v17, v0

    .end local v0    # "i":I
    .local v17, "i":I
    aget-object v0, v4, v1

    .line 144
    .local v0, "pkgName":Ljava/lang/String;
    move/from16 v18, v1

    move-object/from16 v1, p0

    move/from16 v19, v2

    move-object v2, v0

    move-object/from16 v20, v12

    move-object v12, v3

    .end local v12    # "onStateChangeIntent":Landroid/content/Intent;
    .local v20, "onStateChangeIntent":Landroid/content/Intent;
    move/from16 v3, p1

    move-object/from16 v21, v4

    .end local v4    # "pkgNames":[Ljava/lang/String;
    .local v21, "pkgNames":[Ljava/lang/String;
    move v4, v14

    move/from16 v22, v13

    move-object v13, v5

    .end local v13    # "ownerUid":I
    .local v22, "ownerUid":I
    move v5, v15

    move/from16 v23, v6

    .end local v6    # "tState":I
    .local v23, "tState":I
    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v0    # "pkgName":Ljava/lang/String;
    add-int/lit8 v1, v18, 0x1

    move-object v3, v12

    move-object v5, v13

    move/from16 v0, v17

    move/from16 v2, v19

    move-object/from16 v12, v20

    move-object/from16 v4, v21

    move/from16 v13, v22

    goto :goto_d8

    .end local v17    # "i":I
    .end local v20    # "onStateChangeIntent":Landroid/content/Intent;
    .end local v21    # "pkgNames":[Ljava/lang/String;
    .end local v22    # "ownerUid":I
    .end local v23    # "tState":I
    .local v0, "i":I
    .restart local v4    # "pkgNames":[Ljava/lang/String;
    .restart local v6    # "tState":I
    .restart local v12    # "onStateChangeIntent":Landroid/content/Intent;
    .restart local v13    # "ownerUid":I
    :cond_11d
    move/from16 v17, v0

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v20, v12

    move/from16 v22, v13

    move-object v13, v5

    .end local v0    # "i":I
    .end local v4    # "pkgNames":[Ljava/lang/String;
    .end local v6    # "tState":I
    .end local v12    # "onStateChangeIntent":Landroid/content/Intent;
    .end local v13    # "ownerUid":I
    .restart local v17    # "i":I
    .restart local v20    # "onStateChangeIntent":Landroid/content/Intent;
    .restart local v21    # "pkgNames":[Ljava/lang/String;
    .restart local v22    # "ownerUid":I
    .restart local v23    # "tState":I
    goto :goto_15b

    .line 148
    .end local v17    # "i":I
    .end local v20    # "onStateChangeIntent":Landroid/content/Intent;
    .end local v21    # "pkgNames":[Ljava/lang/String;
    .end local v22    # "ownerUid":I
    .end local v23    # "tState":I
    .restart local v0    # "i":I
    .restart local v4    # "pkgNames":[Ljava/lang/String;
    .restart local v6    # "tState":I
    .restart local v12    # "onStateChangeIntent":Landroid/content/Intent;
    .restart local v13    # "ownerUid":I
    :cond_129
    move/from16 v17, v0

    move-object/from16 v21, v4

    move/from16 v23, v6

    move-object/from16 v20, v12

    move/from16 v22, v13

    move-object v12, v3

    move-object v13, v5

    .end local v0    # "i":I
    .end local v4    # "pkgNames":[Ljava/lang/String;
    .end local v6    # "tState":I
    .end local v12    # "onStateChangeIntent":Landroid/content/Intent;
    .end local v13    # "ownerUid":I
    .restart local v17    # "i":I
    .restart local v20    # "onStateChangeIntent":Landroid/content/Intent;
    .restart local v21    # "pkgNames":[Ljava/lang/String;
    .restart local v22    # "ownerUid":I
    .restart local v23    # "tState":I
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move/from16 v3, p1

    move v4, v14

    move v5, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendContainerStateChangeIntent(Ljava/lang/String;IIII)V

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15b

    .line 140
    .end local v17    # "i":I
    .end local v20    # "onStateChangeIntent":Landroid/content/Intent;
    .end local v21    # "pkgNames":[Ljava/lang/String;
    .end local v22    # "ownerUid":I
    .end local v23    # "tState":I
    .restart local v0    # "i":I
    .restart local v6    # "tState":I
    .restart local v12    # "onStateChangeIntent":Landroid/content/Intent;
    .restart local v13    # "ownerUid":I
    :cond_152
    move/from16 v17, v0

    move/from16 v23, v6

    move-object/from16 v20, v12

    move/from16 v22, v13

    move-object v13, v5

    .line 154
    .end local v0    # "i":I
    .end local v6    # "tState":I
    .end local v12    # "onStateChangeIntent":Landroid/content/Intent;
    .end local v13    # "ownerUid":I
    .restart local v17    # "i":I
    .restart local v20    # "onStateChangeIntent":Landroid/content/Intent;
    .restart local v22    # "ownerUid":I
    .restart local v23    # "tState":I
    :goto_15b
    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-ne v9, v0, :cond_19d

    sget-object v0, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    if-eq v10, v0, :cond_19d

    .line 155
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v1, v22

    .end local v22    # "ownerUid":I
    .local v1, "ownerUid":I
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "pkgNames":[Ljava/lang/String;
    if-eqz v0, :cond_198

    .line 157
    array-length v2, v0

    move/from16 v3, v16

    :goto_174
    if-ge v3, v2, :cond_19f

    aget-object v4, v0, v3

    .line 158
    .local v4, "pkgName":Ljava/lang/String;
    invoke-direct {v7, v4, v8, v14}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForAdminLock(Ljava/lang/String;II)V

    .line 159
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sending admin lock change intent to MDM for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v11, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    .end local v4    # "pkgName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_174

    .line 162
    :cond_198
    const/4 v2, 0x0

    invoke-direct {v7, v2, v8, v14}, Lcom/android/server/pm/PersonaLegacyStateMonitor;->sendIntentForAdminLock(Ljava/lang/String;II)V

    goto :goto_19f

    .line 154
    .end local v0    # "pkgNames":[Ljava/lang/String;
    .end local v1    # "ownerUid":I
    .restart local v22    # "ownerUid":I
    :cond_19d
    move/from16 v1, v22

    .line 165
    .end local v22    # "ownerUid":I
    .restart local v1    # "ownerUid":I
    :cond_19f
    :goto_19f
    iget-object v0, v7, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    return-void
.end method

.method private sendContainerStateChangeIntent(Ljava/lang/String;IIII)V
    .registers 13
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "containerId"    # I
    .param p3, "userId"    # I
    .param p4, "oldState"    # I
    .param p5, "newState"    # I

    .line 211
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 212
    .local v0, "intentNew":Landroid/content/Intent;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 213
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v1, "bundleNew":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 218
    const-string v2, "container_old_state"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    const-string v2, "container_new_state"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 221
    const-string/jumbo v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 222
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {v2, v0, v3, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 226
    if-eqz p1, :cond_58

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_58

    .line 227
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "kpuPkgName":Ljava/lang/String;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 229
    .local v3, "intentKPU":Landroid/content/Intent;
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    iget-object v5, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-direct {v6, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v3, v6, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 234
    .end local v2    # "kpuPkgName":Ljava/lang/String;
    .end local v3    # "intentKPU":Landroid/content/Intent;
    :cond_58
    return-void
.end method

.method private sendIntentForAdminLock(Ljava/lang/String;II)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "ownerId"    # I

    .line 237
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_ADMIN_LOCK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, "intentNew":Landroid/content/Intent;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 239
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    .local v1, "bundleNew":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 243
    const-string/jumbo v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 244
    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    if-eqz p1, :cond_35

    .line 245
    iget-object v3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_3c

    .line 248
    :cond_35
    iget-object v3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 252
    :goto_3c
    if-eqz p1, :cond_5a

    .line 253
    iget-object v3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, "kpuPkgName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 255
    .local v4, "intentKPU":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    iget-object v5, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v4, v6, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 260
    .end local v3    # "kpuPkgName":Ljava/lang/String;
    .end local v4    # "intentKPU":Landroid/content/Intent;
    :cond_5a
    return-void
.end method

.method private sendIntentForRemoveContainer(Ljava/lang/String;II)V
    .registers 12
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "personaId"    # I
    .param p3, "ownerId"    # I

    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.CONTAINER_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "intentNew":Landroid/content/Intent;
    if-eqz p1, :cond_12

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 265
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    :cond_12
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v1, "bundleNew":Landroid/os/Bundle;
    const-string v2, "containerid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 269
    const-string/jumbo v2, "intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 270
    const-string v2, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    if-eqz p1, :cond_35

    .line 271
    iget-object v3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto :goto_3c

    .line 274
    :cond_35
    iget-object v3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 278
    :goto_3c
    if-eqz p1, :cond_5a

    .line 279
    iget-object v3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mEdm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v3}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getKPUPackageName()Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "kpuPkgName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 281
    .local v4, "intentKPU":Landroid/content/Intent;
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    iget-object v5, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    new-instance v6, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v4, v6, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 286
    .end local v3    # "kpuPkgName":Ljava/lang/String;
    .end local v4    # "intentKPU":Landroid/content/Intent;
    :cond_5a
    return-void
.end method

.method private static translateStatus(Lcom/samsung/android/knox/SemPersonaState;)I
    .registers 4
    .param p0, "status"    # Lcom/samsung/android/knox/SemPersonaState;

    .line 170
    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 171
    :cond_4
    sget-object v1, Lcom/android/server/pm/PersonaLegacyStateMonitor$2;->$SwitchMap$com$samsung$android$knox$SemPersonaState:[I

    invoke-virtual {p0}, Lcom/samsung/android/knox/SemPersonaState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1c

    .line 205
    return v0

    .line 202
    :pswitch_10
    const/16 v0, 0x5e

    return v0

    .line 198
    :pswitch_13
    const/16 v0, 0x5d

    return v0

    .line 189
    :pswitch_16
    const/16 v0, 0x5b

    return v0

    .line 183
    :pswitch_19
    const/16 v0, 0x5f

    return v0

    :pswitch_data_1c
    .packed-switch 0x2
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_19
        :pswitch_16
        :pswitch_16
        :pswitch_13
        :pswitch_10
    .end packed-switch
.end method


# virtual methods
.method init()V
    .registers 8

    .line 70
    const-string v0, "PersonaManagerService::LegacyStateMonitor"

    const-string/jumbo v1, "initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 73
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 74
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 76
    .local v3, "ui":Landroid/content/pm/UserInfo;
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_2c

    goto :goto_1b

    .line 78
    :cond_2c
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 79
    iget v4, v3, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v4, v4, 0x8

    if-lez v4, :cond_46

    .line 80
    iget-object v4, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ADMIN_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    .line 81
    :cond_46
    iget v4, v3, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v4, v4, 0x10

    if-lez v4, :cond_5a

    .line 82
    iget-object v4, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->LICENSE_LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    .line 83
    :cond_5a
    iget v4, v3, Landroid/content/pm/UserInfo;->attributes:I

    and-int/lit8 v4, v4, 0x4

    if-lez v4, :cond_6e

    .line 84
    iget-object v4, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->TIMA_COMPROMISED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    .line 85
    :cond_6e
    iget-object v4, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v4

    if-nez v4, :cond_86

    .line 86
    iget-object v4, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->LOCKED:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9d

    .line 87
    :cond_86
    iget-object v4, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 88
    iget-object v4, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mStateMap:Ljava/util/HashMap;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v6, Lcom/samsung/android/knox/SemPersonaState;->ACTIVE:Lcom/samsung/android/knox/SemPersonaState;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .end local v3    # "ui":Landroid/content/pm/UserInfo;
    :cond_9d
    :goto_9d
    goto/16 :goto_1b

    .line 92
    :cond_9f
    iget-object v2, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->receiver:Landroid/os/ContainerStateReceiver;

    invoke-static {v2, v3}, Landroid/os/ContainerStateReceiver;->register(Landroid/content/Context;Landroid/os/ContainerStateReceiver;)V

    .line 93
    return-void
.end method

.method register(Landroid/content/pm/ISystemPersonaObserver;)Z
    .registers 3
    .param p1, "observer"    # Landroid/content/pm/ISystemPersonaObserver;

    .line 96
    iget-object v0, p0, Lcom/android/server/pm/PersonaLegacyStateMonitor;->mObserverList:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_9

    .line 97
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    .line 99
    :cond_9
    const/4 v0, 0x0

    return v0
.end method
