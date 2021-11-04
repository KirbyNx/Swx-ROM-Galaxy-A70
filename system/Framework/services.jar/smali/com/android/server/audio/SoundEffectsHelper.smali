.class Lcom/android/server/audio/SoundEffectsHelper;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;,
        Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;,
        Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;,
        Lcom/android/server/audio/SoundEffectsHelper$Resource;,
        Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;
    }
.end annotation


# static fields
.field private static final ASSET_FILE_VERSION:Ljava/lang/String; = "1.0"

.field private static final ATTR_ASSET_FILE:Ljava/lang/String; = "file"

.field private static final ATTR_ASSET_ID:Ljava/lang/String; = "id"

.field private static final ATTR_GROUP_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final DELAYED_UPDATE_SYSTEM_SOUND:I = 0x12c

.field private static final EFFECT_NOT_IN_SOUND_POOL:I = 0x0

.field private static final GROUP_TOUCH_SOUNDS:Ljava/lang/String; = "touch_sounds"

.field private static final KEY_SITUATION_VOLUME_TOUCH_TONE:Ljava/lang/String; = "stv_touch_tone"

.field private static final MSG_LOAD_EFFECTS:I = 0x0

.field private static final MSG_LOAD_EFFECTS_TIMEOUT:I = 0x3

.field private static final MSG_PLAY_EFFECT:I = 0x2

.field private static final MSG_UNLOAD_EFFECTS:I = 0x1

.field private static final NUM_SOUNDPOOL_CHANNELS:I = 0x4

.field private static final SOUND_EFFECTS_LOAD_TIMEOUT_MS:I = 0x3a98

.field private static final SOUND_EFFECTS_PATH:Ljava/lang/String; = "/media/audio/ui/"

.field private static final TAG:Ljava/lang/String; = "AS.SfxHelper"

.field private static final TAG_ASSET:Ljava/lang/String; = "asset"

.field private static final TAG_AUDIO_ASSETS:Ljava/lang/String; = "audio_assets"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final sPreDefinedVolumeEffects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static sSoundEffectVolume:F


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDefaultResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/SoundEffectsHelper$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private final mEffects:[I

.field private mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

.field private final mResources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/SoundEffectsHelper$Resource;",
            ">;"
        }
    .end annotation
.end field

.field private final mSfxAttenuationDb:I

.field private mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

.field private final mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

.field private mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

.field private mSystemSoundFromSoundTheme:Ljava/lang/String;

.field private mThemeTouchSoundPath:Ljava/lang/String;

.field private mUpdateSystemSound:Z


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 609
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/server/audio/SoundEffectsHelper;->sSoundEffectVolume:F

    .line 611
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/audio/SoundEffectsHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    .line 613
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    sget-object v0, Lcom/android/server/audio/SoundEffectsHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 615
    sget-object v0, Lcom/android/server/audio/SoundEffectsHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    sget-object v0, Lcom/android/server/audio/SoundEffectsHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    sget-object v0, Lcom/android/server/audio/SoundEffectsHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    .line 618
    const/16 v1, 0x65

    invoke-static {v1}, Landroid/media/AudioManager;->getPlaySoundTypeForSEP(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    .line 617
    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x18

    const-string v2, "Sound Effects Loading"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    .line 114
    const/16 v0, 0xe

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    .line 655
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 656
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 657
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 658
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    .line 659
    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 119
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    .line 120
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e00ee

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    .line 123
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v0, :cond_64

    .line 124
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 125
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string/jumbo v1, "theme_touch_sound"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 126
    const-string/jumbo v1, "system_sound"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 127
    const-string/jumbo v1, "prev_system_sound"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 128
    invoke-direct {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadTouchSoundAssetsDefaultList()V

    .line 130
    .end local v0    # "cr":Landroid/content/ContentResolver;
    :cond_64
    invoke-direct {p0}, Lcom/android/server/audio/SoundEffectsHelper;->startWorker()V

    .line 131
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/audio/SoundEffectsHelper;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;

    .line 63
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;)Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 63
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    return-object p1
.end method

.method static synthetic access$100(Landroid/media/MediaPlayer;)V
    .registers 1
    .param p0, "x0"    # Landroid/media/MediaPlayer;

    .line 63
    invoke-static {p0}, Lcom/android/server/audio/SoundEffectsHelper;->cleanupPlayer(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;)Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    .line 63
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->onLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;

    .line 63
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/audio/SoundEffectsHelper;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;

    .line 63
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/audio/SoundEffectsHelper;I)Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # I

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->findResourceBySampleId(I)Lcom/android/server/audio/SoundEffectsHelper$Resource;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/audio/SoundEffectsHelper;
    .param p1, "x1"    # Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static cleanupPlayer(Landroid/media/MediaPlayer;)V
    .registers 4
    .param p0, "mp"    # Landroid/media/MediaPlayer;

    .line 324
    if-eqz p0, :cond_20

    .line 326
    :try_start_2
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->stop()V

    .line 327
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_8
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_8} :catch_9

    .line 330
    goto :goto_20

    .line 328
    :catch_9
    move-exception v0

    .line 329
    .local v0, "ex":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MediaPlayer IllegalStateException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AS.SfxHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v0    # "ex":Ljava/lang/IllegalStateException;
    :cond_20
    :goto_20
    return-void
.end method

.method private findOrAddResourceByFileName(Ljava/lang/String;)I
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;

    .line 465
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 466
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iget-object v1, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 467
    return v0

    .line 465
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 470
    .end local v0    # "i":I
    :cond_1d
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 471
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    invoke-direct {v2, p1}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    return v0
.end method

.method private findResourceBySampleId(I)Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .registers 5
    .param p1, "sampleId"    # I

    .line 476
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 477
    .local v1, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-ne v2, p1, :cond_17

    .line 478
    return-object v1

    .line 480
    .end local v1    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    :cond_17
    goto :goto_6

    .line 481
    :cond_18
    const/4 v0, 0x0

    return-object v0
.end method

.method private getResourceFilePath(ILcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .registers 7
    .param p1, "index"    # I
    .param p2, "res"    # Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 782
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    const-string v1, "/media/audio/ui/"

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v2, "Open_theme"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    iget-object v2, v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 784
    .local v0, "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_8a

    .line 785
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8a

    .line 788
    .end local v0    # "filePath":Ljava/lang/String;
    :cond_4f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 789
    .restart local v0    # "filePath":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_8a

    .line 790
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 793
    :cond_8a
    :goto_8a
    return-object v0
.end method

.method private getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    .registers 6
    .param p1, "res"    # Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 348
    const/4 v0, 0x0

    .line 349
    .local v0, "filePath":Ljava/lang/String;
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    const-string v2, "/media/audio/ui/"

    if-eqz v1, :cond_48

    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v3, "Open_theme"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 350
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_83

    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_83

    .line 356
    :cond_48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getProductDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-nez v1, :cond_83

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 361
    :cond_83
    :goto_83
    return-object v0
.end method

.method private getSoundFxVolumeByType(I)F
    .registers 5
    .param p1, "type"    # I

    .line 622
    sget-object v0, Lcom/android/server/audio/SoundEffectsHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 623
    sget-object v0, Lcom/android/server/audio/SoundEffectsHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 626
    :cond_1d
    sget-boolean v0, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    if-eqz v0, :cond_24

    .line 627
    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    .line 630
    :cond_24
    sget v0, Lcom/android/server/audio/SoundEffectsHelper;->sSoundEffectVolume:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2d

    .line 631
    return v0

    .line 634
    :cond_2d
    new-instance v0, Lcom/samsung/android/media/AudioParameter$Builder;

    invoke-direct {v0}, Lcom/samsung/android/media/AudioParameter$Builder;-><init>()V

    .line 635
    const-string/jumbo v1, "g_volume_situation_key"

    invoke-virtual {v0, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 636
    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 637
    const-string v2, "device"

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/media/AudioParameter$Builder;->setParam(Ljava/lang/String;I)Lcom/samsung/android/media/AudioParameter$Builder;

    move-result-object v0

    .line 638
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter$Builder;->build()Lcom/samsung/android/media/AudioParameter;

    move-result-object v0

    .line 640
    .local v0, "parameters":Lcom/samsung/android/media/AudioParameter;
    :try_start_4c
    invoke-virtual {v0}, Lcom/samsung/android/media/AudioParameter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/media/AudioSystem;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    sput v1, Lcom/android/server/audio/SoundEffectsHelper;->sSoundEffectVolume:F
    :try_end_5a
    .catch Ljava/lang/NumberFormatException; {:try_start_4c .. :try_end_5a} :catch_5b

    goto :goto_5c

    .line 641
    :catch_5b
    move-exception v1

    :goto_5c
    nop

    .line 643
    sget v1, Lcom/android/server/audio/SoundEffectsHelper;->sSoundEffectVolume:F

    return v1
.end method

.method private getSoundThemeXmlParser()Landroid/content/res/XmlResourceParser;
    .registers 7

    .line 797
    const v0, 0x1170001

    .line 799
    .local v0, "resId":I
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v2, "Calm"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 800
    const v0, 0x1170002

    goto :goto_5a

    .line 801
    :cond_11
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v3, "Fun"

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 802
    const v0, 0x1170003

    goto :goto_5a

    .line 803
    :cond_1f
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v4, "Retro"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 804
    const v0, 0x1170004

    goto :goto_5a

    .line 805
    :cond_2d
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    const-string v5, "Open_theme"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 806
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 807
    const v0, 0x1170002

    goto :goto_5a

    .line 808
    :cond_43
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 809
    const v0, 0x1170003

    goto :goto_5a

    .line 810
    :cond_4f
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 811
    const v0, 0x1170004

    .line 814
    :cond_5a
    :goto_5a
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    return-object v1
.end method

.method private loadTouchSoundAssetDefaults()V
    .registers 5

    .line 365
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 366
    .local v0, "defaultResourceIdx":I
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    const-string v3, "Effect_Tick.ogg"

    invoke-direct {v2, v3}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 367
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1d

    .line 368
    aput v0, v2, v1

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 370
    .end local v1    # "i":I
    :cond_1d
    return-void
.end method

.method private loadTouchSoundAssets()V
    .registers 12

    .line 373
    const-string v0, "AS.SfxHelper"

    const/4 v1, 0x0

    .line 376
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v2, :cond_1c

    iget-boolean v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    if-eqz v2, :cond_1c

    .line 377
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 378
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    .line 379
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_25

    .line 383
    :cond_1c
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_25

    .line 384
    return-void

    .line 388
    :cond_25
    :goto_25
    invoke-direct {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadTouchSoundAssetDefaults()V

    .line 391
    :try_start_28
    sget-boolean v2, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_SUPPORT_SOUND_THEME:Z

    if-eqz v2, :cond_3a

    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3a

    .line 392
    invoke-direct {p0}, Lcom/android/server/audio/SoundEffectsHelper;->getSoundThemeXmlParser()Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    goto :goto_48

    .line 394
    :cond_3a
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1170001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2

    move-object v1, v2

    .line 397
    :goto_48
    const-string v2, "audio_assets"

    invoke-static {v1, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 398
    const-string/jumbo v2, "version"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 399
    .local v2, "version":Ljava/lang/String;
    const/4 v4, 0x0

    .line 401
    .local v4, "inTouchSoundsGroup":Z
    const-string v5, "1.0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f3

    .line 403
    :goto_5e
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 404
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "element":Ljava/lang/String;
    if-nez v5, :cond_68

    .line 406
    goto :goto_83

    .line 408
    :cond_68
    const-string/jumbo v6, "group"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f1

    .line 409
    const-string/jumbo v6, "name"

    invoke-interface {v1, v3, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 410
    .local v6, "name":Ljava/lang/String;
    const-string/jumbo v7, "touch_sounds"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f1

    .line 411
    const/4 v4, 0x1

    .line 412
    nop

    .line 416
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "name":Ljava/lang/String;
    :goto_83
    if-eqz v4, :cond_f3

    .line 417
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 418
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 419
    .restart local v5    # "element":Ljava/lang/String;
    if-nez v5, :cond_8f

    .line 420
    goto :goto_f3

    .line 422
    :cond_8f
    const-string v6, "asset"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f3

    .line 423
    const-string/jumbo v6, "id"

    invoke-interface {v1, v3, v6}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 424
    .local v6, "id":Ljava/lang/String;
    const-string v7, "file"

    invoke-interface {v1, v3, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_a4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_28 .. :try_end_a4} :catch_10f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_28 .. :try_end_a4} :catch_105
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_a4} :catch_fb
    .catchall {:try_start_28 .. :try_end_a4} :catchall_f9

    .line 428
    .local v7, "file":Ljava/lang/String;
    :try_start_a4
    const-class v8, Landroid/media/AudioManager;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 430
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8, v3}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Landroid/media/AudioManager;->getPlaySoundTypeForSEP(I)I

    move-result v9
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_b2} :catch_db
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a4 .. :try_end_b2} :catch_10f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a4 .. :try_end_b2} :catch_105
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_b2} :catch_fb
    .catchall {:try_start_a4 .. :try_end_b2} :catchall_f9

    .line 438
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .local v9, "fx":I
    nop

    .line 440
    :try_start_b3
    iget-object v8, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    invoke-direct {p0, v7}, Lcom/android/server/audio/SoundEffectsHelper;->findOrAddResourceByFileName(Ljava/lang/String;)I

    move-result v10

    aput v10, v8, v9

    .line 442
    sget-boolean v8, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    if-eqz v8, :cond_da

    sget-object v8, Lcom/android/server/audio/SoundEffectsHelper;->sPreDefinedVolumeEffects:Landroid/util/ArrayMap;

    .line 443
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_da

    .line 444
    iget-object v8, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    iget-object v10, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    aget v10, v10, v9

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    const/4 v10, 0x1

    iput-boolean v10, v8, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mHasSituationVolume:Z

    .line 449
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v9    # "fx":I
    :cond_da
    goto :goto_83

    .line 435
    .restart local v5    # "element":Ljava/lang/String;
    .restart local v6    # "id":Ljava/lang/String;
    .restart local v7    # "file":Ljava/lang/String;
    :catch_db
    move-exception v8

    .line 436
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Invalid touch sound ID: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_b3 .. :try_end_f0} :catch_10f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b3 .. :try_end_f0} :catch_105
    .catch Ljava/io/IOException; {:try_start_b3 .. :try_end_f0} :catch_fb
    .catchall {:try_start_b3 .. :try_end_f0} :catchall_f9

    .line 437
    goto :goto_83

    .line 415
    .end local v5    # "element":Ljava/lang/String;
    .end local v6    # "id":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_f1
    goto/16 :goto_5e

    .line 458
    .end local v2    # "version":Ljava/lang/String;
    .end local v4    # "inTouchSoundsGroup":Z
    :cond_f3
    :goto_f3
    if-eqz v1, :cond_119

    .line 459
    :goto_f5
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_119

    .line 458
    :catchall_f9
    move-exception v0

    goto :goto_11a

    .line 455
    :catch_fb
    move-exception v2

    .line 456
    .local v2, "e":Ljava/io/IOException;
    :try_start_fc
    const-string v3, "I/O exception reading touch sound assets"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    nop

    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_119

    .line 459
    goto :goto_f5

    .line 453
    :catch_105
    move-exception v2

    .line 454
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "XML parser exception reading touch sound assets"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 458
    nop

    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_119

    .line 459
    goto :goto_f5

    .line 451
    :catch_10f
    move-exception v2

    .line 452
    .local v2, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v3, "audio assets file not found"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_115
    .catchall {:try_start_fc .. :try_end_115} :catchall_f9

    .line 458
    nop

    .end local v2    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v1, :cond_119

    .line 459
    goto :goto_f5

    .line 462
    :cond_119
    :goto_119
    return-void

    .line 458
    :goto_11a
    if-eqz v1, :cond_11f

    .line 459
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 461
    :cond_11f
    throw v0
.end method

.method private loadTouchSoundAssetsDefaultList()V
    .registers 13

    .line 709
    const-string v0, "AS.SfxHelper"

    const/4 v1, 0x0

    .line 713
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_c

    .line 714
    return-void

    .line 717
    :cond_c
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 718
    .local v2, "defaultResourceIdx":I
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    new-instance v4, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    const-string v5, "Effect_Tick.ogg"

    invoke-direct {v4, v5}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    iget-object v4, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    array-length v5, v4

    if-ge v3, v5, :cond_29

    .line 720
    aput v2, v4, v3

    .line 719
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 724
    .end local v3    # "i":I
    :cond_29
    :try_start_29
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x1170001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    move-object v1, v3

    .line 725
    const-string v3, "audio_assets"

    invoke-static {v1, v3}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 726
    const-string/jumbo v3, "version"

    const/4 v4, 0x0

    invoke-interface {v1, v4, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 727
    .local v3, "version":Ljava/lang/String;
    const/4 v5, 0x0

    .line 729
    .local v5, "inTouchSoundsGroup":Z
    const-string v6, "1.0"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b8

    .line 731
    :goto_4d
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 732
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 733
    .local v6, "element":Ljava/lang/String;
    if-nez v6, :cond_57

    .line 734
    goto :goto_72

    .line 736
    :cond_57
    const-string/jumbo v7, "group"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b7

    .line 737
    const-string/jumbo v7, "name"

    invoke-interface {v1, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 738
    .local v7, "name":Ljava/lang/String;
    const-string/jumbo v8, "touch_sounds"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b7

    .line 739
    const/4 v5, 0x1

    .line 740
    nop

    .line 744
    .end local v6    # "element":Ljava/lang/String;
    .end local v7    # "name":Ljava/lang/String;
    :goto_72
    if-eqz v5, :cond_b8

    .line 745
    invoke-static {v1}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 746
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 747
    .restart local v6    # "element":Ljava/lang/String;
    if-nez v6, :cond_7e

    .line 748
    goto :goto_b8

    .line 750
    :cond_7e
    const-string v7, "asset"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b8

    .line 751
    const-string v7, "file"

    invoke-interface {v1, v4, v7}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 752
    .local v7, "file":Ljava/lang/String;
    const/4 v8, 0x1

    .line 753
    .local v8, "needToAdd":Z
    iget-object v9, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_93
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_aa

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 754
    .local v10, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    iget-object v11, v10, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-static {v11, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a9

    .line 755
    const/4 v8, 0x0

    .line 756
    goto :goto_aa

    .line 758
    .end local v10    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    :cond_a9
    goto :goto_93

    .line 759
    :cond_aa
    :goto_aa
    if-eqz v8, :cond_b6

    .line 760
    iget-object v9, p0, Lcom/android/server/audio/SoundEffectsHelper;->mDefaultResources:Ljava/util/List;

    new-instance v10, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    invoke-direct {v10, v7}, Lcom/android/server/audio/SoundEffectsHelper$Resource;-><init>(Ljava/lang/String;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b6
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_29 .. :try_end_b6} :catch_d4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_29 .. :try_end_b6} :catch_ca
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_b6} :catch_c0
    .catchall {:try_start_29 .. :try_end_b6} :catchall_be

    .line 765
    .end local v6    # "element":Ljava/lang/String;
    .end local v7    # "file":Ljava/lang/String;
    .end local v8    # "needToAdd":Z
    :cond_b6
    goto :goto_72

    .line 743
    :cond_b7
    goto :goto_4d

    .line 774
    .end local v3    # "version":Ljava/lang/String;
    .end local v5    # "inTouchSoundsGroup":Z
    :cond_b8
    :goto_b8
    if-eqz v1, :cond_de

    .line 775
    :goto_ba
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_de

    .line 774
    :catchall_be
    move-exception v0

    goto :goto_df

    .line 771
    :catch_c0
    move-exception v3

    .line 772
    .local v3, "e":Ljava/io/IOException;
    :try_start_c1
    const-string v4, "I/O exception reading touch sound assets"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    nop

    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_de

    .line 775
    goto :goto_ba

    .line 769
    :catch_ca
    move-exception v3

    .line 770
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v4, "XML parser exception reading touch sound assets"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    nop

    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    if-eqz v1, :cond_de

    .line 775
    goto :goto_ba

    .line 767
    :catch_d4
    move-exception v3

    .line 768
    .local v3, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v4, "audio assets file not found"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_c1 .. :try_end_da} :catchall_be

    .line 774
    nop

    .end local v3    # "e":Landroid/content/res/Resources$NotFoundException;
    if-eqz v1, :cond_de

    .line 775
    goto :goto_ba

    .line 778
    :cond_de
    :goto_de
    return-void

    .line 774
    :goto_df
    if-eqz v1, :cond_e4

    .line 775
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 777
    :cond_e4
    throw v0
.end method

.method private logEvent(Ljava/lang/String;)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v1, Lcom/android/server/audio/AudioEventLogger$StringEvent;

    invoke-direct {v1, p1}, Lcom/android/server/audio/AudioEventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 181
    return-void
.end method

.method private onLoadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 11
    .param p1, "onComplete"    # Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 185
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    if-eqz v0, :cond_8

    .line 187
    invoke-virtual {v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 188
    return-void

    .line 190
    :cond_8
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v1, 0x1

    if-eqz v0, :cond_13

    .line 191
    if-eqz p1, :cond_12

    .line 192
    invoke-interface {p1, v1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    .line 194
    :cond_12
    return-void

    .line 197
    :cond_13
    const-string v0, "effects loading started"

    invoke-direct {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 198
    new-instance v0, Landroid/media/SoundPool$Builder;

    invoke-direct {v0}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 199
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v0

    new-instance v3, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v3}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/16 v4, 0xd

    .line 201
    invoke-virtual {v3, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v3

    .line 202
    invoke-virtual {v3, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 203
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 200
    invoke-virtual {v0, v2}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v0

    .line 204
    invoke-virtual {v0}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 205
    invoke-direct {p0}, Lcom/android/server/audio/SoundEffectsHelper;->loadTouchSoundAssets()V

    .line 207
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    .line 208
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/audio/SoundEffectsHelper$1;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v0, v2}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 218
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 220
    const/4 v0, 0x0

    .line 221
    .local v0, "resourcesToLoad":I
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_ad

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 222
    .local v3, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    invoke-direct {p0, v0, v3}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(ILcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "filePath":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v5

    .line 224
    .local v5, "sampleId":I
    if-lez v5, :cond_7d

    .line 225
    iput v5, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 226
    iput-boolean v6, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 227
    add-int/lit8 v0, v0, 0x1

    goto :goto_ac

    .line 229
    :cond_7d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "effect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " rejected by SoundPool"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 230
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SoundPool could not load file: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AS.SfxHelper"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    .end local v3    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .end local v4    # "filePath":Ljava/lang/String;
    .end local v5    # "sampleId":I
    :goto_ac
    goto :goto_5d

    .line 234
    :cond_ad
    if-lez v0, :cond_ba

    .line 235
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3a98

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    goto :goto_c4

    .line 237
    :cond_ba
    const-string v2, "effects loading completed, no effects to load"

    invoke-direct {p0, v2}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 238
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    invoke-virtual {v2, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 240
    :goto_c4
    return-void
.end method

.method private sendMsg(IIILjava/lang/Object;I)V
    .registers 10
    .param p1, "msg"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMs"    # I

    .line 176
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 177
    return-void
.end method

.method static setSoundFxVolume(F)V
    .registers 3
    .param p0, "volume"    # F

    .line 648
    sput p0, Lcom/android/server/audio/SoundEffectsHelper;->sSoundEffectVolume:F

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "set sound effect volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/audio/SoundEffectsHelper;->sSoundEffectVolume:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.SfxHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    return-void
.end method

.method private startWorker()V
    .registers 5

    .line 162
    new-instance v0, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    invoke-direct {v0, p0}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    .line 163
    invoke-virtual {v0}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->start()V

    .line 164
    monitor-enter p0

    .line 165
    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;
    :try_end_d
    .catchall {:try_start_b .. :try_end_d} :catchall_39

    if-nez v0, :cond_37

    .line 167
    :try_start_f
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_12} :catch_13
    .catchall {:try_start_f .. :try_end_12} :catchall_39

    .line 170
    goto :goto_b

    .line 168
    :catch_13
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_14
    const-string v1, "AS.SfxHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted while waiting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxWorker:Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;

    invoke-virtual {v3}, Lcom/android/server/audio/SoundEffectsHelper$SfxWorker;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    nop

    .end local v0    # "e":Ljava/lang/InterruptedException;
    goto :goto_b

    .line 172
    :cond_37
    monitor-exit p0

    .line 173
    return-void

    .line 172
    :catchall_39
    move-exception v0

    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_14 .. :try_end_3b} :catchall_39

    throw v0
.end method


# virtual methods
.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    if-eqz v0, :cond_25

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler (watch for unhandled messages):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    const-string v2, "  "

    invoke-virtual {v0, v1, v2}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    goto :goto_39

    .line 155
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Message handler is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    :goto_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Default attenuation (dB): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxAttenuationDb:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 159
    return-void
.end method

.method loadSoundEffects(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 8
    .param p1, "onComplete"    # Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 134
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    .line 135
    return-void
.end method

.method onPlaySoundEffect(II)V
    .registers 13
    .param p1, "effect"    # I
    .param p2, "volume"    # I

    .line 270
    const-string v0, "AS.SfxHelper"

    invoke-direct {p0, p1}, Lcom/android/server/audio/SoundEffectsHelper;->getSoundFxVolumeByType(I)F

    move-result v8

    .line 280
    .local v8, "volFloat":F
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mEffects:[I

    aget v2, v2, p1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 281
    .local v9, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    const/4 v2, 0x1

    if-eqz v1, :cond_46

    iget v1, v9, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v1, :cond_46

    iget-boolean v1, v9, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-eqz v1, :cond_46

    .line 283
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, v2}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 284
    const/16 v0, 0x65

    invoke-static {v0}, Landroid/media/AudioManager;->getPlaySoundTypeForSEP(I)I

    move-result v0

    if-ne p1, v0, :cond_38

    .line 285
    const/4 v0, 0x2

    .line 286
    .local v0, "streamType":I
    sget-boolean v1, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_DEFAULT_STREAM_NOTIFICATION:Z

    if-eqz v1, :cond_33

    .line 287
    const/4 v0, 0x5

    .line 289
    :cond_33
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, v0}, Landroid/media/SoundPool;->semSetStreamType(I)V

    .line 292
    .end local v0    # "streamType":I
    :cond_38
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v2, v9, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v3, v8

    move v4, v8

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    goto :goto_b1

    .line 294
    :cond_46
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .line 296
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_4b
    invoke-direct {p0, v9}, Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "filePath":Ljava/lang/String;
    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 299
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 300
    invoke-virtual {v1, v8}, Landroid/media/MediaPlayer;->setVolume(F)V

    .line 301
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$3;

    invoke-direct {v2, p0}, Lcom/android/server/audio/SoundEffectsHelper$3;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 306
    new-instance v2, Lcom/android/server/audio/SoundEffectsHelper$4;

    invoke-direct {v2, p0}, Lcom/android/server/audio/SoundEffectsHelper$4;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 312
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_6e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_6e} :catch_9b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4b .. :try_end_6e} :catch_85
    .catch Ljava/lang/IllegalStateException; {:try_start_4b .. :try_end_6e} :catch_6f

    .end local v3    # "filePath":Ljava/lang/String;
    goto :goto_b0

    .line 317
    :catch_6f
    move-exception v2

    .line 318
    .local v2, "ex":Ljava/lang/IllegalStateException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer IllegalStateException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b1

    .line 315
    .end local v2    # "ex":Ljava/lang/IllegalStateException;
    :catch_85
    move-exception v2

    .line 316
    .local v2, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer IllegalArgumentException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v2    # "ex":Ljava/lang/IllegalArgumentException;
    goto :goto_b0

    .line 313
    :catch_9b
    move-exception v2

    .line 314
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MediaPlayer IOException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_b0
    nop

    .line 321
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_b1
    return-void
.end method

.method onUnloadSoundEffects()V
    .registers 5

    .line 243
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    if-nez v0, :cond_5

    .line 244
    return-void

    .line 246
    :cond_5
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPoolLoader:Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;

    if-eqz v0, :cond_11

    .line 247
    new-instance v1, Lcom/android/server/audio/SoundEffectsHelper$2;

    invoke-direct {v1, p0}, Lcom/android/server/audio/SoundEffectsHelper$2;-><init>(Lcom/android/server/audio/SoundEffectsHelper;)V

    invoke-virtual {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V

    .line 255
    :cond_11
    const-string v0, "effects unloading started"

    invoke-direct {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_37

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 257
    .local v1, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    iget v2, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v2, :cond_36

    .line 258
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    iget v3, v1, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->unload(I)Z

    .line 259
    invoke-virtual {v1}, Lcom/android/server/audio/SoundEffectsHelper$Resource;->unload()V

    .line 261
    .end local v1    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    :cond_36
    goto :goto_1c

    .line 262
    :cond_37
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 263
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;

    .line 264
    const-string v0, "effects unloading completed"

    invoke-direct {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method playSoundEffect(II)V
    .registers 9
    .param p1, "effect"    # I
    .param p2, "volume"    # I

    .line 147
    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    .line 148
    return-void
.end method

.method unloadSoundEffects()V
    .registers 7

    .line 143
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    .line 144
    return-void
.end method

.method public updateThemeSound(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13
    .param p1, "openTheme"    # Ljava/lang/String;
    .param p2, "soundTheme"    # Ljava/lang/String;
    .param p3, "force"    # Z

    .line 662
    const/4 v0, 0x0

    .line 663
    .local v0, "updatedOpenTheme":Z
    const/4 v1, 0x0

    .line 665
    .local v1, "updatedSoundTheme":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "AS.SfxHelper"

    if-nez v2, :cond_1d

    .line 666
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 667
    const-string/jumbo v2, "updateThemeSound( theme is changed )"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 669
    const/4 v0, 0x1

    goto :goto_2e

    .line 672
    :cond_1d
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2e

    .line 673
    const-string/jumbo v2, "updateThemeSound( theme is released )"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iput-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mThemeTouchSoundPath:Ljava/lang/String;

    .line 675
    const/4 v0, 0x1

    .line 679
    :cond_2e
    :goto_2e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_64

    .line 680
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 681
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateThemeSound( Change to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    iput-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 683
    const-string v2, "Open_theme"

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_62

    .line 684
    iput-object p2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 686
    :cond_62
    const/4 v1, 0x1

    goto :goto_77

    .line 689
    :cond_64
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_77

    .line 690
    const-string/jumbo v2, "updateThemeSound( Change to default )"

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iput-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 692
    iput-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mPrevSystemSoundFromSoundTheme:Ljava/lang/String;

    .line 693
    const/4 v1, 0x1

    .line 697
    :cond_77
    :goto_77
    if-nez p3, :cond_7d

    if-nez v0, :cond_7d

    if-eqz v1, :cond_a5

    .line 698
    :cond_7d
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mUpdateSystemSound:Z

    .line 699
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_92

    .line 700
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x12c

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    .line 702
    :cond_92
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper;->mSfxHandler:Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/audio/SoundEffectsHelper$SfxHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_a5

    .line 703
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x12c

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/audio/SoundEffectsHelper;->sendMsg(IIILjava/lang/Object;I)V

    .line 706
    :cond_a5
    return-void
.end method
