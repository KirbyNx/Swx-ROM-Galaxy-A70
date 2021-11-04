.class Lcom/android/server/accessibility/AccessibilityManagerService$8;
.super Ljava/lang/Object;
.source "AccessibilityManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accessibility/AccessibilityManagerService;->semOnLightNotification(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accessibility/AccessibilityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accessibility/AccessibilityManagerService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/accessibility/AccessibilityManagerService;

    .line 5594
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 5597
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraManager:Landroid/hardware/camera2/CameraManager;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$1000(Lcom/android/server/accessibility/AccessibilityManagerService;)Landroid/hardware/camera2/CameraManager;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    const/4 v2, 0x0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->mCameraId:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$8200(Lcom/android/server/accessibility/AccessibilityManagerService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 5598
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraLightNoti(Z)V
    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9700(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 5599
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    const/4 v3, 0x1

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraLightNoti(Z)V
    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9700(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 5600
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9800()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 5601
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraLightNoti(Z)V
    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9700(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 5602
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9900()I

    move-result v0

    int-to-long v4, v0

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 5603
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraLightNoti(Z)V
    invoke-static {v0, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9700(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 5604
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9800()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 5605
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$8;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->doCameraLightNoti(Z)V
    invoke-static {v0, v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9700(Lcom/android/server/accessibility/AccessibilityManagerService;Z)V

    .line 5606
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9900()I

    move-result v0

    int-to-long v3, v0

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_53

    .line 5608
    :cond_4e
    const-string v0, "Can\'t use light notification please check CameraManager!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5610
    :goto_53
    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z
    invoke-static {v2}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10002(Z)Z

    .line 5611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Flash blinked, bIsFlashOn : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsFlashOn:Z
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10000()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5612
    return-void
.end method
