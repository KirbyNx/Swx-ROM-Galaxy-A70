.class Lcom/android/server/media/projection/MediaProjectionManagerService$2;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;->startProjectionLocked(Lcom/android/server/media/projection/MediaProjectionManagerService$MediaProjection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/media/projection/MediaProjectionManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 206
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 209
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "sem_support_scroll_filter"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_25

    .line 211
    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    iget-object v1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$2;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # setter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mEnforceJellyEffectDisabled:Z
    invoke-static {v1, v2}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$402(Lcom/android/server/media/projection/MediaProjectionManagerService;Z)Z

    .line 213
    const-string v1, "MediaProjectionManagerService"

    const-string/jumbo v2, "startProjectionLocked sf disabled"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_25
    return-void
.end method
