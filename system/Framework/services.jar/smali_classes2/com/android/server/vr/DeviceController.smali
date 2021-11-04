.class public Lcom/android/server/vr/DeviceController;
.super Ljava/lang/Object;
.source "DeviceController.java"


# static fields
.field public static final DISPLAY_PORT_STATE_PATH:Ljava/lang/String; = "/sys/class/dp_sec/dex"

.field public static final TAG:Ljava/lang/String; = "DeviceController"

.field public static final USB_POWER_STATE_PATH:Ljava/lang/String; = "/sys/class/sec/ccic/hmd_power"


# instance fields
.field private mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

.field private mService:Lcom/android/server/vr/GearVrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/GearVrManagerService;)V
    .registers 3
    .param p1, "service"    # Lcom/android/server/vr/GearVrManagerService;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/android/server/vr/DeviceController;->mService:Lcom/android/server/vr/GearVrManagerService;

    .line 29
    new-instance v0, Lcom/samsung/android/os/SemAffinityControl;

    invoke-direct {v0}, Lcom/samsung/android/os/SemAffinityControl;-><init>()V

    iput-object v0, p0, Lcom/android/server/vr/DeviceController;->mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    .line 30
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 206
    const-string v0, "DeviceController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public getThreadId(ILjava/lang/String;I)[I
    .registers 14
    .param p1, "pid"    # I
    .param p2, "threadName"    # Ljava/lang/String;
    .param p3, "type"    # I

    .line 37
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 39
    .local v0, "taskLocation":Ljava/io/File;
    nop

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 42
    .local v1, "taskFiles":[Ljava/io/File;
    const/4 v2, 0x0

    if-eqz v1, :cond_c8

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v3, "tids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    array-length v4, v1

    const/4 v5, 0x0

    move v6, v5

    :goto_2b
    if-ge v6, v4, :cond_a8

    aget-object v7, v1, v6

    .line 47
    .local v7, "taskFile":Ljava/io/File;
    :try_start_2f
    new-instance v8, Ljava/io/File;

    const-string v9, "comm"

    invoke-direct {v8, v7, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v8, v5, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 48
    .local v8, "taskName":Ljava/lang/String;
    const/4 v9, 0x2

    if-eq p3, v9, :cond_92

    const/4 v9, 0x3

    if-eq p3, v9, :cond_80

    const/4 v9, 0x4

    if-eq p3, v9, :cond_6e

    const/4 v9, 0x5

    if-eq p3, v9, :cond_5c

    .line 71
    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 72
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 55
    :cond_5c
    invoke-virtual {p2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 56
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 60
    :cond_6e
    invoke-virtual {p2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 61
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 50
    :cond_80
    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 51
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a3

    .line 65
    :cond_92
    invoke-virtual {p2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a3

    .line 66
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a3
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_a3} :catch_a4

    .line 77
    .end local v8    # "taskName":Ljava/lang/String;
    :cond_a3
    :goto_a3
    goto :goto_a5

    .line 76
    :catch_a4
    move-exception v8

    .line 45
    .end local v7    # "taskFile":Ljava/io/File;
    :goto_a5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2b

    .line 80
    :cond_a8
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c8

    .line 81
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 82
    .local v2, "ret":[I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b5
    array-length v5, v2

    if-ge v4, v5, :cond_c7

    .line 83
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aput v5, v2, v4

    .line 82
    add-int/lit8 v4, v4, 0x1

    goto :goto_b5

    .line 85
    .end local v4    # "i":I
    :cond_c7
    return-object v2

    .line 89
    .end local v1    # "taskFiles":[Ljava/io/File;
    .end local v2    # "ret":[I
    .end local v3    # "tids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_c8
    return-object v2
.end method

.method public readSysNode(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "node"    # Ljava/lang/String;

    .line 126
    const-string v0, "DeviceController"

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 128
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_11} :catch_35
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_11} :catch_17
    .catchall {:try_start_7 .. :try_end_11} :catchall_15

    .line 136
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    return-object v0

    .line 136
    :catchall_15
    move-exception v0

    goto :goto_53

    .line 132
    :catch_17
    move-exception v4

    .line 133
    .local v4, "e":Ljava/io/IOException;
    :try_start_18
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_15

    .line 134
    nop

    .line 136
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    return-object v3

    .line 129
    .end local v4    # "e":Ljava/io/IOException;
    :catch_35
    move-exception v4

    .line 130
    .local v4, "e":Ljava/io/FileNotFoundException;
    :try_start_36
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException! "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4e
    .catchall {:try_start_36 .. :try_end_4e} :catchall_15

    .line 131
    nop

    .line 136
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 131
    return-object v3

    .line 136
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :goto_53
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 137
    throw v0
.end method

.method public removeSysNode(Ljava/lang/String;)Z
    .registers 5
    .param p1, "node"    # Ljava/lang/String;

    .line 117
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 119
    .local v0, "ident":J
    :try_start_4
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/os/FileUtils;->deleteContentsAndDir(Ljava/io/File;)Z

    move-result v2
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_11

    .line 121
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 119
    return v2

    .line 121
    :catchall_11
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 122
    throw v2
.end method

.method public setDisplayPortState(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 172
    if-nez p1, :cond_3

    .line 173
    return-void

    .line 175
    :cond_3
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/DeviceController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vr/DeviceController$1;-><init>(Lcom/android/server/vr/DeviceController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 186
    return-void
.end method

.method public setPermissions(Ljava/lang/String;III)I
    .registers 8
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "mode"    # I
    .param p3, "uid"    # I
    .param p4, "gid"    # I

    .line 163
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 165
    .local v0, "ident":J
    :try_start_4
    invoke-static {p1, p2, p3, p4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 167
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 165
    return v2

    .line 167
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 168
    throw v2
.end method

.method public setThreadAffinity(I[I)I
    .registers 4
    .param p1, "pid"    # I
    .param p2, "cpus"    # [I

    .line 33
    iget-object v0, p0, Lcom/android/server/vr/DeviceController;->mAffinityControl:Lcom/samsung/android/os/SemAffinityControl;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/os/SemAffinityControl;->setAffinity(I[I)I

    move-result v0

    return v0
.end method

.method public setThreadGroup(II)Z
    .registers 7
    .param p1, "tid"    # I
    .param p2, "group"    # I

    .line 141
    const/4 v0, 0x0

    .line 143
    .local v0, "result":Z
    :try_start_1
    invoke-static {p1, p2}, Landroid/os/Process;->setThreadGroup(II)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_6

    .line 144
    const/4 v0, 0x1

    .line 147
    goto :goto_10

    .line 145
    :catch_6
    move-exception v1

    .line 146
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceController"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return v0
.end method

.method public setThreadScheduler(III)Z
    .registers 8
    .param p1, "tid"    # I
    .param p2, "policy"    # I
    .param p3, "priority"    # I

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "result":Z
    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_4} :catch_6

    .line 155
    const/4 v0, 0x1

    .line 158
    goto :goto_10

    .line 156
    :catch_6
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DeviceController"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :goto_10
    return v0
.end method

.method public setUsbPowerState(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 189
    if-nez p1, :cond_3

    .line 190
    return-void

    .line 192
    :cond_3
    invoke-static {}, Lcom/android/server/IoThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/vr/DeviceController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/vr/DeviceController$2;-><init>(Lcom/android/server/vr/DeviceController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    return-void
.end method

.method public writeSysNode(Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p1, "node"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "makeDir"    # Z

    .line 93
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 95
    .local v0, "ident":J
    const/4 v2, 0x0

    const-string v3, " message="

    const-string v4, " value="

    const-string v5, "DeviceController"

    if-eqz p3, :cond_22

    .line 96
    :try_start_d
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    .line 97
    .local v6, "parentDir":Ljava/io/File;
    if-eqz v6, :cond_1c

    .line 98
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    goto :goto_22

    .line 100
    :cond_1c
    const-string/jumbo v7, "parentDir null!"

    invoke-static {v5, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    .end local v6    # "parentDir":Ljava/io/File;
    :cond_22
    :goto_22
    invoke-static {p1, p2}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_25} :catch_56
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_25} :catch_2c
    .catchall {:try_start_d .. :try_end_25} :catchall_2a

    .line 104
    const/4 v2, 0x1

    .line 112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 104
    return v2

    .line 112
    :catchall_2a
    move-exception v2

    goto :goto_80

    .line 108
    :catch_2c
    move-exception v6

    .line 109
    .local v6, "e":Ljava/io/IOException;
    :try_start_2d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IOException! node="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_2a

    .line 110
    nop

    .line 112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    return v2

    .line 105
    .end local v6    # "e":Ljava/io/IOException;
    :catch_56
    move-exception v6

    .line 106
    .local v6, "e":Ljava/io/FileNotFoundException;
    :try_start_57
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFound! node="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7b
    .catchall {:try_start_57 .. :try_end_7b} :catchall_2a

    .line 107
    nop

    .line 112
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 107
    return v2

    .line 112
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    :goto_80
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    throw v2
.end method
