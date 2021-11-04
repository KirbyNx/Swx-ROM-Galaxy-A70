.class Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->registerKnoxCustomReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10178
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 10181
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    .line 10182
    const/4 v0, 0x4

    const-string v2, "wifi_state"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1c6

    .line 10184
    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiConfigure:Z
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$800()Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 10185
    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiEap:Z
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$900()Z

    move-result v0

    if-nez v0, :cond_31

    .line 10186
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiSSID:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1000()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiPassword:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1100()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_42

    .line 10188
    :cond_31
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiSSID:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1000()Ljava/lang/String;

    move-result-object v2

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiUsername:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1300()Ljava/lang/String;

    move-result-object v3

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiPassword:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1100()Ljava/lang/String;

    move-result-object v4

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->configureWifi(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, p1, v2, v3, v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1400(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10190
    :goto_42
    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->wifiConfigure:Z
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$802(Z)Z

    goto/16 :goto_1c6

    .line 10194
    :cond_47
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 10195
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "connected"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 10196
    .local v0, "connected":Z
    if-eqz v0, :cond_6c

    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getUsbNetStateInternal()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 10197
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->startStopUsbNet(Landroid/content/Context;)V
    invoke-static {v1, p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1500(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/content/Context;)V

    .line 10199
    .end local v0    # "connected":Z
    :cond_6c
    goto/16 :goto_1c6

    .line 10200
    :cond_6e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.systemui.statusbar.STARTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_8f

    .line 10201
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1600(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result v0

    if-nez v0, :cond_1c6

    .line 10202
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mPhoneStatusBarInit:Z
    invoke-static {v0, v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1602(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Z)Z

    .line 10203
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->initialiseSystemUi()V
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1700(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    goto/16 :goto_1c6

    .line 10206
    :cond_8f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 10207
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "plugged"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 10208
    .local v0, "extra":I
    if-eqz v0, :cond_ab

    .line 10209
    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z
    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1802(Z)Z

    goto :goto_c4

    .line 10211
    :cond_ab
    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z
    invoke-static {}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1800()Z

    move-result v3

    if-eqz v3, :cond_c1

    iget-object v3, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getForceAutoShutDownState()I

    move-result v3

    if-ne v3, v2, :cond_c1

    .line 10212
    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1802(Z)Z

    .line 10213
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->powerOff()I

    .line 10215
    :cond_c1
    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->usbPlugged:Z
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1802(Z)Z

    .line 10217
    .end local v0    # "extra":I
    :goto_c4
    goto/16 :goto_1c6

    .line 10218
    :cond_c6
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 10219
    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isDesktopMode:Z
    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1902(Z)Z

    goto/16 :goto_1c6

    .line 10221
    :cond_d7
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_KNOX_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 10222
    # setter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isDesktopMode:Z
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$1902(Z)Z

    goto/16 :goto_1c6

    .line 10224
    :cond_e8
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.knox.intent.action.SCREEN_OFF_HOME_LONG_PRESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_111

    .line 10225
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 10226
    .local v0, "mPowerManager":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_10f

    .line 10227
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 10229
    .end local v0    # "mPowerManager":Landroid/os/PowerManager;
    :cond_10f
    goto/16 :goto_1c6

    .line 10230
    :cond_111
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.samsung.android.knox.intent.action.RECENT_LONG_PRESS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_194

    .line 10231
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getRecentLongPressMode()I

    move-result v0

    .line 10232
    .local v0, "mode":I
    if-ne v0, v2, :cond_13f

    .line 10234
    :try_start_125
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    .line 10235
    .local v2, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    .line 10236
    .local v3, "componentName":Landroid/content/ComponentName;
    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->isDefaultLauncher(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$2000(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Ljava/lang/String;)Z

    move-result v4
    :try_end_139
    .catch Landroid/os/RemoteException; {:try_start_125 .. :try_end_139} :catch_13d

    if-nez v4, :cond_13c

    .line 10237
    return-void

    .line 10241
    .end local v2    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_13c
    goto :goto_142

    .line 10239
    :catch_13d
    move-exception v1

    .line 10240
    .local v1, "e":Landroid/os/RemoteException;
    return-void

    .line 10242
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13f
    const/4 v2, 0x2

    if-ne v0, v2, :cond_193

    .line 10248
    :goto_142
    :try_start_142
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->getRecentLongPressActivity()Ljava/lang/String;

    move-result-object v2

    .line 10250
    .local v2, "appToStart":Ljava/lang/String;
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 10251
    .local v3, "slash":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_160

    .line 10252
    iget-object v1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .local v1, "regularIntent":Landroid/content/Intent;
    goto :goto_173

    .line 10254
    .end local v1    # "regularIntent":Landroid/content/Intent;
    :cond_160
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 10255
    .local v4, "regularIntent":Landroid/content/Intent;
    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v4

    .line 10257
    .end local v4    # "regularIntent":Landroid/content/Intent;
    .restart local v1    # "regularIntent":Landroid/content/Intent;
    :goto_173
    if-eqz v1, :cond_18f

    .line 10258
    const-string v4, "android.intent.action.MAIN"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 10259
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10260
    const-string v4, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 10261
    iget-object v4, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$200(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_18f
    .catch Ljava/lang/Exception; {:try_start_142 .. :try_end_18f} :catch_191

    .line 10265
    .end local v1    # "regularIntent":Landroid/content/Intent;
    .end local v2    # "appToStart":Ljava/lang/String;
    .end local v3    # "slash":I
    :cond_18f
    nop

    .line 10266
    .end local v0    # "mode":I
    goto :goto_1c6

    .line 10263
    .restart local v0    # "mode":I
    :catch_191
    move-exception v1

    .line 10264
    .local v1, "e":Ljava/lang/Exception;
    return-void

    .line 10244
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_193
    return-void

    .line 10267
    .end local v0    # "mode":I
    :cond_194
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "com.samsung.android.knox.intent.action.KNOX_NDA_LICENSE_CLEARED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c6

    .line 10268
    const-string v0, "KNOX_NDA_LICENSE_CLEARED"

    const-string v2, "One of the license info removed"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10271
    iget-object v2, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # getter for: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->mKLM:Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;
    invoke-static {v2}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$600(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;

    move-result-object v2

    const-string v3, ""

    const-string v4, "com.samsung.android.knox.permission.KNOX_CUSTOM_SYSTEM"

    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/knox/license/KnoxEnterpriseLicenseManager;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c6

    .line 10272
    const-string v2, "All license already revoked, so Clear all configurations"

    invoke-static {v0, v2}, Lcom/samsung/android/knox/custom/utils/KnoxsdkFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10273
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    # invokes: Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->clearAllApplicationRestrictions()V
    invoke-static {v0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->access$700(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    .line 10274
    iget-object v0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$4;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->setKnoxNDALicenseActivated(Z)V

    .line 10277
    :cond_1c6
    :goto_1c6
    return-void
.end method
