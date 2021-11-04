.class public Lcom/android/server/bridge/BridgeProxy;
.super Ljava/lang/Object;
.source "BridgeProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/bridge/BridgeProxy$PolicyChanged;,
        Lcom/android/server/bridge/BridgeProxy$RunnableCallback;,
        Lcom/android/server/bridge/BridgeProxy$RCPServiceInfo;,
        Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;,
        Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;,
        Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;,
        Lcom/android/server/bridge/BridgeProxy$Apps;
    }
.end annotation


# static fields
.field private static final DELETE_PERSONA:Ljava/lang/String; = "delete_persona"

.field private static final DIR_FILEPATH:Ljava/lang/String; = "/data/misc/BridgeProxy"

.field private static final DST_FILENAME:Ljava/lang/String; = "dstCreateFile"

.field private static final FILE_EXPORT_POLICY_TYPE:I = 0x1

.field private static final FILE_IMPORT_POLICY_TYPE:I = 0x2

.field private static final INTENT_MOVE_TO_KNOX:Ljava/lang/String; = "com.sec.knox.bridge.MOVE_TO_KNOX"

.field private static final MAX_INIT_COUNT:I = 0xa

.field private static final PATH_MNT_EXTSD:Ljava/lang/String; = "/mnt/extSdCard"

.field private static final PATH_MNT_INTERNALSD:Ljava/lang/String; = "/mnt/sdcard"

.field private static final PATH_STORAGE_EXTSD:Ljava/lang/String; = "/storage/extSdCard"

.field private static final PATH_STORAGE_USB:Ljava/lang/String; = "/storage/"

.field private static final RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field private static final RCP_POLICY_CHANGED_SECURE:Ljava/lang/String; = "com.samsung.knox.securefolder.intent.action.RCP_POLICY_CHANGED_SECURE"

.field private static final SRC_FILENAME:Ljava/lang/String; = "srcCreateFile"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final cb:Landroid/os/IRunnableCallback;

.field private currentPersona:I

.field private dbObserver:Lcom/android/server/bridge/operations/DbObserver;

.field private mBridgeContext:Landroid/content/Context;

.field private mBridgePackage:Ljava/lang/String;

.field private mContainerAgentPkg:Ljava/lang/String;

.field private mContainerAgentSwitchActivity:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCreationCase:Z

.field private mCurrentInvalidKnoxName:Ljava/lang/String;

.field private mDelegateUserHandle:Landroid/os/UserHandle;

.field private mDelegateUserId:I

.field private mHandlerDoSync:Landroid/os/Handler;

.field private mHandlerPolicyChanged:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mIBridgeSync:Landroid/content/ISyncCallBack;

.field private final mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

.field private final mListPolicyChanged:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/bridge/BridgeProxy$PolicyChanged;",
            ">;"
        }
    .end annotation
.end field

.field private mPm:Lcom/samsung/android/knox/SemPersonaManager;

.field private mSecureFolderPkg:Ljava/lang/String;

.field private mSecureFolderSwitchActivity:Ljava/lang/String;

.field private final mSecureSyncerServiceClass:Ljava/lang/String;

.field private mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

.field private final mSyncerServiceClass:Ljava/lang/String;

.field private mUserManager:Landroid/os/UserManager;

.field private mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

.field private preInstalledAppsMinusEmail:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 75
    const-class v0, Lcom/android/server/bridge/BridgeProxy;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/android/server/bridge/operations/SimplePersonaInfos;Z)V
    .registers 10
    .param p1, "userId"    # I
    .param p2, "bridgePackage"    # Ljava/lang/String;
    .param p3, "info"    # Lcom/android/server/bridge/operations/SimplePersonaInfos;
    .param p4, "creationCase"    # Z

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/BridgeProxy$IBridgeSyncer;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeSync:Landroid/content/ISyncCallBack;

    .line 80
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    .line 82
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 84
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 85
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    .line 92
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mListPolicyChanged:Ljava/util/List;

    .line 94
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    .line 96
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    .line 97
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 99
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/bridge/BridgeProxy;->currentPersona:I

    .line 108
    iput v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 109
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 110
    const-string v2, "com.samsung.knox.rcp.components"

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    .line 111
    const-string v2, "com.samsung.android.knox.containeragent"

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    .line 112
    const-string v2, "com.samsung.knox.securefolder"

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    .line 113
    const-string v2, ".switcher.SwitchAliasActivity"

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderSwitchActivity:Ljava/lang/String;

    .line 114
    const-string v2, ".switcher.KnoxCoreSwitchMainActivity"

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentSwitchActivity:Ljava/lang/String;

    .line 119
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    .line 120
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 122
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".rcpcomponents.sync.RCPSyncerSecure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    .line 126
    iput-boolean v0, p0, Lcom/android/server/bridge/BridgeProxy;->mCreationCase:Z

    .line 1994
    new-instance v0, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/BridgeProxy$RunnableCallback;-><init>(Lcom/android/server/bridge/BridgeProxy;Lcom/android/server/bridge/BridgeProxy$1;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->cb:Landroid/os/IRunnableCallback;

    .line 172
    iput p1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 173
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    .line 174
    iput-object p2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    .line 176
    iput-boolean p4, p0, Lcom/android/server/bridge/BridgeProxy;->mCreationCase:Z

    .line 178
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BridgeProxyHandlerDoSync"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerThread:Landroid/os/HandlerThread;

    .line 179
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 180
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    .line 181
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    .line 182
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/DbObserver;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/BridgeProxy;->policyChanged(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->checkCallerPermissionFor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->startSyncerSecure(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/bridge/BridgeProxy;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/bridge/BridgeProxy;I)Landroid/content/pm/UserInfo;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mCurrentInvalidKnoxName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserHandle;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderSwitchActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/bridge/BridgeProxy;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentSwitchActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # Landroid/os/UserHandle;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/BridgeProxy;->clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/bridge/BridgeProxy;Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->isFirstContainer(Landroid/content/pm/UserInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/bridge/BridgeProxy;Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->isSecondContainer(Landroid/content/pm/UserInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/bridge/BridgeProxy;Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/pm/UserInfo;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->isThirdContainer(Landroid/content/pm/UserInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/bridge/BridgeProxy;)Landroid/os/UserManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemPersonaManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/bridge/BridgeProxy;Lcom/samsung/android/knox/SemPersonaManager;ILandroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Lcom/samsung/android/knox/SemPersonaManager;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/bridge/BridgeProxy;->getContainerName(Lcom/samsung/android/knox/SemPersonaManager;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/Context;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/bridge/BridgeProxy;II)I
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getFilesPolicy(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/bridge/BridgeProxy;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResourceId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/bridge/BridgeProxy;ILjava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/bridge/BridgeProxy;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->getBridgeStringResource(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/bridge/BridgeProxy;)Lcom/android/server/bridge/operations/SimplePersonaInfos;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mSimplePersonaInfos:Lcom/android/server/bridge/operations/SimplePersonaInfos;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .registers 1

    .line 57
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/bridge/BridgeProxy;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    iget-boolean v0, p0, Lcom/android/server/bridge/BridgeProxy;->mCreationCase:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/bridge/BridgeProxy;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Z

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->doSyncForAllSyncers(Z)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/server/bridge/BridgeProxy;Landroid/content/Context;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # Landroid/content/Context;

    .line 57
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/server/bridge/BridgeProxy;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;

    .line 57
    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->getBridgeContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/bridge/BridgeProxy;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/BridgeProxy;
    .param p1, "x1"    # I

    .line 57
    invoke-direct {p0, p1}, Lcom/android/server/bridge/BridgeProxy;->initDBObserver(I)V

    return-void
.end method

.method private checkCallerPermissionFor(Ljava/lang/String;)I
    .registers 6
    .param p1, "methodName"    # Ljava/lang/String;

    .line 144
    const-string v0, "Proxy"

    .line 145
    .local v0, "serviceName":Ljava/lang/String;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkCallerPermissionFor, ServiceName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , MethodName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v1, 0x0

    return v1
.end method

.method private clearIdentityAndStartActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/UserHandle;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "userHandle"    # Landroid/os/UserHandle;

    .line 162
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1a

    if-eqz p2, :cond_1a

    if-nez p3, :cond_9

    goto :goto_1a

    .line 163
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 165
    .local v0, "ident":J
    :try_start_d
    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_15

    .line 167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    nop

    .line 169
    return-void

    .line 167
    :catchall_15
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    throw v2

    .line 162
    .end local v0    # "ident":J
    :cond_1a
    :goto_1a
    return-void
.end method

.method private doSyncForAllSyncers(Z)V
    .registers 18
    .param p1, "isUserSwitch"    # Z

    .line 781
    move-object/from16 v0, p0

    move/from16 v1, p1

    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doSyncForAllSyncers , currentUserID :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , isUserSwitch : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget v2, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eqz v2, :cond_14f

    .line 784
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 785
    .local v2, "syncerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "Contacts"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    const-string v3, "Calendar"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 787
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 789
    .local v4, "syncerName":Ljava/lang/String;
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 790
    .local v5, "intent":Landroid/content/Intent;
    const/4 v6, 0x0

    .line 791
    .local v6, "policyValue":Ljava/lang/String;
    sget-object v7, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "syncerName is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    const-string/jumbo v7, "knox-import-data"

    invoke-direct {v0, v4, v7}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 795
    sget-object v8, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "doSyncForAllSyncers , IMPORT_DATA policyValue  :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    const-string v8, "false"

    const-string/jumbo v9, "true"

    const/4 v10, 0x0

    if-eqz v1, :cond_95

    .line 798
    if-eqz v6, :cond_100

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_100

    .line 799
    invoke-direct {v0, v4, v10}, Lcom/android/server/bridge/BridgeProxy;->startSyncerSecure(Ljava/lang/String;I)V

    goto :goto_100

    .line 803
    :cond_95
    if-eqz v6, :cond_f7

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f7

    .line 805
    iget-object v11, v0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v11, v10}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v11

    .line 806
    .local v11, "mPersonaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v12, 0x1

    .line 807
    .local v12, "mUnRegisterFlag":Z
    if-eqz v11, :cond_cf

    .line 808
    const/4 v13, 0x0

    .line 809
    .local v13, "mImportPolicy":Ljava/lang/String;
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_ab
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_cf

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 815
    .local v15, "id":I
    iget v10, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eq v10, v15, :cond_cd

    .line 816
    invoke-direct {v0, v4, v7, v15}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    .line 818
    .end local v13    # "mImportPolicy":Ljava/lang/String;
    .local v10, "mImportPolicy":Ljava/lang/String;
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_cc

    .line 819
    const/4 v12, 0x0

    move-object v13, v10

    goto :goto_cd

    .line 818
    :cond_cc
    move-object v13, v10

    .line 821
    .end local v10    # "mImportPolicy":Ljava/lang/String;
    .end local v15    # "id":I
    .restart local v13    # "mImportPolicy":Ljava/lang/String;
    :cond_cd
    :goto_cd
    const/4 v10, 0x0

    goto :goto_ab

    .line 824
    .end local v13    # "mImportPolicy":Ljava/lang/String;
    :cond_cf
    sget-object v7, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " mUnRegisterFlag : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v13, " , syncerName : "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    if-eqz v12, :cond_f5

    .line 827
    iget-object v7, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v10, 0x0

    invoke-virtual {v7, v4, v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->unRegisterObserver(Ljava/lang/String;I)V

    .line 829
    .end local v11    # "mPersonaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12    # "mUnRegisterFlag":Z
    :cond_f5
    const/4 v10, 0x0

    goto :goto_fd

    .line 830
    :cond_f7
    iget-object v7, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v10, 0x0

    invoke-virtual {v7, v4, v10}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerObserver(Ljava/lang/String;I)V

    .line 832
    :goto_fd
    invoke-direct {v0, v4, v10}, Lcom/android/server/bridge/BridgeProxy;->doSyncForSyncer(Ljava/lang/String;I)V

    .line 836
    :cond_100
    :goto_100
    const-string/jumbo v7, "knox-export-data"

    invoke-direct {v0, v4, v7}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 838
    sget-object v7, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "doSyncForAllSyncers , EXPORT_DATA policyValue  :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    if-eqz v1, :cond_12f

    .line 841
    if-eqz v6, :cond_14d

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14d

    .line 842
    iget-object v7, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    iget v8, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v7, v4, v8}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    goto :goto_14d

    .line 844
    :cond_12f
    if-eqz v6, :cond_13f

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13f

    .line 845
    iget-object v7, v0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v7, :cond_146

    .line 846
    invoke-virtual {v7, v4}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterObserver(Ljava/lang/String;)V

    goto :goto_146

    .line 848
    :cond_13f
    iget-object v7, v0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v7, :cond_146

    .line 849
    invoke-virtual {v7, v4}, Lcom/android/server/bridge/operations/DbObserver;->registerObserver(Ljava/lang/String;)V

    .line 851
    :cond_146
    :goto_146
    iget-object v7, v0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    iget v8, v0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v7, v4, v8}, Lcom/samsung/android/knox/SemRemoteContentManager;->doSyncForSyncer(Ljava/lang/String;I)V

    .line 853
    .end local v4    # "syncerName":Ljava/lang/String;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "policyValue":Ljava/lang/String;
    :cond_14d
    :goto_14d
    goto/16 :goto_3b

    .line 855
    .end local v2    # "syncerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_14f
    return-void
.end method

.method private doSyncForSyncer(Ljava/lang/String;I)V
    .registers 10
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "mUserID"    # I

    .line 706
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " doSyncForSyncer, syncerName :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , mUserID :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 709
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 710
    .local v1, "policyValue":Ljava/lang/String;
    const/4 v2, 0x0

    .line 711
    .local v2, "policy":Ljava/lang/String;
    if-nez p2, :cond_32

    .line 712
    const-string/jumbo v3, "knox-import-data"

    invoke-direct {p0, p1, v3}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 714
    const-string/jumbo v2, "knox-import-data"

    goto :goto_5f

    .line 717
    :cond_32
    :try_start_32
    const-string/jumbo v3, "knox-export-data"

    move-object v2, v3

    .line 718
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 719
    .local v3, "req":Landroid/os/Bundle;
    const-string/jumbo v4, "syncerName"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v4, "action"

    const-string v5, "GetExportPolicy"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, p2, v3}, Lcom/samsung/android/knox/SemRemoteContentManager;->exchangeData(Landroid/content/Context;ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    .line 723
    .local v4, "bundle":Landroid/os/Bundle;
    if-eqz v4, :cond_5a

    .line 724
    const-string/jumbo v5, "policyValue"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_59
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_59} :catch_5b

    move-object v1, v5

    .line 727
    .end local v3    # "req":Landroid/os/Bundle;
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_5a
    goto :goto_5f

    .line 725
    :catch_5b
    move-exception v3

    .line 726
    .local v3, "e":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 730
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_5f
    const-string/jumbo v3, "syncer"

    if-eqz v1, :cond_b1

    const-string v4, "false"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 733
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 734
    const/4 v3, 0x1

    const-string v4, "doWhat"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 735
    const-string/jumbo v3, "policy"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const-string v3, "delete_synced_data_of_user"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 737
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " delete synced data policyName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " providerID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " SyncerID = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " syncerName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e7

    .line 745
    :cond_b1
    sget-object v4, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " start syncing for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "for policy name ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from provider"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    invoke-virtual {v0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 748
    const-string v3, "com.samsung.containeragent.ACTION_DB_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 749
    const-string/jumbo v3, "provider_user"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    :goto_e7
    const/4 v3, 0x0

    .line 755
    .local v3, "cn":Landroid/content/ComponentName;
    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_fb

    .line 756
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_12f

    .line 757
    :cond_fb
    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_10e

    .line 758
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_12f

    .line 760
    :cond_10e
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 761
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    goto :goto_12f

    .line 762
    :cond_11f
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v4

    if-eqz v4, :cond_12f

    .line 763
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v4

    .line 765
    :cond_12f
    :goto_12f
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 767
    :try_start_132
    sget-object v4, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 768
    .local v4, "serviceOwnerUserHandle":Landroid/os/UserHandle;
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-nez v5, :cond_143

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v4, v5

    goto :goto_146

    .line 769
    :cond_143
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    move-object v4, v5

    .line 770
    :goto_146
    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_132 .. :try_end_14b} :catch_14d

    .line 774
    nop

    .end local v4    # "serviceOwnerUserHandle":Landroid/os/UserHandle;
    goto :goto_158

    .line 771
    :catch_14d
    move-exception v4

    .line 772
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v6, "Unable to start service"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 775
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_158
    return-void
.end method

.method private enableComponent(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "compName"    # Ljava/lang/String;

    .line 398
    :try_start_0
    const-string/jumbo v0, "package"

    .line 399
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 398
    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 400
    .local v0, "iPM":Landroid/content/pm/IPackageManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    .local v1, "componentName":Landroid/content/ComponentName;
    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-interface {v0, v1, v2}, Landroid/content/pm/IPackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;I)I

    move-result v2

    .line 402
    .local v2, "setting":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_49

    .line 403
    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-interface {v0, v1, v3, v3, v4}, Landroid/content/pm/IPackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;III)V
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1e} :catch_24
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_49

    .line 409
    .end local v0    # "iPM":Landroid/content/pm/IPackageManager;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "setting":I
    :catch_1f
    move-exception v0

    .line 410
    .local v0, "e1":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4a

    .line 407
    .end local v0    # "e1":Landroid/os/RemoteException;
    :catch_24
    move-exception v0

    .line 408
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", component :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not installed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_49
    :goto_49
    nop

    .line 412
    :goto_4a
    return-void
.end method

.method private fillPreInstalledAppsMap()V
    .registers 3

    .line 278
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v1, "fill preinstalled apps start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.app.memo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 282
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.infraware.polarisviewer5"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 284
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.browser.provider"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.marvin.talkback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 288
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 290
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.chrome"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 294
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gsf"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 298
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.setupwizard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 300
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.gsf.login"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 302
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.feedback"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 304
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.partnersetup"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 306
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.vending"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 308
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.street"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.backuptransport"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.configupdater"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.syncadapters.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.syncadapters.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.google.android.tts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.gd.mobicore.pa"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.baidu.map.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.amap.android.location"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.locationhistory"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.contacts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.widgetapp.SPlannerAppWidget"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.widgetapp.digitalclock"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.music"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 340
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.soundalive"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 342
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.myfiles"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 344
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.samsungapps"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.osp.app.signin"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 348
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.billing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 350
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.sbrowser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 352
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.sprextension"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 354
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.browser"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 356
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.gallery3d"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.mdm"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.fingerprint.service"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.android.externalstorage"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.everglades.video"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.videoplayer"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 368
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.sec.android.app.SamsungContentsAgent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 370
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.android.app.pinboard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    const-string v1, "com.samsung.helphub"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v1, "fill preinstall apps end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method private getBridgeContext()Landroid/content/Context;
    .registers 5

    .line 2215
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_b} :catch_c

    .line 2217
    .local v0, "bridgeContext":Landroid/content/Context;
    return-object v0

    .line 2218
    .end local v0    # "bridgeContext":Landroid/content/Context;
    :catch_c
    move-exception v0

    .line 2219
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v2, "bridge package not found: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBridgeStringResource(I)Ljava/lang/String;
    .registers 5
    .param p1, "resId"    # I

    .line 2238
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 2239
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 2240
    .local v0, "packageResources":Landroid/content/res/Resources;
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_12} :catch_13

    return-object v1

    .line 2241
    .end local v0    # "packageResources":Landroid/content/res/Resources;
    :catch_13
    move-exception v0

    .line 2242
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v2, "bridge package not found: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2243
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBridgeStringResource(ILjava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "resId"    # I
    .param p2, "mCurrentInvalidKnoxName"    # Ljava/lang/String;

    .line 2249
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 2250
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 2251
    .local v0, "packageResources":Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_18} :catch_19

    return-object v1

    .line 2252
    .end local v0    # "packageResources":Landroid/content/res/Resources;
    :catch_19
    move-exception v0

    .line 2253
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v2, "bridge package not found: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2254
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBridgeStringResource(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "resIdString"    # Ljava/lang/String;

    .line 2226
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 2227
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 2228
    .local v0, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v1, "string"

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 2229
    .local v1, "resId":I
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_1b} :catch_1c

    return-object v2

    .line 2230
    .end local v0    # "packageResources":Landroid/content/res/Resources;
    .end local v1    # "resId":I
    :catch_1c
    move-exception v0

    .line 2231
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v2, "bridge package not found: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const/4 v1, 0x0

    return-object v1
.end method

.method private getBridgeStringResourceId(Ljava/lang/String;)I
    .registers 5
    .param p1, "resIdString"    # Ljava/lang/String;

    .line 2260
    :try_start_0
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 2261
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 2262
    .local v0, "packageResources":Landroid/content/res/Resources;
    const-string/jumbo v1, "string"

    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgePackage:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_17} :catch_18

    return v1

    .line 2263
    .end local v0    # "packageResources":Landroid/content/res/Resources;
    :catch_18
    move-exception v0

    .line 2264
    .local v0, "ex":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v2, "bridge package not found: "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    const/4 v1, -0x1

    return v1
.end method

.method private getContainerName(Lcom/samsung/android/knox/SemPersonaManager;ILandroid/content/Context;)Ljava/lang/String;
    .registers 5
    .param p1, "personaManager"    # Lcom/samsung/android/knox/SemPersonaManager;
    .param p2, "id"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 2278
    invoke-virtual {p1, p2, p3}, Lcom/samsung/android/knox/SemPersonaManager;->getContainerName(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFilesPolicy(II)I
    .registers 4
    .param p1, "containerId"    # I
    .param p2, "policyType"    # I

    .line 702
    const/4 v0, 0x0

    return v0
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;

    .line 646
    const/4 v0, 0x0

    .line 649
    .local v0, "policy":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 652
    .local v1, "ident":J
    :try_start_5
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPolicy: appName(syncer) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ; policyProperty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    .line 655
    .local v3, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getRCPDataPolicyForUser(Lcom/samsung/android/knox/SemPersonaManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_35} :catch_37

    move-object v0, v4

    .line 659
    .end local v3    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    goto :goto_52

    .line 656
    :catch_37
    move-exception v3

    .line 657
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPolicy: threw an exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 660
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_52
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 661
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPolicy: policy value returned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    return-object v0
.end method

.method private getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 11
    .param p1, "appName"    # Ljava/lang/String;
    .param p2, "policyProperty"    # Ljava/lang/String;
    .param p3, "mUserID"    # I

    .line 666
    const/4 v0, 0x0

    .line 667
    .local v0, "policy":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 670
    .local v1, "ident":J
    :try_start_5
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPolicy: appName(syncer) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ; policyProperty = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " , mUserID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 672
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "persona"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    .line 673
    .local v3, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/android/server/bridge/BridgeProxy;->getRCPDataPolicyForUser(Lcom/samsung/android/knox/SemPersonaManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3d} :catch_3f

    move-object v0, v4

    .line 677
    .end local v3    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    goto :goto_5a

    .line 674
    :catch_3f
    move-exception v3

    .line 675
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getPolicy: threw an exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_5a
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 679
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getPolicy: policy value returned = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-object v0
.end method

.method private getRCPDataPolicyForUser(Lcom/samsung/android/knox/SemPersonaManager;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "personaManager"    # Lcom/samsung/android/knox/SemPersonaManager;
    .param p2, "uid"    # I
    .param p3, "appName"    # Ljava/lang/String;
    .param p4, "policyProperty"    # Ljava/lang/String;

    .line 2282
    invoke-virtual {p1, p2, p3, p4}, Lcom/samsung/android/knox/SemPersonaManager;->getRCPDataPolicyForUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSecureFolderId(Landroid/content/Context;)I
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 2290
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->getSecureFolderId(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method private getSyncPolicy()Ljava/lang/String;
    .registers 6

    .line 684
    const/4 v0, 0x0

    .line 686
    .local v0, "policy":Ljava/lang/String;
    :try_start_1
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getSyncPolicy() called"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "persona"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/SemPersonaManager;

    .line 688
    .local v1, "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    const-string v2, "Contacts"

    invoke-direct {p0, v1, v2}, Lcom/android/server/bridge/BridgeProxy;->getSyncPolicy(Lcom/samsung/android/knox/SemPersonaManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_1c

    move-object v0, v2

    .line 692
    .end local v1    # "personaManager":Lcom/samsung/android/knox/SemPersonaManager;
    goto :goto_37

    .line 689
    :catch_1c
    move-exception v1

    .line 690
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSyncPolicy(): threw an exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 693
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_37
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSyncPolicy(): policy value returned = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    return-object v0
.end method

.method private getSyncPolicy(Lcom/samsung/android/knox/SemPersonaManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "personaManager"    # Lcom/samsung/android/knox/SemPersonaManager;
    .param p2, "appName"    # Ljava/lang/String;

    .line 2286
    invoke-virtual {p1, p2}, Lcom/samsung/android/knox/SemPersonaManager;->getSyncPolicy(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"    # I

    .line 2270
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2271
    .local v0, "ident":J
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 2272
    .local v2, "uInfo":Landroid/content/pm/UserInfo;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2273
    return-object v2
.end method

.method private initDBObserver(I)V
    .registers 6
    .param p1, "initCount"    # I

    .line 260
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "initDBObserver  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    if-eqz v0, :cond_31

    .line 262
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-direct {v0, v1, v2}, Lcom/android/server/bridge/operations/DbObserver;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    goto :goto_49

    .line 264
    :cond_31
    const/16 v0, 0xa

    if-gt p1, v0, :cond_49

    .line 265
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initDBObserver postDelayed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/bridge/BridgeProxy$2;-><init>(Lcom/android/server/bridge/BridgeProxy;I)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    :cond_49
    :goto_49
    return-void
.end method

.method private static isAllowedPackagesForBridgeCmd(Ljava/lang/String;)Z
    .registers 7
    .param p0, "pkgName"    # Ljava/lang/String;

    .line 2180
    const-string v0, "com.android.providers.contacts"

    const-string v1, "com.android.systemui"

    const-string v2, "com.samsung.android.providers.contacts"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    .line 2184
    .local v0, "allowedPackages":[Ljava/lang/String;
    sget-object v1, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isAllowedPackagesForBridgeCmd : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    const/4 v1, 0x0

    if-nez p0, :cond_25

    .line 2187
    return v1

    .line 2190
    :cond_25
    array-length v2, v0

    move v3, v1

    :goto_27
    if-ge v3, v2, :cond_36

    aget-object v4, v0, v3

    .line 2191
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 2192
    const/4 v1, 0x1

    return v1

    .line 2190
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_33
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 2196
    :cond_36
    return v1
.end method

.method private isFirstContainer(Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 2294
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isFirstContainer()Z

    move-result v0

    return v0
.end method

.method private isSecondContainer(Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 2298
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isSecondContainer()Z

    move-result v0

    return v0
.end method

.method private isThirdContainer(Landroid/content/pm/UserInfo;)Z
    .registers 3
    .param p1, "uInfo"    # Landroid/content/pm/UserInfo;

    .line 2302
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isThirdContainer()Z

    move-result v0

    return v0
.end method

.method private kioskSetup()V
    .registers 9

    .line 380
    const/4 v0, 0x2

    new-array v0, v0, [[Ljava/lang/String;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.TetherSettings"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const-string v2, "com.android.settings.Settings$TetherSettingsActivity"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 390
    .local v0, "enableComponents_com":[[Ljava/lang/String;
    array-length v1, v0

    move v4, v3

    :goto_19
    if-ge v4, v1, :cond_27

    aget-object v5, v0, v4

    .line 391
    .local v5, "anEnableComponents_com":[Ljava/lang/String;
    aget-object v6, v5, v3

    aget-object v7, v5, v2

    invoke-direct {p0, v6, v7}, Lcom/android/server/bridge/BridgeProxy;->enableComponent(Ljava/lang/String;Ljava/lang/String;)V

    .line 390
    .end local v5    # "anEnableComponents_com":[Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 394
    :cond_27
    return-void
.end method

.method private policyChanged(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 24
    .param p1, "syncerName"    # Ljava/lang/String;
    .param p2, "policyName"    # Ljava/lang/String;
    .param p3, "policyChangedForUser"    # I

    .line 511
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "policyChanged , syncerName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , policyname :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , policyChangedForUser : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,mDelegateUserId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iput v4, v1, Lcom/android/server/bridge/BridgeProxy;->currentPersona:I

    .line 515
    invoke-direct {v1, v4}, Lcom/android/server/bridge/BridgeProxy;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v5

    .line 516
    .local v5, "uInfo":Landroid/content/pm/UserInfo;
    if-nez v5, :cond_4a

    .line 517
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "policyChanged: userInfo for \'policyChangedForUser\' is null"

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void

    .line 520
    :cond_4a
    invoke-direct {v1, v4}, Lcom/android/server/bridge/BridgeProxy;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v6, v0, Landroid/content/pm/UserInfo;->profileGroupId:I

    .line 522
    .local v6, "parent":I
    if-ne v6, v4, :cond_5b

    .line 523
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "parent == policyChangedForUser so retur"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void

    .line 526
    :cond_5b
    const/4 v0, 0x0

    .line 528
    .local v0, "policyValue":Ljava/lang/String;
    const/4 v7, 0x0

    .line 529
    .local v7, "cn":Landroid/content/ComponentName;
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v8

    if-eqz v8, :cond_6e

    .line 530
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_7e

    .line 531
    :cond_6e
    invoke-static/range {p3 .. p3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 532
    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v1, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v8

    .line 535
    :cond_7e
    :goto_7e
    const-string/jumbo v8, "knox-import-data"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v11, "doWhat"

    const-string/jumbo v12, "policy"

    const-string/jumbo v13, "syncer"

    const-string/jumbo v14, "not running, hence not triggering sync request"

    const-string/jumbo v15, "user "

    const-string v10, "false"

    if-eqz v9, :cond_1fb

    .line 537
    invoke-direct {v1, v2, v8, v4}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    .line 540
    .end local v0    # "policyValue":Ljava/lang/String;
    .local v9, "policyValue":Ljava/lang/String;
    if-eqz v9, :cond_1a8

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1a8

    .line 541
    iget-object v10, v1, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v10, v4}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v10

    if-eqz v10, :cond_dc

    .line 542
    sget-object v10, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "uInfo":Landroid/content/pm/UserInfo;
    .local v16, "uInfo":Landroid/content/pm/UserInfo;
    const-string v5, " delete synced data policyName = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " userId = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " parent = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " syncerName = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_de

    .line 541
    .end local v16    # "uInfo":Landroid/content/pm/UserInfo;
    .restart local v5    # "uInfo":Landroid/content/pm/UserInfo;
    :cond_dc
    move-object/from16 v16, v5

    .line 547
    .end local v5    # "uInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "uInfo":Landroid/content/pm/UserInfo;
    :goto_de
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/samsung/android/knox/SemPersonaManager;->getKnoxIds(Z)Ljava/util/List;

    move-result-object v10

    .line 548
    .local v10, "mPersonaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    .line 549
    .local v0, "mUnRegisterFlag":Z
    if-eqz v10, :cond_121

    .line 550
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_ec
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_11c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    move/from16 v18, v0

    .end local v0    # "mUnRegisterFlag":Z
    .local v18, "mUnRegisterFlag":Z
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 551
    .local v0, "id":I
    move-object/from16 v17, v5

    iget v5, v1, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    if-eq v5, v0, :cond_115

    .line 552
    invoke-direct {v1, v2, v8, v0}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 554
    .local v5, "mImportPolicy":Ljava/lang/String;
    move/from16 v19, v0

    .end local v0    # "id":I
    .local v19, "id":I
    const-string/jumbo v0, "true"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_117

    .line 555
    const/4 v0, 0x0

    .end local v18    # "mUnRegisterFlag":Z
    .local v0, "mUnRegisterFlag":Z
    goto :goto_119

    .line 551
    .end local v5    # "mImportPolicy":Ljava/lang/String;
    .end local v19    # "id":I
    .local v0, "id":I
    .restart local v18    # "mUnRegisterFlag":Z
    :cond_115
    move/from16 v19, v0

    .line 557
    .end local v0    # "id":I
    :cond_117
    move/from16 v0, v18

    .end local v18    # "mUnRegisterFlag":Z
    .local v0, "mUnRegisterFlag":Z
    :goto_119
    move-object/from16 v5, v17

    goto :goto_ec

    .line 550
    :cond_11c
    move/from16 v18, v0

    .end local v0    # "mUnRegisterFlag":Z
    .restart local v18    # "mUnRegisterFlag":Z
    move/from16 v5, v18

    goto :goto_122

    .line 549
    .end local v18    # "mUnRegisterFlag":Z
    .restart local v0    # "mUnRegisterFlag":Z
    :cond_121
    move v5, v0

    .line 559
    .end local v0    # "mUnRegisterFlag":Z
    .local v5, "mUnRegisterFlag":Z
    :goto_122
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v9

    .end local v9    # "policyValue":Ljava/lang/String;
    .local v17, "policyValue":Ljava/lang/String;
    const-string v9, " mUnRegisterFlag : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " , syncerName : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    if-eqz v5, :cond_14a

    .line 561
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v8, 0x0

    invoke-virtual {v0, v2, v8}, Lcom/samsung/android/knox/SemRemoteContentManager;->unRegisterObserver(Ljava/lang/String;I)V

    .line 564
    :cond_14a
    :try_start_14a
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_18b

    .line 565
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RCP_POLICY_CHANGED | send request to delete IMPORT| "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 568
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 569
    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const/4 v8, 0x1

    invoke-virtual {v0, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 571
    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 572
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_1a2

    .line 573
    :cond_18b
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a2
    .catch Ljava/lang/Exception; {:try_start_14a .. :try_end_1a2} :catch_1a3

    .line 577
    :goto_1a2
    goto :goto_1a7

    .line 575
    :catch_1a3
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 578
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "mUnRegisterFlag":Z
    .end local v10    # "mPersonaIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :goto_1a7
    goto :goto_1e0

    .line 540
    .end local v16    # "uInfo":Landroid/content/pm/UserInfo;
    .end local v17    # "policyValue":Ljava/lang/String;
    .local v5, "uInfo":Landroid/content/pm/UserInfo;
    .restart local v9    # "policyValue":Ljava/lang/String;
    :cond_1a8
    move-object/from16 v16, v5

    move-object/from16 v17, v9

    .line 579
    .end local v5    # "uInfo":Landroid/content/pm/UserInfo;
    .end local v9    # "policyValue":Ljava/lang/String;
    .restart local v16    # "uInfo":Landroid/content/pm/UserInfo;
    .restart local v17    # "policyValue":Ljava/lang/String;
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/SemPersonaManager;->exists(I)Z

    move-result v0

    if-eqz v0, :cond_1da

    .line 580
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " start syncing provider "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "for policy name ="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for syncer"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_1da
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerObserver(Ljava/lang/String;I)V

    .line 588
    :goto_1e0
    if-eqz v4, :cond_1f6

    .line 589
    :try_start_1e2
    invoke-direct {v1, v4}, Lcom/android/server/bridge/BridgeProxy;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0
    :try_end_1e6
    .catch Ljava/lang/Exception; {:try_start_1e2 .. :try_end_1e6} :catch_1e9

    .line 590
    .local v0, "mPersonaInfo":Landroid/content/pm/UserInfo;
    if-nez v0, :cond_1f6

    .line 591
    return-void

    .line 597
    .end local v0    # "mPersonaInfo":Landroid/content/pm/UserInfo;
    :catch_1e9
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 598
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v8, "Unable to start service"

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 600
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1f6
    nop

    .line 628
    move-object/from16 v0, v17

    goto/16 :goto_28d

    .line 602
    .end local v16    # "uInfo":Landroid/content/pm/UserInfo;
    .end local v17    # "policyValue":Ljava/lang/String;
    .local v0, "policyValue":Ljava/lang/String;
    .restart local v5    # "uInfo":Landroid/content/pm/UserInfo;
    :cond_1fb
    move-object/from16 v16, v5

    .end local v5    # "uInfo":Landroid/content/pm/UserInfo;
    .restart local v16    # "uInfo":Landroid/content/pm/UserInfo;
    const-string/jumbo v5, "knox-export-data"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28d

    .line 604
    invoke-direct {v1, v2, v5, v4}, Lcom/android/server/bridge/BridgeProxy;->getPolicy(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    .line 606
    .end local v0    # "policyValue":Ljava/lang/String;
    .local v5, "policyValue":Ljava/lang/String;
    if-eqz v5, :cond_289

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 607
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/bridge/BridgeProxy;->unRegisterObserver(Ljava/lang/String;)V

    .line 609
    :try_start_215
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "RCP_POLICY_CHANGED | send request to delete EXPORT | "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, v1, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v8}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_256

    .line 611
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 612
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 613
    invoke-virtual {v0, v13, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 614
    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    const/4 v8, 0x1

    invoke-virtual {v0, v11, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 616
    iget-object v8, v1, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/os/UserHandle;

    invoke-direct {v9, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v8, v0, v9}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 617
    nop

    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_288

    .line 618
    :cond_256
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_26d
    .catch Ljava/lang/Exception; {:try_start_215 .. :try_end_26d} :catch_26e

    goto :goto_288

    .line 620
    :catch_26e
    move-exception v0

    .line 621
    .local v0, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "exception while trying to sync for user:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 623
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_288
    goto :goto_28c

    .line 625
    :cond_289
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/bridge/BridgeProxy;->registerObserver(Ljava/lang/String;)V

    .line 628
    :goto_28c
    move-object v0, v5

    .end local v5    # "policyValue":Ljava/lang/String;
    .local v0, "policyValue":Ljava/lang/String;
    :cond_28d
    :goto_28d
    return-void
.end method

.method private startSyncerSecure(Ljava/lang/String;I)V
    .registers 8
    .param p1, "mSyncerName"    # Ljava/lang/String;
    .param p2, "mUserID"    # I

    .line 909
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 910
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "doWhat"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 911
    const-string/jumbo v1, "syncer"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 912
    const-string v1, "com.samsung.containeragent.ACTION_DB_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 913
    const-string/jumbo v1, "provider_user"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 915
    const/4 v1, 0x0

    .line 916
    .local v1, "cn":Landroid/content/ComponentName;
    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 917
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_64

    .line 918
    :cond_30
    iget v2, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 919
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_64

    .line 921
    :cond_43
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_54

    .line 922
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureFolderPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mSecureSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_64

    .line 923
    :cond_54
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v2

    if-eqz v2, :cond_64

    .line 924
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContainerAgentPkg:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->mSyncerServiceClass:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v1, v2

    .line 926
    :cond_64
    :goto_64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 928
    :try_start_67
    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    .line 929
    .local v2, "serviceOwnerUserHandle":Landroid/os/UserHandle;
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    if-nez v3, :cond_78

    new-instance v3, Landroid/os/UserHandle;

    invoke-direct {v3, p2}, Landroid/os/UserHandle;-><init>(I)V

    move-object v2, v3

    goto :goto_7b

    .line 930
    :cond_78
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    move-object v2, v3

    .line 931
    :goto_7b
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v0, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_80
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_80} :catch_82

    .line 935
    nop

    .end local v2    # "serviceOwnerUserHandle":Landroid/os/UserHandle;
    goto :goto_8d

    .line 932
    :catch_82
    move-exception v2

    .line 933
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v4, "Unable to start service"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 936
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_8d
    return-void
.end method


# virtual methods
.method public registerObserver(Ljava/lang/String;)V
    .registers 4
    .param p1, "mSyncer"    # Ljava/lang/String;

    .line 415
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v1, "dbObserver.registerObserver called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_15

    .line 417
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/bridge/BridgeProxy$3;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    :cond_15
    return-void
.end method

.method public start(Landroid/content/Context;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;

    .line 185
    iput-object p1, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    .line 186
    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->getBridgeContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mBridgeContext:Landroid/content/Context;

    .line 187
    iget v0, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 188
    .local v0, "uid":I
    iget v1, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 189
    .local v1, "UserId":I
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy is starting for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persona"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mPm:Lcom/samsung/android/knox/SemPersonaManager;

    .line 193
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mUserManager:Landroid/os/UserManager;

    .line 195
    sget-object v2, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onCreate BridgeProxy user id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->preInstalledAppsMinusEmail:Ljava/util/Set;

    .line 198
    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->fillPreInstalledAppsMap()V

    .line 200
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "rcp"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 202
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mIBridgeSync:Landroid/content/ISyncCallBack;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerSync(Landroid/content/ISyncCallBack;I)V

    .line 203
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mIRCPInterfaceCallBack:Lcom/android/server/bridge/BridgeProxy$IRCPInterfaceCallBack;

    iget v4, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerRCPInterface(Landroid/content/IRCPInterface;I)V

    .line 206
    :try_start_83
    iget-object v2, p0, Lcom/android/server/bridge/BridgeProxy;->mbridge:Lcom/samsung/android/knox/SemRemoteContentManager;

    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->cb:Landroid/os/IRunnableCallback;

    iget v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/knox/SemRemoteContentManager;->registerExchangeData(Landroid/content/Context;Landroid/os/IRunnableCallback;I)Z
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_8e} :catch_8f

    .line 209
    goto :goto_93

    .line 207
    :catch_8f
    move-exception v2

    .line 208
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 211
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_93
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/bridge/BridgeProxy;->initDBObserver(I)V

    .line 214
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 215
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v3, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 216
    const-string v3, "com.samsung.knox.securefolder.intent.action.RCP_POLICY_CHANGED_SECURE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 217
    new-instance v4, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    invoke-direct {v4, p0}, Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    iput-object v4, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    .line 218
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserHandle:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 221
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_cb

    iget v3, p0, Lcom/android/server/bridge/BridgeProxy;->mDelegateUserId:I

    .line 222
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_cb

    .line 223
    invoke-direct {p0}, Lcom/android/server/bridge/BridgeProxy;->kioskSetup()V

    .line 226
    :cond_cb
    iget-object v3, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerDoSync:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/bridge/BridgeProxy$1;

    invoke-direct {v4, p0}, Lcom/android/server/bridge/BridgeProxy$1;-><init>(Lcom/android/server/bridge/BridgeProxy;)V

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 257
    return-void
.end method

.method public stop()V
    .registers 3

    .line 631
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v1, "----- stop called -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :try_start_7
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    if-eqz v0, :cond_12

    .line 635
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/bridge/BridgeProxy;->policyChangeReceiver:Lcom/android/server/bridge/BridgeProxy$RCPPolicyChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_12} :catch_13

    .line 638
    :cond_12
    goto :goto_17

    .line 636
    :catch_13
    move-exception v0

    .line 637
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 640
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_17
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/bridge/BridgeProxy;->unRegisterObserver(Ljava/lang/String;)V

    .line 642
    return-void
.end method

.method public unRegisterObserver(Ljava/lang/String;)V
    .registers 4
    .param p1, "mSyncer"    # Ljava/lang/String;

    .line 427
    sget-object v0, Lcom/android/server/bridge/BridgeProxy;->TAG:Ljava/lang/String;

    const-string v1, "dbObserver.unRegisterObserver called!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->dbObserver:Lcom/android/server/bridge/operations/DbObserver;

    if-eqz v0, :cond_15

    .line 430
    iget-object v0, p0, Lcom/android/server/bridge/BridgeProxy;->mHandlerPolicyChanged:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/bridge/BridgeProxy$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/bridge/BridgeProxy$4;-><init>(Lcom/android/server/bridge/BridgeProxy;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 436
    :cond_15
    return-void
.end method
