.class public Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PreventOverheatState"
.end annotation


# instance fields
.field private mCurDevice:I

.field private mLimitedVolumeForOverheat:F

.field private mState:Z

.field private mUid:I

.field final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;IZ)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/MultiSoundManager;
    .param p2, "uid"    # I
    .param p3, "state"    # Z

    .line 1029
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    .line 1027
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    .line 1030
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    .line 1031
    iput-boolean p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    .line 1032
    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;)F
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 1023
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    return v0
.end method

.method static synthetic access$300(Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;)Z
    .registers 2
    .param p0, "x0"    # Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;

    .line 1023
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    return v0
.end method

.method private isSameUid(I)Z
    .registers 5
    .param p1, "uid"    # I

    .line 1047
    const v0, 0x186a0

    rem-int v1, p1, v0

    iget v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    rem-int/2addr v2, v0

    if-ne v1, v2, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method


# virtual methods
.method public needLimitVolumeForApp(I)Z
    .registers 3
    .param p1, "uid"    # I

    .line 1079
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    if-eqz v0, :cond_c

    invoke-direct {p0, p1}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->isSameUid(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public setDevice(I)V
    .registers 3
    .param p1, "device"    # I

    .line 1051
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    if-eq v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    .line 1052
    .local v0, "changed":Z
    :goto_7
    if-eqz v0, :cond_e

    .line 1053
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    .line 1054
    invoke-virtual {p0}, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->setLimitedVolumeForOverheat()V

    .line 1056
    :cond_e
    return-void
.end method

.method public setLimitedVolumeForOverheat()V
    .registers 5

    .line 1065
    const-string v0, "l_volume_prevent_overheat_key;gain"

    invoke-static {v0}, Lcom/samsung/android/media/SemAudioSystem;->getPolicyParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1068
    .local v0, "result":Ljava/lang/String;
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1070
    .local v1, "volume":F
    :try_start_8
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2
    :try_end_c
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_c} :catch_e
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_c} :catch_e

    move v1, v2

    .line 1072
    goto :goto_f

    .line 1071
    :catch_e
    move-exception v2

    .line 1073
    :goto_f
    iput v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    .line 1075
    iget-object v2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    iget v3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    .line 1076
    return-void
.end method

.method setState(IZ)V
    .registers 6
    .param p1, "uid"    # I
    .param p2, "state"    # Z

    .line 1035
    const/4 v0, -0x1

    .line 1036
    .local v0, "prevUid":I
    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_a

    if-eq v1, p1, :cond_a

    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    .line 1038
    :cond_a
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    .line 1039
    iput-boolean p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    .line 1041
    if-eq v0, v2, :cond_15

    .line 1042
    iget-object v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->setAppVolumeToNative(I)V

    .line 1044
    :cond_15
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1060
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", volume : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mLimitedVolumeForOverheat:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mCureDevice : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$PreventOverheatState;->mCurDevice:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
