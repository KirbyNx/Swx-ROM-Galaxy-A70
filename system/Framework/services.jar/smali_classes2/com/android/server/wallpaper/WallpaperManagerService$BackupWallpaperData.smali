.class Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;
.super Ljava/lang/Object;
.source "WallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackupWallpaperData"
.end annotation


# instance fields
.field key:I

.field realityKey:I

.field settingSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

.field wallpaperSet:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .registers 4
    .param p2, "key"    # I

    .line 6394
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;II)V

    .line 6395
    return-void
.end method

.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;II)V
    .registers 4
    .param p2, "key"    # I
    .param p3, "realityKey"    # I

    .line 6397
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6388
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->settingSet:Landroid/util/SparseArray;

    .line 6391
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->wallpaperSet:Landroid/util/SparseArray;

    .line 6398
    iput p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->key:I

    .line 6399
    iput p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->realityKey:I

    .line 6400
    return-void
.end method


# virtual methods
.method getSettingData(I)Ljava/util/HashMap;
    .registers 3
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6441
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->settingSet:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method getWallpaperData(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .registers 3
    .param p1, "which"    # I

    .line 6403
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->wallpaperSet:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method getWallpaperDataWhichSet()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6407
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6408
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->wallpaperSet:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    .line 6409
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->wallpaperSet:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6408
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 6412
    .end local v1    # "i":I
    :cond_1e
    return-object v0
.end method

.method hasWallpaperData()Z
    .registers 2

    .line 6425
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->wallpaperSet:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_a

    .line 6426
    const/4 v0, 0x0

    return v0

    .line 6429
    :cond_a
    const/4 v0, 0x1

    return v0
.end method

.method removeWallpaperData(I)V
    .registers 4
    .param p1, "which"    # I

    .line 6420
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeWallpaperData, which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6421
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->wallpaperSet:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6422
    return-void
.end method

.method removeWallpaperDataAll(II)V
    .registers 8
    .param p1, "userId"    # I
    .param p2, "key"    # I

    .line 6433
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->getWallpaperDataWhichSet()Ljava/util/ArrayList;

    move-result-object v0

    .line 6434
    .local v0, "whichSet":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 6435
    .local v2, "which":I
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->getBackupWallpaperFile(III)Ljava/io/File;
    invoke-static {v3, v2, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4000(Lcom/android/server/wallpaper/WallpaperManagerService;III)Ljava/io/File;

    move-result-object v3

    .line 6436
    .local v3, "file":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    # invokes: Lcom/android/server/wallpaper/WallpaperManagerService;->deleteFile(Ljava/io/File;)V
    invoke-static {v4, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$4100(Lcom/android/server/wallpaper/WallpaperManagerService;Ljava/io/File;)V

    .line 6437
    .end local v2    # "which":I
    .end local v3    # "file":Ljava/io/File;
    goto :goto_8

    .line 6438
    :cond_24
    return-void
.end method

.method setSettingData(ILjava/util/HashMap;)V
    .registers 4
    .param p1, "which"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6445
    .local p2, "settingsData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-nez p2, :cond_3

    .line 6446
    return-void

    .line 6448
    :cond_3
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->settingSet:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 6449
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->settingSet:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6450
    return-void
.end method

.method setWallpaperData(ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .registers 4
    .param p1, "which"    # I
    .param p2, "wallpaperData"    # Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 6416
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$BackupWallpaperData;->wallpaperSet:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6417
    return-void
.end method
