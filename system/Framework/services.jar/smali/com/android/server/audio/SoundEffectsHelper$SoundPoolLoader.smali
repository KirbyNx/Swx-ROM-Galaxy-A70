.class Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SoundEffectsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundPoolLoader"
.end annotation


# instance fields
.field private mLoadCompleteHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/audio/SoundEffectsHelper;


# direct methods
.method constructor <init>(Lcom/android/server/audio/SoundEffectsHelper;)V
    .registers 3

    .line 536
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    .line 542
    # getter for: Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {p1}, Lcom/android/server/audio/SoundEffectsHelper;->access$500(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 543
    return-void
.end method


# virtual methods
.method addHandler(Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;)V
    .registers 3
    .param p1, "handler"    # Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 546
    if-eqz p1, :cond_7

    .line 547
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_7
    return-void
.end method

.method onComplete(Z)V
    .registers 5
    .param p1, "success"    # Z

    .line 591
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    # getter for: Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$500(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 592
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    # getter for: Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$500(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 594
    :cond_12
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->mLoadCompleteHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;

    .line 595
    .local v1, "handler":Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;
    invoke-interface {v1, p1}, Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;->run(Z)V

    .line 596
    .end local v1    # "handler":Lcom/android/server/audio/SoundEffectsHelper$OnEffectsLoadCompleteHandler;
    goto :goto_18

    .line 597
    :cond_28
    iget-object v0, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "effects loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_39

    const-string v2, "completed"

    goto :goto_3b

    :cond_39
    const-string v2, "failed"

    :goto_3b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/audio/SoundEffectsHelper;->access$700(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V

    .line 598
    return-void
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .registers 12
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .line 553
    const-string v0, "effect "

    if-nez p3, :cond_66

    .line 554
    const/4 v1, 0x0

    .line 555
    .local v1, "remainingToLoad":I
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    # getter for: Lcom/android/server/audio/SoundEffectsHelper;->mResources:Ljava/util/List;
    invoke-static {v2}, Lcom/android/server/audio/SoundEffectsHelper;->access$600(Lcom/android/server/audio/SoundEffectsHelper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_60

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;

    .line 556
    .local v3, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    iget v5, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-ne v5, p2, :cond_55

    iget-boolean v5, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-nez v5, :cond_55

    .line 557
    iget-object v5, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " loaded"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/server/audio/SoundEffectsHelper;->access$700(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V

    .line 558
    iput-boolean v4, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    .line 560
    sget-boolean v4, Lcom/samsung/android/audio/Rune;->SEC_AUDIO_EXTENSION_SITUATION_VOLUME:Z

    if-eqz v4, :cond_55

    iget-boolean v4, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mHasSituationVolume:Z

    if-eqz v4, :cond_55

    .line 561
    iget-object v4, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    # getter for: Lcom/android/server/audio/SoundEffectsHelper;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/android/server/audio/SoundEffectsHelper;->access$500(Lcom/android/server/audio/SoundEffectsHelper;)Landroid/media/SoundPool;

    move-result-object v4

    const-string/jumbo v5, "stv_touch_tone"

    invoke-virtual {v4, p2, v5}, Landroid/media/SoundPool;->semSetSituationType(ILjava/lang/String;)V

    .line 564
    :cond_55
    iget v4, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    if-eqz v4, :cond_5f

    iget-boolean v4, v3, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    if-nez v4, :cond_5f

    .line 565
    add-int/lit8 v1, v1, 0x1

    .line 567
    .end local v3    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    :cond_5f
    goto :goto_f

    .line 568
    :cond_60
    if-nez v1, :cond_65

    .line 569
    invoke-virtual {p0, v4}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 571
    .end local v1    # "remainingToLoad":I
    :cond_65
    goto :goto_c6

    .line 572
    :cond_66
    iget-object v1, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    # invokes: Lcom/android/server/audio/SoundEffectsHelper;->findResourceBySampleId(I)Lcom/android/server/audio/SoundEffectsHelper$Resource;
    invoke-static {v1, p2}, Lcom/android/server/audio/SoundEffectsHelper;->access$800(Lcom/android/server/audio/SoundEffectsHelper;I)Lcom/android/server/audio/SoundEffectsHelper$Resource;

    move-result-object v1

    .line 574
    .local v1, "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    if-eqz v1, :cond_75

    .line 575
    iget-object v2, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    # invokes: Lcom/android/server/audio/SoundEffectsHelper;->getResourceFilePath(Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/server/audio/SoundEffectsHelper;->access$900(Lcom/android/server/audio/SoundEffectsHelper;Lcom/android/server/audio/SoundEffectsHelper$Resource;)Ljava/lang/String;

    move-result-object v2

    .local v2, "filePath":Ljava/lang/String;
    goto :goto_87

    .line 577
    .end local v2    # "filePath":Ljava/lang/String;
    :cond_75
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "with unknown sample ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 579
    .restart local v2    # "filePath":Ljava/lang/String;
    :goto_87
    iget-object v3, p0, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->this$0:Lcom/android/server/audio/SoundEffectsHelper;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " loading failed, status "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    # invokes: Lcom/android/server/audio/SoundEffectsHelper;->logEvent(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/server/audio/SoundEffectsHelper;->access$700(Lcom/android/server/audio/SoundEffectsHelper;Ljava/lang/String;)V

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLoadSoundEffects(), Error "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while loading sample "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AS.SfxHelper"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 584
    .end local v1    # "res":Lcom/android/server/audio/SoundEffectsHelper$Resource;
    .end local v2    # "filePath":Ljava/lang/String;
    :goto_c6
    return-void
.end method

.method onTimeout()V
    .registers 2

    .line 587
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/audio/SoundEffectsHelper$SoundPoolLoader;->onComplete(Z)V

    .line 588
    return-void
.end method
