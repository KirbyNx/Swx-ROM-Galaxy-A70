.class Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;
.super Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;
.source "EventProcessHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    .line 241
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {p0}, Lcom/samsung/android/app/usage/IUsageStatsWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notePauseComponent(Landroid/content/ComponentName;)V
    .registers 9
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 260
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "monitor_activity_state;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v3

    .line 266
    .local v3, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 267
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 268
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "component"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 269
    const/4 v5, 0x0

    const-string/jumbo v6, "is_resumed"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 270
    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6, v4}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 272
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_4c
    return-void
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;Landroid/content/Intent;)V
    .registers 10
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 247
    .local v1, "className":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "monitor_activity_state;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "key":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v3

    .line 250
    .local v3, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v4, v3, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    .line 251
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 252
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "component"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 253
    const/4 v5, 0x1

    const-string/jumbo v6, "is_resumed"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 254
    iget-object v5, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$1;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    const/16 v6, 0x9

    invoke-virtual {v5, v6, v4}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->notifyToHandler(ILandroid/os/Bundle;)V

    .line 256
    .end local v4    # "bundle":Landroid/os/Bundle;
    :cond_4c
    return-void
.end method

.method public noteStopComponent(Landroid/content/ComponentName;)V
    .registers 2
    .param p1, "stopComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    return-void
.end method
