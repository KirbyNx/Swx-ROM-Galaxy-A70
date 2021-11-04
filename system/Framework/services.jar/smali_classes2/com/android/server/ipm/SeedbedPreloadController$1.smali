.class Lcom/android/server/ipm/SeedbedPreloadController$1;
.super Landroid/content/BroadcastReceiver;
.source "SeedbedPreloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/SeedbedPreloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ipm/SeedbedPreloadController;


# direct methods
.method constructor <init>(Lcom/android/server/ipm/SeedbedPreloadController;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ipm/SeedbedPreloadController;

    .line 151
    iput-object p1, p0, Lcom/android/server/ipm/SeedbedPreloadController$1;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ipm/SeedbedPreloadController$1;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KPM changed recved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "seedbed-SeedbedPreloadController"

    invoke-virtual {v1, v3, v2}, Lcom/android/server/ipm/SeedbedPreloadController;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-string v1, "com.samsung.KPM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 158
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 159
    .local v1, "mExtras":Landroid/os/Bundle;
    if-eqz v1, :cond_51

    .line 160
    const-string/jumbo v2, "kpm_level"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 161
    .local v2, "KPMLevel":I
    iget-object v4, p0, Lcom/android/server/ipm/SeedbedPreloadController$1;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " kpm level is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/android/server/ipm/SeedbedPreloadController;->LogEng(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v3, p0, Lcom/android/server/ipm/SeedbedPreloadController$1;->this$0:Lcom/android/server/ipm/SeedbedPreloadController;

    const/4 v4, 0x6

    const/4 v5, -0x1

    const/4 v6, 0x0

    # invokes: Lcom/android/server/ipm/SeedbedPreloadController;->sendSeedBedMessage(IIILjava/lang/Object;)V
    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/server/ipm/SeedbedPreloadController;->access$000(Lcom/android/server/ipm/SeedbedPreloadController;IIILjava/lang/Object;)V

    .line 163
    .end local v2    # "KPMLevel":I
    goto :goto_56

    .line 164
    :cond_51
    const-string v2, "Not scheduled BootupBooster, KPM Bundle Extras is null"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    .end local v1    # "mExtras":Landroid/os/Bundle;
    :cond_56
    :goto_56
    return-void
.end method
