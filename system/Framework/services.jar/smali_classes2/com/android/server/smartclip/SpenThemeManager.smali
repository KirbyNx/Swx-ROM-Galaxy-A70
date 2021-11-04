.class Lcom/android/server/smartclip/SpenThemeManager;
.super Ljava/lang/Object;
.source "SpenThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/smartclip/SpenThemeManager$ThemeData;,
        Lcom/android/server/smartclip/SpenThemeManager$SoundPathInfo;
    }
.end annotation


# static fields
.field static final AIR_COMMAND_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.service.aircommand"

.field private static final DEFAULT_ATTACH_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/Pen_att_noti1.ogg"

.field private static final DEFAULT_DETACH_SOUND_PATH:Ljava/lang/String; = "/system/media/audio/ui/Pen_det_noti1.ogg"

.field static final INTENT_ACTION_CUSTOM_DOUBLE_TAP:Ljava/lang/String; = "com.samsung.android.service.aircommand.ACTION_CUSTOM_DOUBLE_TAP"

.field static final PENTASTIC_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.pentastic"

.field private static final SETTINGS_KEY_PEN_CUSTOM_DOUBLE_TAP_ACTION_ENABLED:Ljava/lang/String; = "pen_custom_double_tap_action_enabled"

.field private static final SETTINGS_KEY_PEN_CUSTOM_DOUBLE_TAP_ACTION_SHORTCUT:Ljava/lang/String; = "pen_custom_double_tap_action_shortcut"

.field private static final SPEN_THEME_DIR_NAME:Ljava/lang/String; = "spen_theme"

.field private static final SPEN_THTME_DATA_FILE_NAME:Ljava/lang/String; = "spen_theme_data_file"

.field private static final SPEN_THTME_PEN_ATTACH_SOUND_FILE_NAME:Ljava/lang/String; = "spen_theme_pen_attach_sound"

.field private static final SPEN_THTME_PEN_DETACH_SOUND_FILE_NAME:Ljava/lang/String; = "spen_theme_pen_detach_sound"

.field private static final SPEN_THTME_PEN_HOVER_ICON_FILE_NAME:Ljava/lang/String; = "spen_theme_pen_hover_icon"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_HOTSPOT_X:Ljava/lang/String; = "hotspotX"

.field private static final TAG_HOTSPOT_Y:Ljava/lang/String; = "hotspotY"

.field private static final TAG_HOVER_ICON:Ljava/lang/String; = "hover-icon"

.field private static final TAG_PACKAGE:Ljava/lang/String; = "package"

.field private static final TOTAL_TYPES:I = 0x3

.field private static final TYPE_PEN_ATTACH_SOUND:I = 0x1

.field private static final TYPE_PEN_DETACH_SOUND:I = 0x2

.field private static final TYPE_PEN_HOVER_ICON:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMonitor:Lcom/android/internal/content/PackageMonitor;

.field private final mPackageRemovedHandler:Landroid/os/Handler;

.field private mRegistered:Z

.field private mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 39
    const-class v0, Lcom/android/server/smartclip/SpenThemeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    .line 71
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenThemeManager$1;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 82
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/smartclip/SpenThemeManager$2;-><init>(Lcom/android/server/smartclip/SpenThemeManager;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mPackageRemovedHandler:Landroid/os/Handler;

    .line 99
    iput-object p1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenThemeManager;->init()V

    .line 101
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 38
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/smartclip/SpenThemeManager;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenThemeManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mPackageRemovedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/smartclip/SpenThemeManager;)Lcom/android/server/smartclip/SpenThemeManager$ThemeData;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenThemeManager;

    .line 38
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/smartclip/SpenThemeManager;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/smartclip/SpenThemeManager;

    .line 38
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenThemeManager;->getRootDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "type"    # I
    .param p4, "fileName"    # Ljava/lang/String;

    .line 208
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    const/4 v0, 0x0

    return v0

    .line 212
    :cond_8
    const/4 v0, 0x0

    .line 214
    .local v0, "fileChanged":Z
    if-nez p2, :cond_22

    .line 215
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v1, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 216
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v1, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v1, p3

    .line 217
    invoke-direct {p0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(I)Z

    goto :goto_35

    .line 220
    :cond_22
    invoke-direct {p0, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 221
    .local v1, "outFile":Ljava/io/File;
    invoke-direct {p0, p2, v1}, Lcom/android/server/smartclip/SpenThemeManager;->saveFile(Ljava/io/FileDescriptor;Ljava/io/File;)V

    .line 222
    iget-object v2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v2, v2, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    aput-object p1, v2, p3

    .line 223
    const/4 v0, 0x1

    .line 224
    if-eqz p3, :cond_35

    .line 225
    invoke-direct {p0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(I)Z

    .line 229
    .end local v1    # "outFile":Ljava/io/File;
    :cond_35
    :goto_35
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->saveData()V

    .line 230
    return v0
.end method

.method private deleteFile(I)Z
    .registers 5
    .param p1, "type"    # I

    .line 173
    const/4 v0, 0x0

    .line 175
    .local v0, "deleteFile":Ljava/io/File;
    if-nez p1, :cond_9

    .line 176
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_28

    .line 177
    :cond_9
    const/4 v1, 0x1

    if-ne p1, v1, :cond_19

    .line 178
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {v2}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->getAttachSoundPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_28

    .line 179
    :cond_19
    const/4 v1, 0x2

    if-ne p1, v1, :cond_28

    .line 180
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {v2}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->getDetachSoundPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 183
    :cond_28
    :goto_28
    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->deleteFile(Ljava/io/File;)Z

    move-result v1

    return v1
.end method

.method private deleteFile(Ljava/io/File;)Z
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 187
    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    .line 190
    :cond_9
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v0

    return v0

    .line 188
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method private getRootDir()Ljava/io/File;
    .registers 6

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/overlays"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "systemDataDirPath":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "spen_theme"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "rootDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_49

    .line 114
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 115
    nop

    .line 116
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    .line 115
    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 121
    :cond_49
    return-object v1
.end method

.method private getThemeFile(ILjava/lang/String;)Ljava/io/File;
    .registers 6
    .param p1, "type"    # I
    .param p2, "fileName"    # Ljava/lang/String;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "spen_theme_pen_hover_icon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 127
    .local v0, "themeFileName":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_2c

    const/4 v1, 0x2

    if-eq p1, v1, :cond_19

    goto :goto_3f

    .line 132
    :cond_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spen_theme_pen_detach_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3f

    .line 129
    :cond_2c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spen_theme_pen_attach_sound"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 130
    nop

    .line 136
    :goto_3f
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/smartclip/SpenThemeManager;->getRootDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getThemeFileInputDescriptor(ILjava/lang/String;)Ljava/io/FileDescriptor;
    .registers 5
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 142
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0, p1, p2}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 143
    .local v0, "inFileStream":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_d} :catch_e

    return-object v1

    .line 144
    .end local v0    # "inFileStream":Ljava/io/FileInputStream;
    :catch_e
    move-exception v0

    .line 145
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 147
    .end local v0    # "e":Ljava/io/IOException;
    const/4 v0, 0x0

    return-object v0
.end method

.method private init()V
    .registers 3

    .line 104
    new-instance v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;-><init>(Lcom/android/server/smartclip/SpenThemeManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    .line 105
    invoke-virtual {v0}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->loadData()V

    .line 106
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenThemeManager;->loadAndSetThemeFiles()V

    .line 107
    invoke-direct {p0}, Lcom/android/server/smartclip/SpenThemeManager;->registerPackageMonitorIfNeeded()V

    .line 108
    return-void
.end method

.method private loadAndSetThemeFiles()V
    .registers 4

    .line 194
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFileInputDescriptor(ILjava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget v1, v1, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    iget-object v2, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget v2, v2, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    .line 195
    return-void
.end method

.method private registerPackageMonitorIfNeeded()V
    .registers 5

    .line 198
    iget-boolean v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    if-eqz v0, :cond_5

    .line 199
    return-void

    .line 202
    :cond_5
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 203
    iput-boolean v3, p0, Lcom/android/server/smartclip/SpenThemeManager;->mRegistered:Z

    .line 204
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "package monitor registered."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    return-void
.end method

.method private saveFile(Ljava/io/FileDescriptor;Ljava/io/File;)V
    .registers 6
    .param p1, "inFileDescriptor"    # Ljava/io/FileDescriptor;
    .param p2, "outFile"    # Ljava/io/File;

    .line 151
    if-eqz p1, :cond_35

    if-nez p2, :cond_5

    goto :goto_35

    .line 155
    :cond_5
    const/4 v0, 0x0

    .line 157
    .local v0, "outFileStream":Ljava/io/FileOutputStream;
    :try_start_6
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v0, v1

    .line 158
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/os/FileUtils;->copy(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;)J
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_13} :catch_1f
    .catchall {:try_start_6 .. :try_end_13} :catchall_1d

    .line 162
    nop

    .line 164
    :try_start_14
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_17} :catch_18

    .line 167
    :goto_17
    goto :goto_29

    .line 165
    :catch_18
    move-exception v1

    .line 166
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_17

    .line 162
    :catchall_1d
    move-exception v1

    goto :goto_2a

    .line 159
    :catch_1f
    move-exception v1

    .line 160
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_20
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_1d

    .line 162
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_29

    .line 164
    :try_start_25
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_18

    goto :goto_17

    .line 170
    :cond_29
    :goto_29
    return-void

    .line 162
    :goto_2a
    if-eqz v0, :cond_34

    .line 164
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 167
    goto :goto_34

    .line 165
    :catch_30
    move-exception v2

    .line 166
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    .end local v2    # "e":Ljava/io/IOException;
    :cond_34
    :goto_34
    throw v1

    .line 152
    .end local v0    # "outFileStream":Ljava/io/FileOutputStream;
    :cond_35
    :goto_35
    return-void
.end method

.method private setPenAttachSound(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .line 335
    if-eqz p1, :cond_13

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_13

    .line 338
    :cond_9
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    goto :goto_19

    .line 336
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setAttachSoundPath(Ljava/lang/String;)V

    .line 340
    :goto_19
    return-void
.end method

.method private setPenDetachSound(Ljava/io/File;)V
    .registers 4
    .param p1, "file"    # Ljava/io/File;

    .line 374
    if-nez p1, :cond_9

    .line 375
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setDetachSoundPath(Ljava/lang/String;)V

    goto :goto_12

    .line 377
    :cond_9
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->setDetachSoundPath(Ljava/lang/String;)V

    .line 379
    :goto_12
    return-void
.end method

.method private setPenHoverIcon(Ljava/io/FileDescriptor;FF)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "hotspotX"    # F
    .param p3, "hotspotY"    # F

    .line 250
    const/4 v0, 0x0

    .line 252
    .local v0, "pointerIcon":Landroid/view/PointerIcon;
    if-eqz p1, :cond_25

    .line 253
    const/4 v1, 0x0

    invoke-static {p1, v1, v1}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 254
    .local v1, "icon":Landroid/graphics/Bitmap;
    sget-object v2, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set icon image = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    if-eqz v1, :cond_25

    .line 256
    invoke-static {v1, p2, p3}, Landroid/view/PointerIcon;->create(Landroid/graphics/Bitmap;FF)Landroid/view/PointerIcon;

    move-result-object v0

    .line 260
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_25
    sget-object v1, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set icon pointer icon = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/view/PointerIcon;->semSetDefaultPointerIconInternal(ILandroid/view/PointerIcon;Z)V

    .line 262
    return-void
.end method


# virtual methods
.method canLaunchCustomDoubleTapAction()Z
    .registers 6

    .line 265
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 266
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 265
    const-string/jumbo v1, "pen_custom_double_tap_action_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 271
    .local v0, "enabled":I
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 272
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 271
    const-string/jumbo v3, "pen_custom_double_tap_action_shortcut"

    invoke-static {v1, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, "shortcut":Ljava/lang/String;
    if-nez v0, :cond_25

    .line 277
    sget-object v3, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    const-string v4, "Cannot launch custom double tab action. It is disabled."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    return v2

    .line 279
    :cond_25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    .line 280
    sget-object v3, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    const-string v4, "Cannot launch custom double tab action. Shortcut info is empty."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    return v2

    .line 284
    :cond_33
    const/4 v2, 0x1

    return v2
.end method

.method clearCustomDoubleTapAction(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 288
    const-string v0, "com.samsung.android.pentastic"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 289
    return-void

    .line 291
    :cond_9
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 292
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    .line 291
    const-string/jumbo v2, "pen_custom_double_tap_action_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 296
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    .line 297
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 296
    const-string/jumbo v1, "pen_custom_double_tap_action_shortcut"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    return-void
.end method

.method clearPenAttachSound(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 347
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 348
    return-void

    .line 351
    :cond_7
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->resetPenAttachSound(Ljava/lang/String;)V

    .line 354
    :cond_17
    return-void
.end method

.method clearPenDetachSound(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 386
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 387
    return-void

    .line 390
    :cond_7
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->resetPenDetachSound(Ljava/lang/String;)V

    .line 393
    :cond_17
    return-void
.end method

.method clearPenHoverIcon(Ljava/lang/String;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 304
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 305
    return-void

    .line 308
    :cond_7
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iget-object v0, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->packageNameList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 309
    invoke-virtual {p0, p1}, Lcom/android/server/smartclip/SpenThemeManager;->resetPenHoverIcon(Ljava/lang/String;)V

    .line 311
    :cond_17
    return-void
.end method

.method launchCustomDoubleTapAction(Landroid/os/UserHandle;)V
    .registers 4
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 396
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    const-string v1, "Launch custom double tab action."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.service.aircommand.ACTION_CUSTOM_DOUBLE_TAP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    .local v0, "doubleTapActionIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.service.aircommand"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    iget-object v1, p0, Lcom/android/server/smartclip/SpenThemeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0, p1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 400
    return-void
.end method

.method resetPenAttachSound(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 343
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method resetPenDetachSound(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 382
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method resetPenHoverIcon(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 314
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V

    .line 315
    return-void
.end method

.method setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 318
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 319
    return-void
.end method

.method setPenAttachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 322
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set attach sound package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", file name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 324
    return-void

    .line 327
    :cond_2e
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 328
    invoke-direct {p0, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/File;)V

    goto :goto_41

    .line 330
    :cond_3d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenAttachSound(Ljava/io/File;)V

    .line 332
    :goto_41
    return-void
.end method

.method setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .registers 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;

    .line 357
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method setPenDetachSound(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .registers 7
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 361
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set detach sound package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", file name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 363
    return-void

    .line 366
    :cond_2e
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 367
    invoke-direct {p0, v0, p3}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFile(ILjava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/File;)V

    goto :goto_41

    .line 369
    :cond_3d
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenDetachSound(Ljava/io/File;)V

    .line 371
    :goto_41
    return-void
.end method

.method setPenHoverIcon(Ljava/lang/String;Ljava/io/FileDescriptor;FF)V
    .registers 8
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "hotspotX"    # F
    .param p4, "hotspotY"    # F

    .line 234
    sget-object v0, Lcom/android/server/smartclip/SpenThemeManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set icon package = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 236
    return-void

    .line 239
    :cond_26
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iput p3, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotX:F

    .line 240
    iget-object v0, p0, Lcom/android/server/smartclip/SpenThemeManager;->mThemeData:Lcom/android/server/smartclip/SpenThemeManager$ThemeData;

    iput p4, v0, Lcom/android/server/smartclip/SpenThemeManager$ThemeData;->hotspotY:F

    .line 242
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->applyChanges(Ljava/lang/String;Ljava/io/FileDescriptor;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 243
    invoke-direct {p0, v0, v1}, Lcom/android/server/smartclip/SpenThemeManager;->getThemeFileInputDescriptor(ILjava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    goto :goto_42

    .line 245
    :cond_3e
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v0}, Lcom/android/server/smartclip/SpenThemeManager;->setPenHoverIcon(Ljava/io/FileDescriptor;FF)V

    .line 247
    :goto_42
    return-void
.end method
