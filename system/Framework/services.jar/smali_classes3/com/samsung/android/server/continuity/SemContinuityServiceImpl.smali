.class public Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;
.super Lcom/samsung/android/continuity/ISemContinuityManager$Stub;
.source "SemContinuityServiceImpl.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_ServiceImpl"


# instance fields
.field private final mBrReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserHandle:Landroid/os/UserHandle;

.field private mCurrentUserId:I

.field private final mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/continuity/ISemContinuityManager$Stub;-><init>()V

    .line 28
    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserId:I

    .line 76
    new-instance v0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;-><init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mBrReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mContext:Landroid/content/Context;

    .line 42
    invoke-static {}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->start()V

    .line 43
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mUserManager:Landroid/os/UserManager;

    .line 44
    new-instance v0, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    .line 45
    invoke-direct {p0, p1}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->registerReceiver(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)Landroid/os/UserHandle;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 25
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCachedCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    return-object v0
.end method

.method private registerReceiver(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;

    .line 71
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 72
    .local v0, "upsFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 73
    iget-object v2, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mBrReceiver:Landroid/content/BroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->SEM_ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->semRegisterReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 74
    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;I)V
    .registers 5
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 165
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    if-eq v0, p2, :cond_1f

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelDownload - invalid user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    return-void

    .line 169
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->cancelDownload(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method public clearLocalClip(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 127
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    if-eq v0, p1, :cond_1f

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalClip - invalid user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->setLocalClip(Landroid/os/Bundle;)V

    .line 132
    return-void
.end method

.method public getNearbyDeviceCount(II)I
    .registers 5
    .param p1, "filterType"    # I
    .param p2, "userId"    # I

    .line 106
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    if-eq v0, p2, :cond_20

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNearbyDeviceCount - invalid user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    return v0

    .line 110
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getNearbyDeviceCount(I)I

    move-result v0

    return v0
.end method

.method public synthetic lambda$onUserSwitching$0$SemContinuityServiceImpl(Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "toUserHandle"    # Landroid/os/UserHandle;

    .line 50
    iget v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_b

    .line 51
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    .line 53
    :cond_b
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserId:I

    .line 54
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 55
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    iget-object v1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCachedCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    invoke-virtual {v0, p1, v1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)V

    .line 56
    return-void
.end method

.method public onUserSwitching(Landroid/os/UserHandle;)V
    .registers 3
    .param p1, "toUserHandle"    # Landroid/os/UserHandle;

    .line 49
    new-instance v0, Lcom/samsung/android/server/continuity/-$$Lambda$SemContinuityServiceImpl$demAVP3EBy20c9GDxHO3da0Hu4Y;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/continuity/-$$Lambda$SemContinuityServiceImpl$demAVP3EBy20c9GDxHO3da0Hu4Y;-><init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;Landroid/os/UserHandle;)V

    invoke-static {v0}, Lcom/samsung/android/server/continuity/common/ExecutorUtil;->executeOnMain(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public onUserUnlocking(Landroid/os/UserHandle;)V
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 60
    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v0

    .line 61
    .local v0, "userId":I
    iget-object v1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    .line 62
    .local v1, "isManagedProfile":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUserUnlocking - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[MCF_DS_SYS]_ServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v2

    if-ne v0, v2, :cond_3b

    if-nez v1, :cond_3b

    .line 64
    iput v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserId:I

    .line 65
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;

    .line 66
    iget-object v2, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    iget-object v3, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCachedCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    invoke-virtual {v2, p1, v3}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)V

    .line 68
    :cond_3b
    return-void
.end method

.method public registerContinuityCopyListener(Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .param p2, "userId"    # I

    .line 136
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCachedCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    .line 137
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    if-eq v0, p2, :cond_21

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerContinuityCopyListener - invalid user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->registerRemoteCopyListener(Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)V

    .line 142
    return-void
.end method

.method public requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;I)Z
    .registers 6
    .param p1, "dataId"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    .param p3, "userId"    # I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    if-eq v0, p3, :cond_20

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestDownload - invalid user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    const/4 v0, 0x0

    return v0

    .line 160
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->requestDownload(Ljava/lang/String;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)Z

    move-result v0

    return v0
.end method

.method public setLocalClip(Landroid/os/Bundle;I)V
    .registers 5
    .param p1, "clipBundle"    # Landroid/os/Bundle;
    .param p2, "userId"    # I

    .line 118
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    if-eq v0, p2, :cond_1f

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setLocalClip - invalid user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 122
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->setLocalClip(Landroid/os/Bundle;)V

    .line 123
    return-void
.end method

.method public unregisterContinuityCopyListener(I)V
    .registers 4
    .param p1, "userId"    # I

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCachedCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    .line 147
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->getCurrentUserId()I

    move-result v0

    if-eq v0, p1, :cond_22

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterContinuityCopyListener - invalid user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[MCF_DS_SYS]_ServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void

    .line 151
    :cond_22
    iget-object v0, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    invoke-virtual {v0}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->unregisterRemoteCopyListener()V

    .line 152
    return-void
.end method
