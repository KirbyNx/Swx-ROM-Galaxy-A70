.class abstract Lcom/android/server/AppSyncWrapper;
.super Ljava/lang/Object;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AppSyncWrapper$SET_TYPE;
    }
.end annotation


# static fields
.field public static final APPSYNC3:I = 0x1

.field public static final APPSYNC3P:I

.field public static final LOG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 4519
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/AppSyncWrapper;->LOG:Z

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 4518
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract disableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
.end method

.method public abstract doDump(Ljava/io/PrintWriter;Ljava/lang/String;)V
.end method

.method public doGC(J)V
    .registers 3
    .param p1, "millis"    # J

    .line 4549
    return-void
.end method

.method public abstract enableSuspiciousPackageAsUser(Ljava/lang/String;I)Z
.end method

.method public log(Lcom/android/server/AlarmManagerService$Alarm;Z)V
    .registers 4
    .param p1, "a"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "exact"    # Z

    .line 4552
    sget-boolean v0, Lcom/android/server/AppSyncWrapper;->LOG:Z

    if-eqz v0, :cond_5

    .line 4553
    return-void

    .line 4554
    :cond_5
    return-void
.end method

.method public abstract lookForNonAdjustableAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;J)Z
.end method

.method public removeRepeatingAlarm(I)V
    .registers 2
    .param p1, "userHandle"    # I

    .line 4548
    return-void
.end method

.method public removeRepeatingAlarm(IZ)V
    .registers 3
    .param p1, "uid"    # I
    .param p2, "dummy"    # Z

    .line 4547
    return-void
.end method

.method public removeRepeatingAlarm(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)V
    .registers 3
    .param p1, "operation"    # Landroid/app/PendingIntent;
    .param p2, "rec"    # Landroid/app/IAlarmListener;

    .line 4544
    return-void
.end method

.method public removeRepeatingAlarm(Ljava/lang/String;)V
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 4546
    return-void
.end method

.method public removeRepeatingAlarms(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 4545
    .local p1, "operations":Ljava/util/Set;, "Ljava/util/Set<Landroid/app/PendingIntent;>;"
    return-void
.end method

.method public rescheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)V
    .registers 2
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;

    .line 4542
    return-void
.end method

.method public abstract scheduleAlarms(Lcom/android/server/AlarmManagerService$Alarm;)J
.end method

.method public updateAlarmTriggerInfo(Lcom/android/server/AlarmManagerService$Alarm;IJ)V
    .registers 5
    .param p1, "alarm"    # Lcom/android/server/AlarmManagerService$Alarm;
    .param p2, "count"    # I
    .param p3, "nowRtc"    # J

    .line 4543
    return-void
.end method
