.class Lcom/android/server/enterprise/auditlog/AuditLogService$2;
.super Landroid/content/BroadcastReceiver;
.source "AuditLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/auditlog/AuditLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/auditlog/AuditLogService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/auditlog/AuditLogService;

    .line 234
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 237
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    .line 238
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    goto/16 :goto_da

    .line 249
    :cond_1a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 250
    const-string v0, "AuditLogService"

    const-string v1, "ACTION_LOCKED_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mIsBootCompleted:Z
    invoke-static {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$102(Lcom/android/server/enterprise/auditlog/AuditLogService;Z)Z

    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 254
    :try_start_3b
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v3}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    .line 255
    .local v3, "c":Ljava/util/Collection;
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 256
    .local v4, "it":Ljava/util/Iterator;
    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 257
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v0, v5

    .line 258
    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/Admin;->setBootCompleted(Z)V

    goto :goto_49

    .line 261
    :cond_5a
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # invokes: Lcom/android/server/enterprise/auditlog/AuditLogService;->startStopEdmAuditProcess()V
    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$200(Lcom/android/server/enterprise/auditlog/AuditLogService;)V

    .line 262
    .end local v3    # "c":Ljava/util/Collection;
    .end local v4    # "it":Ljava/util/Iterator;
    monitor-exit v2

    .line 263
    .end local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    goto/16 :goto_103

    .line 262
    .restart local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :catchall_62
    move-exception v1

    monitor-exit v2
    :try_end_64
    .catchall {:try_start_3b .. :try_end_64} :catchall_62

    throw v1

    .line 263
    .end local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :cond_65
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_96

    .line 264
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 265
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The device time has been changed. Current Time = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 264
    const-string v7, "AuditLogService"

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_103

    .line 267
    :cond_96
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_103

    .line 268
    const-string v0, "Managed Profile has been created successfully"

    .line 269
    .local v0, "message":Ljava/lang/String;
    const-string v1, "android.intent.extra.USER"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 270
    .local v1, "profileId":Landroid/os/UserHandle;
    if-eqz v1, :cond_c9

    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, "id":I
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 273
    if-lez v2, :cond_c9

    .line 274
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 277
    .end local v2    # "id":I
    :cond_c9
    iget-object v3, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    .line 278
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v8

    .line 277
    const-string v9, "AuditLogService"

    move-object v10, v0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Lcom/samsung/android/knox/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_103

    .line 240
    .end local v0    # "message":Ljava/lang/String;
    .end local v1    # "profileId":Landroid/os/UserHandle;
    :cond_da
    :goto_da
    const/4 v0, 0x0

    .line 241
    .local v0, "ad":Lcom/android/server/enterprise/auditlog/Admin;
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v1

    monitor-enter v1

    .line 242
    :try_start_e2
    iget-object v2, p0, Lcom/android/server/enterprise/auditlog/AuditLogService$2;->this$0:Lcom/android/server/enterprise/auditlog/AuditLogService;

    # getter for: Lcom/android/server/enterprise/auditlog/AuditLogService;->mLinkedHashMap:Ljava/util/Map;
    invoke-static {v2}, Lcom/android/server/enterprise/auditlog/AuditLogService;->access$000(Lcom/android/server/enterprise/auditlog/AuditLogService;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    .line 243
    .local v2, "c":Ljava/util/Collection;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 244
    .local v3, "it":Ljava/util/Iterator;
    :goto_f0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_101

    .line 245
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/enterprise/auditlog/Admin;

    move-object v0, v4

    .line 246
    invoke-virtual {v0}, Lcom/android/server/enterprise/auditlog/Admin;->shutdown()V

    goto :goto_f0

    .line 248
    .end local v2    # "c":Ljava/util/Collection;
    .end local v3    # "it":Ljava/util/Iterator;
    :cond_101
    monitor-exit v1

    .line 249
    .end local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    nop

    .line 280
    :cond_103
    :goto_103
    return-void

    .line 248
    .restart local v0    # "ad":Lcom/android/server/enterprise/auditlog/Admin;
    :catchall_104
    move-exception v2

    monitor-exit v1
    :try_end_106
    .catchall {:try_start_e2 .. :try_end_106} :catchall_104

    throw v2
.end method
