.class public Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;
.super Ljava/lang/Object;
.source "CocktailBarUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/cocktailbar/utils/CocktailBarUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CocktailBarWhiteList"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAllowedCocktailCategory(Lcom/samsung/android/cocktailbar/CocktailProviderInfo;I)Z
    .registers 3
    .param p0, "providerInfo"    # Lcom/samsung/android/cocktailbar/CocktailProviderInfo;
    .param p1, "userId"    # I

    .line 37
    iget v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->category:I

    invoke-static {v0}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isCategoryOfWhiteList(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 38
    iget-object v0, p0, Lcom/samsung/android/cocktailbar/CocktailProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils$CocktailBarWhiteList;->isSystemApplication(Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 40
    :cond_13
    const/4 v0, 0x1

    return v0
.end method

.method private static isCategoryOfWhiteList(I)Z
    .registers 2
    .param p0, "category"    # I

    .line 44
    const/16 v0, 0x20

    if-eq p0, v0, :cond_a

    const/16 v0, 0x80

    if-eq p0, v0, :cond_a

    .line 49
    const/4 v0, 0x0

    return v0

    .line 47
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method public static isSystemApplication(Ljava/lang/String;I)Z
    .registers 8
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "userId"    # I

    .line 53
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 54
    .local v0, "packageManager":Landroid/content/pm/IPackageManager;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 55
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Can not get PM"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v1

    .line 59
    :cond_11
    const/16 v2, 0x40

    :try_start_13
    invoke-interface {v0, p0, v2, p1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 61
    .local v2, "pkgInfo":Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_23

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x81

    if-eqz v3, :cond_23

    .line 63
    const/4 v1, 0x1

    return v1

    .line 65
    :cond_23
    new-instance v3, Ljava/lang/StringBuffer;

    const-string/jumbo v4, "isSystemApplication: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    .local v3, "debugString":Ljava/lang/StringBuffer;
    if-nez v2, :cond_36

    .line 67
    const-string v4, " is no signature app"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_42

    .line 69
    :cond_36
    const-string v4, " f="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 71
    :goto_42
    # getter for: Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/cocktailbar/utils/CocktailBarUtils;->access$000()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_4d} :catch_4e

    .line 72
    return v1

    .line 74
    .end local v2    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "debugString":Ljava/lang/StringBuffer;
    :catch_4e
    move-exception v2

    .line 75
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 76
    return v1
.end method
