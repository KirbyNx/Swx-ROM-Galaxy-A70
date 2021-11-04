.class public Lcom/android/server/am/mars/filter/filter/WallPaperFilter;
.super Ljava/lang/Object;
.source "WallPaperFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mWallpaperPackage:Ljava/lang/String;

.field userId:Ljava/lang/Integer;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->TAG:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    .line 20
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/WallPaperFilter$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/mars/filter/filter/WallPaperFilter$1;

    .line 13
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;
    .registers 1

    .line 27
    # getter for: Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->INSTANCE:Lcom/android/server/am/mars/filter/filter/WallPaperFilter;
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter$WallPaperFilterHolder;->access$100()Lcom/android/server/am/mars/filter/filter/WallPaperFilter;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperPackage()V
    .registers 5

    .line 52
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    .line 53
    .local v0, "info":Landroid/app/WallpaperInfo;
    if-nez v0, :cond_15

    .line 54
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "ignore in case of default image wallpaper"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34

    .line 56
    :cond_15
    invoke-virtual {v0}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    .line 57
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWallpaperPackage, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 61
    .end local v0    # "info":Landroid/app/WallpaperInfo;
    :goto_34
    goto :goto_4d

    .line 59
    :catch_35
    move-exception v0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWallpaperPackage() exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_4d
    return-void
.end method


# virtual methods
.method public deInit()V
    .registers 2

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "uid"    # I
    .param p4, "policyNum"    # I

    .line 41
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    if-ne p2, v0, :cond_3a

    .line 42
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    if-eqz v0, :cond_3a

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 43
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "filter : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const/16 v0, 0xa

    return v0

    .line 47
    :cond_3a
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .line 31
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->getWallpaperPackage()V

    .line 33
    return-void
.end method

.method public onWallPaperPkgBinded(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/Integer;

    .line 65
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->mWallpaperPackage:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/android/server/am/mars/filter/filter/WallPaperFilter;->userId:Ljava/lang/Integer;

    .line 67
    return-void
.end method
