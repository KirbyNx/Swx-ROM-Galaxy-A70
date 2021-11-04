.class Lcom/android/server/vr/XrSettings$1;
.super Landroid/database/ContentObserver;
.source "XrSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/XrSettings;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/vr/XrSettings;


# direct methods
.method constructor <init>(Lcom/android/server/vr/XrSettings;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/vr/XrSettings;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 56
    iput-object p1, p0, Lcom/android/server/vr/XrSettings$1;->this$0:Lcom/android/server/vr/XrSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 59
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "vr settings changed uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XrSettings"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/android/server/vr/XrSettings$1;->this$0:Lcom/android/server/vr/XrSettings;

    # getter for: Lcom/android/server/vr/XrSettings;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/vr/XrSettings;->access$000(Lcom/android/server/vr/XrSettings;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 62
    :try_start_21
    iget-object v1, p0, Lcom/android/server/vr/XrSettings$1;->this$0:Lcom/android/server/vr/XrSettings;

    invoke-virtual {v1}, Lcom/android/server/vr/XrSettings;->updateSettingsLocked()V

    .line 63
    monitor-exit v0

    .line 64
    return-void

    .line 63
    :catchall_28
    move-exception v1

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_28

    throw v1
.end method
