.class public Lcom/android/server/sepunion/BRReceiverAgentService;
.super Lcom/samsung/android/sepunion/IBRReceiverAgent$Stub;
.source "BRReceiverAgentService.java"

# interfaces
.implements Lcom/android/server/sepunion/AbsSemSystemService;


# static fields
.field static final mStartingServiceSync:Ljava/lang/Object;


# instance fields
.field mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/sepunion/BRReceiverAgentService;->mStartingServiceSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/sepunion/IBRReceiverAgent$Stub;-><init>()V

    .line 68
    new-instance v0, Lcom/android/server/sepunion/BRReceiverAgentService$1;

    invoke-direct {v0, p0}, Lcom/android/server/sepunion/BRReceiverAgentService$1;-><init>(Lcom/android/server/sepunion/BRReceiverAgentService;)V

    iput-object v0, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 41
    iput-object p1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/sepunion/BRReceiverAgentService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/sepunion/BRReceiverAgentService;

    .line 36
    invoke-direct {p0}, Lcom/android/server/sepunion/BRReceiverAgentService;->checkIsPossibleToSendIntent()V

    return-void
.end method

.method private checkIsPossibleToSendIntent()V
    .registers 5

    .line 88
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 89
    .local v0, "drmIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/server/DrmEventService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 91
    sget-object v1, Lcom/android/server/sepunion/BRReceiverAgentService;->mStartingServiceSync:Ljava/lang/Object;

    monitor-enter v1

    .line 93
    :try_start_f
    iget-object v2, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 94
    monitor-exit v1
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_38

    .line 98
    .end local v0    # "drmIntent":Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .local v0, "bootIntent":Landroid/content/Intent;
    const/high16 v1, -0x77000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    const-wide/16 v1, 0x0

    :try_start_23
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_26} :catch_2f

    .line 109
    nop

    .line 110
    iget-object v1, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 111
    return-void

    .line 106
    :catch_2f
    move-exception v1

    .line 107
    .local v1, "e":Ljava/lang/InterruptedException;
    iget-object v2, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 108
    return-void

    .line 94
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .local v0, "drmIntent":Landroid/content/Intent;
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 142
    return-void
.end method

.method public getSemSystemService(Ljava/lang/String;)Lcom/android/server/sepunion/AbsSemSystemService;
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 137
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBootPhase(I)V
    .registers 10
    .param p1, "phase"    # I

    .line 58
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1d

    .line 60
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 61
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v1, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 63
    iget-object v2, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/sepunion/BRReceiverAgentService;->mBootCompleteReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 66
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1d
    return-void
.end method

.method public onCleanupUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 133
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "opt"    # Landroid/os/Bundle;

    .line 50
    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 54
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 46
    return-void
.end method

.method public onStartUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 117
    return-void
.end method

.method public onStopUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 121
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 125
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 129
    return-void
.end method
