.class final Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;
.super Landroid/os/Handler;
.source "GeofenceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "GeofencingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/os/Looper;)V
    .registers 3
    .param p2, "looper"    # Landroid/os/Looper;

    .line 167
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    .line 168
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 169
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12
    .param p1, "msg"    # Landroid/os/Message;

    .line 172
    if-eqz p1, :cond_c3

    .line 173
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_f

    goto/16 :goto_c3

    .line 182
    :cond_f
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 183
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V
    invoke-static {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    .line 184
    goto/16 :goto_c3

    .line 176
    .end local v0    # "userId":I
    :cond_18
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 177
    .restart local v0    # "userId":I
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->loadGeofenceActiveList(I)V
    invoke-static {v1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$000(Lcom/android/server/enterprise/geofencing/GeofenceService;I)V

    .line 178
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkMonitoring()V
    invoke-static {v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    .line 179
    goto/16 :goto_c3

    .line 194
    .end local v0    # "userId":I
    :cond_26
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 195
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->isDeviceInsideGeofence(I)Ljava/util/List;
    invoke-static {v1, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$200(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/util/List;

    move-result-object v1

    .line 196
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_c3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c3

    .line 197
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.samsung.android.knox.intent.action.DEVICE_INSIDE_GEOFENCE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v2, "intent":Landroid/content/Intent;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [I

    .line 199
    .local v3, "id":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4a
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_5f

    .line 200
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v3, v4

    .line 199
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 202
    .end local v4    # "i":I
    :cond_5f
    const-string v4, "com.samsung.android.knox.intent.extra.ID"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 203
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const-string v5, "com.samsung.android.knox.intent.extra.USER_ID"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 204
    const-string v4, "com.samsung.android.knox.intent.extra.ADMIN_UID"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 205
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # invokes: Lcom/android/server/enterprise/geofencing/GeofenceService;->getPackageNameForUid(I)Ljava/lang/String;
    invoke-static {v5, v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$300(Lcom/android/server/enterprise/geofencing/GeofenceService;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v7, "com.samsung.android.knox.permission.KNOX_GEOFENCING"

    invoke-virtual {v5, v2, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 210
    :try_start_88
    iget-object v5, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/utils/KpuHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/utils/KpuHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/enterprise/utils/KpuHelper;->getKpuPackageName()Ljava/lang/String;

    move-result-object v5

    .line 211
    .local v5, "kpuPkgName":Ljava/lang/String;
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 212
    .local v6, "intentKPU":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    invoke-virtual {v8, v5, v9}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {v6, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 213
    invoke-virtual {v6, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iget-object v4, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$GeofencingHandler;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    # getter for: Lcom/android/server/enterprise/geofencing/GeofenceService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400(Lcom/android/server/enterprise/geofencing/GeofenceService;)Landroid/content/Context;

    move-result-object v4

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v6, v8, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_be} :catch_bf

    .line 217
    .end local v5    # "kpuPkgName":Ljava/lang/String;
    .end local v6    # "intentKPU":Landroid/content/Intent;
    goto :goto_c3

    .line 215
    :catch_bf
    move-exception v4

    .line 216
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    .end local v0    # "uid":I
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "id":[I
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_c3
    :goto_c3
    return-void
.end method
