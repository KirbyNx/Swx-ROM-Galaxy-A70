.class Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DisplayCompatPackageManager"
.end annotation


# instance fields
.field final mCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/PolicyDataMap;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagesMapBySystem:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagesMapByUserSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/PackageSettingsManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PackageSettingsManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/PackageSettingsManager;

    .line 786
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 794
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    .line 852
    new-instance v0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$DisplayCompatPackageManager$-sr6p0WeTR9TNzsRmqg8Ao3YAzc;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$DisplayCompatPackageManager$-sr6p0WeTR9TNzsRmqg8Ao3YAzc;-><init>(Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;)V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 868
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DisplayCompatPackages(System) size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    .line 869
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 868
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 871
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    if-eqz v1, :cond_9e

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9e

    .line 872
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DisplayCompatPackages(UserSetting)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 873
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 874
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 875
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/wm/PackageSettingsManager;->displayCompatPolicyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 874
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 876
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_5e

    .line 878
    :cond_9e
    return-void
.end method


# virtual methods
.method public clearUserSettings()V
    .registers 2

    .line 847
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 848
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 850
    :cond_7
    return-void
.end method

.method public getPolicy(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 807
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    # getter for: Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v0}, Lcom/android/server/wm/PackageSettingsManager;->access$1300(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_c

    .line 808
    return v1

    .line 810
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    if-eqz v0, :cond_26

    .line 811
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 812
    .local v0, "value":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_26

    .line 813
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 814
    .local v2, "policy":I
    const/4 v3, 0x1

    if-eq v2, v3, :cond_25

    const/4 v3, 0x2

    if-ne v2, v3, :cond_26

    .line 816
    :cond_25
    return v2

    .line 820
    .end local v0    # "value":Ljava/lang/Object;
    .end local v2    # "policy":I
    :cond_26
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 821
    .restart local v0    # "value":Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_3d

    .line 822
    move-object v2, v0

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 823
    .restart local v2    # "policy":I
    if-eq v2, v1, :cond_3c

    const/4 v1, 0x4

    if-ne v2, v1, :cond_3d

    .line 825
    :cond_3c
    return v2

    .line 829
    .end local v2    # "policy":I
    :cond_3d
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    # getter for: Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/PackageSettingsManager;->access$1300(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    const-string v2, "com.samsung.android.foldable.fit_to_display"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    .line 830
    # getter for: Lcom/android/server/wm/PackageSettingsManager;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {v1}, Lcom/android/server/wm/PackageSettingsManager;->access$1300(Lcom/android/server/wm/PackageSettingsManager;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    const-string v2, "android.supports_size_changes"

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->hasMetaData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    goto :goto_60

    .line 834
    :cond_5e
    const/4 v1, 0x0

    return v1

    .line 831
    :cond_60
    :goto_60
    const/4 v1, 0x5

    return v1
.end method

.method public synthetic lambda$new$0$PackageSettingsManager$DisplayCompatPackageManager(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 855
    const-string/jumbo v0, "w"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 856
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    const/4 v1, 0x3

    .line 857
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 856
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_26

    .line 858
    :cond_14
    const-string v0, "b"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 859
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    const/4 v1, 0x4

    .line 860
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 859
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    :cond_26
    :goto_26
    return-void
.end method

.method public synthetic lambda$new$1$PackageSettingsManager$DisplayCompatPackageManager(Lcom/android/server/wm/PolicyDataMap;)V
    .registers 3
    .param p1, "policyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 853
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 854
    new-instance v0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$DisplayCompatPackageManager$IjIpBB868nmUbFXEZ_48BildA1Y;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$DisplayCompatPackageManager$IjIpBB868nmUbFXEZ_48BildA1Y;-><init>(Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/PolicyDataMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 863
    return-void
.end method

.method public setPolicy(Ljava/util/Map;Z)V
    .registers 4
    .param p1, "requestedPackages"    # Ljava/util/Map;
    .param p2, "replaceAll"    # Z

    .line 838
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 839
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    goto :goto_11

    .line 840
    :cond_c
    if-eqz p2, :cond_11

    .line 841
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 843
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$DisplayCompatPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 844
    return-void
.end method
