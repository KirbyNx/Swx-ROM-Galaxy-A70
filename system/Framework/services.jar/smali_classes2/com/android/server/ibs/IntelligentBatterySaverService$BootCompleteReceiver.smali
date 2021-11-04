.class Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;
.super Landroid/content/BroadcastReceiver;
.source "IntelligentBatterySaverService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/IntelligentBatterySaverService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BootCompleteReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/IntelligentBatterySaverService;)V
    .registers 4

    .line 285
    iput-object p1, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 286
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 287
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 288
    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverService;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/android/server/ibs/IntelligentBatterySaverService;->access$400(Lcom/android/server/ibs/IntelligentBatterySaverService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 289
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 291
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 292
    iget-object v0, p0, Lcom/android/server/ibs/IntelligentBatterySaverService$BootCompleteReceiver;->this$0:Lcom/android/server/ibs/IntelligentBatterySaverService;

    # getter for: Lcom/android/server/ibs/IntelligentBatterySaverService;->mServiceHandler:Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;
    invoke-static {v0}, Lcom/android/server/ibs/IntelligentBatterySaverService;->access$500(Lcom/android/server/ibs/IntelligentBatterySaverService;)Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/ibs/IntelligentBatterySaverService$ServiceHandler;->sendEmptyMessage(I)Z

    .line 294
    :cond_16
    return-void
.end method
