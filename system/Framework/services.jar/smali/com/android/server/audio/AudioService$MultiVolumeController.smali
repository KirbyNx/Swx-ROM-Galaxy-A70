.class Lcom/android/server/audio/AudioService$MultiVolumeController;
.super Lcom/android/server/audio/AudioService$VolumeController;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiVolumeController"
.end annotation


# instance fields
.field private mVolumeControllerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/IVolumeController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 13794
    invoke-direct {p0}, Lcom/android/server/audio/AudioService$VolumeController;-><init>()V

    .line 13795
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public declared-synchronized displayVolumeLimiterToast()V
    .registers 3

    monitor-enter p0

    .line 13875
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 13876
    .local v1, "controller":Landroid/media/IVolumeController;
    iput-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mController:Landroid/media/IVolumeController;

    .line 13877
    invoke-super {p0}, Lcom/android/server/audio/AudioService$VolumeController;->displayVolumeLimiterToast()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 13878
    .end local v1    # "controller":Landroid/media/IVolumeController;
    goto :goto_7

    .line 13879
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_19
    monitor-exit p0

    return-void

    .line 13874
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSameBinder(Landroid/media/IVolumeController;)Z
    .registers 6
    .param p1, "controller"    # Landroid/media/IVolumeController;

    monitor-enter p0

    .line 13807
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 13808
    .local v1, "curController":Landroid/media/IVolumeController;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$MultiVolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/audio/AudioService$MultiVolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_28

    if-eqz v2, :cond_24

    .line 13809
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 13811
    .end local v1    # "curController":Landroid/media/IVolumeController;
    :cond_24
    goto :goto_7

    .line 13812
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_25
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 13806
    .end local p1    # "controller":Landroid/media/IVolumeController;
    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postDismiss()V
    .registers 3

    monitor-enter p0

    .line 13859
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 13860
    .local v1, "controller":Landroid/media/IVolumeController;
    iput-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mController:Landroid/media/IVolumeController;

    .line 13861
    invoke-super {p0}, Lcom/android/server/audio/AudioService$VolumeController;->postDismiss()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 13862
    .end local v1    # "controller":Landroid/media/IVolumeController;
    goto :goto_7

    .line 13863
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_19
    monitor-exit p0

    return-void

    .line 13858
    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized postDisplaySafeVolumeWarning(I)V
    .registers 4
    .param p1, "flags"    # I

    monitor-enter p0

    .line 13827
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 13828
    .local v1, "controller":Landroid/media/IVolumeController;
    iput-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mController:Landroid/media/IVolumeController;

    .line 13829
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->postDisplaySafeVolumeWarning(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 13830
    .end local v1    # "controller":Landroid/media/IVolumeController;
    goto :goto_7

    .line 13831
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_19
    monitor-exit p0

    return-void

    .line 13826
    .end local p1    # "flags":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postMasterMuteChanged(I)V
    .registers 4
    .param p1, "flags"    # I

    monitor-enter p0

    .line 13843
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 13844
    .local v1, "controller":Landroid/media/IVolumeController;
    iput-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mController:Landroid/media/IVolumeController;

    .line 13845
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->postMasterMuteChanged(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 13846
    .end local v1    # "controller":Landroid/media/IVolumeController;
    goto :goto_7

    .line 13847
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_19
    monitor-exit p0

    return-void

    .line 13842
    .end local p1    # "flags":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized postVolumeChanged(II)V
    .registers 5
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    monitor-enter p0

    .line 13835
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 13836
    .local v1, "controller":Landroid/media/IVolumeController;
    iput-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mController:Landroid/media/IVolumeController;

    .line 13837
    invoke-super {p0, p1, p2}, Lcom/android/server/audio/AudioService$VolumeController;->postVolumeChanged(II)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 13838
    .end local v1    # "controller":Landroid/media/IVolumeController;
    goto :goto_7

    .line 13839
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_19
    monitor-exit p0

    return-void

    .line 13834
    .end local p1    # "streamType":I
    .end local p2    # "flags":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeController(Landroid/media/IVolumeController;)V
    .registers 6
    .param p1, "controller"    # Landroid/media/IVolumeController;

    monitor-enter p0

    .line 13883
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 13884
    .local v0, "iter":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 13885
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 13886
    .local v1, "curController":Landroid/media/IVolumeController;
    invoke-static {v1}, Lcom/android/server/audio/AudioService$MultiVolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/server/audio/AudioService$MultiVolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 13887
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 13888
    goto :goto_26

    .line 13890
    .end local v1    # "curController":Landroid/media/IVolumeController;
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_25
    goto :goto_7

    .line 13892
    :cond_26
    :goto_26
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 13893
    const/4 v1, 0x0

    invoke-super {p0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    goto :goto_3f

    .line 13895
    :cond_33
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    invoke-super {p0, v1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_41

    .line 13897
    :goto_3f
    monitor-exit p0

    return-void

    .line 13882
    .end local v0    # "iter":Ljava/util/Iterator;
    .end local p1    # "controller":Landroid/media/IVolumeController;
    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setA11yMode(I)V
    .registers 4
    .param p1, "a11yMode"    # I

    monitor-enter p0

    .line 13867
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 13868
    .local v1, "controller":Landroid/media/IVolumeController;
    iput-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mController:Landroid/media/IVolumeController;

    .line 13869
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setA11yMode(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 13870
    .end local v1    # "controller":Landroid/media/IVolumeController;
    goto :goto_7

    .line 13871
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_19
    monitor-exit p0

    return-void

    .line 13866
    .end local p1    # "a11yMode":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setController(Landroid/media/IVolumeController;)V
    .registers 3
    .param p1, "controller"    # Landroid/media/IVolumeController;

    monitor-enter p0

    .line 13799
    :try_start_1
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setController(Landroid/media/IVolumeController;)V

    .line 13800
    if-eqz p1, :cond_b

    .line 13801
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 13803
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_b
    monitor-exit p0

    return-void

    .line 13798
    .end local p1    # "controller":Landroid/media/IVolumeController;
    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setLayoutDirection(I)V
    .registers 4
    .param p1, "layoutDirection"    # I

    monitor-enter p0

    .line 13851
    :try_start_1
    iget-object v0, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/IVolumeController;

    .line 13852
    .local v1, "controller":Landroid/media/IVolumeController;
    iput-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mController:Landroid/media/IVolumeController;

    .line 13853
    invoke-super {p0, p1}, Lcom/android/server/audio/AudioService$VolumeController;->setLayoutDirection(I)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1b

    .line 13854
    .end local v1    # "controller":Landroid/media/IVolumeController;
    goto :goto_7

    .line 13855
    .end local p0    # "this":Lcom/android/server/audio/AudioService$MultiVolumeController;
    :cond_19
    monitor-exit p0

    return-void

    .line 13850
    .end local p1    # "layoutDirection":I
    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 13817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13818
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mVolumeControllerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/IVolumeController;

    .line 13819
    .local v2, "controller":Landroid/media/IVolumeController;
    iput-object v2, p0, Lcom/android/server/audio/AudioService$MultiVolumeController;->mController:Landroid/media/IVolumeController;

    .line 13820
    invoke-super {p0}, Lcom/android/server/audio/AudioService$VolumeController;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13821
    .end local v2    # "controller":Landroid/media/IVolumeController;
    goto :goto_b

    .line 13822
    :cond_21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
