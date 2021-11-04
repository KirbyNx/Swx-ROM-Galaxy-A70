.class Lcom/android/server/enterprise/geofencing/GeofenceService$1;
.super Landroid/content/BroadcastReceiver;
.source "GeofenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 140
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 146
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 147
    .local v1, "message":Landroid/os/Message;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 148
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$1;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 151
    .end local v1    # "message":Landroid/os/Message;
    :cond_26
    return-void
.end method
