.class public Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;
.super Ljava/lang/Object;
.source "SemWallpaperManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsData"
.end annotation


# static fields
.field static final LOCK_SETTINGS:[Ljava/lang/String;

.field static final SUB_DISPLAY_LOCK_SETTINGS:[Ljava/lang/String;

.field static final SUB_DISPLAY_SYSTEM_SETTINGS:[Ljava/lang/String;

.field static final SYSTEM_SETTINGS:[Ljava/lang/String;

.field static final settingList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 451
    const-string v0, "wallpaper_tilt_status"

    const-string v1, "wallpaper_tilt_status_sub"

    const-string v2, "android.wallpaper.settings_systemui_transparency"

    const-string v3, "lockscreen_wallpaper"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->SYSTEM_SETTINGS:[Ljava/lang/String;

    .line 458
    const-string v0, "lockscreen_wallpaper_tilt_effect"

    const-string v1, "lockscreen_wallpaper_transparent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->LOCK_SETTINGS:[Ljava/lang/String;

    .line 463
    const-string v0, "sub_display_system_wallpaper_transparency"

    const-string v1, "lockscreen_wallpaper_sub"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->SUB_DISPLAY_SYSTEM_SETTINGS:[Ljava/lang/String;

    .line 468
    const-string v0, "sub_display_lockscreen_wallpaper_transparency"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->SUB_DISPLAY_LOCK_SETTINGS:[Ljava/lang/String;

    .line 472
    new-instance v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData$1;

    invoke-direct {v0}, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData$1;-><init>()V

    sput-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->settingList:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 450
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSettingList(I)[Ljava/lang/String;
    .registers 3
    .param p0, "which"    # I

    .line 482
    sget-boolean v0, Lcom/samsung/android/wallpaper/Rune;->SUPPORT_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_26

    .line 483
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->settingList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_26

    .line 484
    invoke-static {p0}, Lcom/samsung/server/wallpaper/WhichChecker;->getMode(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_26

    .line 485
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->settingList:Ljava/util/HashMap;

    and-int/lit8 v1, p0, -0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    .line 489
    :cond_26
    sget-object v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService$SettingsData;->settingList:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method
