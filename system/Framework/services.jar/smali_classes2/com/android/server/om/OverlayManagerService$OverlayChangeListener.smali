.class final Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;
.super Ljava/lang/Object;
.source "OverlayManagerService.java"

# interfaces
.implements Lcom/android/server/om/OverlayManagerServiceImpl$OverlayChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/om/OverlayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/om/OverlayManagerService;)V
    .registers 2

    .line 1076
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/om/OverlayManagerService;Lcom/android/server/om/OverlayManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/om/OverlayManagerService;
    .param p2, "x1"    # Lcom/android/server/om/OverlayManagerService$1;

    .line 1076
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;-><init>(Lcom/android/server/om/OverlayManagerService;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onOverlaysChanged$0$OverlayManagerService$OverlayChangeListener(ZILjava/lang/String;)V
    .registers 23
    .param p1, "avoidRelaunch"    # Z
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;

    .line 1099
    move-object/from16 v1, p0

    move-object/from16 v2, p3

    if-eqz p1, :cond_17

    .line 1101
    iget-object v3, v1, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static/range {p3 .. p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move/from16 v4, p2

    # invokes: Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;ZZZ)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/om/OverlayManagerService;->access$1200(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;ZZZ)V

    move/from16 v15, p2

    goto :goto_1e

    .line 1106
    :cond_17
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    move/from16 v15, p2

    # invokes: Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/lang/String;)V
    invoke-static {v0, v15, v2}, Lcom/android/server/om/OverlayManagerService;->access$1400(Lcom/android/server/om/OverlayManagerService;ILjava/lang/String;)V

    .line 1109
    :goto_1e
    new-instance v0, Landroid/content/Intent;

    const/4 v3, 0x0

    .line 1110
    const-string/jumbo v4, "package"

    invoke-static {v4, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.OVERLAY_CHANGED"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v14, v0

    .line 1111
    .local v14, "intent":Landroid/content/Intent;
    const/high16 v0, 0x4000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1113
    sget-boolean v0, Lcom/android/server/om/OverlayManagerService;->DEBUG:Z

    if-eqz v0, :cond_4e

    .line 1114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send broadcast "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OverlayManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    :cond_4e
    :try_start_4e
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3
    :try_end_52
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_52} :catch_70

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, -0x1

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v6, v14

    move-object/from16 v18, v14

    .end local v14    # "intent":Landroid/content/Intent;
    .local v18, "intent":Landroid/content/Intent;
    move-object v14, v0

    move/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, p2

    :try_start_6a
    invoke-interface/range {v3 .. v17}, Landroid/app/IActivityManager;->broadcastIntentWithFeature(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;[Ljava/lang/String;ILandroid/os/Bundle;ZZI)I
    :try_end_6d
    .catch Landroid/os/RemoteException; {:try_start_6a .. :try_end_6d} :catch_6e

    .line 1123
    goto :goto_73

    .line 1121
    :catch_6e
    move-exception v0

    goto :goto_73

    .end local v18    # "intent":Landroid/content/Intent;
    .restart local v14    # "intent":Landroid/content/Intent;
    :catch_70
    move-exception v0

    move-object/from16 v18, v14

    .line 1124
    .end local v14    # "intent":Landroid/content/Intent;
    .restart local v18    # "intent":Landroid/content/Intent;
    :goto_73
    return-void
.end method

.method public synthetic lambda$onOverlaysChanged$1$OverlayManagerService$OverlayChangeListener(Ljava/lang/String;ILjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V
    .registers 19
    .param p1, "overlayTarget"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "overlayPackageName"    # Ljava/lang/String;
    .param p4, "callback"    # Landroid/content/om/ISamsungOverlayCallback;
    .param p5, "enabled"    # Z

    .line 1134
    move-object v1, p0

    move-object v2, p1

    move v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    if-eqz v2, :cond_7c

    .line 1136
    const/4 v3, 0x0

    .line 1137
    .local v3, "isZippedLocaleOverlay":Z
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$500(Lcom/android/server/om/OverlayManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1138
    :try_start_11
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v5, 0x0

    if-eqz v0, :cond_1a

    .line 1139
    move v0, v5

    goto :goto_1b

    :cond_1a
    move v0, v9

    .line 1140
    .local v0, "overlayPkgUserId":I
    :goto_1b
    iget-object v6, v1, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    # getter for: Lcom/android/server/om/OverlayManagerService;->mPackageManager:Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;
    invoke-static {v6}, Lcom/android/server/om/OverlayManagerService;->access$600(Lcom/android/server/om/OverlayManagerService;)Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;

    move-result-object v6

    invoke-virtual {v6, v10, v0, v5}, Lcom/android/server/om/OverlayManagerService$PackageManagerHelperImpl;->getPackageInfo(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 1142
    .local v6, "overlayPackageInfo":Landroid/content/pm/PackageInfo;
    invoke-static {v6}, Lcom/android/server/om/SemSamsungThemeUtils;->isZippedLocaleOverlay(Landroid/content/pm/PackageInfo;)Z

    move-result v7
    :try_end_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_79

    move v12, v7

    .line 1143
    .end local v3    # "isZippedLocaleOverlay":Z
    .local v12, "isZippedLocaleOverlay":Z
    :try_start_2a
    const-string v3, "OverlayManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onOverlaysChanged for overlay = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " isZippedLocaleOverlay "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " pi="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    nop

    .end local v0    # "overlayPkgUserId":I
    .end local v6    # "overlayPackageInfo":Landroid/content/pm/PackageInfo;
    monitor-exit v4
    :try_end_53
    .catchall {:try_start_2a .. :try_end_53} :catchall_76

    .line 1146
    if-eqz v12, :cond_63

    .line 1147
    iget-object v3, v1, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move v4, p2

    # invokes: Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;ZZZ)V
    invoke-static/range {v3 .. v8}, Lcom/android/server/om/OverlayManagerService;->access$1200(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;ZZZ)V

    goto :goto_75

    .line 1152
    :cond_63
    iget-object v0, v1, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    if-eqz v11, :cond_6c

    const/4 v5, 0x1

    .line 1153
    :cond_6c
    const-string v4, "android"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 1152
    # invokes: Lcom/android/server/om/OverlayManagerService;->updateAssets(ILjava/util/List;ZZ)V
    invoke-static {v0, p2, v3, v5, v4}, Lcom/android/server/om/OverlayManagerService;->access$1300(Lcom/android/server/om/OverlayManagerService;ILjava/util/List;ZZ)V

    .line 1155
    .end local v12    # "isZippedLocaleOverlay":Z
    :goto_75
    goto :goto_98

    .line 1145
    .restart local v12    # "isZippedLocaleOverlay":Z
    :catchall_76
    move-exception v0

    move v3, v12

    goto :goto_7a

    .end local v12    # "isZippedLocaleOverlay":Z
    .restart local v3    # "isZippedLocaleOverlay":Z
    :catchall_79
    move-exception v0

    :goto_7a
    :try_start_7a
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_79

    throw v0

    .line 1156
    .end local v3    # "isZippedLocaleOverlay":Z
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onOverlaysChanged for overlay = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " target was null"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OverlayManager"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    :goto_98
    if-eqz v11, :cond_a9

    if-nez v9, :cond_a9

    .line 1162
    move/from16 v3, p5

    :try_start_9e
    invoke-interface {v11, v10, v3}, Landroid/content/om/ISamsungOverlayCallback;->overlayStateChanged(Ljava/lang/String;Z)V
    :try_end_a1
    .catch Landroid/os/RemoteException; {:try_start_9e .. :try_end_a1} :catch_a2

    goto :goto_ab

    .line 1164
    :catch_a2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 1165
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_ac

    .line 1161
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_a9
    move/from16 v3, p5

    .line 1166
    :goto_ab
    nop

    .line 1167
    :goto_ac
    return-void
.end method

.method public onOverlaysChanged(Ljava/lang/String;I)V
    .registers 4
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 1081
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->onOverlaysChanged(Ljava/lang/String;IZ)V

    .line 1082
    return-void
.end method

.method public onOverlaysChanged(Ljava/lang/String;IZ)V
    .registers 6
    .param p1, "targetPackageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "avoidRelaunch"    # Z

    .line 1090
    if-nez p1, :cond_b

    .line 1091
    const-string v0, "OverlayManager"

    const-string/jumbo v1, "onOverlaysChanged. Returning as targetPackageName is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void

    .line 1096
    :cond_b
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    # invokes: Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$1100(Lcom/android/server/om/OverlayManagerService;)V

    .line 1097
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$VfIJ4NPWOTvOsdDTdtYzFGhmrAs;-><init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;ZILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1125
    return-void
.end method

.method public onOverlaysChanged(Ljava/lang/String;Ljava/lang/String;ILandroid/content/om/ISamsungOverlayCallback;Z)V
    .registers 15
    .param p1, "overlayPackageName"    # Ljava/lang/String;
    .param p2, "overlayTarget"    # Ljava/lang/String;
    .param p3, "userId"    # I
    .param p4, "callback"    # Landroid/content/om/ISamsungOverlayCallback;
    .param p5, "enabled"    # Z

    .line 1132
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;->this$0:Lcom/android/server/om/OverlayManagerService;

    # invokes: Lcom/android/server/om/OverlayManagerService;->schedulePersistSettings()V
    invoke-static {v0}, Lcom/android/server/om/OverlayManagerService;->access$1100(Lcom/android/server/om/OverlayManagerService;)V

    .line 1133
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-object v5, p1

    move-object v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/server/om/-$$Lambda$OverlayManagerService$OverlayChangeListener$vu-qzm3jlN-x0vi3Iy09ibHe21s;-><init>(Lcom/android/server/om/OverlayManagerService$OverlayChangeListener;Ljava/lang/String;ILjava/lang/String;Landroid/content/om/ISamsungOverlayCallback;Z)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1168
    return-void
.end method
