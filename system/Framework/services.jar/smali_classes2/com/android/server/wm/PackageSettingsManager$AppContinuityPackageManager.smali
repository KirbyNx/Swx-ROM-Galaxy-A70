.class Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;
.super Lcom/android/server/wm/PackageSettingsManager$FileHandler;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppContinuityPackageManager"
.end annotation


# instance fields
.field private mAllAppContinuityModeEnabled:Z

.field private final mPackagesMapByUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/AppContinuityModeHashMap;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/PackageSettingsManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/wm/PackageSettingsManager;
    .param p2, "fileManager"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    .line 487
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    .line 488
    const/4 v3, 0x1

    const-string v4, "/system/multidisplay/"

    const-string v5, "AppContinuityPackageMap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;-><init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;ILjava/lang/String;Ljava/lang/String;)V

    .line 483
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    .line 485
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->mAllAppContinuityModeEnabled:Z

    .line 490
    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 607
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 608
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_96

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 609
    .local v2, "users":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wm/AppContinuityModeHashMap;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "AppContinuityPackages (u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppContinuityModeHashMap;

    invoke-virtual {v3}, Lcom/android/server/wm/AppContinuityModeHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_55
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_95

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 611
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 612
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/wm/PackageSettingsManager;->appContinuityPolicyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 611
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 613
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_55

    .line 614
    .end local v2    # "users":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wm/AppContinuityModeHashMap;>;"
    :cond_95
    goto :goto_1b

    .line 615
    :cond_96
    return-void
.end method

.method private getAppContinuityModeInnerLocked(Ljava/lang/String;I)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 522
    nop

    .line 523
    invoke-static {p2}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 525
    const-string v0, "com.samsung.knox.securefolder"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 527
    :cond_f
    const/4 p2, 0x0

    .line 530
    :cond_10
    invoke-direct {p0, p2}, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->getPackagesMapByUserOrDefault(I)Lcom/android/server/wm/AppContinuityModeHashMap;

    move-result-object v0

    .line 539
    .local v0, "map":Lcom/android/server/wm/AppContinuityModeHashMap;
    nop

    .line 538
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppContinuityModeHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_29

    .line 539
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppContinuityModeHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_29

    .line 540
    goto :goto_2a

    .line 541
    :cond_29
    const/4 v2, 0x2

    .line 538
    :goto_2a
    return v2
.end method

.method private getPackagesMapByUserOrDefault(I)Lcom/android/server/wm/AppContinuityModeHashMap;
    .registers 5
    .param p1, "userId"    # I

    .line 493
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AppContinuityModeHashMap;

    .line 494
    .local v0, "map":Lcom/android/server/wm/AppContinuityModeHashMap;
    if-nez v0, :cond_1d

    .line 495
    new-instance v1, Lcom/android/server/wm/AppContinuityModeHashMap;

    invoke-direct {v1}, Lcom/android/server/wm/AppContinuityModeHashMap;-><init>()V

    move-object v0, v1

    .line 496
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    :cond_1d
    return-object v0
.end method


# virtual methods
.method public enableAllAppContinuityMode(Z)V
    .registers 2
    .param p1, "allAppContinuityModeOn"    # Z

    .line 580
    iput-boolean p1, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->mAllAppContinuityModeEnabled:Z

    .line 581
    return-void
.end method

.method public getAppContinuityModeLocked(Ljava/lang/String;II)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "resizeMode"    # I
    .param p3, "userId"    # I

    .line 502
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mDisplayCompatPackages:Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->getPolicy(Ljava/lang/String;)I

    move-result v0

    .line 503
    .local v0, "displayCompatPolicy":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq p2, v3, :cond_11

    if-ne p2, v1, :cond_10

    goto :goto_11

    :cond_10
    move v1, v2

    .line 508
    .local v1, "isResizeable":Z
    :cond_11
    :goto_11
    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager;->isForcedUnresizeableDisplayCompatPolicy(I)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 509
    return v2

    .line 510
    :cond_18
    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager;->isForcedResizeableDisplayCompatPolicy(I)Z

    move-result v3

    if-nez v3, :cond_22

    if-eqz v1, :cond_21

    goto :goto_22

    .line 518
    :cond_21
    return v2

    .line 515
    :cond_22
    :goto_22
    invoke-direct {p0, p1, p3}, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->getAppContinuityModeInnerLocked(Ljava/lang/String;I)I

    move-result v2

    return v2
.end method

.method public loadFile(ILjava/io/ObjectInputStream;)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 587
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 588
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/android/server/wm/AppContinuityModeHashMap;

    xor-int/lit8 v1, v1, 0x1

    .line 590
    .local v1, "isLegacy":Z
    if-eqz v1, :cond_16

    .line 591
    new-instance v2, Lcom/android/server/wm/AppContinuityModeHashMap;

    invoke-direct {v2}, Lcom/android/server/wm/AppContinuityModeHashMap;-><init>()V

    .line 592
    .local v2, "map":Lcom/android/server/wm/AppContinuityModeHashMap;
    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/AppContinuityModeHashMap;->putAll(Ljava/util/Map;)V

    goto :goto_19

    .line 594
    .end local v2    # "map":Lcom/android/server/wm/AppContinuityModeHashMap;
    :cond_16
    move-object v2, v0

    check-cast v2, Lcom/android/server/wm/AppContinuityModeHashMap;

    .line 596
    .restart local v2    # "map":Lcom/android/server/wm/AppContinuityModeHashMap;
    :goto_19
    iget-object v3, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 597
    return v1
.end method

.method public saveFile(ILjava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->getPackagesMapByUserOrDefault(I)Lcom/android/server/wm/AppContinuityModeHashMap;

    move-result-object v0

    .line 603
    .local v0, "map":Lcom/android/server/wm/AppContinuityModeHashMap;
    invoke-virtual {p2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 604
    return-void
.end method

.method public setAllAppContinuityModeLocked(IZ)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "allAppContinuityModeOn"    # Z

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAllAppContinuityModeLocked : u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", allAppContinuityModeOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageSettingsManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    iput-boolean p2, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->mAllAppContinuityModeEnabled:Z

    .line 568
    if-eqz p2, :cond_57

    .line 569
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mAppContinuityPackages:Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;

    invoke-direct {v0, p1}, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->getPackagesMapByUserOrDefault(I)Lcom/android/server/wm/AppContinuityModeHashMap;

    move-result-object v0

    .line 570
    .local v0, "map":Lcom/android/server/wm/AppContinuityModeHashMap;
    invoke-virtual {v0}, Lcom/android/server/wm/AppContinuityModeHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_33
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_54

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 571
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_53

    .line 572
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/AppContinuityModeHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_53
    goto :goto_33

    .line 575
    :cond_54
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->requestToSave(I)V

    .line 577
    .end local v0    # "map":Lcom/android/server/wm/AppContinuityModeHashMap;
    :cond_57
    return-void
.end method

.method public setAppContinuityModeLocked(Ljava/lang/String;IZ)Z
    .registers 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "applyAppContinuityMode"    # Z

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAppContinuityModeLocked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", apply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageSettingsManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget-object v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mAppContinuityPackages:Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;

    invoke-direct {v0, p2}, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->getPackagesMapByUserOrDefault(I)Lcom/android/server/wm/AppContinuityModeHashMap;

    move-result-object v0

    .line 550
    .local v0, "map":Lcom/android/server/wm/AppContinuityModeHashMap;
    const/4 v2, 0x1

    if-eqz p3, :cond_34

    .line 551
    move v3, v2

    goto :goto_35

    .line 552
    :cond_34
    const/4 v3, 0x2

    :goto_35
    nop

    .line 553
    .local v3, "mode":I
    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppContinuityModeHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-virtual {v0, p1}, Lcom/android/server/wm/AppContinuityModeHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_50

    .line 554
    const-string/jumbo v2, "setAppContinuityModeLocked: same value"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v1, 0x0

    return v1

    .line 557
    :cond_50
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/AppContinuityModeHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    invoke-virtual {p0, p2}, Lcom/android/server/wm/PackageSettingsManager$AppContinuityPackageManager;->requestToSave(I)V

    .line 559
    return v2
.end method
