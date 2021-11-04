.class final Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;
.super Landroid/os/Handler;
.source "UsbMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMonitorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UsbStatsHandler"
.end annotation


# instance fields
.field private mCurrentUsbStats:Ljava/lang/String;

.field private final mLogFile:Ljava/io/File;

.field private final mSysFs:Ljava/io/File;

.field final synthetic this$0:Lcom/android/server/usb/UsbMonitorImpl;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMonitorImpl;Landroid/os/Looper;)V
    .registers 4
    .param p2, "looper"    # Landroid/os/Looper;

    .line 49
    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    .line 50
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 44
    new-instance p1, Ljava/io/File;

    const-string v0, "/sys/class/usb_notify/usb_control/usb_hw_param"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    .line 45
    new-instance p1, Ljava/io/File;

    const-string v0, "/efs/usb_hw_param/usb_hw_param.log"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    .line 51
    const-string/jumbo p1, "none"

    iput-object p1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    .line 52
    return-void
.end method

.method private finishBoot()V
    .registers 5

    .line 75
    const-string v0, "UsbStatsMonitor"

    const-string v1, "finishBoot"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_15

    .line 77
    const-string v1, "No sysfs node"

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void

    .line 82
    :cond_15
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 83
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    # invokes: Lcom/android/server/usb/UsbMonitorImpl;->readFileAsStringOrNull(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/android/server/usb/UsbMonitorImpl;->access$000(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v0, v1, v2}, Lcom/android/server/usb/UsbMonitorImpl;->access$100(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    goto :goto_4b

    .line 85
    :cond_2b
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    const-string v3, "0"

    # invokes: Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v1, v2, v3}, Lcom/android/server/usb/UsbMonitorImpl;->access$100(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    .line 87
    :try_start_34
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_45

    .line 88
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 90
    :cond_45
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4a} :catch_4f

    .line 94
    nop

    .line 98
    :goto_4b
    invoke-direct {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->updateUsbStats()V

    .line 99
    return-void

    .line 91
    :catch_4f
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Couldn\'t create log file"

    invoke-static {v0, v2, v1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    return-void
.end method

.method private updateUsbStats()V
    .registers 5

    .line 102
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mSysFs:Ljava/io/File;

    # invokes: Lcom/android/server/usb/UsbMonitorImpl;->readFileAsStringOrNull(Ljava/io/File;)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/usb/UsbMonitorImpl;->access$000(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "stats":Ljava/lang/String;
    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    .line 104
    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    .line 105
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->this$0:Lcom/android/server/usb/UsbMonitorImpl;

    iget-object v2, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mLogFile:Ljava/io/File;

    # invokes: Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/usb/UsbMonitorImpl;->access$100(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V

    .line 108
    :cond_1b
    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    const-string v2, "UsbStatsMonitor"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, 0x1

    const-wide/32 v2, 0xea60

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->sendMessageDelayed(IJ)V

    .line 110
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current USB Stats: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->mCurrentUsbStats:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_24

    const/4 v1, 0x1

    if-eq v0, v1, :cond_20

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbStatsMonitor"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 67
    :cond_20
    invoke-direct {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->updateUsbStats()V

    .line 68
    goto :goto_28

    .line 64
    :cond_24
    invoke-direct {p0}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->finishBoot()V

    .line 65
    nop

    .line 72
    :goto_28
    return-void
.end method

.method public sendMessageDelayed(IJ)V
    .registers 5
    .param p1, "what"    # I
    .param p2, "delayMillis"    # J

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->removeMessages(I)V

    .line 56
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 57
    .local v0, "m":Landroid/os/Message;
    invoke-virtual {p0, v0, p2, p3}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 58
    return-void
.end method
