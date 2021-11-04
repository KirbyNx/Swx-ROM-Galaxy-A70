.class Lcom/android/server/input/InputManagerService$35;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/input/InputManagerService;

    .line 5312
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 5315
    const-string v0, "InputManager"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 5316
    .local v1, "action":Ljava/lang/String;
    const-string v2, "com.samsung.android.intent.action.SET_INWATER_TOUCH"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_65

    .line 5318
    :try_start_e
    const-string/jumbo v2, "set"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 5319
    .local v2, "isSet":Z
    const-string v4, "force"

    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 5320
    .local v3, "isForce":Z
    const-string/jumbo v4, "package"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 5321
    .local v4, "packageName":Ljava/lang/String;
    const-string/jumbo v5, "type"

    const/4 v6, 0x3

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 5322
    .local v5, "blockTypes":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "received:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " packageName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_42

    move-object v7, v4

    goto :goto_45

    :cond_42
    const-string/jumbo v7, "null"

    :goto_45
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5324
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_59

    .line 5325
    const-string/jumbo v0, "retail"

    .end local v4    # "packageName":Ljava/lang/String;
    .local v0, "packageName":Ljava/lang/String;
    goto :goto_5e

    .line 5327
    .end local v0    # "packageName":Ljava/lang/String;
    .restart local v4    # "packageName":Ljava/lang/String;
    :cond_59
    iget-object v6, p0, Lcom/android/server/input/InputManagerService$35;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-virtual {v6, v2, v5, v3, v4}, Lcom/android/server/input/InputManagerService;->setBlockDeviceMode(ZIZLjava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_5e} :catch_5f

    .line 5331
    .end local v2    # "isSet":Z
    .end local v3    # "isForce":Z
    .end local v4    # "packageName":Ljava/lang/String;
    .end local v5    # "blockTypes":I
    :goto_5e
    goto :goto_65

    .line 5329
    :catch_5f
    move-exception v2

    .line 5330
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Could not set device block"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5333
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_65
    :goto_65
    return-void
.end method
