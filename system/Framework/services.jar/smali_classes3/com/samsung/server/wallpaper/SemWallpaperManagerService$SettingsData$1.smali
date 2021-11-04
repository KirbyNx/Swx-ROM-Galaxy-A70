.class Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData$1;
.super Ljava/util/HashMap;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/Integer;",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 3

    .line 472
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 474
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->SYSTEM_SETTINGS:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->LOCK_SETTINGS:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const/16 v0, 0x11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->SUB_DISPLAY_SYSTEM_SETTINGS:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->SUB_DISPLAY_LOCK_SETTINGS:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    return-void
.end method
