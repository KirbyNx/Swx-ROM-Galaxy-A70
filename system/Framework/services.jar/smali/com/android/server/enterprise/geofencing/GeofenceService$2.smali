.class Lcom/android/server/enterprise/geofencing/GeofenceService$2;
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

    .line 229
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 232
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 234
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 235
    .local v1, "message":Landroid/os/Message;
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 236
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-virtual {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 237
    .end local v1    # "message":Landroid/os/Message;
    goto :goto_62

    .line 238
    :cond_27
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 239
    const/4 v1, -0x1

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 240
    .local v1, "userId":I
    const/4 v2, 0x1

    if-ge v1, v2, :cond_3a

    .line 241
    return-void

    .line 242
    :cond_3a
    iget-object v2, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v2}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v2

    const-string v3, "ADMIN"

    const-string v4, "adminUid"

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntListAsUser(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 244
    .local v2, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_62

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 245
    .local v4, "uid":I
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$2;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->deleteGeofenceActiveListByAdmin(I)V
    invoke-static {v5, v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$600(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    .line 246
    .end local v4    # "uid":I
    goto :goto_4c

    .line 249
    .end local v1    # "userId":I
    .end local v2    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_62
    :goto_62
    return-void
.end method
