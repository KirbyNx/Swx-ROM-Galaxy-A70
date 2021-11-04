.class public Lcom/android/server/power/ShutdownDialog;
.super Landroid/app/Dialog;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ShutdownDialog$SoundThread;,
        Lcom/android/server/power/ShutdownDialog$DrawHandler;,
        Lcom/android/server/power/ShutdownDialog$ImageLoadThread;,
        Lcom/android/server/power/ShutdownDialog$RunningCheckable;,
        Lcom/android/server/power/ShutdownDialog$StateDrawing;,
        Lcom/android/server/power/ShutdownDialog$StatePrepare;,
        Lcom/android/server/power/ShutdownDialog$DrawState;
    }
.end annotation


# static fields
.field private static final BLUE:I = 0x6

.field private static final BUFFER_SIZE:I = 0x3

.field private static final GOLD:I = 0x3

.field private static final GREEN:I = 0x5

.field private static final LAVENDER:I = 0x8

.field private static final MSG_LOAD_FINISH:I = -0x1

.field private static final MSG_UPDATE_DELAY:I = 0x64

.field private static final MSG_UPDATE_FRAME:I = 0x0

.field private static final PATH_B2BSHUTDOWNPATH:Ljava/lang/String; = "//data/system/b2b/ShutdownFileInfo.txt"

.field private static final PATH_SHUTDOWNSOUND_SKU_OGG:Ljava/lang/String; = "/media/audio/ui/PowerOff.ogg"

.field private static final PATH_SHUTDOWNSOUND_SKU_WAV:Ljava/lang/String; = "/media/audio/ui/PowerOff.wav"

.field private static final PATH_SHUTDOWN_ANIM:Ljava/lang/String; = "//system/media/"

.field private static final PATH_SHUTDOWN_SKU:Ljava/lang/String; = "/media/video/shutdown/"

.field private static final PINKGOLD:I = 0x7

.field private static final PROPERTY_SHUTDOWN_SKU:Ljava/lang/String; = "persist.sys.omc_respath"

.field private static final SILVER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ShutdownDialog"

.field private static final WHITE:I = 0x2


# instance fields
.field private PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

.field private PATH_SHUTDOWNIMG_PREFIX:Ljava/lang/String;

.field private SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

.field private SHUTDOWN_LOOP_FILES:[Ljava/lang/String;

.field private SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

.field private SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

.field private final WINDOWTYPE_OFFSET:I

.field private b2bAnimPath:Ljava/lang/String;

.field private b2bSoundPath:Ljava/lang/String;

.field private final bitmapQ:[Landroid/graphics/Bitmap;

.field private bitmapQFront:I

.field private bitmapQRear:I

.field final chameleonCode:Ljava/lang/String;

.field final chameleonFile:Ljava/lang/String;

.field final chameleonFileExist:Z

.field private displayContext:Landroid/content/Context;

.field private displays:[Landroid/view/Display;

.field private dm:Landroid/hardware/display/DisplayManager;

.field private final drawBufferLock:Ljava/lang/Object;

.field private hasSubDisplayDevice:Z

.field private final logHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

.field private mImageView:Landroid/widget/ImageView;

.field private final mLogString:Ljava/lang/StringBuffer;

.field private mLogView:Landroid/widget/TextView;

.field private mState:Lcom/android/server/power/ShutdownDialog$DrawState;

.field private final mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

.field private final mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

.field private mp:Landroid/media/MediaPlayer;

.field private final qmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private silentShutdown:Z

.field private subDialog:Landroid/app/Presentation;

.field private subImageView:Landroid/widget/ImageView;

.field private final subbitmapQ:[Landroid/graphics/Bitmap;

.field private final subqmgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/power/LibQmg;",
            ">;"
        }
    .end annotation
.end field

.field private final supportChameleon:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 189
    const v0, 0x1030007

    invoke-direct {p0, p1, v0}, Lcom/android/server/power/ShutdownDialog;-><init>(Landroid/content/Context;I)V

    .line 190
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .line 193
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 106
    const-string v0, "//system/media/shutdown_"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_PREFIX:Ljava/lang/String;

    .line 107
    const-string v0, ".qmg"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    .line 108
    const-string v0, "/sys/class/lcd/panel/window_type"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    .line 109
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/server/power/ShutdownDialog;->WINDOWTYPE_OFFSET:I

    .line 123
    const-string/jumbo v0, "shutdownbefore.qmg"

    const-string/jumbo v1, "shutdown.qmg"

    const-string/jumbo v2, "shutdownafter.qmg"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    .line 126
    const-string/jumbo v0, "shutdownloop.qmg"

    const-string/jumbo v1, "sub_shutdownloop.qmg"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_LOOP_FILES:[Ljava/lang/String;

    .line 128
    const-string/jumbo v0, "sub_shutdownbefore.qmg"

    const-string/jumbo v1, "sub_shutdown.qmg"

    const-string/jumbo v2, "sub_shutdownafter.qmg"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    .line 137
    const-string v0, "/carrier/chameleon.xml"

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFile:Ljava/lang/String;

    .line 138
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_UseChameleon"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    .line 139
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFileExist:Z

    .line 140
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getChameleonCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    .line 143
    const/4 v0, 0x3

    new-array v1, v0, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    .line 144
    iput v3, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    .line 145
    iput v3, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    .line 146
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    .line 147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    .line 152
    iput-boolean v3, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->subqmgList:Ljava/util/List;

    .line 160
    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->subbitmapQ:[Landroid/graphics/Bitmap;

    .line 161
    iput-boolean v3, p0, Lcom/android/server/power/ShutdownDialog;->hasSubDisplayDevice:Z

    .line 170
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    .line 171
    new-instance v0, Lcom/android/server/power/ShutdownDialog$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ShutdownDialog$1;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    .line 184
    new-instance v0, Lcom/android/server/power/ShutdownDialog$StatePrepare;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    .line 185
    new-instance v0, Lcom/android/server/power/ShutdownDialog$StateDrawing;

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/ShutdownDialog$StateDrawing;-><init>(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$1;)V

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    .line 186
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    iput-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 194
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    .line 198
    new-instance v0, Ljava/io/File;

    const-string v1, "//data/system/b2b/ShutdownFileInfo.txt"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "ShutdownDialog"

    if-eqz v0, :cond_e6

    .line 199
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getBtoBShutdownPath()V

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B2B sound : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "B2B img : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_e6
    invoke-virtual {p0, v3}, Lcom/android/server/power/ShutdownDialog;->setCancelable(Z)V

    .line 208
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 209
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x7f95fa80

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 218
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 219
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->systemUiVisibility:I

    .line 220
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->rotationAnimation:I

    .line 221
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 223
    const/16 v1, 0x7e5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 228
    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 229
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 232
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/StringBuffer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogString:Ljava/lang/StringBuffer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getSystemVolume()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->getShutdownSoundPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/power/ShutdownDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->prepareSound(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$StateDrawing;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStateDrawing:Lcom/android/server/power/ShutdownDialog$StateDrawing;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/server/power/ShutdownDialog;Lcom/android/server/power/ShutdownDialog$DrawState;)Lcom/android/server/power/ShutdownDialog$DrawState;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Lcom/android/server/power/ShutdownDialog$DrawState;

    .line 100
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/power/ShutdownDialog;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_LOOP_FILES:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/power/ShutdownDialog;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 100
    invoke-direct {p0, p1}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .line 100
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQFront:I

    return p1
.end method

.method static synthetic access$2400(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->drawBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/power/ShutdownDialog;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return v0
.end method

.method static synthetic access$2502(Lcom/android/server/power/ShutdownDialog;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # I

    .line 100
    iput p1, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQRear:I

    return p1
.end method

.method static synthetic access$2600(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->subImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/power/ShutdownDialog;)Landroid/app/Presentation;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->subDialog:Landroid/app/Presentation;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/power/ShutdownDialog;)Landroid/media/MediaPlayer;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->bitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/power/ShutdownDialog;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->subqmgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/power/ShutdownDialog;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->hasSubDisplayDevice:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/power/ShutdownDialog;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;
    .param p1, "x1"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog;->hasSubDisplayDevice:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/power/ShutdownDialog;

    .line 100
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->subbitmapQ:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;)Z
    .registers 5
    .param p1, "path"    # Ljava/lang/String;

    .line 942
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 944
    :try_start_b
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    new-instance v1, Lcom/android/server/power/LibQmg;

    invoke-direct {v1, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_b .. :try_end_15} :catch_16

    .line 947
    goto :goto_1e

    .line 945
    :catch_16
    move-exception v0

    .line 946
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v1, "ShutdownDialog"

    const-string v2, "!@qmgList.add ArrayIndexOutOfBoundsException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 948
    .end local v0    # "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_1e
    const/4 v0, 0x1

    .local v0, "rtn":Z
    goto :goto_21

    .line 950
    .end local v0    # "rtn":Z
    :cond_20
    const/4 v0, 0x0

    .line 952
    .restart local v0    # "rtn":Z
    :goto_21
    return v0
.end method

.method private addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "files"    # [Ljava/lang/String;

    .line 933
    const/4 v0, 0x0

    .line 934
    .local v0, "rtn":Z
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_1e

    aget-object v3, p2, v2

    .line 935
    .local v3, "file":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 934
    .end local v3    # "file":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 937
    :cond_1e
    return v0
.end method

.method private addToSubPlaylistIfExists(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .line 966
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 967
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->subqmgList:Ljava/util/List;

    new-instance v1, Lcom/android/server/power/LibQmg;

    invoke-direct {v1, p1}, Lcom/android/server/power/LibQmg;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 968
    const/4 v0, 0x1

    .local v0, "rtn":Z
    goto :goto_18

    .line 970
    .end local v0    # "rtn":Z
    :cond_17
    const/4 v0, 0x0

    .line 972
    .restart local v0    # "rtn":Z
    :goto_18
    return v0
.end method

.method private addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 8
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "files"    # [Ljava/lang/String;

    .line 957
    const/4 v0, 0x0

    .line 958
    .local v0, "rtn":Z
    array-length v1, p2

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_1e

    aget-object v3, p2, v2

    .line 959
    .local v3, "file":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 958
    .end local v3    # "file":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 961
    :cond_1e
    return v0
.end method

.method private createShutdownQmgPlayList()V
    .registers 11

    .line 976
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 977
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->subqmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 979
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    const-string v1, "//system/media/"

    if-eqz v0, :cond_2b

    .line 980
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    .line 981
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "_shutdown.qmg"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 982
    .local v0, "chameleonPath":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 983
    return-void

    .line 989
    .end local v0    # "chameleonPath":Ljava/lang/StringBuffer;
    :cond_2b
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    if-eqz v0, :cond_36

    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 990
    return-void

    .line 994
    :cond_36
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->readColorId()I

    move-result v0

    .line 995
    .local v0, "color_id":I
    invoke-direct {p0, v0}, Lcom/android/server/power/ShutdownDialog;->getQmgCodeById(I)Ljava/lang/String;

    move-result-object v2

    .line 997
    .local v2, "qmg_code":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.omc_respath"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1001
    .local v3, "skuAnimPath":Ljava/lang/String;
    const/4 v4, 0x1

    if-eqz v3, :cond_113

    iget-boolean v5, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v5, :cond_113

    .line 1002
    :cond_50
    const-string/jumbo v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1003
    .local v5, "salesCode":Ljava/lang/String;
    if-eqz v5, :cond_7f

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v6, :cond_7f

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7f

    .line 1005
    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 1006
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "!@Power off sound CHAMELEON - update animation path to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ShutdownDialog"

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    :cond_7f
    const-string v6, "/media/video/shutdown/"

    if-eqz v2, :cond_e7

    .line 1009
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shutdown_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1010
    .local v7, "PATH_SHUTDOWNIMG_COLOR":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 1011
    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    aput-object v7, v8, v4

    .line 1012
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v8, v9}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 1014
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1015
    return-void

    .line 1019
    .end local v7    # "PATH_SHUTDOWNIMG_COLOR":Ljava/lang/String;
    :cond_e7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v7, v8}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_113

    .line 1021
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1022
    return-void

    .line 1026
    .end local v5    # "salesCode":Ljava/lang/String;
    :cond_113
    if-eqz v2, :cond_141

    .line 1027
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_PREFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->PATH_SHUTDOWNIMG_POSTFIX:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1029
    .local v5, "PATH_SHUTDOWNIMG_COLOR":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_141

    .line 1030
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1031
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1032
    return-void

    .line 1036
    .end local v5    # "PATH_SHUTDOWNIMG_COLOR":Ljava/lang/String;
    :cond_141
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    aget-object v4, v7, v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_16a

    .line 1038
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_ANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1039
    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_SUBANIM_FILES:[Ljava/lang/String;

    invoke-direct {p0, v1, v4}, Lcom/android/server/power/ShutdownDialog;->addToSubPlaylistIfExists(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 1040
    return-void

    .line 1044
    :cond_16a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->SHUTDOWN_LOOP_FILES:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v1, v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/power/ShutdownDialog;->addToPlaylistIfExists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 1045
    return-void

    .line 1047
    :cond_185
    return-void
.end method

.method private getBtoBShutdownPath()V
    .registers 5

    .line 1168
    const/4 v0, 0x0

    .line 1170
    .local v0, "in":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    const-string v3, "//data/system/b2b/ShutdownFileInfo.txt"

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    .line 1171
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->b2bAnimPath:Ljava/lang/String;

    .line 1172
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;
    :try_end_1a
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1a} :catch_30
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1a} :catch_26
    .catchall {:try_start_1 .. :try_end_1a} :catchall_24

    .line 1178
    nop

    .line 1180
    :try_start_1b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1e} :catch_1f

    .line 1183
    :goto_1e
    goto :goto_3a

    .line 1181
    :catch_1f
    move-exception v1

    .line 1182
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_1e

    .line 1178
    :catchall_24
    move-exception v1

    goto :goto_3b

    .line 1175
    :catch_26
    move-exception v1

    .line 1176
    .local v1, "e":Ljava/io/IOException;
    :try_start_27
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_24

    .line 1178
    .end local v1    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_3a

    .line 1180
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_1f

    goto :goto_1e

    .line 1173
    :catch_30
    move-exception v1

    .line 1174
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_31
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_24

    .line 1178
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    if-eqz v0, :cond_3a

    .line 1180
    :try_start_36
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_1f

    goto :goto_1e

    .line 1186
    :cond_3a
    :goto_3a
    return-void

    .line 1178
    :goto_3b
    if-eqz v0, :cond_45

    .line 1180
    :try_start_3d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_40} :catch_41

    .line 1183
    goto :goto_45

    .line 1181
    :catch_41
    move-exception v2

    .line 1182
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1185
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_45
    :goto_45
    throw v1
.end method

.method private getChameleonCode()Ljava/lang/String;
    .registers 8

    .line 785
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->supportChameleon:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 787
    return-object v1

    .line 788
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/power/ShutdownDialog;->chameleonFileExist:Z

    if-nez v0, :cond_b

    .line 790
    return-object v1

    .line 791
    :cond_b
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->isCarrierActivated()Z

    move-result v0

    if-nez v0, :cond_12

    .line 793
    return-object v1

    .line 800
    :cond_12
    const-string v0, "/carrier/chameleon.xml"

    const-string v1, "Operators.AndroidOperatorNetworkCode"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 801
    .local v0, "networkCode":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!@Power off sound CHAMELEON network code : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShutdownDialog"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    if-nez v0, :cond_35

    const-string v1, "310000"

    goto :goto_36

    :cond_35
    move-object v1, v0

    :goto_36
    move-object v0, v1

    .line 805
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x59d0375d

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_62

    const v4, 0x59d0b7d8

    if-eq v3, v4, :cond_58

    const v4, 0x59d0c69e

    if-eq v3, v4, :cond_4e

    :cond_4d
    goto :goto_6b

    :cond_4e
    const-string v3, "311870"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    move v1, v5

    goto :goto_6b

    :cond_58
    const-string v3, "311490"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    move v1, v6

    goto :goto_6b

    :cond_62
    const-string v3, "310120"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const/4 v1, 0x0

    :goto_6b
    if-eqz v1, :cond_7a

    if-eq v1, v6, :cond_77

    if-eq v1, v5, :cond_74

    .line 816
    const-string v1, "XAS"

    .local v1, "carrier":Ljava/lang/String;
    goto :goto_7d

    .line 813
    .end local v1    # "carrier":Ljava/lang/String;
    :cond_74
    const-string v1, "BST"

    .line 814
    .restart local v1    # "carrier":Ljava/lang/String;
    goto :goto_7d

    .line 810
    .end local v1    # "carrier":Ljava/lang/String;
    :cond_77
    const-string v1, "VMU"

    .line 811
    .restart local v1    # "carrier":Ljava/lang/String;
    goto :goto_7d

    .line 807
    .end local v1    # "carrier":Ljava/lang/String;
    :cond_7a
    const-string v1, "SPR"

    .line 808
    .restart local v1    # "carrier":Ljava/lang/String;
    nop

    .line 819
    :goto_7d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!@Power off sound CHAMELEON is activated : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 820
    return-object v1
.end method

.method public static getElement(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 6
    .param p0, "file"    # Ljava/lang/String;

    .line 871
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 872
    .local v0, "xmlFile":Ljava/io/File;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 875
    .local v1, "dbFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_9
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 876
    .local v2, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 877
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 878
    .local v3, "mDoc":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v4
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_1b} :catch_1d

    .line 879
    .local v4, "parent":Lorg/w3c/dom/Node;
    return-object v4

    .line 883
    .end local v3    # "mDoc":Lorg/w3c/dom/Document;
    .end local v4    # "parent":Lorg/w3c/dom/Node;
    :cond_1c
    goto :goto_25

    .line 881
    .end local v2    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_1d
    move-exception v2

    .line 882
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ShutdownDialog"

    const-string v4, "Exception"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 885
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_25
    const/4 v2, 0x0

    return-object v2
.end method

.method private getQmgCodeById(I)Ljava/lang/String;
    .registers 6
    .param p1, "id"    # I

    .line 1050
    const/4 v0, 0x0

    .line 1052
    .local v0, "value":Ljava/lang/String;
    const-string/jumbo v1, "ro.build.product"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1053
    .local v1, "product":Ljava/lang/String;
    const-string v2, "dream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1054
    return-object v0

    .line 1057
    :cond_11
    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_32

    goto :goto_30

    .line 1061
    :pswitch_16
    const-string/jumbo v3, "ro.color.pinkgold"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 1060
    :pswitch_1e
    const-string/jumbo v3, "ro.color.blue"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 1059
    :pswitch_26
    const-string/jumbo v3, "ro.color.green"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 1058
    :pswitch_2e
    const-string v0, "WH"

    .line 1064
    :goto_30
    return-object v0

    nop

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2e
        :pswitch_2e
        :pswitch_2e
        :pswitch_26
        :pswitch_1e
        :pswitch_16
        :pswitch_2e
    .end packed-switch
.end method

.method private getShutdownSoundPath()Ljava/lang/String;
    .registers 6

    .line 891
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    if-eqz v0, :cond_14

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 892
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->b2bSoundPath:Ljava/lang/String;

    return-object v0

    .line 896
    :cond_14
    const-string/jumbo v0, "persist.sys.omc_respath"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 897
    .local v0, "skuAudioPath":Ljava/lang/String;
    if-eqz v0, :cond_75

    .line 898
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/media/audio/ui/PowerOff.ogg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_49

    .line 899
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 901
    :cond_49
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/media/audio/ui/PowerOff.wav"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 902
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 908
    :cond_75
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    if-eqz v1, :cond_9f

    .line 909
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/system/media/audio/ui/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->chameleonCode:Ljava/lang/String;

    .line 910
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/PowerOff.ogg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 911
    .local v1, "chameleonPath":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_9f

    .line 912
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 918
    .end local v1    # "chameleonPath":Ljava/lang/StringBuilder;
    :cond_9f
    const-string v1, "//system/media/audio/ui/PowerOff.wav"

    .line 919
    .local v1, "poweroff_wav":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    const-string v3, "//system/media/audio/ui/PowerOff.wav"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_af

    .line 920
    return-object v3

    .line 924
    :cond_af
    const-string v2, "//system/media/audio/ui/PowerOff.ogg"

    .line 925
    .local v2, "poweroff_ogg":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    const-string v4, "//system/media/audio/ui/PowerOff.ogg"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_bf

    .line 926
    return-object v4

    .line 929
    :cond_bf
    const/4 v3, 0x0

    return-object v3
.end method

.method private getSystemVolume()I
    .registers 6

    .line 451
    const/16 v0, -0x270f

    .line 452
    .local v0, "systemVolume":I
    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 453
    .local v1, "am":Landroid/media/AudioManager;
    const/4 v2, 0x1

    if-eqz v1, :cond_1b

    .line 454
    const-string/jumbo v3, "shutdown"

    const-string v4, "1"

    invoke-virtual {v1, v3, v4}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 457
    :cond_1b
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "!@systemVol:%d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShutdownDialog"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return v0
.end method

.method private isCarrierActivated()Z
    .registers 3

    .line 824
    const-string v0, "/carrier/chameleon.xml"

    const-string v1, "Operators.SubscriberCarrierId"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownDialog;->search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 825
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_c

    .line 826
    const/4 v1, 0x1

    return v1

    .line 827
    :cond_c
    const/4 v1, 0x0

    return v1
.end method

.method private prepareSound(Ljava/lang/String;)V
    .registers 12
    .param p1, "soundPath"    # Ljava/lang/String;

    .line 463
    const-string v0, "!@MediaPlayer exception. Sound will not start!"

    const-string/jumbo v1, "sound file.close"

    const-string v2, "ShutdownDialog"

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 464
    .local v3, "am":Landroid/media/AudioManager;
    const/4 v4, 0x0

    .line 465
    .local v4, "fis":Ljava/io/FileInputStream;
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v5, "f":Ljava/io/File;
    :try_start_17
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v4, v6

    .line 468
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 469
    .local v6, "tempMediaPlayer":Landroid/media/MediaPlayer;
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 471
    new-instance v7, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v7}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v8, 0x1

    .line 472
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    const-string/jumbo v8, "stv_boot_sound"

    .line 473
    invoke-virtual {v7, v8}, Landroid/media/AudioAttributes$Builder;->semAddAudioTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;

    move-result-object v7

    .line 474
    invoke-virtual {v7}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 476
    .local v7, "attributes":Landroid/media/AudioAttributes;
    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/media/AudioManager;->semGetSituationVolume(II)F

    move-result v8

    .line 478
    .local v8, "vol":F
    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 479
    invoke-virtual {v6, v8, v8}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 480
    invoke-virtual {v6, v9}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 481
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V

    .line 482
    iput-object v6, p0, Lcom/android/server/power/ShutdownDialog;->mp:Landroid/media/MediaPlayer;
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_53} :catch_73
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_53} :catch_69
    .catch Ljava/lang/SecurityException; {:try_start_17 .. :try_end_53} :catch_5f
    .catchall {:try_start_17 .. :try_end_53} :catchall_5d

    .line 491
    .end local v6    # "tempMediaPlayer":Landroid/media/MediaPlayer;
    .end local v7    # "attributes":Landroid/media/AudioAttributes;
    .end local v8    # "vol":F
    nop

    .line 492
    :try_start_54
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_57
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_58

    .line 496
    :cond_57
    :goto_57
    goto :goto_7d

    .line 494
    :catch_58
    move-exception v0

    .line 495
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 497
    .end local v0    # "e":Ljava/io/IOException;
    goto :goto_7d

    .line 490
    :catchall_5d
    move-exception v0

    goto :goto_7e

    .line 487
    :catch_5f
    move-exception v6

    .line 488
    .local v6, "e":Ljava/lang/SecurityException;
    :try_start_60
    invoke-static {v2, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_63
    .catchall {:try_start_60 .. :try_end_63} :catchall_5d

    .line 491
    .end local v6    # "e":Ljava/lang/SecurityException;
    if-eqz v4, :cond_57

    .line 492
    :try_start_65
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_68
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_58

    goto :goto_57

    .line 485
    :catch_69
    move-exception v6

    .line 486
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_6a
    invoke-static {v2, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6d
    .catchall {:try_start_6a .. :try_end_6d} :catchall_5d

    .line 491
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    if-eqz v4, :cond_57

    .line 492
    :try_start_6f
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_58

    goto :goto_57

    .line 483
    :catch_73
    move-exception v6

    .line 484
    .local v6, "e":Ljava/io/IOException;
    :try_start_74
    invoke-static {v2, v0, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_5d

    .line 491
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v4, :cond_57

    .line 492
    :try_start_79
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7c
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_58

    goto :goto_57

    .line 498
    :goto_7d
    return-void

    .line 491
    :goto_7e
    if-eqz v4, :cond_89

    .line 492
    :try_start_80
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_80 .. :try_end_83} :catch_84

    goto :goto_89

    .line 494
    :catch_84
    move-exception v6

    .line 495
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-static {v2, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8a

    .line 496
    .end local v6    # "e":Ljava/io/IOException;
    :cond_89
    :goto_89
    nop

    .line 497
    :goto_8a
    throw v0
.end method

.method private readColorId()I
    .registers 5

    .line 1068
    const/4 v0, 0x0

    .line 1069
    .local v0, "id":I
    const/4 v1, 0x0

    .line 1070
    .local v1, "window_type":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->readWindowType()Ljava/lang/String;

    move-result-object v1

    .line 1072
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_23

    .line 1073
    const/4 v2, 0x0

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1074
    .local v2, "firstParam":Ljava/lang/String;
    if-eqz v2, :cond_23

    .line 1075
    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 1076
    and-int/lit8 v0, v0, 0xf

    .line 1080
    .end local v2    # "firstParam":Ljava/lang/String;
    :cond_23
    return v0
.end method

.method private readWindowType()Ljava/lang/String;
    .registers 8

    .line 1084
    const-string v0, "ShutdownDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1085
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 1086
    .local v2, "line":Ljava/lang/String;
    const/4 v3, 0x0

    .line 1089
    .local v3, "reader":Ljava/io/BufferedReader;
    :try_start_9
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    iget-object v6, p0, Lcom/android/server/power/ShutdownDialog;->SYSFS_OCTA_WINDOW_TYPE_FROM_PANEL:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v3, v4

    .line 1090
    :goto_16
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    if-eqz v4, :cond_26

    .line 1091
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_25} :catch_36
    .catchall {:try_start_9 .. :try_end_25} :catchall_34

    goto :goto_16

    .line 1096
    :cond_26
    nop

    .line 1098
    :try_start_27
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b

    .line 1101
    :goto_2a
    goto :goto_45

    .line 1099
    :catch_2b
    move-exception v4

    .line 1100
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v4    # "e":Ljava/io/IOException;
    goto :goto_2a

    .line 1096
    :catchall_34
    move-exception v4

    goto :goto_4e

    .line 1093
    :catch_36
    move-exception v4

    .line 1094
    .restart local v4    # "e":Ljava/io/IOException;
    :try_start_37
    invoke-virtual {v4}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catchall {:try_start_37 .. :try_end_3e} :catchall_34

    .line 1096
    nop

    .end local v4    # "e":Ljava/io/IOException;
    if-eqz v3, :cond_45

    .line 1098
    :try_start_41
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_2b

    goto :goto_2a

    .line 1105
    :cond_45
    :goto_45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1096
    :goto_4e
    if-eqz v3, :cond_5c

    .line 1098
    :try_start_50
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54

    .line 1101
    goto :goto_5c

    .line 1099
    :catch_54
    move-exception v5

    .line 1100
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    .end local v5    # "e":Ljava/io/IOException;
    :cond_5c
    :goto_5c
    throw v4
.end method

.method public static search(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p0, "file"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .line 831
    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->getElement(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 832
    .local v0, "node":Lorg/w3c/dom/Node;
    const/4 v1, 0x0

    if-eqz p1, :cond_2f

    if-nez v0, :cond_a

    goto :goto_2f

    .line 836
    :cond_a
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v3, "."

    invoke-direct {v2, p1, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_11
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 838
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, "token":Ljava/lang/String;
    invoke-static {v0, v3}, Lcom/android/server/power/ShutdownDialog;->search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 840
    if-nez v0, :cond_22

    .line 841
    return-object v1

    .line 843
    .end local v3    # "token":Ljava/lang/String;
    :cond_22
    goto :goto_11

    .line 845
    :cond_23
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    .line 846
    .local v3, "firstChild":Lorg/w3c/dom/Node;
    if-nez v3, :cond_2a

    .line 847
    return-object v1

    .line 850
    :cond_2a
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 833
    .end local v2    # "tokenizer":Ljava/util/StringTokenizer;
    .end local v3    # "firstChild":Lorg/w3c/dom/Node;
    :cond_2f
    :goto_2f
    return-object v1
.end method

.method public static search(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .registers 8
    .param p0, "parent"    # Lorg/w3c/dom/Node;
    .param p1, "name"    # Ljava/lang/String;

    .line 854
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 855
    return-object v0

    .line 858
    :cond_4
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 859
    .local v1, "children":Lorg/w3c/dom/NodeList;
    if-eqz v1, :cond_23

    .line 860
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    .line 861
    .local v2, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    if-ge v3, v2, :cond_23

    .line 862
    invoke-interface {v1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 863
    .local v4, "child":Lorg/w3c/dom/Node;
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 864
    return-object v4

    .line 861
    .end local v4    # "child":Lorg/w3c/dom/Node;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 867
    .end local v2    # "n":I
    .end local v3    # "i":I
    :cond_23
    return-object v0
.end method


# virtual methods
.method public appendTextLog(Ljava/lang/String;)V
    .registers 5
    .param p1, "str"    # Ljava/lang/String;

    .line 1132
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1133
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1134
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "ShutdownDialog"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1136
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->logHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1137
    return-void
.end method

.method public drawState()I
    .registers 2

    .line 1159
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkStart()Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 v0, 0x12c

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public existAnim()Z
    .registers 2

    .line 1141
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 1142
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public hasSound()Z
    .registers 3

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "has sound for power off : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v1}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$3000(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownDialog"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mStatePrepare:Lcom/android/server/power/ShutdownDialog$StatePrepare;

    # getter for: Lcom/android/server/power/ShutdownDialog$StatePrepare;->hasSound:Z
    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog$StatePrepare;->access$3000(Lcom/android/server/power/ShutdownDialog$StatePrepare;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 236
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 239
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 240
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDecorFitsSystemWindows(Z)V

    .line 243
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 244
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/16 v3, 0x11

    invoke-direct {v1, v2, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 248
    .local v1, "layoutparams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    const/high16 v3, -0x1000000

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 252
    new-instance v3, Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    .line 275
    new-instance v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    .line 276
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    const v3, -0xff0001

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 282
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 283
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mLogView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 285
    new-instance v2, Lcom/android/server/power/ShutdownDialog$DrawHandler;

    invoke-direct {v2, p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;-><init>(Lcom/android/server/power/ShutdownDialog;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mDrawHandler:Lcom/android/server/power/ShutdownDialog$DrawHandler;

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/server/power/ShutdownDialog;->setContentView(Landroid/view/View;)V

    .line 289
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->dm:Landroid/hardware/display/DisplayManager;

    .line 290
    const-string v3, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->displays:[Landroid/view/Display;

    .line 291
    if-eqz v2, :cond_aa

    array-length v2, v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_aa

    .line 292
    const-string v2, "TAG"

    const-string v4, "bloom subdisplay exist"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->displays:[Landroid/view/Display;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->displayContext:Landroid/content/Context;

    .line 294
    new-instance v2, Landroid/app/Presentation;

    iget-object v4, p0, Lcom/android/server/power/ShutdownDialog;->displayContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/power/ShutdownDialog;->displays:[Landroid/view/Display;

    aget-object v3, v5, v3

    invoke-direct {v2, v4, v3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->subDialog:Landroid/app/Presentation;

    .line 295
    new-instance v2, Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/power/ShutdownDialog;->displayContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ShutdownDialog;->subImageView:Landroid/widget/ImageView;

    .line 297
    :cond_aa
    return-void
.end method

.method public onStart()V
    .registers 2

    .line 301
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 302
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 303
    return-void
.end method

.method protected onStop()V
    .registers 1

    .line 307
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 308
    return-void
.end method

.method public prepareShutdown()V
    .registers 3

    .line 1146
    const-string v0, "ShutdownDialog"

    const-string/jumbo v1, "prepare shutdown dialog image and sound"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->qmgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_13

    .line 1148
    invoke-direct {p0}, Lcom/android/server/power/ShutdownDialog;->createShutdownQmgPlayList()V

    .line 1150
    :cond_13
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->prepare()V

    .line 1151
    return-void
.end method

.method public setSilentShutdown(Z)V
    .registers 2
    .param p1, "v"    # Z

    .line 1154
    iput-boolean p1, p0, Lcom/android/server/power/ShutdownDialog;->silentShutdown:Z

    .line 1155
    return-void
.end method

.method public start()V
    .registers 2

    .line 1164
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v0}, Lcom/android/server/power/ShutdownDialog$DrawState;->start()V

    .line 1165
    return-void
.end method

.method public waitForAnimEnd(I)Z
    .registers 10
    .param p1, "timeout"    # I

    .line 1109
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 1110
    .local v0, "endTime":J
    :goto_9
    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog;->mState:Lcom/android/server/power/ShutdownDialog$DrawState;

    invoke-interface {v2}, Lcom/android/server/power/ShutdownDialog$DrawState;->checkRunning()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1111
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 1112
    .local v2, "delay":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const-string v5, "ShutdownDialog"

    if-gtz v4, :cond_25

    .line 1113
    const-string v4, "!@Animation finish wait timed out"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    goto :goto_37

    .line 1116
    :cond_25
    const-string v4, "!@wait for finish : sleep 100ms"

    invoke-static {v5, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    const-wide/16 v6, 0x64

    :try_start_2c
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2f
    .catch Ljava/lang/InterruptedException; {:try_start_2c .. :try_end_2f} :catch_30

    .line 1121
    goto :goto_36

    .line 1119
    :catch_30
    move-exception v4

    .line 1120
    .local v4, "e":Ljava/lang/InterruptedException;
    const-string v6, "InterruptedException"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    .end local v2    # "delay":J
    .end local v4    # "e":Ljava/lang/InterruptedException;
    :goto_36
    goto :goto_9

    .line 1123
    :cond_37
    :goto_37
    const/4 v2, 0x1

    return v2
.end method
