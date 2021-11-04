.class Lcom/android/server/accessibility/AccessibilityManagerService$9;
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

    .line 5620
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 5623
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10100(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 5624
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10200(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 5625
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9800()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 5626
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10100(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 5627
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9900()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 5628
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semEnableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10200(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 5629
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_ON:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9800()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 5630
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityManagerService$9;->this$0:Lcom/android/server/accessibility/AccessibilityManagerService;

    # invokes: Lcom/android/server/accessibility/AccessibilityManagerService;->semDisableScreenNotificationEffect()Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10100(Lcom/android/server/accessibility/AccessibilityManagerService;)Z

    .line 5631
    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->NOTIFLASH_LENGTH_OFF:I
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$9900()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 5632
    const/4 v0, 0x0

    # setter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z
    invoke-static {v0}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10302(Z)Z

    .line 5633
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Screen blinked, bIsScreenOn : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # getter for: Lcom/android/server/accessibility/AccessibilityManagerService;->bIsScreenOn:Z
    invoke-static {}, Lcom/android/server/accessibility/AccessibilityManagerService;->access$10300()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessibilityManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5634
    return-void
.end method
