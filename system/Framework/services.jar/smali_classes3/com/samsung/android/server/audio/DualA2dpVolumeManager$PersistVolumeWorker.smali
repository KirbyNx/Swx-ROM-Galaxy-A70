.class Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;
.super Ljava/lang/Object;
.source "DualA2dpVolumeManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/audio/DualA2dpVolumeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PersistVolumeWorker"
.end annotation


# instance fields
.field mAddress:Ljava/lang/String;

.field mVolume:I

.field final synthetic this$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;Ljava/lang/String;I)V
    .registers 4
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "volume"    # I

    .line 388
    iput-object p1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->this$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    iput-object p2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mAddress:Ljava/lang/String;

    .line 390
    iput p3, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mVolume:I

    .line 391
    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 395
    iget-object v0, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->this$0:Lcom/samsung/android/server/audio/DualA2dpVolumeManager;

    # getter for: Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->mSettingHelper:Lcom/samsung/android/server/audio/AudioSettingsHelper;
    invoke-static {v0}, Lcom/samsung/android/server/audio/DualA2dpVolumeManager;->access$000(Lcom/samsung/android/server/audio/DualA2dpVolumeManager;)Lcom/samsung/android/server/audio/AudioSettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mAddress:Ljava/lang/String;

    iget v2, p0, Lcom/samsung/android/server/audio/DualA2dpVolumeManager$PersistVolumeWorker;->mVolume:I

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/server/audio/AudioSettingsHelper;->setBTVolumeIndex(Ljava/lang/String;I)V

    .line 396
    return-void
.end method
