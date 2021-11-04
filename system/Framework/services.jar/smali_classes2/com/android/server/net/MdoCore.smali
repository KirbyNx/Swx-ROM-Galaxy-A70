.class public Lcom/android/server/net/MdoCore;
.super Lcom/android/server/net/UrspCore;
.source "MdoCore.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UrspService_MDO"

.field private static final mDefaultBlockListPkgName:[Ljava/lang/String;


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mCurrentUserId:I

.field private mIsSystemReady:Z

.field private mIsVpnConnected:Z

.field private mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

.field private mMdoNetId:I

.field private mMdoNotification:Lcom/android/server/net/MdoNotification;

.field private mMdoState:Z

.field private mMdoUidRule:Landroid/util/SparseBooleanArray;

.field private final mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mUrspAppListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/IUrspAppListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

.field private mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private sUrspConnListener:Landroid/net/IUrspConnectionListener;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 84
    const-string v0, "com.samsung.android.fast"

    const-string v1, "com.android.systemui"

    const-string v2, "com.samsung.android.messaging"

    const-string v3, "com.skt.prod.dialer"

    const-string v4, "com.skt.skaf.OA00199800"

    const-string v5, "com.sec.android.app.launcher"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/net/MdoCore;->mDefaultBlockListPkgName:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/net/UrspService;)V
    .registers 9
    .param p1, "urspService"    # Lcom/android/server/net/UrspService;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/net/UrspCore;-><init>(Lcom/android/server/net/UrspService;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    .line 73
    iput v0, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    .line 74
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    .line 75
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    .line 77
    iput-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    .line 79
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    .line 81
    iput-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    .line 82
    iput v0, p0, Lcom/android/server/net/MdoCore;->mCurrentUserId:I

    .line 93
    new-instance v0, Lcom/android/server/net/MdoCore$1;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoCore$1;-><init>(Lcom/android/server/net/MdoCore;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 467
    new-instance v0, Lcom/android/server/net/MdoCore$2;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoCore$2;-><init>(Lcom/android/server/net/MdoCore;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    .line 490
    new-instance v0, Lcom/android/server/net/MdoCore$3;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoCore$3;-><init>(Lcom/android/server/net/MdoCore;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 502
    new-instance v0, Lcom/android/server/net/MdoCore$4;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoCore$4;-><init>(Lcom/android/server/net/MdoCore;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 524
    new-instance v0, Lcom/android/server/net/MdoCore$5;

    invoke-direct {v0, p0}, Lcom/android/server/net/MdoCore$5;-><init>(Lcom/android/server/net/MdoCore;)V

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, "packageIntentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 142
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mUidRemovedReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    .line 143
    invoke-virtual {v4}, Lcom/android/server/net/UrspService;->getHandler()Landroid/os/Handler;

    move-result-object v6

    .line 142
    const/4 v5, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 145
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v1, "userIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 148
    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v2}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mUserRemovedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    .line 149
    invoke-virtual {v4}, Lcom/android/server/net/UrspService;->getHandler()Landroid/os/Handler;

    move-result-object v4

    .line 148
    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 151
    new-instance v2, Lcom/android/server/net/MdoNotification;

    invoke-virtual {p1}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p1}, Lcom/android/server/net/MdoNotification;-><init>(Landroid/content/Context;Landroid/net/IUrspManager;)V

    iput-object v2, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    .line 152
    invoke-virtual {v2}, Lcom/android/server/net/MdoNotification;->init()V

    .line 153
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/net/MdoCore;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoCore;

    .line 69
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/net/MdoCore;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoCore;

    .line 69
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/server/net/MdoCore;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoCore;
    .param p1, "x1"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/net/MdoCore;)Lcom/android/server/net/MdoNotification;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoCore;

    .line 69
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/net/MdoCore;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoCore;
    .param p1, "x1"    # I

    .line 69
    invoke-direct {p0, p1}, Lcom/android/server/net/MdoCore;->removeUid(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/net/MdoCore;)Landroid/util/SparseBooleanArray;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoCore;

    .line 69
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/net/MdoCore;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoCore;

    .line 69
    iget v0, p0, Lcom/android/server/net/MdoCore;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/net/MdoCore;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/net/MdoCore;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/android/server/net/MdoCore;->mCurrentUserId:I

    return p1
.end method

.method private addDefaultMdoBlocklist()V
    .registers 11

    .line 554
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 555
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const-string v1, "Apply default BlockList"

    invoke-static {v1}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 556
    sget-object v1, Lcom/android/server/net/MdoCore;->mDefaultBlockListPkgName:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v4, v2, :cond_72

    aget-object v5, v1, v4

    .line 557
    .local v5, "pkgName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "package name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 559
    :try_start_2d
    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 560
    .local v6, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v6, :cond_56

    .line 561
    iget v7, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    .line 562
    .local v7, "appid":I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Add blockList ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 563
    const/4 v8, 0x1

    invoke-virtual {p0, v8, v7}, Lcom/android/server/net/MdoCore;->setUrspBlockListUidRule(ZI)V
    :try_end_56
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2d .. :try_end_56} :catch_57

    .line 568
    .end local v6    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v7    # "appid":I
    :cond_56
    goto :goto_6f

    .line 565
    :catch_57
    move-exception v6

    .line 566
    .local v6, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No ApplicationInfo for package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "UrspService_MDO"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    nop

    .line 556
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_6f
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    .line 570
    :cond_72
    return-void
.end method

.method private getConnectivityManager()Landroid/net/ConnectivityManager;
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mConnMgr:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_14

    .line 130
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/net/MdoCore;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 133
    :cond_14
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method private killApp(Ljava/lang/String;I)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "kill "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " app, uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 455
    .local v0, "am":Landroid/app/ActivityManager;
    const-string/jumbo v1, "mdo"

    invoke-virtual {v0, p2, v1}, Landroid/app/ActivityManager;->killUid(ILjava/lang/String;)V

    .line 456
    return-void
.end method

.method private killApps()V
    .registers 4

    .line 445
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 446
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    .line 447
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v2, v1}, Lcom/android/server/net/UrspService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/net/MdoCore;->killApp(Ljava/lang/String;I)V

    .line 445
    .end local v1    # "uid":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 449
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 585
    const-string v0, "UrspService_MDO"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    return-void
.end method

.method protected static logn(Ljava/lang/String;)V
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 589
    const-string v0, "UrspService_MDO"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    return-void
.end method

.method private registerUserSwitchedReceiver()V
    .registers 4

    .line 156
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 157
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 161
    return-void
.end method

.method private removeUid(I)V
    .registers 4
    .param p1, "uid"    # I

    .line 459
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 460
    invoke-virtual {p0, v1, p1}, Lcom/android/server/net/MdoCore;->setUrspRule(ZI)V

    .line 462
    :cond_c
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 463
    invoke-virtual {p0, v1, p1}, Lcom/android/server/net/MdoCore;->setUrspBlockListUidRule(ZI)V

    .line 465
    :cond_17
    return-void
.end method

.method private unregisterUserSwitchedReceiver()V
    .registers 3

    .line 164
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUserSwitchedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    return-void
.end method


# virtual methods
.method public clearUrspBlockListUidRule()V
    .registers 3

    .line 359
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 360
    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->clear()V

    .line 361
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_26

    .line 363
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->addDefaultMdoBlocklist()V

    .line 365
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_25

    .line 366
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 367
    :try_start_1b
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    .line 368
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_22

    throw v1

    .line 370
    :cond_25
    :goto_25
    return-void

    .line 361
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    throw v1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5
    .param p1, "fout"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 420
    const-string v0, "Mobile data only: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Z)V

    .line 422
    const-string v0, "Mobile data only NetId: "

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 423
    iget v0, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 424
    const-string v0, "Mobile data only UIDs:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 425
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 426
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1d
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const-string v2, "UID="

    if-ge v0, v1, :cond_36

    .line 427
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    .line 430
    .end local v0    # "i":I
    :cond_36
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 432
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 433
    const-string v0, "Mobile data only blocklist UIDs:"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 435
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_45
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 436
    invoke-virtual {p1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 437
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(I)V

    .line 435
    add-int/lit8 v0, v0, 0x1

    goto :goto_45

    .line 439
    .end local v0    # "i":I
    :cond_5c
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 441
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 442
    return-void
.end method

.method public factoryReset()V
    .registers 4

    .line 408
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/net/MdoCore;->setUrspMode(Z)V

    .line 410
    invoke-virtual {p0}, Lcom/android/server/net/MdoCore;->getAllUrspRule()[I

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/net/MdoCore;->setUrspRules(Z[I)V

    .line 412
    invoke-virtual {p0}, Lcom/android/server/net/MdoCore;->clearUrspBlockListUidRule()V

    .line 414
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x2715

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 415
    .local v1, "msg":Landroid/os/Message;
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 416
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 417
    return-void
.end method

.method public getAllUrspBlockListUidsRule()[I
    .registers 7

    .line 345
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 346
    .local v0, "uids":[I
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 347
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    :try_start_b
    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 348
    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 349
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 350
    .local v4, "mdoUidPolicy":Z
    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    .line 351
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v0, v5

    .line 347
    .end local v3    # "uid":I
    .end local v4    # "mdoUidPolicy":Z
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 354
    .end local v2    # "i":I
    :cond_2a
    monitor-exit v1

    .line 355
    return-object v0

    .line 354
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public getAllUrspRule()[I
    .registers 7

    .line 294
    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 296
    .local v0, "uids":[I
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 297
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    :try_start_b
    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2a

    .line 298
    iget-object v3, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    .line 299
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 300
    .local v4, "mdoUidPolicy":Z
    const/4 v5, 0x1

    if-ne v4, v5, :cond_27

    .line 301
    invoke-static {v0, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v5

    move-object v0, v5

    .line 297
    .end local v3    # "uid":I
    .end local v4    # "mdoUidPolicy":Z
    :cond_27
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 304
    .end local v2    # "i":I
    :cond_2a
    monitor-exit v1

    .line 306
    return-object v0

    .line 304
    :catchall_2c
    move-exception v2

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_b .. :try_end_2e} :catchall_2c

    throw v2
.end method

.method public getUrspMode()Z
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_7
    iget-boolean v1, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    monitor-exit v0

    return v1

    .line 242
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public getUrspNetId()I
    .registers 3

    .line 316
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 317
    :try_start_7
    iget v1, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    monitor-exit v0

    return v1

    .line 318
    :catchall_b
    move-exception v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_b

    throw v1
.end method

.method public isUrspRuleEnabled(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 310
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 311
    :try_start_7
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 312
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public registerUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/IUrspAppListener;

    .line 573
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 574
    return-void
.end method

.method public requestPduSession(IZLandroid/os/Messenger;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "enabled"    # Z
    .param p3, "messenger"    # Landroid/os/Messenger;
    .param p4, "binder"    # Landroid/os/IBinder;

    .line 581
    return-void
.end method

.method public setUrspBlockListUidRule(ZI)V
    .registers 5
    .param p1, "blocklisted"    # Z
    .param p2, "uid"    # I

    .line 329
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 330
    if-eqz p1, :cond_f

    .line 331
    :try_start_9
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_14

    .line 333
    :cond_f
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 335
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_2b

    .line 337
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_2a

    .line 338
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 339
    :try_start_20
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    .line 340
    monitor-exit v0

    goto :goto_2a

    :catchall_27
    move-exception v1

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_20 .. :try_end_29} :catchall_27

    throw v1

    .line 342
    :cond_2a
    :goto_2a
    return-void

    .line 335
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw v1
.end method

.method public setUrspMode(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .line 188
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    if-eqz v0, :cond_b

    .line 189
    const-string/jumbo v0, "setUrspMode() ignore. vpn connected."

    invoke-static {v0}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 190
    return-void

    .line 193
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    if-eq p1, v0, :cond_ad

    .line 194
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 195
    :try_start_16
    iput-boolean p1, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    .line 196
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_aa

    .line 198
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/net/UrspConnectivityController;->requestConnection(ZII)V

    .line 200
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    if-eqz v0, :cond_69

    .line 201
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    .line 202
    invoke-virtual {v0, v1}, Lcom/android/server/net/UrspConnectivityController;->registerUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    .line 204
    iput-boolean v2, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    .line 205
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/4 v2, 0x4

    .line 206
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/16 v2, 0xf

    .line 207
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->setUids(Ljava/util/Set;)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/net/MdoCore;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 205
    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 210
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/server/net/MdoCore;->mCurrentUserId:I

    .line 211
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->registerUserSwitchedReceiver()V

    .line 213
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->startNotification()V

    goto :goto_92

    .line 216
    :cond_69
    iput v2, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    .line 217
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v0

    .line 218
    invoke-virtual {v0, v2, v2}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetId(II)V

    .line 219
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspConnectivityController()Lcom/android/server/net/UrspConnectivityController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->sUrspConnListener:Landroid/net/IUrspConnectionListener;

    .line 220
    invoke-virtual {v0, v1}, Lcom/android/server/net/UrspConnectivityController;->unregisterUrspConnListener(Landroid/net/IUrspConnectionListener;)V

    .line 222
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mVpnListenCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 223
    iput-boolean v2, p0, Lcom/android/server/net/MdoCore;->mIsVpnConnected:Z

    .line 225
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->unregisterUserSwitchedReceiver()V

    .line 227
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->stopNotification()V

    .line 230
    :goto_92
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_ad

    .line 231
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 232
    :try_start_9d
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    .line 233
    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_a7

    .line 234
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->killApps()V

    goto :goto_ad

    .line 233
    :catchall_a7
    move-exception v1

    :try_start_a8
    monitor-exit v0
    :try_end_a9
    .catchall {:try_start_a8 .. :try_end_a9} :catchall_a7

    throw v1

    .line 196
    :catchall_aa
    move-exception v1

    :try_start_ab
    monitor-exit v0
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw v1

    .line 237
    :cond_ad
    :goto_ad
    return-void
.end method

.method public setUrspNetId(I)V
    .registers 5
    .param p1, "netId"    # I

    .line 322
    iput p1, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    .line 323
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/net/MdoCore;->mMdoNetId:I

    .line 324
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspNetId(II)V

    .line 325
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/server/net/MdoCore;->sendUrspAppBroadcast(Landroid/os/RemoteCallbackList;II)V

    .line 326
    return-void
.end method

.method public setUrspRule(ZI)V
    .registers 5
    .param p1, "enabled"    # Z
    .param p2, "uid"    # I

    .line 269
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 270
    if-eqz p1, :cond_f

    .line 271
    :try_start_9
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_14

    .line 273
    :cond_f
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 275
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_69

    .line 277
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v0

    const/4 v1, 0x0

    .line 278
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspRule(IIZ)V

    .line 280
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_63

    .line 281
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 282
    :try_start_2a
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    .line 283
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2a .. :try_end_30} :catchall_60

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calling uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 285
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, p2, :cond_63

    .line 286
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0, p2}, Lcom/android/server/net/UrspService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/server/net/MdoCore;->killApp(Ljava/lang/String;I)V

    goto :goto_63

    .line 283
    :catchall_60
    move-exception v1

    :try_start_61
    monitor-exit v0
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw v1

    .line 290
    :cond_63
    :goto_63
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    .line 291
    return-void

    .line 275
    :catchall_69
    move-exception v1

    :try_start_6a
    monitor-exit v0
    :try_end_6b
    .catchall {:try_start_6a .. :try_end_6b} :catchall_69

    throw v1
.end method

.method public setUrspRules(Z[I)V
    .registers 9
    .param p1, "enabled"    # Z
    .param p2, "uids"    # [I

    .line 246
    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_3
    if-ge v2, v0, :cond_2b

    aget v3, p2, v2

    .line 247
    .local v3, "uid":I
    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v4}, Lcom/android/server/net/UrspService;->getPolicyLocked()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 248
    if-eqz p1, :cond_16

    .line 249
    :try_start_10
    iget-object v5, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_1b

    .line 251
    :cond_16
    iget-object v5, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 253
    :goto_1b
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_10 .. :try_end_1c} :catchall_28

    .line 254
    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v4}, Lcom/android/server/net/UrspService;->getUrspNetworkManagementService()Lcom/android/server/net/UrspNetworkManagementService;

    move-result-object v4

    .line 255
    invoke-virtual {v4, v1, v3, p1}, Lcom/android/server/net/UrspNetworkManagementService;->setUrspRule(IIZ)V

    .line 246
    .end local v3    # "uid":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 253
    .restart local v3    # "uid":I
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit v4
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0

    .line 258
    .end local v3    # "uid":I
    :cond_2b
    iget-boolean v0, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    if-eqz v0, :cond_43

    .line 259
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getPoliciesSecondLocked()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 260
    :try_start_36
    iget-object v1, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v1}, Lcom/android/server/net/UrspService;->writePolicy()V

    .line 261
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_36 .. :try_end_3c} :catchall_40

    .line 262
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->killApps()V

    goto :goto_43

    .line 261
    :catchall_40
    move-exception v1

    :try_start_41
    monitor-exit v0
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_40

    throw v1

    .line 265
    :cond_43
    :goto_43
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mMdoNotification:Lcom/android/server/net/MdoNotification;

    invoke-virtual {v0}, Lcom/android/server/net/MdoNotification;->updateNotification()V

    .line 266
    return-void
.end method

.method public systemReady()V
    .registers 5

    .line 168
    const-string/jumbo v0, "systemReady()"

    invoke-static {v0}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/android/server/net/MdoCore;->addDefaultMdoBlocklist()V

    .line 172
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspService:Lcom/android/server/net/UrspService;

    invoke-virtual {v0}, Lcom/android/server/net/UrspService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "multi_sim_data_call_slot"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 174
    .local v0, "preDdsSlot":I
    const-string/jumbo v1, "mdc.sys.enable_smff"

    invoke-static {v1, v2}, Landroid/os/SemSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 175
    invoke-static {}, Lcom/samsung/android/feature/SemCarrierFeature;->getInstance()Lcom/samsung/android/feature/SemCarrierFeature;

    move-result-object v1

    .line 176
    const-string v3, "CarrierFeature_RIL_DisableMobileDataOnly"

    invoke-virtual {v1, v0, v3, v2, v2}, Lcom/samsung/android/feature/SemCarrierFeature;->getBoolean(ILjava/lang/String;ZZ)Z

    move-result v1

    goto :goto_39

    .line 177
    :cond_2f
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_RIL_DisableMobileDataOnly"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(ILjava/lang/String;)Z

    move-result v1

    :goto_39
    nop

    .line 178
    .local v1, "disableMdo":Z
    if-eqz v1, :cond_48

    iget-boolean v2, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    if-eqz v2, :cond_48

    .line 179
    const-string v2, "csc feature is changed"

    invoke-static {v2}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/android/server/net/MdoCore;->factoryReset()V

    .line 183
    :cond_48
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/net/MdoCore;->mIsSystemReady:Z

    .line 184
    return-void
.end method

.method public unregisterUrspAppListner(Landroid/net/IUrspAppListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/net/IUrspAppListener;

    .line 577
    iget-object v0, p0, Lcom/android/server/net/MdoCore;->mUrspAppListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 578
    return-void
.end method

.method public writePolicy(Ljava/io/FileOutputStream;Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 12
    .param p1, "fos"    # Ljava/io/FileOutputStream;
    .param p2, "out"    # Lorg/xmlpull/v1/XmlSerializer;

    .line 375
    const-string/jumbo v0, "mdo-blocklist-policy"

    const-string/jumbo v1, "mdo-uid-policy"

    const-string/jumbo v2, "mdo-policy"

    const/4 v3, 0x0

    :try_start_a
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 376
    const-string/jumbo v4, "mdo-state"

    iget-boolean v5, p0, Lcom/android/server/net/MdoCore;->mMdoState:Z

    invoke-static {p2, v4, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 377
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_16
    iget-object v5, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1c} :catch_6d

    const-string/jumbo v6, "policy"

    const-string/jumbo v7, "uid"

    if-ge v4, v5, :cond_42

    .line 378
    :try_start_24
    iget-object v5, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    .line 379
    .local v5, "uid":I
    iget-object v8, p0, Lcom/android/server/net/MdoCore;->mMdoUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v8

    .line 381
    .local v8, "policy":Z
    if-nez v8, :cond_33

    goto :goto_3f

    .line 383
    :cond_33
    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 384
    invoke-static {p2, v7, v5}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 385
    invoke-static {p2, v6, v8}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 386
    invoke-interface {p2, v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 377
    .end local v5    # "uid":I
    .end local v8    # "policy":Z
    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 388
    .end local v4    # "i":I
    :cond_42
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_43
    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v1, v4, :cond_69

    .line 389
    iget-object v4, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    .line 390
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/net/MdoCore;->mMdoBlockListUidRule:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v5

    .line 392
    .local v5, "policy":Z
    if-nez v5, :cond_5a

    goto :goto_66

    .line 394
    :cond_5a
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 395
    invoke-static {p2, v7, v4}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 396
    invoke-static {p2, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeBooleanAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Z)V

    .line 397
    invoke-interface {p2, v3, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 388
    .end local v4    # "uid":I
    .end local v5    # "policy":Z
    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_43

    .line 400
    .end local v1    # "i":I
    :cond_69
    invoke-interface {p2, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_6c} :catch_6d

    .line 404
    goto :goto_82

    .line 402
    :catch_6d
    move-exception v0

    .line 403
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to write policy file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/net/MdoCore;->log(Ljava/lang/String;)V

    .line 405
    .end local v0    # "e":Ljava/io/IOException;
    :goto_82
    return-void
.end method
