.class Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;
.super Lcom/android/server/wm/PackageSettingsManager$FileHandler;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomAspectRatioPackageManager"
.end annotation


# instance fields
.field private final mDefaultFullsScreenModePackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFullScreenEnabled:Z

.field private mPackageWithAspectRatioDeclaration:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesMapByUser:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/AspectRatioPackageMap;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldNotApplyAspectRatio:Z

.field final synthetic this$0:Lcom/android/server/wm/PackageSettingsManager;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)V
    .registers 9
    .param p1, "this$0"    # Lcom/android/server/wm/PackageSettingsManager;
    .param p2, "fileManager"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;

    .line 640
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    .line 641
    const/4 v3, 0x2

    const-string v4, "/system/conventionalmode"

    const-string v5, "PackageMap"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/PackageSettingsManager$FileHandler;-><init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;ILjava/lang/String;Ljava/lang/String;)V

    .line 627
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    .line 637
    new-instance v0, Landroid/util/ArraySet;

    const-string v1, "com.netflix.mediaclient"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 638
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mDefaultFullsScreenModePackages:Landroid/util/ArraySet;

    .line 643
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;Lcom/android/server/wm/PackageSettingsManager$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/wm/PackageSettingsManager;
    .param p2, "x1"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;
    .param p3, "x2"    # Lcom/android/server/wm/PackageSettingsManager$1;

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;-><init>(Lcom/android/server/wm/PackageSettingsManager;Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;

    .line 622
    invoke-direct {p0}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->updateFullScreenEnabled()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;
    .param p1, "x1"    # Ljava/io/PrintWriter;
    .param p2, "x2"    # Ljava/lang/String;

    .line 622
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 771
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackagesMapByUser:Ljava/util/Map;

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

    .line 773
    .local v2, "users":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wm/AspectRatioPackageMap;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "CustomAspectRatioPackages (u"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 774
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AspectRatioPackageMap;

    invoke-virtual {v3}, Lcom/android/server/wm/AspectRatioPackageMap;->entrySet()Ljava/util/Set;

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

    .line 775
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

    .line 776
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/wm/PackageSettingsManager;->aspectRatioPolicyToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 775
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 777
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_55

    .line 778
    .end local v2    # "users":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/wm/AspectRatioPackageMap;>;"
    :cond_95
    goto :goto_1b

    .line 779
    :cond_96
    return-void
.end method

.method private getPackagesMapByUserOrDefault(I)Lcom/android/server/wm/AspectRatioPackageMap;
    .registers 5
    .param p1, "userId"    # I

    .line 740
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AspectRatioPackageMap;

    .line 741
    .local v0, "map":Lcom/android/server/wm/AspectRatioPackageMap;
    if-nez v0, :cond_1d

    .line 742
    new-instance v1, Lcom/android/server/wm/AspectRatioPackageMap;

    invoke-direct {v1}, Lcom/android/server/wm/AspectRatioPackageMap;-><init>()V

    move-object v0, v1

    .line 743
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 745
    :cond_1d
    return-object v0
.end method

.method private updateFullScreenEnabled()V
    .registers 3

    .line 749
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget-boolean v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mIsEmergencyMode:Z

    iput-boolean v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mFullScreenEnabled:Z

    .line 750
    if-nez v0, :cond_21

    const v0, 0x3fee147b    # 1.86f

    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget v1, v1, Lcom/android/server/wm/PackageSettingsManager;->mCurrentDisplayAspectRatio:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1f

    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget v0, v0, Lcom/android/server/wm/PackageSettingsManager;->mCurrentDisplayAspectRatio:F

    const v1, 0x3faa9fbe    # 1.333f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    iput-boolean v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mShouldNotApplyAspectRatio:Z

    .line 754
    return-void
.end method


# virtual methods
.method public getMaxAspectRatioPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I
    .registers 13
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "activityInfo"    # Landroid/content/pm/ActivityInfo;

    .line 652
    iget-boolean v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mFullScreenEnabled:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    .line 653
    return v1

    .line 656
    :cond_6
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 664
    .local v0, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 665
    .local v2, "userId":I
    iget-object v3, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AspectRatioPackageMap;

    .line 666
    .local v3, "map":Lcom/android/server/wm/AspectRatioPackageMap;
    if-eqz v3, :cond_29

    .line 667
    invoke-virtual {v3, v0}, Lcom/android/server/wm/AspectRatioPackageMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 668
    .local v4, "policy":Ljava/lang/Integer;
    if-eqz v4, :cond_29

    .line 669
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 673
    .end local v4    # "policy":Ljava/lang/Integer;
    :cond_29
    iget-object v4, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mDefaultFullsScreenModePackages:Landroid/util/ArraySet;

    .line 674
    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 675
    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {p0, v0, v1, v5, v4}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V

    .line 676
    return v5

    .line 679
    :cond_39
    iget-object v4, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget-boolean v4, v4, Lcom/android/server/wm/PackageSettingsManager;->mHasDisplayCutout:Z

    const/4 v5, 0x0

    if-nez v4, :cond_bc

    .line 680
    if-eqz p2, :cond_7f

    iget v4, p2, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    .line 681
    invoke-static {v4}, Lcom/android/server/wm/PackageSettingsManager;->hasDefinedAspectRatio(F)Z

    move-result v4

    if-nez v4, :cond_52

    iget v4, p2, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    .line 682
    invoke-static {v4}, Lcom/android/server/wm/PackageSettingsManager;->hasDefinedAspectRatio(F)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 683
    :cond_52
    iget-object v4, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget v4, v4, Lcom/android/server/wm/PackageSettingsManager;->mCurrentDisplayAspectRatio:F

    iget v6, p2, Landroid/content/pm/ActivityInfo;->maxAspectRatio:F

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_66

    iget-object v4, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget v4, v4, Lcom/android/server/wm/PackageSettingsManager;->mCurrentDisplayAspectRatio:F

    iget v6, p2, Landroid/content/pm/ActivityInfo;->minAspectRatio:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_7f

    .line 685
    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackageWithAspectRatioDeclaration:Ljava/util/Map;

    if-nez v1, :cond_71

    .line 686
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackageWithAspectRatioDeclaration:Ljava/util/Map;

    .line 688
    :cond_71
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackageWithAspectRatioDeclaration:Ljava/util/Map;

    .line 689
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v4, :cond_7a

    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_7b

    :cond_7a
    move-object v4, v0

    .line 688
    :goto_7b
    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    return v5

    .line 694
    :cond_7f
    iget-object v4, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackageWithAspectRatioDeclaration:Ljava/util/Map;

    if-eqz v4, :cond_89

    .line 695
    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_bc

    .line 696
    :cond_89
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v6, 0x1a

    if-lt v4, v6, :cond_90

    .line 697
    return v1

    .line 700
    :cond_90
    iget v4, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    .line 701
    .local v4, "privateFlags":I
    const/16 v6, 0x1400

    .line 703
    .local v6, "resizeableFlags":I
    and-int/lit16 v7, v4, 0x1400

    if-eqz v7, :cond_99

    .line 704
    return v1

    .line 707
    :cond_99
    iget v7, p1, Landroid/content/pm/ApplicationInfo;->maxAspectRatio:F

    .line 708
    .local v7, "maxAspectRatio":F
    invoke-static {v7}, Lcom/android/server/wm/PackageSettingsManager;->hasDefinedAspectRatio(F)Z

    move-result v8

    if-nez v8, :cond_ad

    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v8, :cond_ad

    .line 709
    iget-object v8, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "android.max_aspect"

    invoke-virtual {v8, v9, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v7

    .line 712
    :cond_ad
    invoke-static {v7}, Lcom/android/server/wm/PackageSettingsManager;->hasDefinedAspectRatio(F)Z

    move-result v8

    if-eqz v8, :cond_bc

    iget-object v8, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    iget v8, v8, Lcom/android/server/wm/PackageSettingsManager;->mCurrentDisplayAspectRatio:F

    cmpl-float v8, v7, v8

    if-ltz v8, :cond_bc

    .line 714
    return v1

    .line 718
    .end local v4    # "privateFlags":I
    .end local v6    # "resizeableFlags":I
    .end local v7    # "maxAspectRatio":F
    :cond_bc
    return v5
.end method

.method public synthetic lambda$setMaxAspectRatioPolicy$0$PackageSettingsManager$CustomAspectRatioPackageManager(ILjava/lang/String;I)V
    .registers 10
    .param p1, "restartTaskId"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .line 731
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    const/4 v3, 0x0

    const-string/jumbo v5, "setMaxAspectRatioPolicy"

    move v1, p1

    move-object v2, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/PackageSettingsManager;->killAndRestartTask(ILjava/lang/String;Landroid/app/ActivityOptions;ILjava/lang/String;)V

    return-void
.end method

.method loadFile(ILjava/io/ObjectInputStream;)Z
    .registers 6
    .param p1, "userId"    # I
    .param p2, "stream"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 759
    invoke-virtual {p2}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/AspectRatioPackageMap;

    .line 760
    .local v0, "map":Lcom/android/server/wm/AspectRatioPackageMap;
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mPackagesMapByUser:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    const/4 v1, 0x0

    return v1
.end method

.method saveFile(ILjava/io/ObjectOutputStream;)V
    .registers 4
    .param p1, "userId"    # I
    .param p2, "stream"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 766
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->getPackagesMapByUserOrDefault(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v0

    .line 767
    .local v0, "map":Lcom/android/server/wm/AspectRatioPackageMap;
    invoke-virtual {p2, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 768
    return-void
.end method

.method public setMaxAspectRatioPolicy(Ljava/lang/String;IZI)V
    .registers 12
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "enabled"    # Z
    .param p4, "restartTaskId"    # I

    .line 723
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 724
    .local v0, "userId":I
    invoke-direct {p0, v0}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->getPackagesMapByUserOrDefault(I)Lcom/android/server/wm/AspectRatioPackageMap;

    move-result-object v1

    .line 725
    .local v1, "map":Lcom/android/server/wm/AspectRatioPackageMap;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_e

    .line 726
    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v3

    .line 727
    .local v4, "newPolicy":I
    :goto_f
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, p1, v5}, Lcom/android/server/wm/AspectRatioPackageMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 728
    .local v5, "oldPolicy":Ljava/lang/Integer;
    if-eqz v5, :cond_23

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eq v6, v4, :cond_22

    goto :goto_23

    :cond_22
    move v2, v3

    .line 729
    .local v2, "updated":Z
    :cond_23
    :goto_23
    invoke-virtual {p0, v0}, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->requestToSave(I)V

    .line 730
    if-eqz v2, :cond_38

    .line 731
    iget-object v3, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    # getter for: Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v3}, Lcom/android/server/wm/PackageSettingsManager;->access$1300(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v6, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;

    invoke-direct {v6, p0, p4, p1, v0}, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$CustomAspectRatioPackageManager$pqhVSZdmCltOxwqnrbIVqQ_NVfs;-><init>(Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;ILjava/lang/String;I)V

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 734
    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMaxAspectRatioPolicy: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_48

    const-string v6, "enabled"

    goto :goto_4a

    :cond_48
    const-string v6, "disabled"

    :goto_4a
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", package="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", restartTaskId="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", updated="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "PackageSettingsManager"

    invoke-static {v6, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return-void
.end method

.method shouldNotApplyAspectRatio()Z
    .registers 2

    .line 646
    iget-boolean v0, p0, Lcom/android/server/wm/PackageSettingsManager$CustomAspectRatioPackageManager;->mShouldNotApplyAspectRatio:Z

    return v0
.end method
