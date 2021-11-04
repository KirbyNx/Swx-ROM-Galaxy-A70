.class Lcom/android/server/power/ShutdownThread$5;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J

.field final synthetic val$timeout:I


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;JI[Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .line 1020
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-wide p2, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    iput p4, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    iput-object p5, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .line 1022
    const-string v0, "ShutdownThread"

    const-string v1, "!@Start shutdown radios"

    invoke-static {v0, v1}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1023
    # invokes: Lcom/android/server/power/ShutdownThread;->newTimingsLog()Landroid/util/TimingsTraceLog;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$300()Landroid/util/TimingsTraceLog;

    move-result-object v1

    .line 1026
    .local v1, "shutdownTimingsTraceLog":Landroid/util/TimingsTraceLog;
    iget-object v2, p0, Lcom/android/server/power/ShutdownThread$5;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 1030
    .local v2, "telephonyManager":Landroid/telephony/TelephonyManager;
    nop

    .line 1031
    const-string v3, "bluetooth_manager"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 1034
    .local v3, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v3, :cond_31

    .line 1035
    :try_start_26
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->dumpInFile()V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_31

    .line 1037
    :catch_2a
    move-exception v4

    .line 1038
    .local v4, "ex":Landroid/os/RemoteException;
    const-string v5, "RemoteException during bluetooth permanent log dump"

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_32

    .line 1039
    .end local v4    # "ex":Landroid/os/RemoteException;
    :cond_31
    :goto_31
    nop

    .line 1042
    :goto_32
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3f

    .line 1043
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v6

    if-nez v6, :cond_3d

    goto :goto_3f

    :cond_3d
    move v6, v4

    goto :goto_40

    :cond_3f
    :goto_3f
    move v6, v5

    .line 1044
    .local v6, "radioOff":Z
    :goto_40
    if-nez v6, :cond_51

    .line 1045
    const-string v7, "Turning off cellular radios..."

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    # getter for: Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/android/server/power/ShutdownThread;->metricStarted(Ljava/lang/String;)V
    invoke-static {v7}, Lcom/android/server/power/ShutdownThread;->access$500(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->shutdownAllRadios()V

    .line 1050
    :cond_51
    const-string v7, "Waiting for Radio..."

    invoke-static {v0, v7}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    iget-wide v7, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v7, v9

    .line 1053
    .local v7, "delay":J
    :goto_5d
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-lez v9, :cond_fe

    .line 1054
    # getter for: Lcom/android/server/power/ShutdownThread;->mRebootHasProgressBar:Z
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$600()Z

    move-result v9

    if-eqz v9, :cond_81

    .line 1055
    iget v9, p0, Lcom/android/server/power/ShutdownThread$5;->val$timeout:I

    int-to-long v10, v9

    sub-long/2addr v10, v7

    long-to-double v10, v10

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4028000000000000L    # 12.0

    mul-double/2addr v10, v12

    int-to-double v12, v9

    div-double/2addr v10, v12

    double-to-int v9, v10

    .line 1057
    .local v9, "status":I
    add-int/lit8 v9, v9, 0x6

    .line 1058
    # getter for: Lcom/android/server/power/ShutdownThread;->sInstance:Lcom/android/server/power/ShutdownThread;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()Lcom/android/server/power/ShutdownThread;

    move-result-object v10

    const/4 v11, 0x0

    # invokes: Lcom/android/server/power/ShutdownThread;->setRebootProgress(ILjava/lang/CharSequence;)V
    invoke-static {v10, v9, v11}, Lcom/android/server/power/ShutdownThread;->access$800(Lcom/android/server/power/ShutdownThread;ILjava/lang/CharSequence;)V

    .line 1061
    .end local v9    # "status":I
    :cond_81
    if-nez v6, :cond_af

    .line 1062
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isAnyRadioPoweredOn()Z

    move-result v9

    xor-int/2addr v9, v5

    move v6, v9

    .line 1063
    if-eqz v6, :cond_af

    .line 1064
    const-string v9, "!@Radio turned off."

    invoke-static {v0, v9}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1065
    # getter for: Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Ljava/lang/String;

    move-result-object v9

    # invokes: Lcom/android/server/power/ShutdownThread;->metricEnded(Ljava/lang/String;)V
    invoke-static {v9}, Lcom/android/server/power/ShutdownThread;->access$900(Ljava/lang/String;)V

    .line 1066
    nop

    .line 1067
    # getter for: Lcom/android/server/power/ShutdownThread;->TRON_METRICS:Landroid/util/ArrayMap;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$1000()Landroid/util/ArrayMap;

    move-result-object v9

    # getter for: Lcom/android/server/power/ShutdownThread;->METRIC_RADIO:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$400()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v11, "ShutdownRadio"

    invoke-virtual {v1, v11, v9, v10}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 1071
    :cond_af
    if-eqz v6, :cond_bb

    .line 1072
    const-string v9, "!@Radio shutdown complete."

    invoke-static {v0, v9}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$5;->val$done:[Z

    aput-boolean v5, v0, v4

    .line 1074
    goto :goto_fe

    .line 1076
    :cond_bb
    const-string v9, "!@before sleep"

    invoke-static {v0, v9}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    const-wide/16 v9, 0x64

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    .line 1078
    const-string v9, "!@after sleep"

    invoke-static {v0, v9}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "!@[Phone off retry:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, "] : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " radio="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/android/server/power/ShutdownThread$MYLOG;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    iget-wide v9, p0, Lcom/android/server/power/ShutdownThread$5;->val$endTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v11

    sub-long v7, v9, v11

    goto/16 :goto_5d

    .line 1083
    :cond_fe
    :goto_fe
    return-void
.end method
