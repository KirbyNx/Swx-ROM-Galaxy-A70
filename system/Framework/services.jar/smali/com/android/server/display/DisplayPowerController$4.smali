.class Lcom/android/server/display/DisplayPowerController$4;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->setScreenState(IIIZ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;

.field final synthetic val$dualScreenPolicy:I

.field final synthetic val$state:I


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;II)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;

    .line 2254
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    iput p2, p0, Lcom/android/server/display/DisplayPowerController$4;->val$state:I

    iput p3, p0, Lcom/android/server/display/DisplayPowerController$4;->val$dualScreenPolicy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 2258
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$4;->val$state:I

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScreenState(I)V

    .line 2260
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->SEC_FEATURE_DUAL_DISPLAY:Z

    if-eqz v0, :cond_1a

    .line 2261
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    # getter for: Lcom/android/server/display/DisplayPowerController;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;
    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$4;->val$dualScreenPolicy:I

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteDualScreenState(I)V

    .line 2263
    :cond_1a
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$4;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget v1, p0, Lcom/android/server/display/DisplayPowerController$4;->val$state:I

    iget v2, p0, Lcom/android/server/display/DisplayPowerController$4;->val$dualScreenPolicy:I

    # invokes: Lcom/android/server/display/DisplayPowerController;->sendScreenBrightnessLevelDuration(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;II)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    .line 2266
    goto :goto_25

    .line 2264
    :catch_24
    move-exception v0

    .line 2267
    :goto_25
    return-void
.end method
