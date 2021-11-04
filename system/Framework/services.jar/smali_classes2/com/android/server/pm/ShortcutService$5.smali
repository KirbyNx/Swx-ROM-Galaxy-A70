.class Lcom/android/server/pm/ShortcutService$5;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutService;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/pm/ShortcutService;

    .line 3551
    iput-object p1, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 3554
    const-string v0, "android.intent.extra.user_handle"

    const/16 v1, -0x2710

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 3555
    .local v0, "userId":I
    if-ne v0, v1, :cond_21

    .line 3556
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent broadcast does not contain user handle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShortcutService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3557
    return-void

    .line 3560
    :cond_21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 3564
    .local v1, "action":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v2}, Lcom/android/server/pm/ShortcutService;->injectClearCallingIdentity()J

    move-result-wide v2

    .line 3566
    .local v2, "token":J
    :try_start_2b
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/android/server/pm/ShortcutService;->access$300(Lcom/android/server/pm/ShortcutService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_32} :catch_13e
    .catchall {:try_start_2b .. :try_end_32} :catchall_13c

    .line 3567
    :try_start_32
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->isUserUnlockedL(I)Z

    move-result v5

    if-nez v5, :cond_41

    .line 3572
    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_32 .. :try_end_3b} :catchall_139

    .line 3634
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3572
    return-void

    .line 3577
    :cond_41
    :try_start_41
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v5

    .line 3578
    .local v5, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v5}, Lcom/android/server/pm/ShortcutUser;->clearLauncher()V

    .line 3579
    .end local v5    # "user":Lcom/android/server/pm/ShortcutUser;
    monitor-exit v4
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_139

    .line 3580
    :try_start_4b
    const-string v4, "android.intent.action.ACTION_PREFERRED_ACTIVITY_CHANGED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eqz v4, :cond_83

    .line 3581
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v0}, Lcom/android/server/pm/ShortcutService;->getUserShortcutsLocked(I)Lcom/android/server/pm/ShortcutUser;

    move-result-object v4

    .line 3582
    .local v4, "user":Lcom/android/server/pm/ShortcutUser;
    invoke-virtual {v4}, Lcom/android/server/pm/ShortcutUser;->getLastKnownLauncher()Landroid/content/ComponentName;

    move-result-object v8

    .line 3583
    .local v8, "lastLauncher":Landroid/content/ComponentName;
    iget-object v9, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v9, v0}, Lcom/android/server/pm/ShortcutService;->getDefaultLauncher(I)Landroid/content/ComponentName;

    move-result-object v9

    .line 3584
    .local v9, "currentLauncher":Landroid/content/ComponentName;
    if-eqz v9, :cond_6e

    invoke-virtual {v9, v8}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7d

    .line 3586
    :cond_6e
    iget-object v10, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mUriGrantsManagerInternal:Lcom/android/server/uri/UriGrantsManagerInternal;
    invoke-static {v10}, Lcom/android/server/pm/ShortcutService;->access$1400(Lcom/android/server/pm/ShortcutService;)Lcom/android/server/uri/UriGrantsManagerInternal;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # getter for: Lcom/android/server/pm/ShortcutService;->mUriPermissionOwner:Landroid/os/IBinder;
    invoke-static {v11}, Lcom/android/server/pm/ShortcutService;->access$1000(Lcom/android/server/pm/ShortcutService;)Landroid/os/IBinder;

    move-result-object v11

    invoke-interface {v10, v11, v5, v7, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_7d} :catch_13e
    .catchall {:try_start_4b .. :try_end_7d} :catchall_13c

    .line 3634
    :cond_7d
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3589
    return-void

    .line 3592
    .end local v4    # "user":Lcom/android/server/pm/ShortcutUser;
    .end local v8    # "lastLauncher":Landroid/content/ComponentName;
    .end local v9    # "currentLauncher":Landroid/content/ComponentName;
    :cond_83
    :try_start_83
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    .line 3593
    .local v4, "intentUri":Landroid/net/Uri;
    if-eqz v4, :cond_8e

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    goto :goto_8f

    .line 3594
    :cond_8e
    nop

    :goto_8f
    nop

    .line 3595
    .local v5, "packageName":Ljava/lang/String;
    if-nez v5, :cond_ae

    .line 3596
    const-string v6, "ShortcutService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent broadcast does not contain package name: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_a8} :catch_13e
    .catchall {:try_start_83 .. :try_end_a8} :catchall_13c

    .line 3634
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v6, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3597
    return-void

    .line 3600
    :cond_ae
    :try_start_ae
    const-string v8, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v8, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 3602
    .local v8, "replacing":Z
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x3

    const/4 v11, 0x2

    const/4 v12, 0x1

    sparse-switch v9, :sswitch_data_154

    :cond_be
    goto :goto_e6

    :sswitch_bf
    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_be

    goto :goto_e7

    :sswitch_c8
    const-string v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    move v6, v12

    goto :goto_e7

    :sswitch_d2
    const-string v6, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    move v6, v10

    goto :goto_e7

    :sswitch_dc
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    move v6, v11

    goto :goto_e7

    :goto_e6
    move v6, v7

    :goto_e7
    if-eqz v6, :cond_12b

    if-eq v6, v12, :cond_123

    if-eq v6, v11, :cond_f6

    if-eq v6, v10, :cond_f0

    goto :goto_146

    .line 3628
    :cond_f0
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageDataCleared(Ljava/lang/String;I)V
    invoke-static {v6, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$1900(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_146

    .line 3617
    :cond_f6
    const-string v6, "EM_PKG_HADNLER_ID"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 3618
    .local v6, "emergencyId":I
    if-eq v6, v7, :cond_11d

    .line 3619
    const-string v7, "ShortcutService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Skip PACKAGE_CHANGED intent from Emergency mode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", pkg: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3621
    goto :goto_146

    .line 3624
    .end local v6    # "emergencyId":I
    :cond_11d
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageChanged(Ljava/lang/String;I)V
    invoke-static {v6, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$1800(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    .line 3626
    goto :goto_146

    .line 3611
    :cond_123
    if-nez v8, :cond_146

    .line 3612
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageRemoved(Ljava/lang/String;I)V
    invoke-static {v6, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$1700(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_146

    .line 3604
    :cond_12b
    if-eqz v8, :cond_133

    .line 3605
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageUpdateFinished(Ljava/lang/String;I)V
    invoke-static {v6, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$1500(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V

    goto :goto_146

    .line 3607
    :cond_133
    iget-object v6, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    # invokes: Lcom/android/server/pm/ShortcutService;->handlePackageAdded(Ljava/lang/String;I)V
    invoke-static {v6, v5, v0}, Lcom/android/server/pm/ShortcutService;->access$1600(Lcom/android/server/pm/ShortcutService;Ljava/lang/String;I)V
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_ae .. :try_end_138} :catch_13e
    .catchall {:try_start_ae .. :try_end_138} :catchall_13c

    .line 3609
    goto :goto_146

    .line 3579
    .end local v4    # "intentUri":Landroid/net/Uri;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v8    # "replacing":Z
    :catchall_139
    move-exception v5

    :try_start_13a
    monitor-exit v4
    :try_end_13b
    .catchall {:try_start_13a .. :try_end_13b} :catchall_139

    .end local v0    # "userId":I
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "token":J
    .end local p0    # "this":Lcom/android/server/pm/ShortcutService$5;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "intent":Landroid/content/Intent;
    :try_start_13b
    throw v5
    :try_end_13c
    .catch Ljava/lang/Exception; {:try_start_13b .. :try_end_13c} :catch_13e
    .catchall {:try_start_13b .. :try_end_13c} :catchall_13c

    .line 3634
    .restart local v0    # "userId":I
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v2    # "token":J
    .restart local p0    # "this":Lcom/android/server/pm/ShortcutService$5;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "intent":Landroid/content/Intent;
    :catchall_13c
    move-exception v4

    goto :goto_14d

    .line 3631
    :catch_13e
    move-exception v4

    .line 3632
    .local v4, "e":Ljava/lang/Exception;
    :try_start_13f
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    const-string v6, "Exception in mPackageMonitor.onReceive"

    invoke-virtual {v5, v6, v4}, Lcom/android/server/pm/ShortcutService;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_146
    .catchall {:try_start_13f .. :try_end_146} :catchall_13c

    .line 3634
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_146
    :goto_146
    iget-object v4, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v4, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3635
    nop

    .line 3636
    return-void

    .line 3634
    :goto_14d
    iget-object v5, p0, Lcom/android/server/pm/ShortcutService$5;->this$0:Lcom/android/server/pm/ShortcutService;

    invoke-virtual {v5, v2, v3}, Lcom/android/server/pm/ShortcutService;->injectRestoreCallingIdentity(J)V

    .line 3635
    throw v4

    nop

    :sswitch_data_154
    .sparse-switch
        0xa480416 -> :sswitch_dc
        0xff13fb5 -> :sswitch_d2
        0x1f50b9c2 -> :sswitch_c8
        0x5c1076e2 -> :sswitch_bf
    .end sparse-switch
.end method
