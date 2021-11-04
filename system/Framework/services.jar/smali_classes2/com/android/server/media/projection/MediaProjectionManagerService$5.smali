.class Lcom/android/server/media/projection/MediaProjectionManagerService$5;
.super Ljava/lang/Object;
.source "MediaProjectionManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/projection/MediaProjectionManagerService;->showSmartViewExceptionToast()V
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

    .line 324
    iput-object p1, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$5;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 327
    iget-object v0, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$5;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 328
    .local v0, "displayManager":Landroid/hardware/display/DisplayManager;
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->semGetActiveDevice()Landroid/hardware/display/SemDeviceInfo;

    move-result-object v1

    .line 329
    .local v1, "activeDeviceInfo":Landroid/hardware/display/SemDeviceInfo;
    if-eqz v1, :cond_7b

    .line 330
    const-string/jumbo v2, "ro.build.characteristics"

    const-string/jumbo v3, "phone"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tablet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const v4, 0x103012b

    const/4 v5, 0x1

    if-eqz v2, :cond_54

    .line 331
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$5;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$5;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 332
    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x1040d35

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 331
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 332
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_7b

    .line 334
    :cond_54
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v6, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$5;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v4, p0, Lcom/android/server/media/projection/MediaProjectionManagerService$5;->this$0:Lcom/android/server/media/projection/MediaProjectionManagerService;

    .line 335
    # getter for: Lcom/android/server/media/projection/MediaProjectionManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/media/projection/MediaProjectionManagerService;->access$300(Lcom/android/server/media/projection/MediaProjectionManagerService;)Landroid/content/Context;

    move-result-object v4

    const v6, 0x1040d34

    new-array v7, v5, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/hardware/display/SemDeviceInfo;->getDeviceName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-virtual {v4, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 338
    :cond_7b
    :goto_7b
    return-void
.end method
