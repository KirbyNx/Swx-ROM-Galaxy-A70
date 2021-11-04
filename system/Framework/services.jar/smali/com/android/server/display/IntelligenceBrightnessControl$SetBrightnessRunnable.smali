.class Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;
.super Ljava/lang/Object;
.source "IntelligenceBrightnessControl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/IntelligenceBrightnessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetBrightnessRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/IntelligenceBrightnessControl;


# direct methods
.method private constructor <init>(Lcom/android/server/display/IntelligenceBrightnessControl;)V
    .registers 2

    .line 694
    iput-object p1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/IntelligenceBrightnessControl;Lcom/android/server/display/IntelligenceBrightnessControl$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/display/IntelligenceBrightnessControl;
    .param p2, "x1"    # Lcom/android/server/display/IntelligenceBrightnessControl$1;

    .line 694
    invoke-direct {p0, p1}, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;-><init>(Lcom/android/server/display/IntelligenceBrightnessControl;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .line 696
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v1

    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v2

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->float_equals(FF)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1100(Lcom/android/server/display/IntelligenceBrightnessControl;FF)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "IntelligenceBrightnessControl"

    if-eqz v0, :cond_39

    .line 697
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # setter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCWaitAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1202(Lcom/android/server/display/IntelligenceBrightnessControl;Z)Z

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IBC Animating finished, current = target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v3

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;
    invoke-static {v1, v3}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1300(Lcom/android/server/display/IntelligenceBrightnessControl;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    return-void

    .line 708
    :cond_39
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1400(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/RampAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    const-wide/16 v3, 0x2bc

    if-eqz v0, :cond_62

    .line 709
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCWaitAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1202(Lcom/android/server/display/IntelligenceBrightnessControl;Z)Z

    .line 710
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1500(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 712
    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 713
    const-string v0, "IBC Animating pause."

    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_61
    return-void

    .line 716
    :cond_62
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCWaitAnimating:Z
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1200(Lcom/android/server/display/IntelligenceBrightnessControl;)Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 717
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # setter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIBCWaitAnimating:Z
    invoke-static {v0, v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1202(Lcom/android/server/display/IntelligenceBrightnessControl;Z)Z

    .line 719
    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->DEBUG_MID:Z
    invoke-static {}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1600()Z

    move-result v0

    if-eqz v0, :cond_ca

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IBC Animating recovery: [ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v1}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1300(Lcom/android/server/display/IntelligenceBrightnessControl;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 721
    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v6

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1300(Lcom/android/server/display/IntelligenceBrightnessControl;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    .line 722
    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v6

    iget-object v7, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v7}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v7

    sub-float/2addr v6, v7

    # invokes: Lcom/android/server/display/IntelligenceBrightnessControl;->brightnessToInt(F)Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1300(Lcom/android/server/display/IntelligenceBrightnessControl;F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2bc

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ms ]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-static {v2, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_ca
    sget-boolean v0, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_157

    .line 730
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v0

    const v2, 0x3efafafb

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_e0

    .line 731
    const v0, 0x3a4d9a67

    goto :goto_f4

    .line 732
    :cond_e0
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v0

    const v2, 0x3f018182

    cmpg-float v0, v0, v2

    if-gez v0, :cond_f1

    .line 733
    const v0, 0x39cd9a67

    goto :goto_f4

    .line 734
    :cond_f1
    const v0, 0x3b808081

    :goto_f4
    nop

    .line 735
    .local v0, "delta":F
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v6}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_125

    .line 736
    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v6}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11d

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    goto :goto_144

    :cond_11d
    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    add-float/2addr v5, v0

    goto :goto_144

    .line 737
    :cond_125
    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    sub-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v6}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_13d

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    goto :goto_144

    :cond_13d
    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    sub-float/2addr v5, v0

    .line 735
    :goto_144
    # setter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v2, v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1002(Lcom/android/server/display/IntelligenceBrightnessControl;F)F

    .line 742
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1400(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/RampAnimator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    invoke-virtual {v2, v5, v1}, Lcom/android/server/display/RampAnimator;->animateTo(FF)Z

    .line 746
    .end local v0    # "delta":F
    goto :goto_1bb

    .line 747
    :cond_157
    const v0, 0x3b808081

    .line 748
    .restart local v0    # "delta":F
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    iget-object v6, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v6}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_18a

    .line 749
    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v6}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_182

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    goto :goto_1a9

    :cond_182
    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    add-float/2addr v5, v0

    goto :goto_1a9

    .line 750
    :cond_18a
    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    sub-float/2addr v5, v0

    iget-object v6, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v6}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1a2

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcTarget:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$900(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    goto :goto_1a9

    :cond_1a2
    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    sub-float/2addr v5, v0

    .line 748
    :goto_1a9
    # setter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v2, v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1002(Lcom/android/server/display/IntelligenceBrightnessControl;F)F

    .line 755
    iget-object v2, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mScreenBrightnessRampAnimator:Lcom/android/server/display/RampAnimator;
    invoke-static {v2}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1400(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/RampAnimator;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mIbcCurrent:F
    invoke-static {v5}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1000(Lcom/android/server/display/IntelligenceBrightnessControl;)F

    move-result v5

    invoke-virtual {v2, v5, v1}, Lcom/android/server/display/RampAnimator;->animateTo(FF)Z

    .line 762
    .end local v0    # "delta":F
    :goto_1bb
    iget-object v0, p0, Lcom/android/server/display/IntelligenceBrightnessControl$SetBrightnessRunnable;->this$0:Lcom/android/server/display/IntelligenceBrightnessControl;

    # getter for: Lcom/android/server/display/IntelligenceBrightnessControl;->mHandler:Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;
    invoke-static {v0}, Lcom/android/server/display/IntelligenceBrightnessControl;->access$1500(Lcom/android/server/display/IntelligenceBrightnessControl;)Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;

    move-result-object v0

    invoke-virtual {v0, p0, v3, v4}, Lcom/android/server/display/IntelligenceBrightnessControl$BrightnessControllerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 763
    return-void
.end method
