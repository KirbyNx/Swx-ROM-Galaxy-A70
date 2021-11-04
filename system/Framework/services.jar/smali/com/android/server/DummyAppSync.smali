.class Lcom/android/server/DummyAppSync;
.super Lcom/android/server/AppSyncWrapper;
.source "AlarmManagerServiceExt.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 4560
    invoke-direct {p0}, Lcom/android/server/AppSyncWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4595
    const/4 v0, 0x0

    return v0
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 4564
    const-string v0, "  <AppSync3 Disabled>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4565
    return-void
.end method

.method public enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .line 4589
    const/4 v0, 0x0

    return v0
.end method

.method public lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
    .registers 6
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;
    .param p3, "triggerAtTime"    # J

    .line 4571
    const/4 v0, 0x1

    return v0
.end method

.method public scheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
    .registers 4
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4577
    iget-wide v0, p1, Lcom/android/server/AlarmManagerService$Alarm;->when:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 4583
    const-string v0, "___SyncScheduler (v3) DEACTIVATED___"

    return-object v0
.end method
