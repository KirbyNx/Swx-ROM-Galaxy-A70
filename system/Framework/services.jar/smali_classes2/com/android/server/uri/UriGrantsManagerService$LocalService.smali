.class final Lcom/android/server/uri/UriGrantsManagerService$LocalService;
.super Ljava/lang/Object;
.source "UriGrantsManagerService.java"

# interfaces
.implements Lcom/android/server/uri/UriGrantsManagerInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/uri/UriGrantsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/uri/UriGrantsManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;)V
    .registers 2

    .line 1392
    iput-object p1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriGrantsManagerService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/uri/UriGrantsManagerService;
    .param p2, "x1"    # Lcom/android/server/uri/UriGrantsManagerService$1;

    .line 1392
    invoke-direct {p0, p1}, Lcom/android/server/uri/UriGrantsManagerService$LocalService;-><init>(Lcom/android/server/uri/UriGrantsManagerService;)V

    return-void
.end method


# virtual methods
.method public checkAuthorityGrants(ILandroid/content/pm/ProviderInfo;IZ)Z
    .registers 7
    .param p1, "callingUid"    # I
    .param p2, "cpi"    # Landroid/content/pm/ProviderInfo;
    .param p3, "userId"    # I
    .param p4, "checkUser"    # Z

    .line 1477
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1478
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->checkAuthorityGrantsLocked(ILandroid/content/pm/ProviderInfo;IZ)Z
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->access$1400(Lcom/android/server/uri/UriGrantsManagerService;ILandroid/content/pm/ProviderInfo;IZ)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1480
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;II)I
    .registers 14
    .param p1, "callingUid"    # I
    .param p2, "targetPkg"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;
    .param p4, "modeFlags"    # I
    .param p5, "userId"    # I

    .line 1418
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string v1, "checkGrantUriPermission"

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->access$800(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    .line 1419
    iget-object v2, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionUnlocked(ILjava/lang/String;Landroid/net/Uri;II)I
    invoke-static/range {v2 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->access$900(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/net/Uri;II)I

    move-result v0

    return v0
.end method

.method public checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;
    .registers 13
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingUid"    # I
    .param p3, "targetPkg"    # Ljava/lang/String;
    .param p4, "targetUserId"    # I

    .line 1426
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v0

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    move v5, v0

    .line 1427
    .local v5, "mode":I
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const/4 v6, 0x0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move v7, p4

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->checkGrantUriPermissionFromIntentUnlocked(ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;
    invoke-static/range {v1 .. v7}, Lcom/android/server/uri/UriGrantsManagerService;->access$1000(Lcom/android/server/uri/UriGrantsManagerService;ILjava/lang/String;Landroid/content/Intent;ILcom/android/server/uri/NeededUriGrants;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    return-object v0
.end method

.method public checkUriPermission(Lcom/android/server/uri/GrantUri;II)Z
    .registers 6
    .param p1, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p2, "uid"    # I
    .param p3, "modeFlags"    # I

    .line 1409
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1410
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->checkUriPermissionLocked(Lcom/android/server/uri/GrantUri;II)Z
    invoke-static {v1, p1, p2, p3}, Lcom/android/server/uri/UriGrantsManagerService;->access$700(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/GrantUri;II)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 1412
    :catchall_f
    move-exception v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 15
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "dumpAll"    # Z
    .param p3, "dumpPackage"    # Ljava/lang/String;

    .line 1485
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1486
    const/4 v1, 0x0

    .line 1487
    .local v1, "needSep":Z
    const/4 v2, 0x0

    .line 1488
    .local v2, "printedAnything":Z
    :try_start_9
    iget-object v3, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/uri/UriGrantsManagerService;->access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_95

    .line 1489
    const/4 v3, 0x0

    .line 1490
    .local v3, "printed":Z
    const/4 v4, -0x2

    .line 1491
    .local v4, "dumpUid":I
    if-eqz p3, :cond_25

    .line 1492
    iget-object v5, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    iget-object v5, v5, Lcom/android/server/uri/UriGrantsManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    const/high16 v6, 0x400000

    const/4 v7, 0x0

    invoke-virtual {v5, p3, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getPackageUidInternal(Ljava/lang/String;II)I

    move-result v5

    move v4, v5

    .line 1494
    :cond_25
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_26
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/uri/UriGrantsManagerService;->access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_95

    .line 1495
    iget-object v6, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;
    invoke-static {v6}, Lcom/android/server/uri/UriGrantsManagerService;->access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    .line 1496
    .local v6, "uid":I
    const/4 v7, -0x1

    if-lt v4, v7, :cond_46

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v7

    if-eq v7, v4, :cond_46

    .line 1497
    goto :goto_92

    .line 1499
    :cond_46
    iget-object v7, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    .line 1500
    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mGrantedUriPermissions:Landroid/util/SparseArray;
    invoke-static {v7}, Lcom/android/server/uri/UriGrantsManagerService;->access$1500(Lcom/android/server/uri/UriGrantsManagerService;)Landroid/util/SparseArray;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/ArrayMap;

    .line 1501
    .local v7, "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    if-nez v3, :cond_61

    .line 1502
    if-eqz v1, :cond_59

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1503
    :cond_59
    const/4 v1, 0x1

    .line 1504
    const-string v8, "  Granted Uri Permissions:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1505
    const/4 v3, 0x1

    .line 1506
    const/4 v2, 0x1

    .line 1508
    :cond_61
    const-string v8, "  * UID "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v8, " holds:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {v7}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_76
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_92

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/uri/UriPermission;

    .line 1510
    .local v9, "perm":Lcom/android/server/uri/UriPermission;
    const-string v10, "    "

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1511
    if-eqz p2, :cond_91

    .line 1512
    const-string v10, "      "

    invoke-virtual {v9, p1, v10}, Lcom/android/server/uri/UriPermission;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 1514
    .end local v9    # "perm":Lcom/android/server/uri/UriPermission;
    :cond_91
    goto :goto_76

    .line 1494
    .end local v6    # "uid":I
    .end local v7    # "perms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Lcom/android/server/uri/GrantUri;Lcom/android/server/uri/UriPermission;>;"
    :cond_92
    :goto_92
    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    .line 1518
    .end local v3    # "printed":Z
    .end local v4    # "dumpUid":I
    .end local v5    # "i":I
    :cond_95
    if-nez v2, :cond_9c

    .line 1519
    const-string v3, "  (nothing)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    .end local v1    # "needSep":Z
    .end local v2    # "printedAnything":Z
    :cond_9c
    monitor-exit v0

    .line 1522
    return-void

    .line 1521
    :catchall_9e
    move-exception v1

    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_9 .. :try_end_a0} :catchall_9e

    throw v1
.end method

.method public grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    .registers 4
    .param p1, "needed"    # Lcom/android/server/uri/NeededUriGrants;
    .param p2, "owner"    # Lcom/android/server/uri/UriPermissionOwner;

    .line 1434
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->grantUriPermissionUncheckedFromIntent(Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/uri/UriGrantsManagerService;->access$1100(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/uri/UriPermissionOwner;)V

    .line 1435
    return-void
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 1446
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    const-string/jumbo v1, "newUriPermissionOwner"

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/uri/UriGrantsManagerService;->access$800(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;)V

    .line 1447
    new-instance v0, Lcom/android/server/uri/UriPermissionOwner;

    invoke-direct {v0, p0, p1}, Lcom/android/server/uri/UriPermissionOwner;-><init>(Lcom/android/server/uri/UriGrantsManagerInternal;Ljava/lang/Object;)V

    .line 1448
    .local v0, "owner":Lcom/android/server/uri/UriPermissionOwner;
    invoke-virtual {v0}, Lcom/android/server/uri/UriPermissionOwner;->getExternalToken()Landroid/os/Binder;

    move-result-object v1

    return-object v1
.end method

.method public onSystemReady()V
    .registers 3

    .line 1439
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1440
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->readGrantedUriPermissionsLocked()V
    invoke-static {v1}, Lcom/android/server/uri/UriGrantsManagerService;->access$1200(Lcom/android/server/uri/UriGrantsManagerService;)V

    .line 1441
    monitor-exit v0

    .line 1442
    return-void

    .line 1441
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public removeUriPermissionIfNeeded(Lcom/android/server/uri/UriPermission;)V
    .registers 4
    .param p1, "perm"    # Lcom/android/server/uri/UriPermission;

    .line 1395
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1396
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionIfNeededLocked(Lcom/android/server/uri/UriPermission;)V
    invoke-static {v1, p1}, Lcom/android/server/uri/UriGrantsManagerService;->access$500(Lcom/android/server/uri/UriGrantsManagerService;Lcom/android/server/uri/UriPermission;)V

    .line 1397
    monitor-exit v0

    .line 1398
    return-void

    .line 1397
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public removeUriPermissionsForPackage(Ljava/lang/String;IZZ)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # I
    .param p3, "persistable"    # Z
    .param p4, "targetOnly"    # Z

    .line 1454
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # getter for: Lcom/android/server/uri/UriGrantsManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/uri/UriGrantsManagerService;->access$300(Lcom/android/server/uri/UriGrantsManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1455
    :try_start_7
    iget-object v1, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->removeUriPermissionsForPackageLocked(Ljava/lang/String;IZZ)V
    invoke-static {v1, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->access$1300(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;IZZ)V

    .line 1457
    monitor-exit v0

    .line 1458
    return-void

    .line 1457
    :catchall_e
    move-exception v1

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v1
.end method

.method public revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    .registers 6
    .param p1, "targetPackage"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "grantUri"    # Lcom/android/server/uri/GrantUri;
    .param p4, "modeFlags"    # I

    .line 1403
    iget-object v0, p0, Lcom/android/server/uri/UriGrantsManagerService$LocalService;->this$0:Lcom/android/server/uri/UriGrantsManagerService;

    # invokes: Lcom/android/server/uri/UriGrantsManagerService;->revokeUriPermission(Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/uri/UriGrantsManagerService;->access$600(Lcom/android/server/uri/UriGrantsManagerService;Ljava/lang/String;ILcom/android/server/uri/GrantUri;I)V

    .line 1405
    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    .registers 9
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # I
    .param p4, "userId"    # I

    .line 1462
    invoke-static {p1}, Lcom/android/server/uri/UriPermissionOwner;->fromExternalToken(Landroid/os/IBinder;)Lcom/android/server/uri/UriPermissionOwner;

    move-result-object v0

    .line 1463
    .local v0, "owner":Lcom/android/server/uri/UriPermissionOwner;
    if-eqz v0, :cond_15

    .line 1467
    if-nez p2, :cond_c

    .line 1468
    invoke-virtual {v0, p3}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermissions(I)V

    goto :goto_14

    .line 1470
    :cond_c
    new-instance v1, Lcom/android/server/uri/GrantUri;

    invoke-direct {v1, p4, p2, p3}, Lcom/android/server/uri/GrantUri;-><init>(ILandroid/net/Uri;I)V

    invoke-virtual {v0, v1, p3}, Lcom/android/server/uri/UriPermissionOwner;->removeUriPermission(Lcom/android/server/uri/GrantUri;I)V

    .line 1472
    :goto_14
    return-void

    .line 1464
    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown owner: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
