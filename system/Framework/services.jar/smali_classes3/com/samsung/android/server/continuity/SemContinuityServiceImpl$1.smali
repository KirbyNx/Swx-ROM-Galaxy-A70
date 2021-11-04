.class Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "SemContinuityServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    .line 76
    iput-object p1, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 79
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_7

    .line 81
    return-void

    .line 84
    :cond_7
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, -0x8cbe44f

    const/4 v3, -0x1

    if-eq v1, v2, :cond_12

    :cond_11
    goto :goto_1c

    :cond_12
    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    const/4 v1, 0x0

    goto :goto_1d

    :goto_1c
    move v1, v3

    :goto_1d
    if-eqz v1, :cond_20

    goto :goto_61

    .line 86
    :cond_20
    const-string v1, "reason"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 87
    .local v1, "reason":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EMERGENCY_STATE_CHANGED : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[MCF_DS_SYS]_ServiceImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    const/4 v2, 0x2

    if-ne v1, v2, :cond_49

    .line 89
    iget-object v2, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    # getter for: Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
    invoke-static {v2}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->access$000(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->stopUser()V

    goto :goto_61

    .line 90
    :cond_49
    const/4 v2, 0x5

    if-ne v1, v2, :cond_61

    .line 91
    iget-object v2, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    # getter for: Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mMcfDsManager:Lcom/samsung/android/server/continuity/McfDeviceSyncManager;
    invoke-static {v2}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->access$000(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)Lcom/samsung/android/server/continuity/McfDeviceSyncManager;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    # getter for: Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCurrentUserHandle:Landroid/os/UserHandle;
    invoke-static {v3}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->access$100(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)Landroid/os/UserHandle;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl$1;->this$0:Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;

    # getter for: Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->mCachedCopyListener:Lcom/samsung/android/continuity/ISemContinuitySimpleListener;
    invoke-static {v4}, Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;->access$200(Lcom/samsung/android/server/continuity/SemContinuityServiceImpl;)Lcom/samsung/android/continuity/ISemContinuitySimpleListener;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/server/continuity/McfDeviceSyncManager;->startUser(Landroid/os/UserHandle;Lcom/samsung/android/continuity/ISemContinuitySimpleListener;)V

    .line 98
    .end local v1    # "reason":I
    :cond_61
    :goto_61
    return-void
.end method
