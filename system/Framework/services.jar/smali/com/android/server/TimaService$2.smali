.class Lcom/android/server/TimaService$2;
.super Landroid/content/BroadcastReceiver;
.source "TimaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/TimaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/TimaService;


# direct methods
.method constructor <init>(Lcom/android/server/TimaService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/TimaService;

    .line 2489
    iput-object p1, p0, Lcom/android/server/TimaService$2;->this$0:Lcom/android/server/TimaService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "arg0"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2493
    const-string v0, "TimaService"

    :try_start_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 2496
    .local v1, "action":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BroadcastReceiverForKap - action:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2498
    iget-object v2, p0, Lcom/android/server/TimaService$2;->this$0:Lcom/android/server/TimaService;

    # invokes: Lcom/android/server/TimaService;->isKapSupported()Z
    invoke-static {v2}, Lcom/android/server/TimaService;->access$200(Lcom/android/server/TimaService;)Z

    move-result v2

    if-eqz v2, :cond_50

    const-string v2, "com.samsung.action.knox.klms.KLMS_RP_NOTIFICATION"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 2499
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 2500
    .local v2, "msgData":Landroid/os/Bundle;
    if-nez v2, :cond_37

    .line 2502
    const-string/jumbo v3, "null msgData"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2503
    return-void

    .line 2505
    :cond_37
    const-string v0, "KAP_LICENSE_NOTIFICATION_TRIGGER"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 2506
    .local v0, "notiTrigger":I
    const-string v3, "KLMS_LICENSE_STATUS"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 2507
    .local v3, "licenseStatus":Ljava/lang/Boolean;
    iget-object v4, p0, Lcom/android/server/TimaService$2;->this$0:Lcom/android/server/TimaService;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/android/server/TimaService;->handleLicenseStatus(IZ)V
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_50} :catch_51

    .line 2511
    .end local v0    # "notiTrigger":I
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "msgData":Landroid/os/Bundle;
    .end local v3    # "licenseStatus":Ljava/lang/Boolean;
    :cond_50
    goto :goto_55

    .line 2509
    :catch_51
    move-exception v0

    .line 2510
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2512
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_55
    return-void
.end method
