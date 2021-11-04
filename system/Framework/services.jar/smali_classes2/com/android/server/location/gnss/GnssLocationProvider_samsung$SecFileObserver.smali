.class Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;
.super Landroid/os/FileObserver;
.source "GnssLocationProvider_samsung.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider_samsung;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SecFileObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;


# direct methods
.method constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;Ljava/lang/String;I)V
    .registers 4
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "mask"    # I

    .line 4102
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    .line 4103
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 4104
    return-void
.end method

.method private secCheckCtsRestrictMode()V
    .registers 11

    .line 4107
    const-string v0, "GnssLocationProvider_ex"

    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/sensors/ssc_core/operation_mode"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4108
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 4109
    .local v2, "stream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 4110
    .local v3, "isr":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 4111
    .local v4, "br":Ljava/io/BufferedReader;
    const/4 v5, 0x0

    .line 4113
    .local v5, "restrict_mode":Ljava/lang/String;
    :try_start_d
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_12
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_12} :catch_1b
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_12} :catch_14

    move-object v2, v6

    .line 4118
    :goto_13
    goto :goto_22

    .line 4116
    :catch_14
    move-exception v6

    .line 4117
    .local v6, "e":Ljava/lang/SecurityException;
    const-string v7, "Could not access file /sys/class/sensors/ssc_core/operation_mode"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_22

    .line 4114
    .end local v6    # "e":Ljava/lang/SecurityException;
    :catch_1b
    move-exception v6

    .line 4115
    .local v6, "e":Ljava/io/FileNotFoundException;
    const-string v7, "Could not open File /sys/class/sensors/ssc_core/operation_mode"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6    # "e":Ljava/io/FileNotFoundException;
    goto :goto_13

    .line 4120
    :goto_22
    if-eqz v2, :cond_50

    .line 4121
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object v3, v6

    .line 4122
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v4, v6

    .line 4124
    :try_start_30
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_34} :catch_44
    .catch Ljava/lang/IllegalArgumentException; {:try_start_30 .. :try_end_34} :catch_3c
    .catchall {:try_start_30 .. :try_end_34} :catchall_3a

    move-object v5, v6

    .line 4130
    nop

    :goto_36
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4131
    goto :goto_50

    .line 4130
    :catchall_3a
    move-exception v0

    goto :goto_4c

    .line 4127
    :catch_3c
    move-exception v6

    .line 4128
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    :try_start_3d
    const-string v7, "Could not load file /sys/class/sensors/ssc_core/operation_modedue to IllegalArgumentException"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4130
    nop

    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_36

    .line 4125
    :catch_44
    move-exception v6

    .line 4126
    .local v6, "e":Ljava/io/IOException;
    const-string v7, "Could not load file /sys/class/sensors/ssc_core/operation_modedue to IOException"

    invoke-static {v0, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_3d .. :try_end_4a} :catchall_3a

    .line 4130
    nop

    .end local v6    # "e":Ljava/io/IOException;
    goto :goto_36

    :goto_4c
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 4131
    throw v0

    .line 4133
    :cond_50
    :goto_50
    if-eqz v5, :cond_91

    .line 4134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CTS sensorservice restrict_mode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4135
    const-string/jumbo v0, "restrict"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_78

    const-string/jumbo v0, "normal"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 4136
    :cond_78
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider_samsung;

    const/16 v6, 0x18

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CTS_RESTRICTMODE="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->sendMessage(IILjava/lang/Object;)V
    invoke-static {v0, v6, v7, v8}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung;->access$900(Lcom/android/server/location/gnss/GnssLocationProvider_samsung;IILjava/lang/Object;)V

    .line 4139
    :cond_91
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .registers 5
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .line 4143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CTS restrict mode : event ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssLocationProvider_ex"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4144
    const/4 v0, 0x2

    if-ne p1, v0, :cond_21

    .line 4145
    const-string v0, "CTS restrict mode : file modified!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4146
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider_samsung$SecFileObserver;->secCheckCtsRestrictMode()V

    .line 4148
    :cond_21
    return-void
.end method
