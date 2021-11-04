.class Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;
.super Ljava/lang/Object;
.source "MultiSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MultiSoundItem"
.end annotation


# instance fields
.field mDevice:I

.field mRatio:I

.field mShouldMute:Z

.field mUid:I


# direct methods
.method constructor <init>(III)V
    .registers 5
    .param p1, "uid"    # I
    .param p2, "device"    # I
    .param p3, "ratio"    # I

    .line 850
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 851
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    .line 852
    iput p2, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 853
    invoke-virtual {p0, p3}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->setAppVolume(I)V

    .line 854
    iput p3, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    .line 855
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    .line 856
    return-void
.end method


# virtual methods
.method public getAppDevice(Z)I
    .registers 5
    .param p1, "force"    # Z

    .line 867
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 868
    return v1

    .line 870
    :cond_6
    if-nez p1, :cond_13

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/media/AudioSystem;->getDeviceConnectionState(ILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_12

    goto :goto_13

    .line 874
    :cond_12
    return v1

    .line 872
    :cond_13
    :goto_13
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    return v0
.end method

.method public getAppVolume()I
    .registers 2

    .line 880
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    return v0
.end method

.method public getUid()I
    .registers 2

    .line 859
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mUid:I

    return v0
.end method

.method public isShouldMute()Z
    .registers 2

    .line 892
    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    return v0
.end method

.method public removable()Z
    .registers 3

    .line 900
    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    if-nez v0, :cond_10

    iget v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    if-nez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public setAppDevice(I)V
    .registers 2
    .param p1, "device"    # I

    .line 863
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mDevice:I

    .line 864
    return-void
.end method

.method public setAppVolume(I)V
    .registers 4
    .param p1, "ratio"    # I

    .line 884
    if-ltz p1, :cond_a

    const/16 v0, 0x64

    if-le p1, v0, :cond_7

    goto :goto_a

    .line 888
    :cond_7
    iput p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mRatio:I

    .line 889
    return-void

    .line 885
    :cond_a
    :goto_a
    const-string v0, "AS.MultiSoundManager"

    const-string v1, "Invalid app volume"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    return-void
.end method

.method public setShouldMute(Z)V
    .registers 2
    .param p1, "shouldMute"    # Z

    .line 896
    iput-boolean p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundItem;->mShouldMute:Z

    .line 897
    return-void
.end method
