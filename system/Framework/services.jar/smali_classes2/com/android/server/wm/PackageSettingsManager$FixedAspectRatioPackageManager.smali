.class Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FixedAspectRatioPackageManager"
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
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagesMapByUserSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wm/PackageSettingsManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PackageSettingsManager;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/wm/PackageSettingsManager;

    .line 885
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->this$0:Lcom/android/server/wm/PackageSettingsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    .line 931
    new-instance v0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$FixedAspectRatioPackageManager$KG7XNM5GSdlWv2CGMHAM6PkbVTA;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$FixedAspectRatioPackageManager$KG7XNM5GSdlWv2CGMHAM6PkbVTA;-><init>(Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;)V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method private dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    .local v0, "innerPrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_36

    .line 952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FixedAspectRatioPackages(System) size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    .line 953
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 952
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 955
    :cond_36
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    if-eqz v1, :cond_94

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    .line 956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "FixedAspectRatioPackages(UserSetting)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 957
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_94

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 958
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
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

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 959
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Float;>;"
    goto :goto_5e

    .line 961
    :cond_94
    return-void
.end method


# virtual methods
.method public clearUserSettings()V
    .registers 2

    .line 926
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 927
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 929
    :cond_7
    return-void
.end method

.method public getAspectRatio(Ljava/lang/String;)F
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 893
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->getAspectRatioByUserSettings(Ljava/lang/String;)F

    move-result v0

    .line 894
    .local v0, "aspectRatioByUserSettings":F
    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_c

    .line 895
    move v1, v0

    goto :goto_10

    :cond_c
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->getAspectRatioBySystem(Ljava/lang/String;)F

    move-result v1

    .line 894
    :goto_10
    return v1
.end method

.method public getAspectRatioBySystem(Ljava/lang/String;)F
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 909
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 910
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_12

    .line 911
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 913
    :cond_12
    const/high16 v1, -0x40800000    # -1.0f

    return v1
.end method

.method public getAspectRatioByUserSettings(Ljava/lang/String;)F
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 899
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 900
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 901
    .local v0, "value":Ljava/lang/Object;
    instance-of v1, v0, Ljava/lang/Float;

    if-eqz v1, :cond_14

    .line 902
    move-object v1, v0

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    return v1

    .line 905
    .end local v0    # "value":Ljava/lang/Object;
    :cond_14
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public synthetic lambda$new$0$PackageSettingsManager$FixedAspectRatioPackageManager(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 934
    const v0, 0x3fe38e39

    .line 935
    .local v0, "aspectRatio":F
    const-string v1, ""

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_26

    .line 937
    :try_start_b
    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 938
    .local v1, "split":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 939
    .local v2, "longSize":F
    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1f} :catch_22

    .line 940
    .local v3, "shortSize":F
    div-float v0, v2, v3

    .line 943
    .end local v1    # "split":[Ljava/lang/String;
    .end local v2    # "longSize":F
    .end local v3    # "shortSize":F
    goto :goto_26

    .line 941
    :catch_22
    move-exception v1

    .line 942
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 945
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    return-void
.end method

.method public synthetic lambda$new$1$PackageSettingsManager$FixedAspectRatioPackageManager(Lcom/android/server/wm/PolicyDataMap;)V
    .registers 3
    .param p1, "policyDataMap"    # Lcom/android/server/wm/PolicyDataMap;

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapBySystem:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 933
    new-instance v0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$FixedAspectRatioPackageManager$GdSQHAp8AHAFJGjTLVZHYAPfjio;

    invoke-direct {v0, p0}, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$FixedAspectRatioPackageManager$GdSQHAp8AHAFJGjTLVZHYAPfjio;-><init>(Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/PolicyDataMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 947
    return-void
.end method

.method public setAspectRatio(Ljava/util/Map;Z)V
    .registers 4
    .param p1, "requestedPackages"    # Ljava/util/Map;
    .param p2, "replaceAll"    # Z

    .line 917
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    if-nez v0, :cond_c

    .line 918
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    goto :goto_11

    .line 919
    :cond_c
    if-eqz p2, :cond_11

    .line 920
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 922
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/server/wm/PackageSettingsManager$FixedAspectRatioPackageManager;->mPackagesMapByUserSettings:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 923
    return-void
.end method
