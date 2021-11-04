.class Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;
.super Lcom/android/internal/content/PackageMonitor;
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

    .line 297
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 316
    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageAdded(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v1}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 320
    .local v1, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 321
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 322
    .local v2, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v2, :cond_54

    .line 323
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v3

    const-string/jumbo v4, "package_added"

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 325
    :cond_54
    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    .end local v2    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_5d
    :goto_5d
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 300
    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageModified(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v1}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 304
    .local v1, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 305
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 306
    .local v2, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v2, :cond_54

    .line 307
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v3

    const-string/jumbo v4, "package_modified"

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 309
    :cond_54
    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    .end local v2    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_5d
    :goto_5d
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 332
    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageRemoved() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "monitor_package_state;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v1}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v1

    .line 336
    .local v1, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 337
    iget-object v2, v1, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 338
    .local v2, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v2, :cond_54

    .line 339
    iget-object v3, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$3;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v3}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v3

    const-string/jumbo v4, "package_removed"

    invoke-virtual {v3, v2, p1, v4}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportPackageStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5d

    .line 341
    :cond_54
    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v2    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_5d
    :goto_5d
    return-void
.end method
