.class public Lcom/samsung/server/wallpaper/DefaultWallpaper;
.super Ljava/lang/Object;
.source "DefaultWallpaper.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final LOCK_WALLPAPER_DIR:Ljava/lang/String; = "wallpaper_lock_images"

.field private static final MSG_RESET_KWP_TILT_SETTING:I = 0x3f3

.field private static final MSG_SET_INIT_LIVE_WALLPAPER_VALUE:I = 0x3ed

.field private static final MSG_SET_INIT_SWP_WHITE_BG_VALUE:I = 0x3ef

.field private static final MSG_SET_KWP_TYPE_PRELOAD:I = 0x3ee

.field private static final MSG_SET_SWP_TYPE_PRELOAD:I = 0x3ec

.field private static final MSG_UPDATE_DEFAULT_WALLPAPER:I = 0x3f0

.field private static final SETTINGS_KEYGUARD_TRANSPARENCY:Ljava/lang/String; = "lockscreen_wallpaper_transparent"

.field private static final SETTINGS_KEYGUARD_TRANSPARENCY_DEX:Ljava/lang/String; = "dex_lockscreen_wallpaper_transparency"

.field private static final SETTINGS_KEYGUARD_TRANSPARENCY_SUB_DISPLAY:Ljava/lang/String; = "sub_display_lockscreen_wallpaper_transparency"

.field private static final SETTINGS_SYSTEM_TRANSPARENCY:Ljava/lang/String; = "android.wallpaper.settings_systemui_transparency"

.field private static final SETTINGS_SYSTEM_TRANSPARENCY_DEX:Ljava/lang/String; = "dex_system_wallpaper_transparency"

.field private static final SETTINGS_SYSTEM_TRANSPARENCY_SUB_DISPLAY:Ljava/lang/String; = "sub_display_system_wallpaper_transparency"

.field private static final TAG:Ljava/lang/String; = "DefaultWallpaper"


# instance fields
.field private final mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field private final mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;Lcom/samsung/server/wallpaper/SemWallpaperManagerService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .param p3, "service"    # Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/server/wallpaper/DefaultWallpaper$1;-><init>(Lcom/samsung/server/wallpaper/DefaultWallpaper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    .line 72
    const-string v0, "DefaultWallpaper"

    invoke-static {v0, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput-object p1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    .line 76
    iput-object p3, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/server/wallpaper/DefaultWallpaper;ILjava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/DefaultWallpaper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setSettingsSystemUiTransparency(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 43
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/samsung/server/wallpaper/SemWallpaperManagerService;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 43
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/server/wallpaper/DefaultWallpaper;)Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;
    .registers 2
    .param p0, "x0"    # Lcom/samsung/server/wallpaper/DefaultWallpaper;

    .line 43
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mCallback:Lcom/android/server/wallpaper/WallpaperManagerService$SemCallback;

    return-object v0
.end method

.method private setSettingsSystemUiTransparency(ILjava/lang/String;)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSettingsSystemUiTransparency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DefaultWallpaper"

    invoke-static {v1, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 193
    return-void
.end method


# virtual methods
.method public getDefaultWallpaperBitmap(I)Landroid/graphics/Bitmap;
    .registers 13
    .param p1, "which"    # I

    .line 212
    const-string v0, "com.samsung.android.wallpaper.res"

    const/4 v1, 0x0

    .line 213
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    if-nez v2, :cond_10

    .line 214
    new-instance v2, Landroid/app/SemWallpaperResourcesInfo;

    iget-object v3, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 216
    :cond_10
    iget-object v2, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v2, p1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageFileName(I)Ljava/lang/String;

    move-result-object v2

    .line 217
    .local v2, "defaultFileName":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "DefaultWallpaper"

    if-eqz v2, :cond_81

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_81

    .line 218
    const/16 v5, 0x2e

    invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 224
    const/4 v5, 0x0

    .line 225
    .local v5, "wallpaperContext":Landroid/content/Context;
    const/4 v7, 0x0

    .line 226
    .local v7, "systemUIContext":Landroid/content/Context;
    const/4 v8, 0x0

    .line 227
    .local v8, "resources":Landroid/content/res/Resources;
    const/4 v9, 0x0

    .line 229
    .local v9, "resId":I
    :try_start_30
    iget-object v10, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v0, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v6

    move-object v5, v6

    .line 230
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    move-object v8, v6

    .line 231
    const-string v6, "drawable"

    invoke-virtual {v8, v2, v6, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    move v9, v0

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultWallpaperBitmap: resid = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", name = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    if-lez v9, :cond_66

    .line 234
    invoke-static {v8, v9}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_65
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_30 .. :try_end_65} :catch_68

    move-object v1, v0

    .line 240
    :cond_66
    nop

    .line 242
    return-object v1

    .line 236
    :catch_68
    move-exception v0

    .line 237
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fail to load default wallpaper : "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 239
    return-object v3

    .line 220
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v5    # "wallpaperContext":Landroid/content/Context;
    .end local v7    # "systemUIContext":Landroid/content/Context;
    .end local v8    # "resources":Landroid/content/res/Resources;
    .end local v9    # "resId":I
    :cond_81
    const-string v0, "Fail to get default file name"

    invoke-static {v4, v0}, Lcom/samsung/server/wallpaper/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-object v3
.end method

.method public resetMultipleWallpaperSetting(Ljava/lang/String;)V
    .registers 4
    .param p1, "callingPkg"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 207
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 208
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 209
    return-void
.end method

.method public sendWallpaperChangeIntent()V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ef

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 197
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 198
    const-string v1, "DefaultWallpaper"

    const-string v2, "send ChangedIntent complete"

    invoke-static {v1, v2}, Lcom/samsung/server/wallpaper/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method

.method public setKWPTypeLiveWallpaper(I)V
    .registers 5
    .param p1, "value"    # I

    .line 149
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mService:Lcom/samsung/server/wallpaper/SemWallpaperManagerService;

    iget-object v0, v0, Lcom/samsung/server/wallpaper/SemWallpaperManagerService;->mSubDisplayMode:Lcom/samsung/server/wallpaper/SubDisplayMode;

    invoke-virtual {v0}, Lcom/samsung/server/wallpaper/SubDisplayMode;->getLidState()I

    move-result v0

    if-nez v0, :cond_d

    const/16 v0, 0x10

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    .line 150
    .local v0, "mode":I
    :goto_e
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 151
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 152
    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 153
    iget-object v2, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 154
    return-void
.end method

.method public setKWPTypePreload(II)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "which"    # I

    .line 157
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ee

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 158
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 159
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 160
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 161
    return-void
.end method

.method public setSWPTypePreload(II)V
    .registers 5
    .param p1, "value"    # I
    .param p2, "which"    # I

    .line 142
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 143
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 144
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 145
    iget-object v1, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 146
    return-void
.end method

.method public updateDefaultWallpaper()V
    .registers 3

    .line 202
    iget-object v0, p0, Lcom/samsung/server/wallpaper/DefaultWallpaper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3f0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 203
    return-void
.end method

.method public updateTransparencySettingIfNeed(Ljava/lang/String;I)V
    .registers 6
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "which"    # I

    .line 164
    const/4 v0, 0x0

    .line 165
    .local v0, "isNeedToUpdate":Z
    invoke-static {p2}, Lcom/samsung/server/wallpaper/WhichChecker;->isDex(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_12

    .line 166
    const-string v1, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_33

    .line 167
    const/4 v0, 0x1

    goto :goto_33

    .line 170
    :cond_12
    const-string v1, "com.samsung.android.themecenter"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_33

    .line 171
    const-string v1, "service.odtcfactory.sec.com.odtcfactoryservice"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_33

    .line 172
    const-string v1, "com.samsung.android.keyguardwallpaperupdator"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_33

    .line 173
    const-string v1, "com.samsung.android.app.dressroom"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eq v1, v2, :cond_33

    .line 174
    const/4 v0, 0x1

    .line 178
    :cond_33
    :goto_33
    if-nez v0, :cond_36

    .line 179
    return-void

    .line 182
    :cond_36
    invoke-static {p2}, Lcom/samsung/server/wallpaper/WhichChecker;->isSystem(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_40

    .line 183
    invoke-virtual {p0, v2, p2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setSWPTypePreload(II)V

    .line 185
    :cond_40
    invoke-static {p2}, Lcom/samsung/server/wallpaper/WhichChecker;->isLock(I)Z

    move-result v1

    if-eqz v1, :cond_49

    .line 186
    invoke-virtual {p0, v2, p2}, Lcom/samsung/server/wallpaper/DefaultWallpaper;->setKWPTypePreload(II)V

    .line 188
    :cond_49
    return-void
.end method
