.class Lcom/android/server/BatteryService$29;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/BatteryService;->sendDeteriorationIntentLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;

.field final synthetic val$batteryDeterioration:I

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;ILandroid/content/Intent;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/BatteryService;

    .line 2604
    iput-object p1, p0, Lcom/android/server/BatteryService$29;->this$0:Lcom/android/server/BatteryService;

    iput p2, p0, Lcom/android/server/BatteryService$29;->val$batteryDeterioration:I

    iput-object p3, p0, Lcom/android/server/BatteryService$29;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2607
    iget-object v0, p0, Lcom/android/server/BatteryService$29;->this$0:Lcom/android/server/BatteryService;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/BatteryService;->mIsFirstIntentSended:Z
    invoke-static {v0, v1}, Lcom/android/server/BatteryService;->access$4602(Lcom/android/server/BatteryService;Z)Z

    .line 2608
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending ACTION_POPUP_BATTERY_DETERIORATION : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/BatteryService$29;->val$batteryDeterioration:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2609
    iget-object v0, p0, Lcom/android/server/BatteryService$29;->val$intent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    .line 2610
    return-void
.end method
