.class final Lcom/android/server/BatteryService$HealthHalCallback;
.super Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;
.source "BatteryService.java"

# interfaces
.implements Lcom/android/server/BatteryService$HealthServiceWrapper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HealthHalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method private constructor <init>(Lcom/android/server/BatteryService;)V
    .registers 2

    .line 3822
    iput-object p1, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/BatteryService;
    .param p2, "x1"    # Lcom/android/server/BatteryService$1;

    .line 3822
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$HealthHalCallback;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 6
    .param p1, "props"    # Landroid/hardware/health/V2_0/HealthInfo;

    .line 3835
    new-instance v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 3837
    .local v0, "propsLatest":Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;
    iget-object v1, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iput-object p1, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    .line 3839
    iget-object v1, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    const/4 v2, -0x1

    iput v2, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    .line 3840
    iget-object v1, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 3844
    iget-object v1, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->update(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$6800(Lcom/android/server/BatteryService;Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V

    .line 3845
    return-void
.end method

.method public healthInfoChanged_2_1(Landroid/hardware/health/V2_1/HealthInfo;)V
    .registers 4
    .param p1, "props"    # Landroid/hardware/health/V2_1/HealthInfo;

    .line 3850
    new-instance v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 3852
    .local v0, "propsLatest":Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;
    iput-object p1, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 3854
    iget-object v1, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->update(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V
    invoke-static {v1, v0}, Lcom/android/server/BatteryService;->access$6800(Lcom/android/server/BatteryService;Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V

    .line 3856
    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .registers 8
    .param p1, "oldService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p2, "newService"    # Landroid/hardware/health/V2_0/IHealth;
    .param p3, "instance"    # Ljava/lang/String;

    .line 3865
    if-nez p2, :cond_3

    return-void

    .line 3867
    :cond_3
    const-string v0, "HealthUnregisterCallback"

    # invokes: Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$6900(Ljava/lang/String;)V

    .line 3869
    if-eqz p1, :cond_54

    .line 3870
    :try_start_a
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 3871
    .local v0, "r":I
    if-eqz v0, :cond_54

    .line 3872
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot unregister previous callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3873
    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3872
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2d} :catch_30
    .catchall {:try_start_a .. :try_end_2d} :catchall_2e

    goto :goto_54

    .line 3880
    .end local v0    # "r":I
    :catchall_2e
    move-exception v0

    goto :goto_50

    .line 3876
    :catch_30
    move-exception v0

    .line 3877
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_31
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3878
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3877
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_31 .. :try_end_4e} :catchall_2e

    .line 3880
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_55

    :goto_50
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$7000()V

    .line 3881
    throw v0

    .line 3880
    :cond_54
    :goto_54
    nop

    :goto_55
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$7000()V

    .line 3881
    nop

    .line 3883
    const-string v0, "HealthRegisterCallback"

    # invokes: Lcom/android/server/BatteryService;->traceBegin(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/BatteryService;->access$6900(Ljava/lang/String;)V

    .line 3885
    :try_start_5e
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result v0

    .line 3886
    .local v0, "r":I
    if-eqz v0, :cond_85

    .line 3887
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot register callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_5e .. :try_end_81} :catch_8f
    .catchall {:try_start_5e .. :try_end_81} :catchall_8d

    .line 3897
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$7000()V

    .line 3888
    return-void

    .line 3892
    :cond_85
    :try_start_85
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_88
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_88} :catch_8f
    .catchall {:try_start_85 .. :try_end_88} :catchall_8d

    .line 3897
    nop

    .end local v0    # "r":I
    :goto_89
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$7000()V

    .line 3898
    goto :goto_af

    .line 3897
    :catchall_8d
    move-exception v0

    goto :goto_b0

    .line 3893
    :catch_8f
    move-exception v0

    .line 3894
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_90
    # getter for: Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/BatteryService;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "health: cannot register callback (transaction error): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3895
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3894
    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_90 .. :try_end_ad} :catchall_8d

    .line 3897
    nop

    .end local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_89

    .line 3899
    :goto_af
    return-void

    .line 3897
    :goto_b0
    # invokes: Lcom/android/server/BatteryService;->traceEnd()V
    invoke-static {}, Lcom/android/server/BatteryService;->access$7000()V

    .line 3898
    throw v0
.end method

.method public sehHealthInfoChanged_2_1(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V
    .registers 3
    .param p1, "props"    # Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    .line 3859
    iget-object v0, p0, Lcom/android/server/BatteryService$HealthHalCallback;->this$0:Lcom/android/server/BatteryService;

    # invokes: Lcom/android/server/BatteryService;->update(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V
    invoke-static {v0, p1}, Lcom/android/server/BatteryService;->access$6800(Lcom/android/server/BatteryService;Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V

    .line 3860
    return-void
.end method
