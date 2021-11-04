.class Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;
.super Landroid/os/Handler;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/application/ApplicationUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageHandler"
.end annotation


# static fields
.field public static final MSG_APP_LAUNCH_COUNT:I = 0x1

.field public static final MSG_APP_PAUSE_TIME:I = 0x2

.field public static final MSG_SVC_START_TIME:I = 0x3

.field public static final MSG_SVC_STOP_TIME:I = 0x4

.field public static final MSG_UPDATE_USAGE_DB:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationUsage;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationUsage;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/enterprise/application/ApplicationUsage;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 110
    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    .line 111
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 112
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 117
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_34

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_12

    goto :goto_48

    .line 136
    :cond_12
    const-string v0, "ApplicationUsage"

    const-string/jumbo v1, "handleMessage : MSG_UPDATE_USAGE_DB"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    invoke-virtual {v0}, Lcom/android/server/enterprise/application/ApplicationUsage;->_insertToAppControlDB()V

    goto :goto_48

    .line 132
    :cond_20
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;->_appServiceStopTime(Ljava/lang/String;)V

    .line 133
    goto :goto_48

    .line 128
    :cond_2a
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;->_appServiceStartTime(Landroid/app/ActivityManager$RunningServiceInfo;)V

    .line 129
    goto :goto_48

    .line 124
    :cond_34
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;->_appPauseTime(Ljava/lang/String;)V

    .line 125
    goto :goto_48

    .line 120
    :cond_3e
    iget-object v0, p0, Lcom/android/server/enterprise/application/ApplicationUsage$UsageHandler;->this$0:Lcom/android/server/enterprise/application/ApplicationUsage;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/application/ApplicationUsage;->_appLaunchCount(Ljava/lang/String;)V

    .line 121
    nop

    .line 141
    :goto_48
    return-void
.end method
