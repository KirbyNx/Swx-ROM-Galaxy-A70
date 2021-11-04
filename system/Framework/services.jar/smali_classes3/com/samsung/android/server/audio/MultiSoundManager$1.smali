.class Lcom/samsung/android/server/audio/MultiSoundManager$1;
.super Landroid/app/IProcessObserver$Stub;
.source "MultiSoundManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/MultiSoundManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/audio/MultiSoundManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/audio/MultiSoundManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/server/audio/MultiSoundManager;

    .line 102
    iput-object p1, p0, Lcom/samsung/android/server/audio/MultiSoundManager$1;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .line 106
    if-eqz p3, :cond_21

    .line 107
    iget-object v0, p0, Lcom/samsung/android/server/audio/MultiSoundManager$1;->this$0:Lcom/samsung/android/server/audio/MultiSoundManager;

    # getter for: Lcom/samsung/android/server/audio/MultiSoundManager;->mInterface:Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;
    invoke-static {v0}, Lcom/samsung/android/server/audio/MultiSoundManager;->access$000(Lcom/samsung/android/server/audio/MultiSoundManager;)Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/server/audio/MultiSoundManager$MultiSoundInterface;->updateForegroundUid(I)V

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mForegroundUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AS.MultiSoundManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_21
    return-void
.end method

.method public onForegroundServicesChanged(III)V
    .registers 4
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "serviceTypes"    # I

    .line 114
    return-void
.end method

.method public onProcessDied(II)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "uid"    # I

    .line 118
    return-void
.end method
