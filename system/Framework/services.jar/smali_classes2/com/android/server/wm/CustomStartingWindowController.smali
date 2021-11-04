.class Lcom/android/server/wm/CustomStartingWindowController;
.super Ljava/lang/Object;
.source "CustomStartingWindowController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    }
.end annotation


# static fields
.field private static final CUSTOM_IMAGE_FILE_NAME:Ljava/lang/String; = "CustomStartingWindowImage.jpg"

.field private static final CUSTOM_IMAGE_FILE_NAME_ROTATED:Ljava/lang/String; = "CustomStartingWindowImage_rotated.jpg"

.field private static final CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

.field private static final LEGACY_CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

.field private static final QUALIFIER_FONT:Ljava/lang/String; = "font"

.field private static final QUALIFIER_LOCALE:Ljava/lang/String; = "locale"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCustomStartingWindowMapsForUsers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/concurrent/ConcurrentHashMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 50
    const-string v0, "WindowManager"

    sput-object v0, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/custom_image"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/CustomStartingWindowController;->LEGACY_CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    .line 59
    new-instance v0, Ljava/io/File;

    .line 60
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "custom_image"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/wm/CustomStartingWindowController;->CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    .line 59
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomStartingWindowMapsForUsers:Ljava/util/Map;

    .line 70
    iput-object p1, p0, Lcom/android/server/wm/CustomStartingWindowController;->mContext:Landroid/content/Context;

    .line 71
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_19

    .line 72
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 75
    :cond_19
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->LEGACY_CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    .line 76
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 77
    new-instance v0, Ljava/lang/Thread;

    sget-object v1, Lcom/android/server/wm/-$$Lambda$CustomStartingWindowController$_ewxf3DHlScG8iCe2vrgDYDF-jE;->INSTANCE:Lcom/android/server/wm/-$$Lambda$CustomStartingWindowController$_ewxf3DHlScG8iCe2vrgDYDF-jE;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 86
    :cond_2b
    return-void
.end method

.method private static copyDir(Ljava/io/File;Ljava/io/File;)V
    .registers 7
    .param p0, "src"    # Ljava/io/File;
    .param p1, "dest"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 371
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p1}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 372
    :cond_12
    invoke-virtual {p0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 373
    .local v0, "children":[Ljava/lang/String;
    if-eqz v0, :cond_30

    .line 374
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_19
    array-length v2, v0

    if-ge v1, v2, :cond_30

    .line 375
    new-instance v2, Ljava/io/File;

    aget-object v3, v0, v1

    invoke-direct {v2, p0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-direct {v3, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/android/server/wm/CustomStartingWindowController;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 374
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 378
    .end local v0    # "children":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_30
    goto :goto_66

    .line 380
    :cond_31
    :try_start_31
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_36
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_36} :catch_62

    .line 381
    .local v0, "fis":Ljava/io/FileInputStream;
    :try_start_36
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3b
    .catchall {:try_start_36 .. :try_end_3b} :catchall_58

    .line 382
    .local v1, "fos":Ljava/io/FileOutputStream;
    const/high16 v2, 0x100000

    :try_start_3d
    new-array v2, v2, [B

    .line 383
    .local v2, "buf":[B
    invoke-virtual {v0, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 384
    .local v3, "size":I
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_4e

    .line 385
    .end local v2    # "buf":[B
    .end local v3    # "size":I
    :try_start_47
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_58

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :try_start_4a
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_62

    .line 387
    .end local v0    # "fis":Ljava/io/FileInputStream;
    goto :goto_66

    .line 380
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "fos":Ljava/io/FileOutputStream;
    :catchall_4e
    move-exception v2

    :try_start_4f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_52
    .catchall {:try_start_4f .. :try_end_52} :catchall_53

    goto :goto_57

    :catchall_53
    move-exception v3

    :try_start_54
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dest":Ljava/io/File;
    :goto_57
    throw v2
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_58

    .end local v1    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dest":Ljava/io/File;
    :catchall_58
    move-exception v1

    :try_start_59
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_5c
    .catchall {:try_start_59 .. :try_end_5c} :catchall_5d

    goto :goto_61

    :catchall_5d
    move-exception v2

    :try_start_5e
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "src":Ljava/io/File;
    .end local p1    # "dest":Ljava/io/File;
    :goto_61
    throw v1
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_62} :catch_62

    .line 385
    .end local v0    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "src":Ljava/io/File;
    .restart local p1    # "dest":Ljava/io/File;
    :catch_62
    move-exception v0

    .line 386
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 389
    .end local v0    # "e":Ljava/io/IOException;
    :cond_66
    :goto_66
    return-void
.end method

.method private getCustomImageFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;
    .registers 7
    .param p1, "qualifier"    # Ljava/lang/String;
    .param p2, "pkgDir"    # Ljava/io/File;
    .param p3, "rotation"    # I

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/CustomStartingWindowController;->getQualifierDir(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 280
    .local v0, "qualifierDir":Ljava/io/File;
    const/4 v1, 0x1

    if-eq p3, v1, :cond_12

    const/4 v1, 0x3

    if-eq p3, v1, :cond_12

    .line 287
    new-instance v1, Ljava/io/File;

    const-string v2, "CustomStartingWindowImage.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 283
    :cond_12
    new-instance v1, Ljava/io/File;

    const-string v2, "CustomStartingWindowImage_rotated.jpg"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getCustomStartingWindowMap(I)Ljava/util/Map;
    .registers 3
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;",
            ">;"
        }
    .end annotation

    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(IZ)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    return-object v0
.end method

.method private getCustomStartingWindowMap(IZ)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 6
    .param p1, "userId"    # I
    .param p2, "createMapIfNeeded"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;",
            ">;"
        }
    .end annotation

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomStartingWindowMapsForUsers:Ljava/util/Map;

    .line 95
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 96
    .local v0, "startingWindowDataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;>;"
    if-nez v0, :cond_1f

    if-eqz p2, :cond_1f

    .line 97
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    move-object v0, v1

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomStartingWindowMapsForUsers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :cond_1f
    return-object v0
.end method

.method private getQualifierDir(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .registers 12
    .param p1, "qualifier"    # Ljava/lang/String;
    .param p2, "pkgDir"    # Ljava/io/File;

    .line 292
    if-nez p1, :cond_3

    .line 293
    return-object p2

    .line 296
    :cond_3
    const/4 v0, 0x0

    .line 297
    .local v0, "qualifierPath":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, "qualifiers":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_6c

    aget-object v4, v1, v3

    .line 300
    .local v4, "q":Ljava/lang/String;
    const-string/jumbo v5, "locale"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "qualifier_"

    if-eqz v5, :cond_3e

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    if-eqz v5, :cond_3e

    .line 301
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_69

    .line 302
    :cond_3e
    const-string v5, "font"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 303
    iget-object v5, p0, Lcom/android/server/wm/CustomStartingWindowController;->mContext:Landroid/content/Context;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Landroid/graphics/Typeface;->semGetFontPathOfCurrentFontStyle(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 305
    .local v5, "selectedFont":Ljava/lang/String;
    const-string v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v5, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 306
    if-eqz v5, :cond_69

    .line 307
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    .end local v4    # "q":Ljava/lang/String;
    .end local v5    # "selectedFont":Ljava/lang/String;
    :cond_69
    :goto_69
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 312
    :cond_6c
    if-eqz v0, :cond_74

    .line 313
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v2

    .line 315
    :cond_74
    return-object p2
.end method

.method static synthetic lambda$new$0()V
    .registers 4

    .line 79
    :try_start_0
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->LEGACY_CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    sget-object v1, Lcom/android/server/wm/CustomStartingWindowController;->CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/android/server/wm/CustomStartingWindowController;->copyDir(Ljava/io/File;Ljava/io/File;)V

    .line 80
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->LEGACY_CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    invoke-static {v0}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    .line 83
    goto :goto_24

    .line 81
    :catch_d
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "custom_image migration is failed. e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .end local v0    # "e":Ljava/io/IOException;
    :goto_24
    return-void
.end method


# virtual methods
.method addData(Landroid/content/ComponentName;Landroid/os/Bundle;I)Ljava/lang/String;
    .registers 8
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "metaData"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 104
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "key":Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v1

    .line 106
    .local v1, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;>;"
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    .line 107
    new-instance v2, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    const/4 v3, 0x0

    invoke-direct {v2, v0, p2, p3, v3}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;-><init>(Ljava/lang/String;Landroid/os/Bundle;ILcom/android/server/wm/CustomStartingWindowController$1;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    :cond_17
    return-object v0
.end method

.method canAddCustomStartingWindowLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "activity"    # Lcom/android/server/wm/ActivityRecord;

    .line 131
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mCustomStartingWindowKey:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 132
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFullscreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 131
    :goto_11
    return v0
.end method

.method clearDataForAllUsers(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 113
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_27

    .line 114
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearDataForAllUsers: packageName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 115
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_27
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$CustomStartingWindowController$AXMag80yjxEA3DE3MKjBbbNRj9o;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/-$$Lambda$CustomStartingWindowController$AXMag80yjxEA3DE3MKjBbbNRj9o;-><init>(Lcom/android/server/wm/CustomStartingWindowController;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 127
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 128
    return-void
.end method

.method getCustomLayoutResId(Ljava/lang/String;I)I
    .registers 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 136
    invoke-direct {p0, p2}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 137
    .local v0, "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    if-eqz v0, :cond_43

    .line 142
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mLayoutResId:I
    invoke-static {v0}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$100(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)I

    move-result v1

    .line 144
    .local v1, "resId":I
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v2, :cond_42

    .line 145
    sget-object v2, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCustomLayoutResId: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", layoutResIdForMass="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mLayoutResIdForMass:I
    invoke-static {v0}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$200(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", layoutResId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mLayoutResId:I
    invoke-static {v0}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$100(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 145
    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :cond_42
    return v1

    .line 151
    .end local v1    # "resId":I
    :cond_43
    const/4 v1, 0x0

    return v1
.end method

.method isCustomImageLoaded(Ljava/lang/String;I)Z
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 213
    invoke-direct {p0, p2}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 214
    .local v0, "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    if-eqz v0, :cond_14

    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mCustomImageLoaded:Z
    invoke-static {v0}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$800(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v1, 0x1

    goto :goto_15

    :cond_14
    const/4 v1, 0x0

    :goto_15
    return v1
.end method

.method public synthetic lambda$clearDataForAllUsers$1$CustomStartingWindowController(Ljava/lang/String;)V
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;

    .line 120
    iget-object v0, p0, Lcom/android/server/wm/CustomStartingWindowController;->mCustomStartingWindowMapsForUsers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    .local v1, "dataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;>;"
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 122
    .local v3, "key":Ljava/lang/String;
    if-eqz v3, :cond_35

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 123
    invoke-virtual {v1, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .end local v3    # "key":Ljava/lang/String;
    :cond_35
    goto :goto_1e

    .line 126
    .end local v1    # "dataMap":Ljava/util/concurrent/ConcurrentHashMap;, "Ljava/util/concurrent/ConcurrentHashMap<Ljava/lang/String;Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;>;"
    :cond_36
    goto :goto_a

    .line 127
    :cond_37
    return-void
.end method

.method loadCustomImage(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .registers 21
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "rotation"    # I
    .param p3, "userId"    # I

    .line 156
    move-object/from16 v1, p0

    move/from16 v2, p3

    invoke-direct {v1, v2}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 157
    .local v4, "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    const/4 v5, 0x0

    if-eqz v4, :cond_168

    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$300(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePathQualifier:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$400(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_24

    move/from16 v12, p2

    goto/16 :goto_16a

    .line 161
    :cond_24
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_4f

    .line 162
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "loadCustomImage: imagePath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$300(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", imagePathQualifier="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePathQualifier:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$400(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 162
    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_4f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 169
    .local v6, "startTime":J
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$300(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "auto"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_71

    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePathQualifier:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$400(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_66

    goto :goto_71

    .line 173
    :cond_66
    new-instance v0, Ljava/io/File;

    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$300(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v8, v0

    .local v0, "pkgDir":Ljava/io/File;
    goto :goto_9f

    .line 170
    .end local v0    # "pkgDir":Ljava/io/File;
    :cond_71
    :goto_71
    new-instance v0, Ljava/io/File;

    sget-object v8, Lcom/android/server/wm/CustomStartingWindowController;->CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mTaskUserId:I
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$500(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mPackageName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$600(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mClassName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$700(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    .line 176
    .local v8, "pkgDir":Ljava/io/File;
    :goto_9f
    const/4 v0, 0x0

    .line 177
    .local v0, "customImageFile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    const-string v10, " doesn\'t exist"

    const-string/jumbo v11, "loadCustomImage: "

    if-eqz v9, :cond_14e

    .line 178
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePathQualifier:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$400(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v9

    move/from16 v12, p2

    invoke-direct {v1, v9, v8, v12}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomImageFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v9

    .line 185
    .end local v0    # "customImageFile":Ljava/io/File;
    .local v9, "customImageFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_136

    .line 187
    :try_start_bb
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_c3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_bb .. :try_end_c3} :catch_fa

    .line 196
    .local v0, "customImageBitmap":Landroid/graphics/Bitmap;
    nop

    .line 202
    sget-object v5, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "loadCustomImage: bitmap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", dur="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v11, :cond_e7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    sub-long/2addr v13, v6

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto :goto_e9

    :cond_e7
    const-string v11, "0"

    :goto_e9
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 202
    invoke-static {v5, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    if-eqz v0, :cond_f9

    .line 206
    const/4 v5, 0x1

    # setter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mCustomImageLoaded:Z
    invoke-static {v4, v5}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$802(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;Z)Z

    .line 209
    :cond_f9
    return-object v0

    .line 188
    .end local v0    # "customImageBitmap":Landroid/graphics/Bitmap;
    :catch_fa
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/OutOfMemoryError;
    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v10, :cond_132

    .line 190
    sget-object v10, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "loadCustomImage: OOM, total="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v13

    const-wide/16 v15, 0x400

    div-long/2addr v13, v15

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v13, ", free="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v13

    div-long/2addr v13, v15

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 190
    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 194
    :cond_132
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 195
    return-object v5

    .line 198
    .end local v0    # "e":Ljava/lang/OutOfMemoryError;
    :cond_136
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-object v5

    .line 180
    .end local v9    # "customImageFile":Ljava/io/File;
    .local v0, "customImageFile":Ljava/io/File;
    :cond_14e
    move/from16 v12, p2

    sget-object v9, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-object v5

    .line 157
    .end local v0    # "customImageFile":Ljava/io/File;
    .end local v6    # "startTime":J
    .end local v8    # "pkgDir":Ljava/io/File;
    :cond_168
    move/from16 v12, p2

    .line 158
    :goto_16a
    return-object v5
.end method

.method setCustomImage(Ljava/lang/String;Landroid/os/Bundle;ILjava/io/FileDescriptor;I)Z
    .registers 26
    .param p1, "componentName"    # Ljava/lang/String;
    .param p2, "metaData"    # Landroid/os/Bundle;
    .param p3, "taskUserId"    # I
    .param p4, "fd"    # Ljava/io/FileDescriptor;
    .param p5, "rotation"    # I

    .line 219
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    move-object/from16 v4, p4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 222
    .local v5, "startTime":J
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    invoke-virtual {v2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 223
    .local v8, "key":Ljava/lang/String;
    invoke-direct {v1, v3}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomStartingWindowMap(I)Ljava/util/Map;

    move-result-object v9

    .line 224
    .local v9, "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;>;"
    invoke-interface {v9, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    .line 225
    .local v0, "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    if-nez v0, :cond_2f

    .line 226
    new-instance v10, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;

    const/4 v11, 0x0

    move-object/from16 v12, p2

    invoke-direct {v10, v8, v12, v3, v11}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;-><init>(Ljava/lang/String;Landroid/os/Bundle;ILcom/android/server/wm/CustomStartingWindowController$1;)V

    move-object v0, v10

    .line 227
    invoke-interface {v9, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 225
    :cond_2f
    move-object/from16 v12, p2

    move-object v10, v0

    .line 229
    .end local v0    # "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    .local v10, "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    :goto_32
    sget-object v0, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "setImageForCustomStartingWindow: componentName="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", fd="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", imagePath="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePath:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$300(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", imagePathQualifier="

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePathQualifier:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$400(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 229
    invoke-static {v0, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePath:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$300(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v0

    const/4 v11, 0x0

    if-nez v0, :cond_77

    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePathQualifier:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$400(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_77

    .line 234
    return v11

    .line 238
    :cond_77
    new-instance v0, Ljava/io/File;

    new-instance v13, Ljava/io/File;

    sget-object v14, Lcom/android/server/wm/CustomStartingWindowController;->CUSTOM_IMAGE_ROOT_PATH:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ""

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v13, v14, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v13, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v11, v0

    .line 239
    .local v11, "pkgDir":Ljava/io/File;
    # getter for: Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->mImagePathQualifier:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;->access$400(Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;)Ljava/lang/String;

    move-result-object v0

    move/from16 v13, p5

    invoke-direct {v1, v0, v11, v13}, Lcom/android/server/wm/CustomStartingWindowController;->getCustomImageFile(Ljava/lang/String;Ljava/io/File;I)Ljava/io/File;

    move-result-object v14

    .line 242
    .local v14, "imgFile":Ljava/io/File;
    if-nez v4, :cond_ab

    .line 243
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_aa

    .line 244
    invoke-virtual {v14}, Ljava/io/File;->delete()Z

    .line 246
    :cond_aa
    return v7

    .line 251
    :cond_ab
    :try_start_ab
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_c1

    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_c1

    .line 252
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 253
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z
    :try_end_c1
    .catch Ljava/io/IOException; {:try_start_ab .. :try_end_c1} :catch_141

    .line 258
    :cond_c1
    nop

    .line 261
    :try_start_c2
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_c7
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_c7} :catch_13b

    move-object v15, v0

    .line 262
    .local v15, "fis":Ljava/io/FileInputStream;
    :try_start_c8
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_cd
    .catchall {:try_start_c8 .. :try_end_cd} :catchall_12f

    move-object/from16 v16, v0

    .line 263
    .local v16, "fos":Ljava/io/FileOutputStream;
    const/high16 v0, 0x100000

    :try_start_d1
    new-array v0, v0, [B

    .line 264
    .local v0, "buf":[B
    invoke-virtual {v15, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v17
    :try_end_d7
    .catchall {:try_start_d1 .. :try_end_d7} :catchall_121

    move/from16 v18, v17

    .line 265
    .local v18, "size":I
    move-object/from16 v7, v16

    move/from16 v1, v18

    const/4 v2, 0x0

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .end local v18    # "size":I
    .local v1, "size":I
    .local v7, "fos":Ljava/io/FileOutputStream;
    :try_start_de
    invoke-virtual {v7, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    .line 267
    sget-object v2, Lcom/android/server/wm/CustomStartingWindowController;->TAG:Ljava/lang/String;

    move-object/from16 v16, v0

    .end local v0    # "buf":[B
    .local v16, "buf":[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setImageForCustomStartingWindow: size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-int/lit16 v3, v1, 0x400

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "KB, dur="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v3, :cond_109

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    sub-long v18, v18, v5

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_10b

    :cond_109
    const-string v3, "0"

    :goto_10b
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 267
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_115
    .catchall {:try_start_de .. :try_end_115} :catchall_11e

    .line 269
    .end local v1    # "size":I
    .end local v16    # "buf":[B
    :try_start_115
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_118
    .catchall {:try_start_115 .. :try_end_118} :catchall_12f

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    :try_start_118
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_11b
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_11b} :catch_13b

    .line 272
    .end local v15    # "fis":Ljava/io/FileInputStream;
    nop

    .line 274
    const/4 v0, 0x1

    return v0

    .line 261
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    :catchall_11e
    move-exception v0

    move-object v1, v0

    goto :goto_125

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .local v16, "fos":Ljava/io/FileOutputStream;
    :catchall_121
    move-exception v0

    move-object/from16 v7, v16

    move-object v1, v0

    .end local v16    # "fos":Ljava/io/FileOutputStream;
    .restart local v7    # "fos":Ljava/io/FileOutputStream;
    :goto_125
    :try_start_125
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_128
    .catchall {:try_start_125 .. :try_end_128} :catchall_129

    goto :goto_12e

    :catchall_129
    move-exception v0

    move-object v2, v0

    :try_start_12b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "startTime":J
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;>;"
    .end local v10    # "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    .end local v11    # "pkgDir":Ljava/io/File;
    .end local v14    # "imgFile":Ljava/io/File;
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/server/wm/CustomStartingWindowController;
    .end local p1    # "componentName":Ljava/lang/String;
    .end local p2    # "metaData":Landroid/os/Bundle;
    .end local p3    # "taskUserId":I
    .end local p4    # "fd":Ljava/io/FileDescriptor;
    .end local p5    # "rotation":I
    :goto_12e
    throw v1
    :try_end_12f
    .catchall {:try_start_12b .. :try_end_12f} :catchall_12f

    .end local v7    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "startTime":J
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;>;"
    .restart local v10    # "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    .restart local v11    # "pkgDir":Ljava/io/File;
    .restart local v14    # "imgFile":Ljava/io/File;
    .restart local v15    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/server/wm/CustomStartingWindowController;
    .restart local p1    # "componentName":Ljava/lang/String;
    .restart local p2    # "metaData":Landroid/os/Bundle;
    .restart local p3    # "taskUserId":I
    .restart local p4    # "fd":Ljava/io/FileDescriptor;
    .restart local p5    # "rotation":I
    :catchall_12f
    move-exception v0

    move-object v1, v0

    :try_start_131
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_135

    goto :goto_13a

    :catchall_135
    move-exception v0

    move-object v2, v0

    :try_start_137
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v5    # "startTime":J
    .end local v8    # "key":Ljava/lang/String;
    .end local v9    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;>;"
    .end local v10    # "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    .end local v11    # "pkgDir":Ljava/io/File;
    .end local v14    # "imgFile":Ljava/io/File;
    .end local p0    # "this":Lcom/android/server/wm/CustomStartingWindowController;
    .end local p1    # "componentName":Ljava/lang/String;
    .end local p2    # "metaData":Landroid/os/Bundle;
    .end local p3    # "taskUserId":I
    .end local p4    # "fd":Ljava/io/FileDescriptor;
    .end local p5    # "rotation":I
    :goto_13a
    throw v1
    :try_end_13b
    .catch Ljava/io/IOException; {:try_start_137 .. :try_end_13b} :catch_13b

    .line 269
    .end local v15    # "fis":Ljava/io/FileInputStream;
    .restart local v5    # "startTime":J
    .restart local v8    # "key":Ljava/lang/String;
    .restart local v9    # "dataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;>;"
    .restart local v10    # "data":Lcom/android/server/wm/CustomStartingWindowController$CustomStartingWindowData;
    .restart local v11    # "pkgDir":Ljava/io/File;
    .restart local v14    # "imgFile":Ljava/io/File;
    .restart local p0    # "this":Lcom/android/server/wm/CustomStartingWindowController;
    .restart local p1    # "componentName":Ljava/lang/String;
    .restart local p2    # "metaData":Landroid/os/Bundle;
    .restart local p3    # "taskUserId":I
    .restart local p4    # "fd":Ljava/io/FileDescriptor;
    .restart local p5    # "rotation":I
    :catch_13b
    move-exception v0

    .line 270
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 271
    const/4 v1, 0x0

    return v1

    .line 255
    .end local v0    # "e":Ljava/io/IOException;
    :catch_141
    move-exception v0

    const/4 v1, 0x0

    .line 256
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 257
    return v1
.end method
