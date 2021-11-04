.class Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;
.super Landroid/telephony/PhoneStateListener;
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

    .line 278
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .line 281
    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCallStateChanged() state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v0, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v0}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v0

    .line 284
    .local v0, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    iget-object v1, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    const-string/jumbo v2, "monitor_call_state"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 285
    iget-object v1, v0, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mCustomEventMap:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 286
    .local v1, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v1, :cond_42

    .line 287
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler$2;->this$0:Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;

    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;
    invoke-static {v2}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$000(Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;)Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    move-result-object v2

    invoke-virtual {v2, v1, p1, p2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->reportCallStateChanged(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;ILjava/lang/String;)V

    goto :goto_4b

    .line 289
    :cond_42
    # getter for: Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/sepunion/eventdelegator/EventProcessHandler;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "We have key in mCustomEventMap. But no item for the key."

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v1    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_4b
    :goto_4b
    return-void
.end method
