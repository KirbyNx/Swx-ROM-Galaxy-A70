.class Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;
.super Landroid/database/ContentObserver;
.source "GmsAlarmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GmsAlarmManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartManagerSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GmsAlarmManager;


# direct methods
.method public constructor <init>(Lcom/android/server/GmsAlarmManager;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;

    .line 1099
    iput-object p1, p0, Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/GmsAlarmManager;

    .line 1100
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1101
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .line 1105
    const-string v0, "GmsAlarmManager"

    const-string/jumbo v1, "onChange - mSmartManagerSettingsObserver for GmsAlarmManger!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    iget-object v0, p0, Lcom/android/server/GmsAlarmManager$SmartManagerSettingsObserver;->this$0:Lcom/android/server/GmsAlarmManager;

    # invokes: Lcom/android/server/GmsAlarmManager;->getSettingsValueFromDB()V
    invoke-static {v0}, Lcom/android/server/GmsAlarmManager;->access$4200(Lcom/android/server/GmsAlarmManager;)V

    .line 1107
    return-void
.end method
