.class Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SystemRepositoryDefault.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/SystemRepositoryDefault;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SmartSwitchEventReceiver"
.end annotation


# static fields
.field private static final ACTION_SMARTSWITCH_FINISHED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

.field private static final ACTION_SMARTSWITCH_ONGOING:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

.field private static final ACTION_SMARTSWITCH_STARTED:Ljava/lang/String; = "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

.field private static final ACTION_SMARTSWITCH_TRANSFER:Ljava/lang/String; = "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

.field private static final EXTRA_BOOLEAN_SMARTSWITCH_TRANSFER:Ljava/lang/String; = "smartswitch_transfer"

.field private static final PERMISSION_SMARTSWITCH:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"


# instance fields
.field private mOnStart:Z

.field private mOnTransfer:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 73
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    .line 71
    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnTransfer:Z

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "com.wssnps.permission.COM_WSSNPS"

    const/4 v2, 0x0

    invoke-virtual {p1, p0, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 80
    return-void
.end method


# virtual methods
.method public isSmartSwitchWorking()Z
    .registers 2

    .line 103
    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnTransfer:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 84
    if-nez p2, :cond_3

    .line 85
    return-void

    .line 87
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_78

    :cond_13
    goto :goto_3b

    :sswitch_14
    const-string v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v1, v3

    goto :goto_3b

    :sswitch_1e
    const-string v2, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v1, v5

    goto :goto_3b

    :sswitch_28
    const-string v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v1, v4

    goto :goto_3b

    :sswitch_32
    const-string v2, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v1, v6

    :goto_3b
    if-eqz v1, :cond_4a

    if-eq v1, v6, :cond_47

    if-eq v1, v4, :cond_47

    if-eq v1, v3, :cond_44

    goto :goto_54

    .line 96
    :cond_44
    iput-boolean v5, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    goto :goto_54

    .line 93
    :cond_47
    iput-boolean v6, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    .line 94
    goto :goto_54

    .line 89
    :cond_4a
    const-string/jumbo v0, "smartswitch_transfer"

    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnTransfer:Z

    .line 90
    nop

    .line 99
    :goto_54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartSwitchEventReceiver() - mOnStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnStart:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mOnTransfer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/ipm/chimera/SystemRepositoryDefault$SmartSwitchEventReceiver;->mOnTransfer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemRepositoryDefault"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    nop

    :sswitch_data_78
    .sparse-switch
        -0x59dc8c44 -> :sswitch_32
        -0x326d7bab -> :sswitch_28
        -0x2b1b6001 -> :sswitch_1e
        0x786c859 -> :sswitch_14
    .end sparse-switch
.end method
