.class Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;
.super Ljava/lang/Object;
.source "PersonaManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;

.field final synthetic val$extra:Ljava/lang/String;

.field final synthetic val$feature:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "this$1"    # Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;

    .line 6904
    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;->this$1:Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;

    iput-object p2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;->val$feature:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 6908
    const-string v0, "SeamLessSwitchHandler"

    :try_start_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 6909
    .local v1, "mBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "tracking_id"

    const-string v3, "493-399-9953101"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6910
    const-string/jumbo v2, "type"

    const-string v3, "ev"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6911
    const-string v2, "feature"

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;->val$feature:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6912
    iget-object v2, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    if-eqz v2, :cond_29

    .line 6913
    const-string v2, "extra"

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6916
    :cond_29
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 6917
    .local v2, "mBroadcastIntent":Landroid/content/Intent;
    const-string v3, "com.sec.android.diagmonagent.intent.USE_APP_FEATURE_SURVEY"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 6918
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 6919
    const-string v3, "com.sec.android.diagmonagent"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 6920
    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;->this$1:Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;

    # getter for: Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->c:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;->access$7300(Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 6922
    # getter for: Lcom/android/server/pm/PersonaManagerService;->DEBUG:Z
    invoke-static {}, Lcom/android/server/pm/PersonaManagerService;->access$7100()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 6923
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insertSALog tracking_id=493-399-9953101, feature="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;->val$feature:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ,extra="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/pm/PersonaManagerService$SeamLessSwitchHandler$1;->val$extra:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_6b} :catch_6c

    .line 6929
    .end local v1    # "mBundle":Landroid/os/Bundle;
    .end local v2    # "mBroadcastIntent":Landroid/content/Intent;
    :cond_6b
    goto :goto_76

    .line 6926
    :catch_6c
    move-exception v1

    .line 6927
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "insertSALog Exception"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6928
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 6930
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_76
    return-void
.end method
