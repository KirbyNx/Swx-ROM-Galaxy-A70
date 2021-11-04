.class public Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UnionContentBroadcastReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 14
    sget-object v0, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->TAG:Ljava/lang/String;

    sput-object v0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/sepunion/SemDeviceInfoManagerService;)V
    .registers 2
    .param p1, "service"    # Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    .line 19
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    const/4 v1, -0x1

    .line 25
    .local v1, "userId":I
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 29
    :cond_15
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    if-ltz v1, :cond_3d

    .line 32
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer(I)Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    .local v2, "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    goto :goto_59

    .line 34
    .end local v2    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    :cond_3d
    sget-object v2, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid user id: userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/sepunion/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object v2, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v2}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->getListenerContainer()Lcom/android/server/sepunion/eventdelegator/ListenerContainer;

    move-result-object v2

    .line 38
    .restart local v2    # "lc":Lcom/android/server/sepunion/eventdelegator/ListenerContainer;
    :goto_59
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    .line 39
    iget-object v3, v2, Lcom/android/server/sepunion/eventdelegator/ListenerContainer;->mIntentActionMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;

    .line 40
    .local v3, "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    if-eqz v3, :cond_70

    .line 41
    iget-object v4, p0, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->mService:Lcom/android/server/sepunion/SemDeviceInfoManagerService;

    invoke-virtual {v4, v3, p2, v1}, Lcom/android/server/sepunion/SemDeviceInfoManagerService;->sendIntentAction(Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;Landroid/content/Intent;I)V

    .line 45
    .end local v3    # "item":Lcom/android/server/sepunion/eventdelegator/UnionEventListenerItem;
    :cond_70
    goto :goto_87

    .line 47
    :cond_71
    sget-object v3, Lcom/android/server/sepunion/eventdelegator/UnionContentBroadcastReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "We dont have any callback or component to receive action - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :goto_87
    return-void
.end method
