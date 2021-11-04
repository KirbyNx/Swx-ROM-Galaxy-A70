.class final Lcom/android/server/lights/LightsService$LightImpl;
.super Lcom/android/server/lights/LogicalLight;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LightImpl"
.end annotation


# instance fields
.field private mBrightnessMode:I

.field private mColor:I

.field private final mDisplayToken:Landroid/os/IBinder;

.field private mExtendedBrightness:I

.field private mFlashing:Z

.field private mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

.field private mInitialized:Z

.field private final mIsIDUsingPatternLED:Z

.field private mLastBrightnessMode:I

.field private mLastColor:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private final mSurfaceControlMaximumBrightness:I

.field private mUseLowPersistenceForVR:Z

.field private mVrModeEnabled:Z

.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Lvendor/samsung/hardware/light/SehHwLight;)V
    .registers 7
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "hwLight"    # Lvendor/samsung/hardware/light/SehHwLight;

    .line 391
    iput-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Lcom/android/server/lights/LogicalLight;-><init>()V

    .line 393
    iput-object p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    .line 394
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mDisplayToken:Landroid/os/IBinder;

    .line 395
    invoke-static {v0}, Landroid/view/SurfaceControl;->getDisplayBrightnessSupport(Landroid/os/IBinder;)Z

    move-result v0

    .line 400
    .local v0, "brightnessSupport":Z
    const/4 v1, 0x0

    .line 401
    .local v1, "maximumBrightness":I
    if-eqz v0, :cond_22

    .line 402
    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 403
    .local v2, "pm":Landroid/os/PowerManager;
    if-eqz v2, :cond_22

    .line 404
    invoke-virtual {v2}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    .line 407
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_22
    iput v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mSurfaceControlMaximumBrightness:I

    .line 410
    # getter for: Lcom/android/server/lights/LightsService;->mUsePatternLED:Z
    invoke-static {p1}, Lcom/android/server/lights/LightsService;->access$500(Lcom/android/server/lights/LightsService;)Z

    move-result p1

    if-eqz p1, :cond_3a

    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget p1, p1, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    const/4 v2, 0x3

    if-eq p1, v2, :cond_38

    iget-object p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget p1, p1, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    const/4 v2, 0x4

    if-ne p1, v2, :cond_3a

    :cond_38
    const/4 p1, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p1, 0x0

    :goto_3b
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    .line 414
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Lvendor/samsung/hardware/light/SehHwLight;Lcom/android/server/lights/LightsService$1;)V
    .registers 5
    .param p1, "x0"    # Lcom/android/server/lights/LightsService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lvendor/samsung/hardware/light/SehHwLight;
    .param p4, "x3"    # Lcom/android/server/lights/LightsService$1;

    .line 386
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/lights/LightsService$LightImpl;-><init>(Lcom/android/server/lights/LightsService;Landroid/content/Context;Lvendor/samsung/hardware/light/SehHwLight;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/lights/LightsService$LightImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 386
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->isSystemLight()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/lights/LightsService$LightImpl;)Lvendor/samsung/hardware/light/SehHwLight;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 386
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/lights/LightsService$LightImpl;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;

    .line 386
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->getColor()I

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/lights/LightsService$LightImpl;IIIII)V
    .registers 6
    .param p0, "x0"    # Lcom/android/server/lights/LightsService$LightImpl;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # I

    .line 386
    invoke-direct/range {p0 .. p5}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    return-void
.end method

.method private getColor()I
    .registers 2

    .line 742
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    return v0
.end method

.method private isSystemLight()Z
    .registers 3

    .line 738
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v0, v0, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    if-ltz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v0, v0, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static synthetic lambda$0Tv691Vnph8HFbwps7sFDuvrhv0(Lcom/android/server/lights/LightsService$LightImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->stopFlashing()V

    return-void
.end method

.method private setLightLocked(IIIII)V
    .registers 13
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I
    .param p5, "brightnessMode"    # I

    .line 659
    const/4 v2, -0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIIII)V

    .line 661
    return-void
.end method

.method private setLightLocked(IIIIII)V
    .registers 14
    .param p1, "color"    # I
    .param p2, "extendBrightness"    # I
    .param p3, "mode"    # I
    .param p4, "onMS"    # I
    .param p5, "offMS"    # I
    .param p6, "brightnessMode"    # I

    .line 664
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 665
    const/4 p6, 0x2

    goto :goto_d

    .line 666
    :cond_8
    const/4 v0, 0x2

    if-ne p6, v0, :cond_d

    .line 667
    iget p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 670
    :cond_d
    :goto_d
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    if-eqz v0, :cond_31

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-ne p1, v0, :cond_31

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    if-ne p3, v0, :cond_31

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    if-ne p4, v0, :cond_31

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    if-ne p5, v0, :cond_31

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    if-ne v0, p6, :cond_31

    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mExtendedBrightness:I

    if-ne p2, v0, :cond_31

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 674
    # getter for: Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1900(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 675
    :cond_31
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/lights/LightsService;->mIsLEDChanged:Z
    invoke-static {v0, v1}, Lcom/android/server/lights/LightsService;->access$1902(Lcom/android/server/lights/LightsService;Z)Z

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mInitialized:Z

    .line 682
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastColor:I

    .line 683
    iput p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 684
    iput p2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mExtendedBrightness:I

    .line 685
    iput p3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mMode:I

    .line 686
    iput p4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOnMS:I

    .line 687
    iput p5, p0, Lcom/android/server/lights/LightsService$LightImpl;->mOffMS:I

    .line 688
    iput p6, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    .line 691
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v0, v0, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    if-eqz v0, :cond_90

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SvcLED] [setLightLocked] lightType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", color:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", onMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightsService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    :cond_90
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightUnchecked(IIIIII)V

    .line 699
    :cond_9a
    return-void
.end method

.method private setLightUnchecked(IIIIII)V
    .registers 16
    .param p1, "color"    # I
    .param p2, "extendBrightness"    # I
    .param p3, "mode"    # I
    .param p4, "onMS"    # I
    .param p5, "offMS"    # I
    .param p6, "brightnessMode"    # I

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLightState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v1, v1, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 703
    const-wide/32 v1, 0x20000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 706
    :try_start_2d
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$2000(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v0

    if-eqz v0, :cond_5a

    .line 707
    new-instance v0, Landroid/hardware/light/HwLightState;

    invoke-direct {v0}, Landroid/hardware/light/HwLightState;-><init>()V

    .line 708
    .local v0, "lightState":Landroid/hardware/light/HwLightState;
    iput p1, v0, Landroid/hardware/light/HwLightState;->color:I

    .line 709
    int-to-byte v3, p3

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->flashMode:B

    .line 710
    iput p4, v0, Landroid/hardware/light/HwLightState;->flashOnMs:I

    .line 711
    iput p5, v0, Landroid/hardware/light/HwLightState;->flashOffMs:I

    .line 712
    int-to-byte v3, p6

    iput-byte v3, v0, Landroid/hardware/light/HwLightState;->brightnessMode:B

    .line 715
    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mVintfSehLights:Ljava/util/function/Supplier;
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$2000(Lcom/android/server/lights/LightsService;)Ljava/util/function/Supplier;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lvendor/samsung/hardware/light/ISehLights;

    iget-object v4, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v4, v4, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    invoke-interface {v3, v4, v0, p2}, Lvendor/samsung/hardware/light/ISehLights;->setLightState(ILandroid/hardware/light/HwLightState;I)V

    .line 717
    .end local v0    # "lightState":Landroid/hardware/light/HwLightState;
    goto :goto_66

    .line 718
    :cond_5a
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v3, v0, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    move v4, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v3 .. v8}, Lcom/android/server/lights/LightsService;->setLight_native(IIIIII)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_66} :catch_69
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2d .. :try_end_66} :catch_69
    .catchall {:try_start_2d .. :try_end_66} :catchall_67

    .line 723
    :goto_66
    goto :goto_72

    :catchall_67
    move-exception v0

    goto :goto_77

    .line 720
    :catch_69
    move-exception v0

    .line 721
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_6a
    const-string v3, "LightsService"

    const-string v4, "Failed issuing setLightState"

    invoke-static {v3, v4, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_67

    .line 723
    nop

    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_72
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 724
    nop

    .line 725
    return-void

    .line 723
    :goto_77
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 724
    throw v0
.end method

.method private shouldBeInLowPersistenceMode()Z
    .registers 2

    .line 728
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private stopFlashing()V
    .registers 8

    .line 607
    monitor-enter p0

    .line 609
    :try_start_1
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[api] [SvcLED] stopFlashing : lightType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v3, v3, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    .line 610
    invoke-virtual {v2, v3}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$600()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 609
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_64

    .line 614
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_70

    .line 616
    :try_start_33
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)V

    .line 621
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    # invokes: Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$1600(Lcom/android/server/lights/LightsService;I)V

    .line 623
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 624
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 625
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessage(Landroid/os/Message;)Z

    .line 627
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    goto :goto_6e

    :catchall_61
    move-exception v1

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_33 .. :try_end_63} :catchall_61

    .end local p0    # "this":Lcom/android/server/lights/LightsService$LightImpl;
    :try_start_63
    throw v1

    .line 629
    .restart local p0    # "this":Lcom/android/server/lights/LightsService$LightImpl;
    :cond_64
    iget v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 631
    :goto_6e
    monitor-exit p0

    .line 632
    return-void

    .line 631
    :catchall_70
    move-exception v0

    monitor-exit p0
    :try_end_72
    .catchall {:try_start_63 .. :try_end_72} :catchall_70

    throw v0
.end method


# virtual methods
.method public pulse()V
    .registers 3

    .line 525
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/lights/LightsService$LightImpl;->pulse(II)V

    .line 526
    return-void
.end method

.method public pulse(II)V
    .registers 10
    .param p1, "color"    # I
    .param p2, "onMS"    # I

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] pulse : lightType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    const-string v1, "LightsService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    monitor-enter p0

    .line 537
    :try_start_3c
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_48

    .line 538
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] pulse : Not Support"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6c

    .line 539
    :cond_48
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    if-nez v0, :cond_6c

    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mFlashing:Z

    if-nez v0, :cond_6c

    .line 541
    const/4 v3, 0x2

    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object v1, p0

    move v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 543
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mColor:I

    .line 544
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1500(Lcom/android/server/lights/LightsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/lights/-$$Lambda$LightsService$LightImpl$0Tv691Vnph8HFbwps7sFDuvrhv0;

    invoke-direct {v1, p0}, Lcom/android/server/lights/-$$Lambda$LightsService$LightImpl$0Tv691Vnph8HFbwps7sFDuvrhv0;-><init>(Lcom/android/server/lights/LightsService$LightImpl;)V

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 546
    :cond_6c
    :goto_6c
    monitor-exit p0

    .line 547
    return-void

    .line 546
    :catchall_6e
    move-exception v0

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_3c .. :try_end_70} :catchall_6e

    throw v0
.end method

.method public setBrightness(F)V
    .registers 3
    .param p1, "brightness"    # F

    .line 418
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/lights/LightsService$LightImpl;->setBrightness(FI)V

    .line 419
    return-void
.end method

.method public setBrightness(FI)V
    .registers 13
    .param p1, "brightness"    # F
    .param p2, "brightnessMode"    # I

    .line 423
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 424
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Brightness is not valid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightsService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    return-void

    .line 427
    :cond_1d
    monitor-enter p0

    .line 429
    const/4 v0, 0x2

    if-ne p2, v0, :cond_48

    .line 430
    :try_start_21
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setBrightness with LOW_PERSISTENCE unexpected #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    monitor-exit p0

    return-void

    .line 468
    :catchall_46
    move-exception v0

    goto :goto_9b

    .line 437
    :cond_48
    if-nez p2, :cond_50

    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-nez v0, :cond_50

    .line 452
    :cond_50
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 453
    invoke-virtual {v0}, Lcom/android/server/lights/LightsService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 452
    invoke-static {v0, p1}, Lcom/android/internal/BrightnessSynchronizer;->brightnessFloatToInt(Landroid/content/Context;F)I

    move-result v0

    .line 454
    .local v0, "brightnessInt":I
    and-int/lit16 v1, v0, 0xff

    .line 455
    .local v1, "color":I
    const/high16 v2, -0x1000000

    shl-int/lit8 v3, v1, 0x10

    or-int/2addr v2, v3

    shl-int/lit8 v3, v1, 0x8

    or-int/2addr v2, v3

    or-int/2addr v1, v2

    .line 458
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    if-eqz v2, :cond_7e

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_74

    goto :goto_7e

    .line 465
    :cond_74
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p0

    move v4, v1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    goto :goto_99

    .line 460
    :cond_7e
    :goto_7e
    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v2, p1

    .line 461
    sget-boolean v3, Lcom/android/server/power/PowerManagerUtil;->USE_PERSONAL_AUTO_BRIGHTNESS_V3:Z

    if-eqz v3, :cond_88

    const/16 v3, 0x64

    goto :goto_89

    :cond_88
    const/4 v3, 0x1

    :goto_89
    int-to-float v3, v3

    mul-float/2addr v2, v3

    .line 460
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 462
    .local v5, "extendedBrightness":I
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move v4, v1

    move v9, p2

    invoke-direct/range {v3 .. v9}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIIII)V

    .line 463
    .end local v5    # "extendedBrightness":I
    nop

    .line 468
    .end local v0    # "brightnessInt":I
    .end local v1    # "color":I
    :goto_99
    monitor-exit p0

    .line 469
    return-void

    .line 468
    :goto_9b
    monitor-exit p0
    :try_end_9c
    .catchall {:try_start_21 .. :try_end_9c} :catchall_46

    throw v0
.end method

.method public setColor(I)V
    .registers 10
    .param p1, "color"    # I

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] [SvcLED] setColor : color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightsService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    monitor-enter p0

    .line 476
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    :try_start_21
    invoke-direct/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 477
    monitor-exit p0

    .line 478
    return-void

    .line 477
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_26

    throw v0
.end method

.method public setFlashing(IIII)V
    .registers 14
    .param p1, "color"    # I
    .param p2, "mode"    # I
    .param p3, "onMS"    # I
    .param p4, "offMS"    # I

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] [SvcLED] setFlashing : type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v1, v1, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "), color: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_3a

    const-string v1, "Off"

    goto :goto_59

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, p2}, Lcom/android/server/lights/LightsService;->translateMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", onMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", offMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 483
    const-string v1, "LightsService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverType:I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$700(Lcom/android/server/lights/LightsService;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_9b

    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mCoverOpened:Z
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$800(Lcom/android/server/lights/LightsService;)Z

    move-result v0

    if-nez v0, :cond_9b

    .line 490
    const-string v0, "LightsService"

    const-string v1, "[api] [SvcLED] S Cover is closed so don\'t need LED On"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-void

    .line 495
    :cond_9b
    monitor-enter p0

    .line 498
    :try_start_9c
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_e9

    .line 499
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0
    :try_end_a7
    .catchall {:try_start_9c .. :try_end_a7} :catchall_fb

    .line 501
    :try_start_a7
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)V

    .line 506
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v3, v1, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    const/4 v8, 0x1

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    # invokes: Lcom/android/server/lights/LightsService;->setSvcLedStateLocked(IIIIIZ)V
    invoke-static/range {v2 .. v8}, Lcom/android/server/lights/LightsService;->access$1100(Lcom/android/server/lights/LightsService;IIIIIZ)V

    .line 508
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x1

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$1200(Lcom/android/server/lights/LightsService;Z)V

    .line 510
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 511
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 512
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$1400(Lcom/android/server/lights/LightsService;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 514
    nop

    .end local v1    # "msg":Landroid/os/Message;
    monitor-exit v0

    goto :goto_f9

    :catchall_e6
    move-exception v1

    monitor-exit v0
    :try_end_e8
    .catchall {:try_start_a7 .. :try_end_e8} :catchall_e6

    .end local p0    # "this":Lcom/android/server/lights/LightsService$LightImpl;
    .end local p1    # "color":I
    .end local p2    # "mode":I
    .end local p3    # "onMS":I
    .end local p4    # "offMS":I
    :try_start_e8
    throw v1

    .line 517
    .restart local p0    # "this":Lcom/android/server/lights/LightsService$LightImpl;
    .restart local p1    # "color":I
    .restart local p2    # "mode":I
    .restart local p3    # "onMS":I
    .restart local p4    # "offMS":I
    :cond_e9
    const-string v0, "LightsService"

    const-string v1, "[SvcLED] not mIsIDUsingPatternLED"

    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v7, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 520
    :goto_f9
    monitor-exit p0

    .line 521
    return-void

    .line 520
    :catchall_fb
    move-exception v0

    monitor-exit p0
    :try_end_fd
    .catchall {:try_start_e8 .. :try_end_fd} :catchall_fb

    throw v0
.end method

.method public setVrMode(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 588
    monitor-enter p0

    .line 589
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    if-eq v0, p1, :cond_1e

    .line 590
    iput-boolean p1, p0, Lcom/android/server/lights/LightsService$LightImpl;->mVrModeEnabled:Z

    .line 592
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    .line 593
    # invokes: Lcom/android/server/lights/LightsService;->getVrDisplayMode()I
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$1800(Lcom/android/server/lights/LightsService;)I

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mUseLowPersistenceForVR:Z

    .line 594
    invoke-direct {p0}, Lcom/android/server/lights/LightsService$LightImpl;->shouldBeInLowPersistenceMode()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 595
    iget v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mBrightnessMode:I

    iput v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mLastBrightnessMode:I

    .line 603
    :cond_1e
    monitor-exit p0

    .line 604
    return-void

    .line 603
    :catchall_20
    move-exception v0

    monitor-exit p0
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_20

    throw v0
.end method

.method public turnOff()V
    .registers 8

    .line 552
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[api] [SvcLED] turnOff : lightType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    .line 553
    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService;->translateLightType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    # invokes: Lcom/android/server/lights/LightsService;->callerInfoToString()Ljava/lang/String;
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$600()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 552
    const-string v1, "LightsService"

    invoke-static {v1, v0}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    monitor-enter p0

    .line 558
    :try_start_28
    iget-boolean v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->mIsIDUsingPatternLED:Z

    if-eqz v0, :cond_93

    .line 559
    iget-object v0, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/android/server/lights/LightsService;->access$900(Lcom/android/server/lights/LightsService;)Landroid/os/HandlerThread;

    move-result-object v0

    monitor-enter v0
    :try_end_33
    .catchall {:try_start_28 .. :try_end_33} :catchall_9e

    .line 561
    :try_start_33
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->acquireWakeLockForLED()V
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1000(Lcom/android/server/lights/LightsService;)V

    .line 565
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->mHwLight:Lvendor/samsung/hardware/light/SehHwLight;

    iget v2, v2, Lvendor/samsung/hardware/light/SehHwLight;->type:I

    # invokes: Lcom/android/server/lights/LightsService;->clearSvcLedStateLocked(I)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$1600(Lcom/android/server/lights/LightsService;I)V

    .line 566
    # getter for: Lcom/android/server/lights/LightsService;->mSvcLedState:I
    invoke-static {}, Lcom/android/server/lights/LightsService;->access$1700()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_72

    .line 567
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # invokes: Lcom/android/server/lights/LightsService;->enableSvcLEDLightSensorLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->access$1200(Lcom/android/server/lights/LightsService;Z)V

    .line 569
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 570
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 571
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mDelayForcedSvcLEDTask:I
    invoke-static {v3}, Lcom/android/server/lights/LightsService;->access$1400(Lcom/android/server/lights/LightsService;)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 572
    nop

    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_8e

    .line 573
    :cond_72
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->removeMessages(I)V

    .line 574
    iget-object v1, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v1}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 575
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/lights/LightsService$LightImpl;->this$0:Lcom/android/server/lights/LightsService;

    # getter for: Lcom/android/server/lights/LightsService;->mSvcLEDHandler:Lcom/android/server/lights/LightsService$SvcLEDHandler;
    invoke-static {v2}, Lcom/android/server/lights/LightsService;->access$1300(Lcom/android/server/lights/LightsService;)Lcom/android/server/lights/LightsService$SvcLEDHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/lights/LightsService$SvcLEDHandler;->sendMessage(Landroid/os/Message;)Z

    .line 578
    .end local v1    # "msg":Landroid/os/Message;
    :goto_8e
    monitor-exit v0

    goto :goto_9c

    :catchall_90
    move-exception v1

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_33 .. :try_end_92} :catchall_90

    .end local p0    # "this":Lcom/android/server/lights/LightsService$LightImpl;
    :try_start_92
    throw v1

    .line 580
    .restart local p0    # "this":Lcom/android/server/lights/LightsService$LightImpl;
    :cond_93
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/lights/LightsService$LightImpl;->setLightLocked(IIIII)V

    .line 583
    :goto_9c
    monitor-exit p0

    .line 584
    return-void

    .line 583
    :catchall_9e
    move-exception v0

    monitor-exit p0
    :try_end_a0
    .catchall {:try_start_92 .. :try_end_a0} :catchall_9e

    throw v0
.end method
