.class final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "IdlenessReceiver"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method private constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V
    .registers 2

    .line 4795
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Lcom/android/server/am/ProcessList$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;
    .param p2, "x1"    # Lcom/android/server/am/ProcessList$1;

    .line 4795
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 4798
    iget-object v0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget-object v0, v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 4799
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1dbb32d0

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2e

    const v3, 0x33e5d967

    if-eq v2, v3, :cond_24

    :cond_23
    goto :goto_38

    :cond_24
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    move v1, v4

    goto :goto_39

    :cond_2e
    const-string v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x0

    goto :goto_39

    :goto_38
    const/4 v1, -0x1

    :goto_39
    if-eqz v1, :cond_48

    if-eq v1, v4, :cond_3e

    goto :goto_52

    .line 4804
    :cond_3e
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->notifyDeviceIdleness(Z)V

    goto :goto_52

    .line 4801
    :cond_48
    iget-object v1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->notifyDeviceIdleness(Z)V

    .line 4802
    nop

    .line 4807
    :goto_52
    return-void
.end method
