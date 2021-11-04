.class Lcom/android/server/usb/UsbMonitorImpl;
.super Ljava/lang/Object;
.source "UsbMonitorImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final MSG_SYSTEM_READY:I = 0x0

.field private static final MSG_UPDATE_USB_STATS:I = 0x1

.field private static final PATH_USB_STATS_LOG:Ljava/lang/String; = "/efs/usb_hw_param/usb_hw_param.log"

.field private static final PATH_USB_STATS_SYSFS:Ljava/lang/String; = "/sys/class/usb_notify/usb_control/usb_hw_param"

.field private static final TAG:Ljava/lang/String; = "UsbStatsMonitor"

.field private static final UPDATE_DELAY:I = 0xea60


# instance fields
.field private final mHandler:Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .registers 3
    .param p1, "looper"    # Landroid/os/Looper;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;-><init>(Lcom/android/server/usb/UsbMonitorImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbMonitorImpl;
    .param p1, "x1"    # Ljava/io/File;

    .line 21
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbMonitorImpl;->readFileAsStringOrNull(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbMonitorImpl;Ljava/io/File;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbMonitorImpl;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbMonitorImpl;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method private readFileAsStringOrNull(Ljava/io/File;)Ljava/lang/String;
    .registers 5
    .param p1, "file"    # Ljava/io/File;

    .line 119
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Llibcore/io/IoUtils;->readFileAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_c} :catch_d

    return-object v0

    .line 120
    :catch_d
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbStatsMonitor"

    invoke-static {v2, v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 122
    const/4 v1, 0x0

    return-object v1
.end method

.method private stringToFile(Ljava/io/File;Ljava/lang/String;)V
    .registers 9
    .param p1, "file"    # Ljava/io/File;
    .param p2, "str"    # Ljava/lang/String;

    .line 127
    const-string v0, "Couldn\'t close stream"

    const-string v1, "UsbStatsMonitor"

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4f

    if-nez p2, :cond_d

    goto :goto_4f

    .line 131
    :cond_d
    const/4 v2, 0x0

    .line 133
    .local v2, "fw":Ljava/io/FileWriter;
    :try_start_e
    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v2, v3

    .line 134
    invoke-virtual {v2, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_17} :catch_22
    .catchall {:try_start_e .. :try_end_17} :catchall_20

    .line 139
    :try_start_17
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1a} :catch_1b

    .line 142
    :cond_1a
    :goto_1a
    goto :goto_41

    .line 140
    :catch_1b
    move-exception v3

    .line 141
    .local v3, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_41

    .line 138
    :catchall_20
    move-exception v3

    goto :goto_42

    .line 135
    :catch_22
    move-exception v3

    .line 136
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_23
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_20

    .line 139
    .end local v3    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_1a

    :try_start_3d
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_40} :catch_1b

    goto :goto_1a

    .line 144
    :goto_41
    return-void

    .line 139
    :goto_42
    if-eqz v2, :cond_4d

    :try_start_44
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4d

    .line 140
    :catch_48
    move-exception v4

    .line 141
    .local v4, "e":Ljava/io/IOException;
    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4e

    .line 142
    .end local v4    # "e":Ljava/io/IOException;
    :cond_4d
    :goto_4d
    nop

    .line 143
    :goto_4e
    throw v3

    .line 128
    .end local v2    # "fw":Ljava/io/FileWriter;
    :cond_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 147
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;

    if-eqz v0, :cond_7

    .line 148
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->dump(Ljava/io/PrintWriter;)V

    .line 150
    :cond_7
    return-void
.end method

.method public systemReady()V
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/android/server/usb/UsbMonitorImpl;->mHandler:Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbMonitorImpl$UsbStatsHandler;->sendEmptyMessage(I)Z

    .line 41
    return-void
.end method
