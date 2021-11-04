.class Lcom/android/server/DualAppManagerService$InternalHandler;
.super Landroid/os/Handler;
.source "DualAppManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DualAppManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# static fields
.field static final MSG_NOTIFY_LAUNCHER_CHANGE:I = 0x1

.field static final MSG_SEND_MP_SCAN_ACTION_BROADCAST_INTENT:I = 0x6

.field static final MSG_UPDATE_DATA_WEDGE_ACTIVITY_CHANGE:I = 0x4

.field static final MSG_UPDATE_DATA_WEDGE_INPUT_CONTEXT_CHANGE:I = 0x5

.field static final MSG_UPDATE_USAGE_INFO:I = 0x3

.field static final MSG_UPDATE_WHITELIST_INFO:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/DualAppManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/DualAppManagerService;)V
    .registers 2

    .line 199
    iput-object p1, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/DualAppManagerService;Lcom/android/server/DualAppManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/DualAppManagerService;
    .param p2, "x1"    # Lcom/android/server/DualAppManagerService$1;

    .line 199
    invoke-direct {p0, p1}, Lcom/android/server/DualAppManagerService$InternalHandler;-><init>(Lcom/android/server/DualAppManagerService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage() START "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DualAppManagerService"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :try_start_17
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_86

    goto :goto_6b

    .line 239
    :pswitch_1d
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2, v3}, Lcom/android/server/DualAppManagerService;->mediaScanFileForSync(Ljava/lang/String;I)V

    .line 240
    goto :goto_6b

    .line 235
    :pswitch_29
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget v2, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/server/DualAppManagerService;->updateWedgeAboutInputContext(Ljava/lang/String;I)V
    invoke-static {v0, v2}, Lcom/android/server/DualAppManagerService;->access$200(Ljava/lang/String;I)V

    .line 236
    goto :goto_6b

    .line 231
    :pswitch_33
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    # invokes: Lcom/android/server/DualAppManagerService;->updateWedgeAboutActivity(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/DualAppManagerService;->access$100(Ljava/lang/String;)V

    .line 232
    goto :goto_6b

    .line 227
    :pswitch_3b
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v0}, Lcom/android/server/DualAppManagerService;->updateDAUsage()V

    .line 228
    goto :goto_6b

    .line 222
    :pswitch_41
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v0}, Lcom/android/server/DualAppManagerService;->updateWhitelistPackages()V

    .line 223
    iget-object v0, p0, Lcom/android/server/DualAppManagerService$InternalHandler;->this$0:Lcom/android/server/DualAppManagerService;

    invoke-virtual {v0}, Lcom/android/server/DualAppManagerService;->updateInstalledWhitelistPackages()V

    .line 224
    goto :goto_6b

    .line 215
    :pswitch_4c
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 216
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.da.daagent"

    const-string v3, "com.samsung.android.da.daagent.service.SwitchLauncherService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    const-string v2, "defaultLauncher"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    # getter for: Lcom/android/server/DualAppManagerService;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/DualAppManagerService;->access$000()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SEM_OWNER:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6a} :catch_6c

    .line 220
    nop

    .line 247
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_6b
    goto :goto_70

    .line 245
    :catch_6c
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 249
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage() END"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    return-void

    :pswitch_data_86
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_41
        :pswitch_3b
        :pswitch_33
        :pswitch_29
        :pswitch_1d
    .end packed-switch
.end method
