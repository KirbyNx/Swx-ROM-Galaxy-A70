.class Lcom/android/server/location/NSLocationMonitor$4;
.super Ljava/lang/Object;
.source "NSLocationMonitor.java"

# interfaces
.implements Lcom/samsung/android/hardware/context/SemContextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/NSLocationMonitor;


# direct methods
.method constructor <init>(Lcom/android/server/location/NSLocationMonitor;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/location/NSLocationMonitor;

    .line 1093
    iput-object p1, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSemContextChanged(Lcom/samsung/android/hardware/context/SemContextEvent;)V
    .registers 10
    .param p1, "event"    # Lcom/samsung/android/hardware/context/SemContextEvent;

    .line 1096
    iget-object v0, p1, Lcom/samsung/android/hardware/context/SemContextEvent;->semContext:Lcom/samsung/android/hardware/context/SemContext;

    .line 1098
    .local v0, "context":Lcom/samsung/android/hardware/context/SemContext;
    invoke-virtual {v0}, Lcom/samsung/android/hardware/context/SemContext;->getType()I

    move-result v1

    const/16 v2, 0x36

    if-ne v1, v2, :cond_c5

    .line 1099
    invoke-virtual {p1}, Lcom/samsung/android/hardware/context/SemContextEvent;->getDeviceActivityDetectorContext()Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;

    move-result-object v1

    .line 1101
    .local v1, "deviceActivityDetector":Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getActivity()I

    move-result v2

    .line 1102
    .local v2, "activity":I
    invoke-virtual {v1}, Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;->getResult()I

    move-result v3

    .line 1104
    .local v3, "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSemContextChanged, activity : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NSLocationMonitor"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v4, 0x4

    const/4 v6, 0x1

    if-ne v3, v4, :cond_4c

    .line 1108
    const-string v4, "Support device_activity_detector algorithm"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1109
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mSupportAlgorithm:Z
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->access$2100(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v4

    if-nez v4, :cond_4b

    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # setter for: Lcom/android/server/location/NSLocationMonitor;->mSupportAlgorithm:Z
    invoke-static {v4, v6}, Lcom/android/server/location/NSLocationMonitor;->access$2102(Lcom/android/server/location/NSLocationMonitor;Z)Z

    .line 1110
    :cond_4b
    return-void

    .line 1113
    :cond_4c
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mSupportAlgorithm:Z
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->access$2100(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_ac

    const/4 v4, 0x3

    if-ne v3, v4, :cond_59

    goto :goto_ac

    .line 1123
    :cond_59
    const/4 v4, 0x2

    if-ne v2, v6, :cond_86

    .line 1124
    if-ne v3, v6, :cond_71

    .line 1125
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->access$2200(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 1126
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->sendStationaryInfo(Z)V
    invoke-static {v4, v6}, Lcom/android/server/location/NSLocationMonitor;->access$2300(Lcom/android/server/location/NSLocationMonitor;Z)V

    .line 1128
    :cond_6b
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # setter for: Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z
    invoke-static {v4, v6}, Lcom/android/server/location/NSLocationMonitor;->access$2202(Lcom/android/server/location/NSLocationMonitor;Z)Z

    goto :goto_c5

    .line 1129
    :cond_71
    if-ne v3, v4, :cond_c5

    .line 1130
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->access$2200(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 1131
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->sendStationaryInfo(Z)V
    invoke-static {v4, v7}, Lcom/android/server/location/NSLocationMonitor;->access$2300(Lcom/android/server/location/NSLocationMonitor;Z)V

    .line 1133
    :cond_80
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # setter for: Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z
    invoke-static {v4, v7}, Lcom/android/server/location/NSLocationMonitor;->access$2202(Lcom/android/server/location/NSLocationMonitor;Z)Z

    goto :goto_c5

    .line 1136
    :cond_86
    iget-object v5, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mManualMovingRegistered:Z
    invoke-static {v5}, Lcom/android/server/location/NSLocationMonitor;->access$2400(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v5

    if-eqz v5, :cond_97

    .line 1137
    iget-object v5, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    if-ne v3, v4, :cond_93

    move v7, v6

    :cond_93
    # invokes: Lcom/android/server/location/NSLocationMonitor;->sendStationaryInfo(ZZ)V
    invoke-static {v5, v7, v6}, Lcom/android/server/location/NSLocationMonitor;->access$2500(Lcom/android/server/location/NSLocationMonitor;ZZ)V

    .line 1138
    return-void

    .line 1141
    :cond_97
    if-ne v3, v6, :cond_c5

    .line 1142
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->access$2200(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v4

    if-eqz v4, :cond_a6

    .line 1143
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # invokes: Lcom/android/server/location/NSLocationMonitor;->sendStationaryInfo(Z)V
    invoke-static {v4, v7}, Lcom/android/server/location/NSLocationMonitor;->access$2300(Lcom/android/server/location/NSLocationMonitor;Z)V

    .line 1145
    :cond_a6
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # setter for: Lcom/android/server/location/NSLocationMonitor;->mIsStationary:Z
    invoke-static {v4, v7}, Lcom/android/server/location/NSLocationMonitor;->access$2202(Lcom/android/server/location/NSLocationMonitor;Z)Z

    goto :goto_c5

    .line 1114
    :cond_ac
    :goto_ac
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    # getter for: Lcom/android/server/location/NSLocationMonitor;->mSupportAlgorithm:Z
    invoke-static {v4}, Lcom/android/server/location/NSLocationMonitor;->access$2100(Lcom/android/server/location/NSLocationMonitor;)Z

    move-result v4

    if-nez v4, :cond_ba

    .line 1115
    const-string v4, "Not support device_activity_detector algorithm"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bf

    .line 1117
    :cond_ba
    const-string v4, "SENSOR OUT"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    :goto_bf
    iget-object v4, p0, Lcom/android/server/location/NSLocationMonitor$4;->this$0:Lcom/android/server/location/NSLocationMonitor;

    invoke-virtual {v4, v7}, Lcom/android/server/location/NSLocationMonitor;->setFeatureDeviceActivity(Z)Z

    .line 1120
    return-void

    .line 1149
    .end local v1    # "deviceActivityDetector":Lcom/samsung/android/hardware/context/SemContextDeviceActivityDetector;
    .end local v2    # "activity":I
    .end local v3    # "result":I
    :cond_c5
    :goto_c5
    return-void
.end method
