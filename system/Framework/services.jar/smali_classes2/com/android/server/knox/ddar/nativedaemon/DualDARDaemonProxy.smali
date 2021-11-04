.class public Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
.super Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;
.source "DualDARDaemonProxy.java"

# interfaces
.implements Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;


# static fields
.field public static final CLEAR_SECRET:Ljava/lang/String; = "CLEAR_SECRET"

.field public static final DE_ACCESS_RESTRICTION_POLICY:I = 0x9

.field private static final FS_DUMPSTATE_PATH:Ljava/lang/String; = "/data/log/ddar_log.txt"

.field public static final GET_CLIENTLIB_VERSION:Ljava/lang/String; = "GET_CLIENTLIB_VERSION"

.field public static final LOAD_CLIENT_LIBRARY:Ljava/lang/String; = "LOAD_CLIENT_LIBRARY"

.field public static final NUMBER_OF_THREADS:I = 0x10

.field private static final PROPERTY_DDAR_DAEMON_CONTROL:Ljava/lang/String; = "persist.sys.knox.dualdard"

.field public static final PUSH_SECRET:Ljava/lang/String; = "PUSH_SECRET"

.field public static final SET_DUALDAR_POLICY:Ljava/lang/String; = "SET_DUALDAR_POLICY"

.field public static final SET_EVICTION:Ljava/lang/String; = "SET_EVICTION"

.field public static final START_CLIENT_LIBRARY:Ljava/lang/String; = "START_CLIENT_LIBRARY"

.field public static final START_DAEMON:Ljava/lang/String; = "START_DAEMON"

.field public static final STOP_DAEMON:Ljava/lang/String; = "STOP_DAEMON"

.field public static final TAG:Ljava/lang/String; = "DualDARDaemonProxy"

.field public static final UNLOAD_CLIENT_LIBRARY:Ljava/lang/String; = "UNLOAD_CLIENT_LIBRARY"

.field private static mContext:Landroid/content/Context;

.field private static mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;


# instance fields
.field private event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

.field isDaemonConnectionFailed:Z

.field private mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

.field private mConnectorThread:Ljava/lang/Thread;

.field private mHandler:Landroid/os/Handler;

.field private mIsNotified:Z

.field public final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 73
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/proxy/IProxyAgentService;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    .line 78
    iput-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    .line 79
    iput-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    .line 80
    iput-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mIsNotified:Z

    .line 83
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string v2, "DualDARDaemonProxy() called"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 84
    sput-object p1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    .line 85
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->isDualDAREnabled()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 86
    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    .line 88
    :cond_2a
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    .param p1, "x1"    # Z

    .line 54
    iput-boolean p1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mIsNotified:Z

    return p1
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .registers 8
    .param p0, "a"    # [B

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 168
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_24

    aget-byte v4, p0, v3

    .line 169
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 170
    :cond_24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 172
    return-object v1
.end method

.method private static bytesToHex([B)Ljava/lang/String;
    .registers 7
    .param p0, "bytes"    # [B

    .line 155
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 156
    .local v0, "hexArray":[C
    array-length v1, p0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [C

    .line 157
    .local v1, "hexChars":[C
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_c
    array-length v3, p0

    if-ge v2, v3, :cond_28

    .line 158
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 159
    .local v3, "v":I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 160
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 157
    .end local v3    # "v":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 162
    .end local v2    # "j":I
    :cond_28
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    .line 163
    .local v2, "res":Ljava/lang/String;
    return-object v2
.end method

.method private enforceCallingUser(I)V
    .registers 5
    .param p1, "callingUid"    # I

    .line 574
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string v2, "enforceCallingUser"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 578
    .local v0, "uid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const/16 v2, 0x1482

    if-ne v1, v2, :cond_17

    .line 580
    return-void

    .line 582
    :cond_17
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    if-ne v1, v2, :cond_22

    .line 585
    return-void

    .line 583
    :cond_22
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Can only be called by system user"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private fetchDumpStateInfo(Lcom/samsung/android/knox/ddar/FileInfo;)Z
    .registers 6
    .param p1, "fsFileInfo"    # Lcom/samsung/android/knox/ddar/FileInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 255
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string v3, "fetchDumpStateInfo()"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 256
    iget-object v1, p1, Lcom/samsung/android/knox/ddar/FileInfo;->fd:Landroid/os/ParcelFileDescriptor;

    const-string v3, "/data/log/ddar_log.txt"

    invoke-static {v1, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z

    .line 257
    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "fetchDumpStateInfo() successfullly read the log file"

    invoke-static {v2, v1, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 258
    const/4 v0, 0x1

    return v0
.end method

.method public static fileCopy(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)Z
    .registers 14
    .param p0, "destPFD"    # Landroid/os/ParcelFileDescriptor;
    .param p1, "srcFilePath"    # Ljava/lang/String;

    .line 184
    const-string v0, "DualDARDaemonProxy"

    const/4 v1, 0x0

    .line 186
    .local v1, "result":Z
    const/4 v2, 0x0

    .line 187
    .local v2, "fout":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 188
    .local v3, "fin":Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 190
    .local v4, "destFD":Ljava/io/FileDescriptor;
    const/4 v5, 0x0

    :try_start_7
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v6

    .line 193
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v6

    move-object v4, v6

    .line 194
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v2, v6

    .line 196
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 197
    .local v6, "srcFile":Ljava/io/File;
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v3, v7

    .line 198
    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    .line 200
    .local v7, "length":I
    nop

    .line 201
    const/4 v8, 0x0

    .line 202
    .local v8, "read":I
    :goto_2d
    if-eqz v7, :cond_42

    .line 203
    const/16 v9, 0x400

    .line 205
    .local v9, "buflen":I
    new-array v10, v9, [B

    .line 206
    .local v10, "buffer":[B
    if-le v7, v9, :cond_37

    .line 207
    sub-int/2addr v7, v9

    goto :goto_39

    .line 209
    :cond_37
    move v9, v7

    .line 210
    const/4 v7, 0x0

    .line 212
    :goto_39
    invoke-virtual {v3, v10, v5, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v11

    move v8, v11

    .line 213
    invoke-virtual {v2, v10, v5, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_41} :catch_5a
    .catchall {:try_start_7 .. :try_end_41} :catchall_58

    .line 214
    .end local v9    # "buflen":I
    .end local v10    # "buffer":[B
    goto :goto_2d

    .line 215
    :cond_42
    const/4 v1, 0x1

    .line 216
    .end local v8    # "read":I
    nop

    .line 224
    .end local v6    # "srcFile":Ljava/io/File;
    .end local v7    # "length":I
    nop

    .line 225
    :try_start_45
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 227
    nop

    .line 228
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_4c} :catch_4d

    .line 232
    :cond_4c
    :goto_4c
    goto :goto_7c

    .line 230
    :catch_4d
    move-exception v6

    .line 231
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v7, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 234
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_57
    goto :goto_7c

    .line 223
    :catchall_58
    move-exception v6

    goto :goto_7d

    .line 220
    :catch_5a
    move-exception v6

    .line 221
    .restart local v6    # "e":Ljava/lang/Exception;
    :try_start_5b
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v8, v5, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_64
    .catchall {:try_start_5b .. :try_end_64} :catchall_58

    .line 224
    .end local v6    # "e":Ljava/lang/Exception;
    if-eqz v2, :cond_6c

    .line 225
    :try_start_66
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_6c

    .line 230
    :catch_6a
    move-exception v6

    goto :goto_72

    .line 227
    :cond_6c
    :goto_6c
    if-eqz v3, :cond_4c

    .line 228
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_71} :catch_6a

    goto :goto_4c

    .line 231
    .restart local v6    # "e":Ljava/lang/Exception;
    :goto_72
    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v7, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_57

    .line 235
    .end local v6    # "e":Ljava/lang/Exception;
    :goto_7c
    return v1

    .line 224
    :goto_7d
    if-eqz v2, :cond_85

    .line 225
    :try_start_7f
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_85

    .line 230
    :catch_83
    move-exception v7

    goto :goto_8b

    .line 227
    :cond_85
    :goto_85
    if-eqz v3, :cond_95

    .line 228
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_7f .. :try_end_8a} :catch_83

    goto :goto_95

    .line 231
    .local v7, "e":Ljava/lang/Exception;
    :goto_8b
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v8, v5}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_96

    .line 232
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_95
    :goto_95
    nop

    .line 234
    :goto_96
    throw v6
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    monitor-enter v0

    .line 91
    :try_start_3
    sget-object v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    if-nez v1, :cond_e

    .line 92
    new-instance v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;

    .line 94
    :cond_e
    sget-object v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mInstance:Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    .line 90
    .end local p0    # "context":Landroid/content/Context;
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static getSystemPropertyBoolean(Ljava/lang/String;)Z
    .registers 6
    .param p0, "prop"    # Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    .line 123
    .local v0, "result":Z
    if-eqz p0, :cond_2d

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_2d

    .line 126
    :cond_a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 128
    .local v1, "identity":J
    :try_start_e
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 129
    .local v3, "value":Ljava/lang/String;
    const-string/jumbo v4, "true"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1d} :catch_24
    .catchall {:try_start_e .. :try_end_1d} :catchall_22

    move v0, v4

    .line 133
    .end local v3    # "value":Ljava/lang/String;
    :goto_1e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    goto :goto_37

    .line 133
    :catchall_22
    move-exception v3

    goto :goto_29

    .line 130
    :catch_24
    move-exception v3

    .line 131
    .local v3, "e":Ljava/lang/Exception;
    :try_start_25
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_22

    .end local v3    # "e":Ljava/lang/Exception;
    goto :goto_1e

    .line 133
    :goto_29
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 134
    throw v3

    .line 124
    .end local v1    # "identity":J
    :cond_2d
    :goto_2d
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string v3, "Invalid property"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 136
    :goto_37
    return v0
.end method

.method private static isDaemonRunning(Ljava/lang/String;)Z
    .registers 9
    .param p0, "service"    # Ljava/lang/String;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, "result":Z
    const/4 v1, 0x0

    const-string v2, "DualDARDaemonProxy"

    if-eqz p0, :cond_50

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    goto :goto_50

    .line 102
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init.svc."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 103
    .local v3, "key":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 105
    .local v4, "identity":J
    :try_start_23
    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 106
    .local v6, "value":Ljava/lang/String;
    if-eqz v6, :cond_39

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_30

    goto :goto_39

    .line 109
    :cond_30
    const-string/jumbo v1, "running"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    goto :goto_41

    .line 107
    :cond_39
    :goto_39
    const-string/jumbo v7, "isDaemonRunning() - Service not found"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v7, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_41} :catch_47
    .catchall {:try_start_23 .. :try_end_41} :catchall_45

    .line 114
    .end local v6    # "value":Ljava/lang/String;
    :goto_41
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    goto :goto_58

    .line 114
    :catchall_45
    move-exception v1

    goto :goto_4c

    .line 111
    :catch_47
    move-exception v1

    .line 112
    .local v1, "e":Ljava/lang/Exception;
    :try_start_48
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4b
    .catchall {:try_start_48 .. :try_end_4b} :catchall_45

    .end local v1    # "e":Ljava/lang/Exception;
    goto :goto_41

    .line 114
    :goto_4c
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 115
    throw v1

    .line 100
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "identity":J
    :cond_50
    :goto_50
    new-array v1, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "isDaemonRunning() - Invalid service name"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 117
    :goto_58
    return v0
.end method

.method private static setSystemPropertyBoolean(Ljava/lang/String;Z)V
    .registers 5
    .param p0, "prop"    # Ljava/lang/String;
    .param p1, "value"    # Z

    .line 140
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_23

    .line 143
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 145
    .local v0, "identity":J
    :try_start_d
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_1a
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 149
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    goto :goto_2d

    .line 149
    :catchall_18
    move-exception v2

    goto :goto_1f

    .line 146
    :catch_1a
    move-exception v2

    .line 147
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1b
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    .end local v2    # "e":Ljava/lang/Exception;
    goto :goto_14

    .line 149
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    throw v2

    .line 141
    .end local v0    # "identity":J
    :cond_23
    :goto_23
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string v2, "Invalid property"

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 152
    :goto_2d
    return-void
.end method

.method private startConnectorThread()V
    .registers 4

    .line 239
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "DualDARDaemonProxy"

    const-string/jumbo v2, "startConnectorThread() "

    invoke-static {v1, v2, v0}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 240
    new-instance v0, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;-><init>(Landroid/os/Looper;Lcom/android/server/knox/ddar/nativedaemon/INativeDaemonConnectorCallbacks;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    .line 241
    new-instance v0, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    invoke-direct {v0, v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    .line 242
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 243
    return-void
.end method

.method private startTimer()V
    .registers 5

    .line 385
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    .line 386
    new-instance v1, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;

    invoke-direct {v1, p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy$1;-><init>(Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 395
    return-void
.end method

.method private stopConnectorThread()V
    .registers 5

    .line 246
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string/jumbo v3, "stopConnectorThread() "

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 247
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    if-eqz v1, :cond_1a

    .line 248
    invoke-virtual {v1, v0}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->setIsListening(Z)V

    .line 249
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnectorThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 250
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    .line 252
    :cond_1a
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .registers 3

    .line 399
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_8

    .line 400
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 403
    :cond_8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    .line 404
    return-void
.end method

.method public clearSecret(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 519
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 520
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string v3, "clearSecret failed! Error: native interface not yet connected failed"

    invoke-static {v2, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 521
    return v1

    .line 525
    :cond_f
    :try_start_f
    const-string/jumbo v2, "key"

    const-string v3, "evict"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const-string v5, "all"

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    .line 526
    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_38

    if-eqz v0, :cond_37

    :cond_36
    move v1, v6

    :cond_37
    return v1

    .line 527
    :catch_38
    move-exception v0

    .line 528
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 529
    return v1
.end method

.method public dumpSecret(ILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "filePath"    # Ljava/lang/String;

    .line 534
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 535
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string v3, "dumpSecret failed! Error: native interface not yet connected failed"

    invoke-static {v2, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 536
    return v1

    .line 539
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpSecret() - userId : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", filePath : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy.DUALDAR"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 541
    :try_start_2f
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v2, "key"

    const-string/jumbo v3, "key_dump"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 542
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 541
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    .line 543
    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v0
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_55} :catch_59

    if-eqz v0, :cond_58

    :cond_57
    move v1, v5

    :cond_58
    return v1

    .line 544
    :catch_59
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 546
    return v1
.end method

.method public getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "clientLibPath"    # Ljava/lang/String;

    .line 471
    const-string v0, ""

    .line 472
    .local v0, "version":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string v2, "DualDARDaemonProxy"

    const/4 v3, 0x0

    if-nez v1, :cond_12

    .line 473
    new-array v1, v3, [Ljava/lang/Object;

    const-string/jumbo v3, "startClientLibrary failed! Error: native interface not yet connected failed"

    invoke-static {v2, v3, v1}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 474
    return-object v0

    .line 478
    :cond_12
    :try_start_12
    const-string/jumbo v4, "vendor_lib"

    const-string/jumbo v5, "version"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 479
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    const/4 v7, 0x1

    aput-object p1, v6, v7

    .line 478
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v1

    .line 480
    .local v1, "event":Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    const-string v4, "getClientLibraryVersion() got response from executeSync"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v5}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 481
    invoke-virtual {v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getResponseCode()I

    move-result v4

    if-ltz v4, :cond_3b

    .line 482
    invoke-virtual {v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    goto :goto_62

    .line 484
    :cond_3b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startClientLibrary failed! Error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v4, v3}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_62} :catch_64

    .line 489
    .end local v1    # "event":Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;
    :goto_62
    nop

    .line 490
    return-object v0

    .line 486
    :catch_64
    move-exception v1

    .line 487
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 488
    return-object v0
.end method

.method public loadClientLibrary(ILjava/lang/String;)Z
    .registers 9
    .param p1, "userId"    # I
    .param p2, "clientLibPath"    # Ljava/lang/String;

    .line 425
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 426
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string/jumbo v3, "loadClientLibrary failed! Error: native interface not yet connected failed"

    invoke-static {v2, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 427
    return v1

    .line 431
    :cond_10
    :try_start_10
    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "load"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 432
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    aput-object p2, v4, v5

    .line 431
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    .line 433
    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v0
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_34} :catch_38

    if-eqz v0, :cond_37

    :cond_36
    move v1, v5

    :cond_37
    return v1

    .line 434
    :catch_38
    move-exception v0

    .line 435
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    return v1
.end method

.method public onDaemonConnected()V
    .registers 4

    .line 553
    :try_start_0
    const-string v0, "DualDARDaemonProxy"

    const-string/jumbo v1, "onDaemonConnected()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 554
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_1b

    .line 555
    const/4 v1, 0x1

    :try_start_f
    iput-boolean v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mIsNotified:Z

    .line 556
    iget-object v1, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 557
    monitor-exit v0

    .line 560
    goto :goto_1f

    .line 557
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_18

    .end local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    :try_start_1a
    throw v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1b} :catch_1b

    .line 558
    .restart local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    :catch_1b
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1f
    return-void
.end method

.method public onDaemonDisconnected()Z
    .registers 2

    .line 565
    const/4 v0, 0x0

    return v0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .registers 5
    .param p1, "code"    # I
    .param p2, "raw"    # Ljava/lang/String;
    .param p3, "cooked"    # [Ljava/lang/String;

    .line 570
    const/4 v0, 0x0

    return v0
.end method

.method public onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 13
    .param p1, "callingUid"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "params"    # Landroid/os/Bundle;

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "res":Z
    const/4 v1, 0x0

    .line 265
    .local v1, "userId":I
    invoke-direct {p0, p1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->enforceCallingUser(I)V

    .line 268
    :try_start_5
    const-string v2, "DualDARDaemonProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onMessage() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v2, v3, v5}, Lcom/android/server/knox/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 269
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 270
    .local v2, "out":Landroid/os/Bundle;
    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x9

    const/4 v7, 0x1

    sparse-switch v5, :sswitch_data_268

    :cond_2f
    goto/16 :goto_a1

    :sswitch_31
    const-string v5, "UNLOAD_CLIENT_LIBRARY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v3, 0x5

    goto/16 :goto_a1

    :sswitch_3c
    const-string v5, "CLEAR_SECRET"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move v3, v6

    goto :goto_a1

    :sswitch_46
    const-string v5, "SET_DUALDAR_POLICY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v3, 0x3

    goto :goto_a1

    :sswitch_50
    const-string v5, "PUSH_SECRET"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/16 v3, 0x8

    goto :goto_a1

    :sswitch_5b
    const-string v5, "SET_EVICTION"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v3, 0x2

    goto :goto_a1

    :sswitch_65
    const-string v5, "START_DAEMON"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move v3, v4

    goto :goto_a1

    :sswitch_6f
    const-string v5, "GET_CLIENTLIB_VERSION"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v3, 0x7

    goto :goto_a1

    :sswitch_79
    const-string v5, "START_CLIENT_LIBRARY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v3, 0x6

    goto :goto_a1

    :sswitch_83
    const-string v5, "FETCH_DUMPSTATE_REQUEST"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/16 v3, 0xa

    goto :goto_a1

    :sswitch_8e
    const-string v5, "STOP_DAEMON"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move v3, v7

    goto :goto_a1

    :sswitch_98
    const-string v5, "LOAD_CLIENT_LIBRARY"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    const/4 v3, 0x4

    :goto_a1
    packed-switch v3, :pswitch_data_296

    goto/16 :goto_260

    .line 370
    :pswitch_a6
    const-string v3, "FSLOG_FILE_INFO"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ddar/FileInfo;

    .line 371
    .local v3, "fsLogFileInfo":Lcom/samsung/android/knox/ddar/FileInfo;
    invoke-direct {p0, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->fetchDumpStateInfo(Lcom/samsung/android/knox/ddar/FileInfo;)Z

    move-result v4

    move v0, v4

    .line 372
    const-string v4, "dual_dar_response"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto/16 :goto_260

    .line 361
    .end local v3    # "fsLogFileInfo":Lcom/samsung/android/knox/ddar/FileInfo;
    :pswitch_ba
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 362
    invoke-virtual {p0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->clearSecret(I)Z

    move-result v3

    move v0, v3

    .line 363
    const-string v3, "dual_dar_response"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    if-nez v0, :cond_260

    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v3, :cond_260

    .line 365
    const-string v3, "dual_dar_response_message"

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v4}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_260

    .line 352
    :pswitch_df
    const-string v3, "INNER_LAYER_SECRET"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 353
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/ddar/Secret;>;"
    const-string/jumbo v4, "user_id"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    move v1, v4

    .line 354
    const-string v4, "ORIGINATING_SECURE_CLIENT_ID"

    invoke-virtual {p3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->pushSecret(ILjava/util/List;Ljava/lang/String;)Z

    move-result v4

    move v0, v4

    .line 355
    const-string v4, "dual_dar_response"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    if-nez v0, :cond_260

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v4, :cond_260

    .line 357
    const-string v4, "dual_dar_response_message"

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_260

    .line 347
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/ddar/Secret;>;"
    :pswitch_110
    const-string v3, "CRYPTO_PATH"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 348
    .local v3, "path":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->getClientLibraryVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 349
    .local v4, "version":Ljava/lang/String;
    const-string v5, "dual_dar_response"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    goto/16 :goto_260

    .line 339
    .end local v3    # "path":Ljava/lang/String;
    .end local v4    # "version":Ljava/lang/String;
    :pswitch_121
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 340
    invoke-virtual {p0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startClientLibrary(I)Z

    move-result v3

    move v0, v3

    .line 341
    const-string v3, "dual_dar_response"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 342
    if-nez v0, :cond_260

    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v3, :cond_260

    .line 343
    const-string v3, "dual_dar_response_message"

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v4}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_260

    .line 331
    :pswitch_146
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->unloadClientLibrary(I)Z

    move-result v3

    move v0, v3

    .line 333
    const-string v3, "dual_dar_response"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 334
    if-nez v0, :cond_260

    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v3, :cond_260

    .line 335
    const-string v3, "dual_dar_response_message"

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v4}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_260

    .line 322
    :pswitch_16b
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 323
    const-string v3, "CRYPTO_PATH"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 324
    .local v3, "relayFilePath":Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->loadClientLibrary(ILjava/lang/String;)Z

    move-result v4

    move v0, v4

    .line 325
    const-string v4, "dual_dar_response"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 326
    if-nez v0, :cond_260

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v4, :cond_260

    .line 327
    const-string v4, "dual_dar_response_message"

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_260

    .line 308
    .end local v3    # "relayFilePath":Ljava/lang/String;
    :pswitch_196
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 309
    const-string v3, "CRYPTO_TYPE"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 310
    .local v3, "type":I
    invoke-virtual {p0, v1, v6}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicy(II)Z

    move-result v4

    move v0, v4

    .line 311
    if-nez v0, :cond_1bc

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v4, :cond_1bc

    .line 312
    const-string v4, "dual_dar_response_message"

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    goto/16 :goto_260

    .line 315
    :cond_1bc
    invoke-virtual {p0, v1, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->setDualDARPolicy(II)Z

    move-result v4

    move v0, v4

    .line 316
    const-string v4, "dual_dar_response"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 317
    if-nez v0, :cond_260

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v4, :cond_260

    .line 318
    const-string v4, "dual_dar_response_message"

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_260

    .line 299
    .end local v3    # "type":I
    :pswitch_1d9
    const-string/jumbo v3, "user_id"

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    move v1, v3

    .line 300
    const-string v3, "EVICT"

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 301
    .local v3, "evict":Z
    invoke-virtual {p0, v1, v3}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->setEviction(IZ)Z

    move-result v4

    move v0, v4

    .line 302
    const-string v4, "dual_dar_response"

    invoke-virtual {v2, v4, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 303
    if-nez v0, :cond_260

    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    if-eqz v4, :cond_260

    .line 304
    const-string v4, "dual_dar_response_message"

    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v5}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_260

    .line 294
    .end local v3    # "evict":Z
    :pswitch_203
    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->stopConnectorThread()V

    .line 295
    const-string/jumbo v3, "persist.sys.knox.dualdard"

    invoke-static {v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    .line 296
    const-string v3, "dual_dar_response"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 297
    goto :goto_260

    .line 272
    :pswitch_212
    iget-object v3, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_215
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_215} :catch_261

    .line 273
    :try_start_215
    const-string v5, "dualdard"

    invoke-static {v5}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonRunning(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_22e

    .line 274
    const-string v5, "DualDARDaemonProxy"

    const-string/jumbo v6, "start dualdard daemon ! "

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/android/server/knox/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 275
    const-string/jumbo v5, "persist.sys.knox.dualdard"

    invoke-static {v5, v7}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->setSystemPropertyBoolean(Ljava/lang/String;Z)V

    goto :goto_237

    .line 277
    :cond_22e
    const-string v5, "DualDARDaemonProxy"

    const-string v6, "dualdard daemon already running! "

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v8}, Lcom/android/server/knox/ddar/DDLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 279
    :goto_237
    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startConnectorThread()V

    .line 280
    invoke-direct {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->startTimer()V

    .line 281
    :goto_23d
    iget-boolean v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mIsNotified:Z

    if-nez v5, :cond_247

    .line 282
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_23d

    .line 284
    :cond_247
    iput-boolean v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mIsNotified:Z

    .line 285
    iget-boolean v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->isDaemonConnectionFailed:Z

    if-nez v5, :cond_253

    .line 286
    const-string v4, "dual_dar_response"

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_258

    .line 288
    :cond_253
    const-string v5, "dual_dar_response"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    :goto_258
    invoke-virtual {p0}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->cancelTimer()V

    .line 291
    monitor-exit v3

    .line 292
    goto :goto_260

    .line 291
    :catchall_25d
    move-exception v4

    monitor-exit v3
    :try_end_25f
    .catchall {:try_start_215 .. :try_end_25f} :catchall_25d

    .end local v0    # "res":Z
    .end local v1    # "userId":I
    .end local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    .end local p1    # "callingUid":I
    .end local p2    # "command":Ljava/lang/String;
    .end local p3    # "params":Landroid/os/Bundle;
    :try_start_25f
    throw v4
    :try_end_260
    .catch Ljava/lang/Exception; {:try_start_25f .. :try_end_260} :catch_261

    .line 376
    .restart local v0    # "res":Z
    .restart local v1    # "userId":I
    .restart local p0    # "this":Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;
    .restart local p1    # "callingUid":I
    .restart local p2    # "command":Ljava/lang/String;
    .restart local p3    # "params":Landroid/os/Bundle;
    :cond_260
    :goto_260
    return-object v2

    .line 377
    .end local v2    # "out":Landroid/os/Bundle;
    :catch_261
    move-exception v2

    .line 378
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 380
    .end local v2    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    return-object v2

    nop

    :sswitch_data_268
    .sparse-switch
        -0x74c33360 -> :sswitch_98
        -0x41169e9f -> :sswitch_8e
        -0x39e32f38 -> :sswitch_83
        -0x398c663c -> :sswitch_79
        0x432f76a -> :sswitch_6f
        0xd454d21 -> :sswitch_65
        0x132d527c -> :sswitch_5b
        0x205d4775 -> :sswitch_50
        0x2b3c5855 -> :sswitch_46
        0x2dada502 -> :sswitch_3c
        0x4d55a167 -> :sswitch_31
    .end sparse-switch

    :pswitch_data_296
    .packed-switch 0x0
        :pswitch_212
        :pswitch_203
        :pswitch_1d9
        :pswitch_196
        :pswitch_16b
        :pswitch_146
        :pswitch_121
        :pswitch_110
        :pswitch_df
        :pswitch_ba
        :pswitch_a6
    .end packed-switch
.end method

.method public pushSecret(ILjava/util/List;Ljava/lang/String;)Z
    .registers 16
    .param p1, "userId"    # I
    .param p3, "originatingSecureClientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/ddar/Secret;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 494
    .local p2, "secretList":Ljava/util/List;, "Ljava/util/List<Lcom/samsung/android/knox/ddar/Secret;>;"
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string v1, "DualDARDaemonProxy"

    const/4 v2, 0x0

    if-nez v0, :cond_10

    .line 495
    new-array v0, v2, [Ljava/lang/Object;

    const-string/jumbo v3, "pushSecret failed! Error: native interface not yet connected failed"

    invoke-static {v1, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 496
    return v2

    .line 499
    :cond_10
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_66

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/ddar/Secret;

    .line 501
    .local v3, "secret":Lcom/samsung/android/knox/ddar/Secret;
    :try_start_21
    iget-object v5, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mSecureClientForInAPI:Lcom/samsung/android/knox/ddar/securesession/SecureClient;

    iget-object v6, v3, Lcom/samsung/android/knox/ddar/Secret;->data:[B

    invoke-virtual {v5, p3, v6}, Lcom/samsung/android/knox/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v5

    .line 502
    .local v5, "decData":[B
    invoke-static {v5}, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->byteArrayToHex([B)Ljava/lang/String;

    move-result-object v6

    .line 503
    .local v6, "hexMk":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const-string/jumbo v8, "key"

    const-string/jumbo v9, "install"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v2

    iget-object v11, v3, Lcom/samsung/android/knox/ddar/Secret;->alias:Ljava/lang/String;

    aput-object v11, v10, v4

    const/4 v4, 0x2

    aput-object v6, v10, v4

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    .line 504
    invoke-static {v5}, Lcom/samsung/android/knox/ddar/securesession/Wiper;->wipe([B)V

    .line 505
    iget-object v4, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v4}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v4

    if-nez v4, :cond_5f

    .line 506
    const-string/jumbo v0, "pushSecret failed !"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v4}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_5e} :catch_61

    .line 507
    return v2

    .line 512
    .end local v5    # "decData":[B
    .end local v6    # "hexMk":Ljava/lang/String;
    :cond_5f
    nop

    .line 513
    .end local v3    # "secret":Lcom/samsung/android/knox/ddar/Secret;
    goto :goto_14

    .line 509
    .restart local v3    # "secret":Lcom/samsung/android/knox/ddar/Secret;
    :catch_61
    move-exception v0

    .line 510
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 511
    return v2

    .line 515
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v3    # "secret":Lcom/samsung/android/knox/ddar/Secret;
    :cond_66
    return v4
.end method

.method public setDualDARPolicy(II)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "type"    # I

    .line 416
    sget-object v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    .line 417
    .local v0, "epm":Lcom/android/server/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/EnterprisePartitionManager;->setDualDARPolicy(II)Z

    move-result v1

    if-nez v1, :cond_18

    .line 418
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy"

    const-string/jumbo v4, "setDualDARPolicy failed!"

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 419
    return v1

    .line 421
    :cond_18
    const/4 v1, 0x1

    return v1
.end method

.method public setEviction(IZ)Z
    .registers 8
    .param p1, "userId"    # I
    .param p2, "evict"    # Z

    .line 407
    sget-object v0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/android/server/EnterprisePartitionManager;

    move-result-object v0

    .line 408
    .local v0, "epm":Lcom/android/server/EnterprisePartitionManager;
    invoke-virtual {v0, p1, p2}, Lcom/android/server/EnterprisePartitionManager;->setEviction(IZ)Z

    move-result v1

    if-nez v1, :cond_18

    .line 409
    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARDaemonProxy"

    const-string/jumbo v4, "setEviction failed!"

    invoke-static {v3, v4, v2}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 410
    return v1

    .line 412
    :cond_18
    const/4 v1, 0x1

    return v1
.end method

.method public startClientLibrary(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 456
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 457
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string/jumbo v3, "startClientLibrary failed! Error: native interface not yet connected failed"

    invoke-static {v2, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 458
    return v1

    .line 462
    :cond_10
    :try_start_10
    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "start"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    .line 463
    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_3a} :catch_3e

    if-eqz v0, :cond_3d

    :cond_3c
    move v1, v6

    :cond_3d
    return v1

    .line 464
    :catch_3e
    move-exception v0

    .line 465
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 466
    return v1
.end method

.method public unloadClientLibrary(I)Z
    .registers 9
    .param p1, "userId"    # I

    .line 441
    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->mConnector:Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 442
    new-array v0, v1, [Ljava/lang/Object;

    const-string v2, "DualDARDaemonProxy"

    const-string/jumbo v3, "unloadClientLibrary failed! Error: native interface not yet connected failed"

    invoke-static {v2, v3, v0}, Lcom/android/server/knox/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 443
    return v1

    .line 447
    :cond_10
    :try_start_10
    const-string/jumbo v2, "vendor_lib"

    const-string/jumbo v3, "unload"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/server/knox/ddar/nativedaemon/DualDarDaemonConnector;->executeSync(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    .line 448
    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassOk()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/server/knox/ddar/nativedaemon/DualDARDaemonProxy;->event:Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;

    invoke-virtual {v0}, Lcom/android/server/knox/ddar/nativedaemon/NativeDaemonEvent;->isClassContinue()Z

    move-result v0
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_31} :catch_35

    if-eqz v0, :cond_34

    :cond_33
    move v1, v4

    :cond_34
    return v1

    .line 449
    :catch_35
    move-exception v0

    .line 450
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 451
    return v1
.end method
