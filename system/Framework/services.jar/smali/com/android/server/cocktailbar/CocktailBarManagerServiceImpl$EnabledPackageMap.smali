.class Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;
.super Ljava/lang/Object;
.source "CocktailBarManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnabledPackageMap"
.end annotation


# instance fields
.field private mEnabledPackage:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 2934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2936
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$1;

    .line 2934
    invoke-direct {p0}, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;-><init>()V

    return-void
.end method


# virtual methods
.method public getEnabledCount(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 2939
    iget-object v0, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 2940
    .local v0, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_c

    const/4 v1, 0x0

    goto :goto_10

    :cond_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_10
    return v1
.end method

.method public putEnabledProvider(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 2944
    if-nez p1, :cond_3

    .line 2945
    return-void

    .line 2947
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2948
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2949
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2950
    .local v2, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_1f

    .line 2951
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 2952
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_28

    .line 2954
    :cond_1f
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 2955
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2958
    :cond_28
    :goto_28
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2959
    return-void
.end method

.method public removeEnabledProvider(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 2962
    if-nez p1, :cond_3

    .line 2963
    return-void

    .line 2965
    :cond_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2966
    .local v0, "packageName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    .line 2967
    .local v1, "className":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2968
    .local v2, "providerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_16

    .line 2969
    return-void

    .line 2971
    :cond_16
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 2972
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2975
    :cond_1f
    iget-object v3, p0, Lcom/android/server/cocktailbar/CocktailBarManagerServiceImpl$EnabledPackageMap;->mEnabledPackage:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2976
    return-void
.end method
