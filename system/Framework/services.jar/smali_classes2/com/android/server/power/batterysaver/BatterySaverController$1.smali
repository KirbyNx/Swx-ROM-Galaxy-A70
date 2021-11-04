.class Lcom/android/server/power/batterysaver/BatterySaverController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 189
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 195
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_8a

    :cond_10
    goto :goto_43

    :sswitch_11
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v3

    goto :goto_44

    :sswitch_1b
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v2

    goto :goto_44

    :sswitch_25
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v6

    goto :goto_44

    :sswitch_2f
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v4

    goto :goto_44

    :sswitch_39
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    move v0, v5

    goto :goto_44

    :goto_43
    const/4 v0, -0x1

    :goto_44
    if-eqz v0, :cond_70

    if-eq v0, v5, :cond_70

    if-eq v0, v4, :cond_4f

    if-eq v0, v3, :cond_67

    if-eq v0, v2, :cond_67

    goto :goto_89

    .line 207
    :cond_4f
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # getter for: Lcom/android/server/power/batterysaver/BatterySaverController;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$300(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 208
    :try_start_56
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_62

    goto :goto_63

    :cond_62
    move v5, v6

    :goto_63
    # setter for: Lcom/android/server/power/batterysaver/BatterySaverController;->mIsPluggedIn:Z
    invoke-static {v1, v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$402(Lcom/android/server/power/batterysaver/BatterySaverController;Z)Z

    .line 209
    monitor-exit v0
    :try_end_67
    .catchall {:try_start_56 .. :try_end_67} :catchall_6d

    .line 213
    :cond_67
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # invokes: Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    goto :goto_89

    .line 209
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1

    .line 198
    :cond_70
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # invokes: Lcom/android/server/power/batterysaver/BatterySaverController;->isPolicyEnabled()Z
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$000(Lcom/android/server/power/batterysaver/BatterySaverController;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 199
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # invokes: Lcom/android/server/power/batterysaver/BatterySaverController;->updateBatterySavingStats()V
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 200
    return-void

    .line 203
    :cond_7e
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    # getter for: Lcom/android/server/power/batterysaver/BatterySaverController;->mHandler:Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;
    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$200(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v6, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 205
    nop

    .line 216
    :goto_89
    return-void

    :sswitch_data_8a
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_39
        -0x5bb23923 -> :sswitch_2f
        -0x56ac2893 -> :sswitch_25
        0x1dbb32d0 -> :sswitch_1b
        0x33e5d967 -> :sswitch_11
    .end sparse-switch
.end method
