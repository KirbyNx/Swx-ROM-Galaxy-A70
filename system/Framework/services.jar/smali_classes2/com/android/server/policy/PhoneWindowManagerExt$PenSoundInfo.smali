.class Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;
.super Ljava/lang/Object;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PenSoundInfo"
.end annotation


# static fields
.field private static final OMC_PEN_ATTACH_SOUND_FILE_NAME:Ljava/lang/String; = "Pen_att_noti1.ogg"

.field private static final OMC_PEN_DETACH_SOUND_FILE_NAME:Ljava/lang/String; = "Pen_det_noti1.ogg"

.field private static final OMC_PEN_SOUND_PATH:Ljava/lang/String; = "/media/audio/spen/"

.field private static final PROPERTY_OMC_RESOURCE_PATH:Ljava/lang/String; = "persist.sys.omc_respath"


# instance fields
.field private mAttachPenSoundPath:Ljava/lang/String;

.field private mDetachPenSoundPath:Ljava/lang/String;

.field private mPenAttachSoundId:I

.field private mPenDetachSoundId:I

.field private mPenSoundPath:Ljava/lang/String;

.field private mPenSoundPool:Landroid/media/SoundPool;

.field private mPenSoundStreamId:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "penSoundPath"    # Ljava/lang/String;

    .line 5595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5585
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 5586
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 5588
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    .line 5596
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->updatePenSound(Ljava/lang/String;)V

    .line 5597
    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 5576
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 5576
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 5576
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    return v0
.end method

.method static synthetic access$5700(Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;

    .line 5576
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    return v0
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .registers 7
    .param p1, "path"    # Ljava/lang/String;

    .line 5674
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5675
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_16

    .line 5676
    return-object v0

    .line 5678
    :cond_16
    const/4 v1, 0x0

    return-object v1
.end method

.method private getOMCPenSoundPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "fileName"    # Ljava/lang/String;

    .line 5664
    const-string/jumbo v0, "persist.sys.omc_respath"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5665
    .local v0, "omcResourcePath":Ljava/lang/String;
    const/4 v1, 0x0

    .line 5666
    .local v1, "omcPenSoundPath":Ljava/lang/String;
    if-eqz v0, :cond_1e

    .line 5667
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/media/audio/spen/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5669
    :cond_1e
    return-object v1
.end method

.method private updatePenSound(Ljava/lang/String;)V
    .registers 11
    .param p1, "penSoundPath"    # Ljava/lang/String;

    .line 5600
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    .line 5603
    const-string v0, "Pen_att_noti1.ogg"

    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getOMCPenSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5604
    .local v0, "omcAttachPath":Ljava/lang/String;
    const-string v1, "Pen_det_noti1.ogg"

    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getOMCPenSoundPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5606
    .local v1, "omcDetachPath":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 5607
    .local v2, "omcAttachFile":Ljava/io/File;
    invoke-direct {p0, v1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 5608
    .local v3, "omcDetachFile":Ljava/io/File;
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_OMC_SPEN_SOUND:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_25

    if-eqz v2, :cond_25

    if-eqz v3, :cond_25

    .line 5611
    iput-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 5612
    iput-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    goto :goto_42

    .line 5615
    :cond_25
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_42

    .line 5616
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 5617
    .local v4, "path":[Ljava/lang/String;
    if-eqz v4, :cond_42

    array-length v7, v4

    if-le v7, v6, :cond_42

    .line 5618
    aget-object v7, v4, v5

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    .line 5619
    aget-object v7, v4, v6

    iput-object v7, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 5624
    .end local v4    # "path":[Ljava/lang/String;
    :cond_42
    :goto_42
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v7, "PhoneWindowManagerExt"

    if-nez v4, :cond_91

    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    .line 5625
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_55

    goto :goto_91

    .line 5630
    :cond_55
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    if-nez v4, :cond_7e

    .line 5632
    :try_start_59
    new-instance v4, Landroid/media/SoundPool;

    const/4 v8, 0x2

    invoke-direct {v4, v8, v6, v5}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 5633
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 5634
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_59 .. :try_end_73} :catch_74

    goto :goto_7d

    .line 5635
    :catch_74
    move-exception v4

    .line 5637
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "Cannot load pen sound"

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5638
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    .line 5639
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_7d
    goto :goto_90

    .line 5641
    :cond_7e
    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    .line 5642
    iget-object v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    iget-object v5, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    .line 5644
    :goto_90
    return-void

    .line 5626
    :cond_91
    :goto_91
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "pen sound path was wrong. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5627
    return-void
.end method


# virtual methods
.method getPenSoundPath()Ljava/lang/String;
    .registers 2

    .line 5686
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPath:Ljava/lang/String;

    return-object v0
.end method

.method playPenSound(Z)V
    .registers 12
    .param p1, "penInsert"    # Z

    .line 5647
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    if-eqz v0, :cond_50

    .line 5648
    if-eqz p1, :cond_9

    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenAttachSoundId:I

    goto :goto_b

    :cond_9
    iget v0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenDetachSoundId:I

    .line 5649
    .local v0, "soundId":I
    :goto_b
    const-string v8, "Play pen sound failed, soundId="

    const-string v9, "PhoneWindowManagerExt"

    if-eqz v0, :cond_3e

    .line 5651
    :try_start_11
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    iget v2, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 5652
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundPool:Landroid/media/SoundPool;

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move v2, v0

    invoke-virtual/range {v1 .. v7}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mPenSoundStreamId:I
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_29} :catch_2a

    goto :goto_3d

    .line 5653
    :catch_2a
    move-exception v1

    .line 5654
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5655
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3d
    goto :goto_50

    .line 5657
    :cond_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5660
    .end local v0    # "soundId":I
    :cond_50
    :goto_50
    return-void
.end method

.method setPenSoundPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "path"    # Ljava/lang/String;

    .line 5682
    invoke-direct {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->updatePenSound(Ljava/lang/String;)V

    .line 5683
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 5691
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PenSoundInfo{attachPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mAttachPenSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", detachPath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$PenSoundInfo;->mDetachPenSoundPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
