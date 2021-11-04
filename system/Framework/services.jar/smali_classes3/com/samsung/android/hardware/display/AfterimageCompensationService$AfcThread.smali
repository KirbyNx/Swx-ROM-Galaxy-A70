.class Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;
.super Ljava/lang/Thread;
.source "AfterimageCompensationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/AfterimageCompensationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AfcThread"
.end annotation


# instance fields
.field i:I

.field index:I

.field mAvgCoprRoi:[D

.field mAvgLuminance:D

.field mDataValid:Z

.field rotation:I

.field final synthetic this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

.field xRGB:I

.field xRGBindex:I


# direct methods
.method private constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V
    .registers 4

    .line 707
    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 709
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 710
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    .line 711
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    .line 712
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGBindex:I

    .line 713
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    .line 714
    iput p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 716
    const/16 p1, 0xc

    new-array p1, p1, [D

    iput-object p1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    .line 717
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgLuminance:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService;
    .param p2, "x1"    # Lcom/samsung/android/hardware/display/AfterimageCompensationService$1;

    .line 707
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;-><init>(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 721
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcStateCondition:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_90a

    .line 722
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadSleepTime:J
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 723
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAFPC:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6c7

    .line 724
    const-string v0, "service.camera.running"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string v0, "service.camera.sfs.running"

    const-string v4, "0"

    .line 725
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 726
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z
    invoke-static {v0, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1802(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Z)Z

    goto :goto_47

    .line 728
    :cond_42
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z
    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1802(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Z)Z

    .line 730
    :goto_47
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->isRunningCameraApp:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_6c7

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_6c7

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_6c7

    .line 731
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getBrightness()Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 732
    const/4 v4, 0x2

    if-eqz v0, :cond_ac

    .line 733
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # operator++ for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1308(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 736
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_9b

    .line 737
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_99

    if-eq v0, v2, :cond_96

    if-eq v0, v4, :cond_93

    if-eq v0, v1, :cond_90

    .line 751
    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    goto :goto_9b

    .line 748
    :cond_90
    iput v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 749
    goto :goto_9b

    .line 745
    :cond_93
    iput v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 746
    goto :goto_9b

    .line 742
    :cond_96
    iput v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 743
    goto :goto_9b

    .line 739
    :cond_99
    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    .line 756
    :cond_9b
    :goto_9b
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->rotation:I

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataRead(III)I
    invoke-static {v0, v5, v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2300(III)I

    .line 758
    :cond_ac
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodMax:I
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    if-lt v0, v5, :cond_6c7

    .line 759
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v5, 0x0

    if-ne v0, v4, :cond_131

    .line 760
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2500(I)I

    move-result v0

    if-nez v0, :cond_6c7

    .line 761
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1302(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    .line 762
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mApplyValue : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f0} :catch_929
    .catchall {:try_start_0 .. :try_end_f0} :catchall_927

    .line 764
    :try_start_f0
    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2700()F

    move-result v0

    .line 765
    .local v0, "nFloat":F
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 766
    .local v4, "str_format":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)F
    :try_end_10d
    .catch Ljava/lang/NumberFormatException; {:try_start_f0 .. :try_end_10d} :catch_10e
    .catch Ljava/lang/Exception; {:try_start_f0 .. :try_end_10d} :catch_929
    .catchall {:try_start_f0 .. :try_end_10d} :catchall_927

    .line 770
    .end local v0    # "nFloat":F
    .end local v4    # "str_format":Ljava/lang/String;
    goto :goto_12a

    .line 767
    :catch_10e
    move-exception v0

    .line 768
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_10f
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)F

    .line 772
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_12a
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updateHWParam()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_6c7

    .line 776
    :cond_131
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v4, 0x4

    if-ne v0, v4, :cond_266

    .line 777
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2500(I)I

    move-result v0

    if-nez v0, :cond_6c7

    .line 778
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1302(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    .line 779
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mApplyValue : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_167} :catch_929
    .catchall {:try_start_10f .. :try_end_167} :catchall_927

    .line 781
    :try_start_167
    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataEvaluate()F
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2700()F

    move-result v0

    .line 782
    .local v0, "nFloat":F
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    new-array v7, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 783
    .restart local v4    # "str_format":Ljava/lang/String;
    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)F
    :try_end_184
    .catch Ljava/lang/NumberFormatException; {:try_start_167 .. :try_end_184} :catch_185
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_184} :catch_929
    .catchall {:try_start_167 .. :try_end_184} :catchall_927

    .line 787
    .end local v0    # "nFloat":F
    .end local v4    # "str_format":Ljava/lang/String;
    goto :goto_1a1

    .line 784
    :catch_185
    move-exception v0

    .line 785
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_186
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)F

    .line 789
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_1a1
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v4

    array-length v4, v4

    if-ge v0, v4, :cond_25f

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfpcJndRefV2:[F
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v4

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v6

    aget v4, v4, v6

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_25f

    .line 790
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataWriteV2(I)I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3200(I)I

    move-result v0

    if-nez v0, :cond_1f5

    .line 791
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.samsung.android.sm.ACTION_ABC_SOLUTION"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 792
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v4

    const-string v6, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string v7, "com.samsung.android.lool"

    invoke-virtual {v4, v6, v7}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 793
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Landroid/content/Context;

    move-result-object v4

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1f5
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1f5} :catch_929
    .catchall {:try_start_186 .. :try_end_1f5} :catchall_927

    .line 796
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1f5
    :try_start_1f5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 798
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "afpcDataWrite - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_242
    .catch Ljava/lang/NumberFormatException; {:try_start_1f5 .. :try_end_242} :catch_243
    .catch Ljava/lang/Exception; {:try_start_1f5 .. :try_end_242} :catch_929
    .catchall {:try_start_1f5 .. :try_end_242} :catchall_927

    .line 802
    .end local v0    # "str":Ljava/lang/String;
    goto :goto_25f

    .line 799
    :catch_243
    move-exception v0

    .line 800
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_244
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)F

    .line 805
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_25f
    :goto_25f
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updateHWParam()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_6c7

    .line 809
    :cond_266
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ne v0, v1, :cond_3d3

    .line 810
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2500(I)I

    move-result v0

    if-nez v0, :cond_6c7

    .line 811
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1302(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    .line 812
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLum()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3500()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3402(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 813
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3700()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 814
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3900()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3802(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 815
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLum()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4100()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4002(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 816
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4300()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4202(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 817
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4500()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4402(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 818
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAvgLum : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mMaxBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mNBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEffAvgLum : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffMaxBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffNBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    const-wide v8, 0x4072c00000000000L    # 300.0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_3cc

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_3cc

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_3cc

    .line 822
    const-string v0, "AfterimageCompensationService"

    const-string v4, "nativeDataUpdate"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdate(I)I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4600(I)I

    move-result v0

    if-nez v0, :cond_3cc

    .line 824
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # operator++ for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2908(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    :try_end_362
    .catch Ljava/lang/Exception; {:try_start_244 .. :try_end_362} :catch_929
    .catchall {:try_start_244 .. :try_end_362} :catchall_927

    .line 826
    :try_start_362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 828
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3af
    .catch Ljava/lang/NumberFormatException; {:try_start_362 .. :try_end_3af} :catch_3b0
    .catch Ljava/lang/Exception; {:try_start_362 .. :try_end_3af} :catch_929
    .catchall {:try_start_362 .. :try_end_3af} :catchall_927

    .line 832
    .end local v0    # "str":Ljava/lang/String;
    goto :goto_3cc

    .line 829
    :catch_3b0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_3b1
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)F

    .line 837
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3cc
    :goto_3cc
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updateHWParam()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_6c7

    .line 841
    :cond_3d3
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_54e

    .line 842
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2500(I)I

    move-result v0

    if-nez v0, :cond_6c7

    .line 843
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1302(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    .line 844
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLum()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3500()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3402(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 845
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3700()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 846
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3900()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3802(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 847
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLum()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4100()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4002(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 848
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4300()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4202(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 849
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4500()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4402(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 850
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAvgLum : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mMaxBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mNBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEffAvgLum : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffMaxBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffNBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v4, 0x14

    if-ge v0, v4, :cond_547

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    const-wide v8, 0x4052c00000000000L    # 75.0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_547

    .line 854
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh:[F
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4700(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    aget v0, v0, v4

    float-to-double v8, v0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_547

    .line 855
    const-string v0, "AfterimageCompensationService"

    const-string v4, "nativeDataUpdate"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdate(I)I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4600(I)I

    move-result v0

    if-nez v0, :cond_547

    .line 857
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # operator++ for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2908(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    :try_end_4dd
    .catch Ljava/lang/Exception; {:try_start_3b1 .. :try_end_4dd} :catch_929
    .catchall {:try_start_3b1 .. :try_end_4dd} :catchall_927

    .line 859
    :try_start_4dd
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 860
    .local v0, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 861
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_52a
    .catch Ljava/lang/NumberFormatException; {:try_start_4dd .. :try_end_52a} :catch_52b
    .catch Ljava/lang/Exception; {:try_start_4dd .. :try_end_52a} :catch_929
    .catchall {:try_start_4dd .. :try_end_52a} :catchall_927

    .line 865
    .end local v0    # "str":Ljava/lang/String;
    goto :goto_547

    .line 862
    :catch_52b
    move-exception v0

    .line 863
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_52c
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)F

    .line 871
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_547
    :goto_547
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updateHWParam()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    goto/16 :goto_6c7

    .line 875
    :cond_54e
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcType:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/4 v4, 0x6

    if-ne v0, v4, :cond_6c7

    .line 876
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataSave(I)I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2500(I)I

    move-result v0

    if-nez v0, :cond_6c7

    .line 877
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfpcPeriodCount:I
    invoke-static {v0, v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1302(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    .line 878
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadAvgLum()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3500()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3402(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 879
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadMaxBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3700()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 880
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadNBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3900()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3802(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 881
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffAvgLum()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4100()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4002(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 882
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffMaxBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4300()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4202(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 883
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataReadEffNBDI()D
    invoke-static {}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4500()D

    move-result-wide v6

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D
    invoke-static {v0, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4402(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 884
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAvgLum : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAvgLum:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mMaxBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mMaxBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mNBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mNBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mEffAvgLum : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffMaxBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffMaxBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", mEffNBDI : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const/16 v4, 0x1e

    if-ge v0, v4, :cond_6c2

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffAvgLum:D
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    const-wide v8, 0x4051800000000000L    # 70.0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_6c2

    .line 888
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mEffNBDI:D
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->effNbdiTh_V3:[F
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[F

    move-result-object v0

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    aget v0, v0, v4

    float-to-double v8, v0

    cmpl-double v0, v6, v8

    if-ltz v0, :cond_6c2

    .line 889
    const-string v0, "AfterimageCompensationService"

    const-string v4, "nativeDataUpdate"

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyScaleEffect:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->nativeDataUpdate(I)I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4600(I)I

    move-result v0

    if-nez v0, :cond_6c2

    .line 891
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # operator++ for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2908(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I
    :try_end_658
    .catch Ljava/lang/Exception; {:try_start_52c .. :try_end_658} :catch_929
    .catchall {:try_start_52c .. :try_end_658} :catchall_927

    .line 893
    :try_start_658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyCount:I
    invoke-static {v4}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%.2f"

    new-array v7, v2, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v3

    invoke-static {v4, v6, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 894
    .local v0, "str":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    const-string v6, "/efs/afc/apply_count"

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->fileWriteString(Ljava/lang/String;Ljava/lang/String;)Z
    invoke-static {v4, v6, v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$3300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;Ljava/lang/String;Ljava/lang/String;)Z

    .line 895
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "nativeDataUpdate - str : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a5
    .catch Ljava/lang/NumberFormatException; {:try_start_658 .. :try_end_6a5} :catch_6a6
    .catch Ljava/lang/Exception; {:try_start_658 .. :try_end_6a5} :catch_929
    .catchall {:try_start_658 .. :try_end_6a5} :catchall_927

    .line 899
    .end local v0    # "str":Ljava/lang/String;
    goto :goto_6c2

    .line 896
    :catch_6a6
    move-exception v0

    .line 897
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_6a7
    const-string v4, "AfterimageCompensationService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NumberFormatException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mApplyValue:F
    invoke-static {v4, v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2602(Lcom/samsung/android/hardware/display/AfterimageCompensationService;F)F

    .line 905
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_6c2
    :goto_6c2
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->updateHWParam()V
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)V

    .line 912
    :cond_6c7
    :goto_6c7
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mThreadAPC:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$4900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_8dc

    .line 913
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getCoprRoiNBrightness()Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 914
    if-eqz v0, :cond_8c0

    .line 915
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    const v4, 0x10c8e0

    if-ltz v0, :cond_6f1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ge v0, v4, :cond_6f1

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # operator++ for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1008(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 916
    :cond_6f1
    const-string v0, "AfterimageCompensationService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AfcThread interpolationCount - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ltz v0, :cond_8dc

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-gt v0, v4, :cond_8dc

    .line 919
    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    :goto_71f
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    const/16 v4, 0xc

    if-ge v0, v4, :cond_7cb

    .line 920
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v0, :cond_7c4

    .line 921
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget v0, v0, v4

    if-ltz v0, :cond_7bf

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget v0, v0, v4

    const/16 v4, 0x100

    if-gt v0, v4, :cond_7bf

    .line 922
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoi:[I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5100(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v0

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget v0, v0, v4

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    .line 923
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    .line 924
    const-string v0, "AfterimageCompensationService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "XRGB _i = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", xRGB = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[[I

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    aget-object v5, v5, v6

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", average - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v5, v5, v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    iget v4, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mCoprRoiTable:[[I
    invoke-static {v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[[I

    move-result-object v7

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->index:I

    aget-object v7, v7, v8

    iget v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->xRGB:I

    aget v7, v7, v8

    iget-object v8, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D
    invoke-static {v8}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v8

    iget v9, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v8, v8, v9

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getAverage(IID)D
    invoke-static {v5, v6, v7, v8, v9}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;IID)D

    move-result-wide v5

    aput-wide v5, v0, v4

    goto :goto_7c4

    .line 927
    :cond_7bf
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 919
    :cond_7c4
    :goto_7c4
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    goto/16 :goto_71f

    .line 930
    :cond_7cb
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v0, :cond_807

    .line 931
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    if-ltz v0, :cond_802

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v0

    int-to-double v0, v0

    const-wide v5, 0x4097700000000000L    # 1500.0

    cmpg-double v0, v0, v5

    if-gtz v0, :cond_802

    .line 932
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    iget-object v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mLuminance:I
    invoke-static {v5}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2200(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v5

    iget-object v6, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D
    invoke-static {v6}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v6

    # invokes: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->getAverage(IID)D
    invoke-static {v0, v1, v5, v6, v7}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5400(Lcom/samsung/android/hardware/display/AfterimageCompensationService;IID)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgLuminance:D

    goto :goto_807

    .line 934
    :cond_802
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    and-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    .line 937
    :cond_807
    :goto_807
    iget-boolean v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mDataValid:Z

    if-eqz v0, :cond_89e

    .line 938
    iput v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    :goto_80d
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    if-ge v0, v4, :cond_86a

    .line 939
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgCoprRoi:[D

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v5, v3, v5

    aput-wide v5, v0, v1

    .line 940
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoi:[I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5600(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[I

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v5, v3, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-int v3, v5

    aput v3, v0, v1

    .line 941
    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Average XRGB - i = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", value = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCoprRoiDouble:[D
    invoke-static {v3}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5300(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)[D

    move-result-object v3

    iget v5, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    aget-wide v5, v3, v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->i:I

    goto :goto_80d

    .line 943
    :cond_86a
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-wide v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->mAvgLuminance:D

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D
    invoke-static {v0, v1, v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5502(Lcom/samsung/android/hardware/display/AfterimageCompensationService;D)D

    .line 944
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J

    move-result-wide v1

    long-to-int v1, v1

    # setter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminance:I
    invoke-static {v0, v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5702(Lcom/samsung/android/hardware/display/AfterimageCompensationService;I)I

    .line 945
    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Average interpolationLuminance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationLuminanceDouble:D
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8dc

    .line 948
    :cond_89e
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # operator-- for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1010(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    .line 949
    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read XRGB or Luminance Data is Out of Bound - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8dc

    .line 954
    :cond_8c0
    const-string v0, "AfterimageCompensationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read COPR_ROI or Luminance Data is Out of Bound - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    :cond_8dc
    :goto_8dc
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->AfcThreadCondition:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1900(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-eqz v0, :cond_8ec

    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcStateOn:Z
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$2000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_8ec
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 959
    iget-object v0, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v0

    monitor-enter v0
    :try_end_8fb
    .catch Ljava/lang/Exception; {:try_start_6a7 .. :try_end_8fb} :catch_929
    .catchall {:try_start_6a7 .. :try_end_8fb} :catchall_927

    .line 960
    :try_start_8fb
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->mAfcThread:Ljava/lang/Thread;
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$500(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 961
    monitor-exit v0

    goto/16 :goto_0

    :catchall_907
    move-exception v1

    monitor-exit v0
    :try_end_909
    .catchall {:try_start_8fb .. :try_end_909} :catchall_907

    .end local p0    # "this":Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;
    :try_start_909
    throw v1
    :try_end_90a
    .catch Ljava/lang/Exception; {:try_start_909 .. :try_end_90a} :catch_929
    .catchall {:try_start_909 .. :try_end_90a} :catchall_927

    .line 968
    .restart local p0    # "this":Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;
    :cond_90a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_90f
    const-string v1, "AfcThread is Terminated - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AfterimageCompensationService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    goto :goto_93b

    .line 968
    :catchall_927
    move-exception v0

    goto :goto_93c

    .line 964
    :catch_929
    move-exception v0

    .line 965
    .local v0, "e":Ljava/lang/Exception;
    :try_start_92a
    iget-object v1, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->DEBUG:Z
    invoke-static {v1}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$5800(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)Z

    move-result v1

    if-eqz v1, :cond_935

    .line 966
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_935
    .catchall {:try_start_92a .. :try_end_935} :catchall_927

    .line 968
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_90f

    .line 970
    :goto_93b
    return-void

    .line 968
    :goto_93c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AfcThread is Terminated - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/hardware/display/AfterimageCompensationService$AfcThread;->this$0:Lcom/samsung/android/hardware/display/AfterimageCompensationService;

    # getter for: Lcom/samsung/android/hardware/display/AfterimageCompensationService;->interpolationCount:I
    invoke-static {v2}, Lcom/samsung/android/hardware/display/AfterimageCompensationService;->access$1000(Lcom/samsung/android/hardware/display/AfterimageCompensationService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AfterimageCompensationService"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 969
    throw v0
.end method
