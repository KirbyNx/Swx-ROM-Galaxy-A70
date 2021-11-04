.class final Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
.super Landroid/os/Handler;
.source "IntelligenceBrightnessControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IntelligenceBrightnessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BrightnessControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IntelligenceBrightnessControl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/IntelligenceBrightnessControl;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 660
    iput-object p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 661
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 662
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 666
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_33

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    goto :goto_39

    .line 684
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mMultiWindowOff:Z
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$500(Lcom/android/server/display/IntelligenceBrightnessControl;)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mCurrentAppPkgName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$600(Lcom/android/server/display/IntelligenceBrightnessControl;)Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->isIBCScenarioListApp(Ljava/lang/String;)Z
    invoke-static {v2, v3}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$700(Lcom/android/server/display/IntelligenceBrightnessControl;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->updateIBCState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$800(Lcom/android/server/display/IntelligenceBrightnessControl;Z)V

    .line 685
    goto :goto_39

    .line 674
    :cond_25
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mDpcModiTarget:F
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$200(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v1

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->getPolicyBrightness(F)F
    invoke-static {v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$300(Lcom/android/server/display/IntelligenceBrightnessControl;F)F

    move-result v1

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->updateScreenBrightness(F)V
    invoke-static {v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$400(Lcom/android/server/display/IntelligenceBrightnessControl;F)V

    .line 675
    goto :goto_39

    .line 669
    :cond_33
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->getPixelGrayFactor()V
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$100(Lcom/android/server/display/IntelligenceBrightnessControl;)V

    .line 670
    nop

    .line 690
    :goto_39
    return-void
.end method
