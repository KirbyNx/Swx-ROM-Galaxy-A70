.class Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ApplicationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageChangeIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .registers 2

    .line 2143
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;Lcom/android/server/enterprise/application/ApplicationPolicy$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/enterprise/application/ApplicationPolicy;
    .param p2, "x1"    # Lcom/android/server/enterprise/application/ApplicationPolicy$1;

    .line 2143
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;-><init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2147
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    iget-object v3, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;
    invoke-static {v3, v2}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1300(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 2148
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    .line 2149
    .local v4, "pkgAction":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->getSendingUserId()I

    move-result v5

    .line 2152
    .local v5, "userId":I
    if-eqz v3, :cond_131

    :try_start_16
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_131

    if-eqz v4, :cond_131

    .line 2153
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_131

    .line 2154
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_32} :catch_12c

    const-string v7, "ApplicationPolicy"

    const/4 v8, 0x0

    if-eqz v6, :cond_a2

    .line 2155
    :try_start_37
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    .line 2156
    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 2157
    .local v6, "adminUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v9, "android.intent.extra.REPLACING"

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 2159
    .local v9, "extraReplacing":Z
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4c
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8d

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 2160
    .local v12, "adminUid":I
    new-instance v13, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v13, v12}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2161
    .local v13, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget-object v14, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v14, v13, v3, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v14

    if-eqz v14, :cond_8c

    .line 2162
    iget-object v14, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v15, "applicationUninstallationCount"

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v14, v12, v3, v15}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    .line 2165
    if-nez v9, :cond_8c

    iget-object v14, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static {v14, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_8c

    .line 2166
    iget-object v14, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/4 v15, 0x2

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    invoke-static {v14, v3, v12, v15, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1700(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    .line 2168
    iget-object v14, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const/high16 v15, 0x1000000

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->setApplicationPkgNameControlState(Ljava/lang/String;IIZ)Z
    invoke-static {v14, v3, v12, v15, v10}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1700(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;IIZ)Z

    .line 2171
    const-string v14, "App removed, clear masks"

    invoke-static {v7, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    .end local v12    # "adminUid":I
    .end local v13    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_8c
    goto :goto_4c

    .line 2176
    :cond_8d
    if-nez v9, :cond_a0

    iget-object v7, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->isDualApp(Landroid/os/Bundle;)Z
    invoke-static {v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_a0

    .line 2177
    iget-object v7, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileRuntimePermissionsOnUninstallation(Ljava/lang/String;)V
    invoke-static {v7, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1900(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    .line 2180
    .end local v6    # "adminUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v9    # "extraReplacing":Z
    :cond_a0
    goto/16 :goto_11a

    :cond_a2
    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_bc

    .line 2181
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->isDualApp(Landroid/os/Bundle;)Z
    invoke-static {v6, v7}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_11a

    .line 2182
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileRuntimePermissionsOnInstallation(Ljava/lang/String;I)V
    invoke-static {v6, v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    goto :goto_11a

    .line 2184
    :cond_bc
    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11a

    .line 2185
    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # getter for: Lcom/android/server/enterprise/application/ApplicationPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    invoke-static {v6}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1400(Lcom/android/server/enterprise/application/ApplicationPolicy;)Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 2187
    .local v6, "uidList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_d2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_fc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 2188
    .local v10, "storedUid":I
    new-instance v11, Lcom/samsung/android/knox/ContextInfo;

    invoke-direct {v11, v10}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 2189
    .local v11, "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    iget-object v12, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual {v12, v11, v3, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->isManagedAppInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[Lcom/samsung/android/knox/application/ManagedAppInfo;)Lcom/samsung/android/knox/application/ManagedAppInfo;

    move-result-object v12

    if-eqz v12, :cond_fb

    .line 2190
    iget-object v12, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    const-string v13, "applicationInstallationCount"

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateCount(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v12, v10, v3, v13}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1500(Lcom/android/server/enterprise/application/ApplicationPolicy;ILjava/lang/String;Ljava/lang/String;)V

    .line 2191
    const-string v12, "App install count incremented"

    invoke-static {v7, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2193
    .end local v10    # "storedUid":I
    .end local v11    # "cxtInfo":Lcom/samsung/android/knox/ContextInfo;
    :cond_fb
    goto :goto_d2

    .line 2195
    :cond_fc
    iget-object v7, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->isSystemApp(Ljava/lang/String;)Z
    invoke-static {v7, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1600(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_109

    .line 2196
    iget-object v7, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->updateSystemAppDisableState(Ljava/lang/String;)V
    invoke-static {v7, v3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2100(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;)V

    .line 2199
    :cond_109
    iget-object v7, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->isDualApp(Landroid/os/Bundle;)Z
    invoke-static {v7, v8}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$1800(Lcom/android/server/enterprise/application/ApplicationPolicy;Landroid/os/Bundle;)Z

    move-result v7

    if-nez v7, :cond_11a

    .line 2200
    iget-object v7, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->reconcileRuntimePermissionsOnInstallation(Ljava/lang/String;I)V
    invoke-static {v7, v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2000(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)V

    .line 2204
    .end local v6    # "uidList1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_11a
    :goto_11a
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_131

    .line 2205
    iget-object v0, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    iget-object v6, v1, Lcom/android/server/enterprise/application/ApplicationPolicy$PackageChangeIntentReceiver;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->getProvidersFromPackage(Ljava/lang/String;I)Ljava/util/List;
    invoke-static {v6, v3, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2200(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    # invokes: Lcom/android/server/enterprise/application/ApplicationPolicy;->refreshWidgetStatus(Ljava/util/List;I)V
    invoke-static {v0, v6, v5}, Lcom/android/server/enterprise/application/ApplicationPolicy;->access$2300(Lcom/android/server/enterprise/application/ApplicationPolicy;Ljava/util/List;I)V
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_12b} :catch_12c

    goto :goto_131

    .line 2209
    :catch_12c
    move-exception v0

    .line 2210
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_132

    .line 2211
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_131
    :goto_131
    nop

    .line 2212
    :goto_132
    return-void
.end method
