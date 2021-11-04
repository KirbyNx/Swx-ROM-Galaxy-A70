.class public Lcom/android/server/locksettings/LockSettingsServiceLog;
.super Ljava/lang/Object;
.source "LockSettingsServiceLog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;,
        Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.sec.android.log.sp4xkeu9ef"

.field private static final BASE_DIR:Ljava/lang/String; = "/data/log/LockSettingsLog"

.field private static final DEBUG:Z = true

.field private static final ERROR_CODE:[Ljava/lang/String;

.field private static final MAX_DUMP_LINE:J = 0x7d0L

.field private static final MAX_LOG_SIZE:J = 0x80000L

.field public static final MAX_TYPE_COUNT:I = 0x4

.field private static final REPORT_ERROR_INTENT:Ljava/lang/String; = "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

.field private static final SERVICE_ID:Ljava/lang/String; = "sp4xkeu9ef"

.field private static final TAG:Ljava/lang/String; = "LockSettingsLog"

.field public static final TYPE_ENROLL:I = 0x0

.field public static final TYPE_KEYERR:I = 0x2

.field public static final TYPE_RESTORE:I = 0x3

.field public static final TYPE_VERIFY:I = 0x1

.field private static final UPLOAD_MO:Ljava/lang/String; = "uploadMO"


# instance fields
.field private BUILD_ID:Ljava/lang/String;

.field private EVENT_ID:Ljava/lang/String;

.field private final F_LOCK:Ljava/util/concurrent/locks/Lock;

.field private LOG_FILE:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mFileWriteLock:Ljava/lang/Object;

.field private mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

.field private saveLssLog:Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 70
    const-string v0, "Enroll"

    const-string v1, "Verify"

    const-string v2, "KeystoreErr"

    const-string v3, "Restore"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/locksettings/LockSettingsServiceLog;->ERROR_CODE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;

    .line 53
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->BUILD_ID:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->EVENT_ID:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->saveLssLog:Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;

    .line 57
    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    .line 65
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    .line 77
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    .line 80
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->init()V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/locksettings/LockSettingsServiceLog;)[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsServiceLog;

    .line 40
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/locksettings/LockSettingsServiceLog;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsServiceLog;
    .param p1, "x1"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/locksettings/LockSettingsServiceLog;I)Ljava/lang/String;
    .registers 3
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsServiceLog;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->zipLogFile(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsServiceLog;
    .param p1, "x1"    # I

    .line 40
    invoke-direct {p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog;->sendToDiagmon(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/util/concurrent/locks/Lock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsServiceLog;

    .line 40
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsServiceLog;

    .line 40
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/locksettings/LockSettingsServiceLog;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/locksettings/LockSettingsServiceLog;

    .line 40
    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->makeLogTime()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurTime()Ljava/lang/String;
    .registers 3

    .line 124
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 125
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 126
    const-string v1, "%Y%m%d_%H%M%S"

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private makeLogTime()Ljava/lang/String;
    .registers 7

    .line 130
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 131
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 132
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 133
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v1, v5

    .line 134
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    .line 135
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    .line 136
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    .line 137
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    .line 138
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    .line 132
    const-string v2, "%02d-%02d %02d:%02d:%02d.%03d "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private sendToDiagmon(I)V
    .registers 15
    .param p1, "type"    # I

    .line 186
    const-string v0, "1"

    const-string v1, "IntentOnly"

    const-string v2, "Ext"

    const-string v3, "CFailLogUpload"

    const-string v4, "DiagMon"

    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "samsung_errorlog_agree"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 187
    .local v5, "errorlog_agree":I
    const-string v6, "LockSettingsLog"

    const/4 v7, 0x1

    if-eq v5, v7, :cond_24

    .line 188
    const-string/jumbo v0, "sendToDiagmon failed. errorlog_agree is not true!!"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void

    .line 191
    :cond_24
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    if-nez v7, :cond_2f

    .line 192
    const-string/jumbo v0, "sendToDiagmon failed. filename is null!!"

    invoke-static {v6, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    return-void

    .line 195
    :cond_2f
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "send broadcast intent to diagmon : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.sec.android.diagmonagent.intent.REPORT_ERROR_V2"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 198
    .local v7, "i":Landroid/content/Intent;
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v8, "uploadMO":Landroid/os/Bundle;
    const/16 v9, 0x20

    invoke-virtual {v7, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 202
    :try_start_57
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v8, v4, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 204
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10, v3, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "ServiceID"

    const-string/jumbo v12, "sp4xkeu9ef"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v10, v2, v11}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 207
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "ClientV"

    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->BUILD_ID:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "UiMode"

    const-string v12, "0"

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "ResultCode"

    sget-object v12, Lcom/android/server/locksettings/LockSettingsServiceLog;->ERROR_CODE:[Ljava/lang/String;

    aget-object v12, v12, p1

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "WifiOnlyFeature"

    invoke-virtual {v10, v11, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    const-string v11, "EventID"

    iget-object v12, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->EVENT_ID:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "Description"

    sget-object v11, Lcom/android/server/locksettings/LockSettingsServiceLog;->ERROR_CODE:[Ljava/lang/String;

    aget-object v11, v11, p1

    invoke-virtual {v2, v10, v11}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v1, v10}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 214
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v10, "IntentOnlyMode"

    invoke-virtual {v2, v10, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "Agree"

    const-string v10, "D"

    invoke-virtual {v0, v2, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-virtual {v8, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LogPath"

    iget-object v2, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string/jumbo v0, "uploadMO"

    invoke-virtual {v7, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 219
    invoke-virtual {v7, v9}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 220
    const-string v0, "com.sec.android.diagmonagent"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_159} :catch_15a

    .line 225
    goto :goto_160

    .line 223
    :catch_15a
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Exception while sending a bug report."

    invoke-static {v6, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_160
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->LOG_FILE:Ljava/lang/String;

    .line 227
    return-void
.end method

.method private zipLogFile(I)Ljava/lang/String;
    .registers 14
    .param p1, "type"    # I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/log/LockSettingsLog_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/locksettings/LockSettingsServiceLog;->getCurTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "zipFile":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mFileWriteLock:Ljava/lang/Object;

    monitor-enter v1

    .line 145
    const/4 v2, 0x0

    .line 146
    .local v2, "fin":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 147
    .local v3, "fout":Ljava/io/FileOutputStream;
    const/4 v4, 0x0

    .line 149
    .local v4, "gout":Ljava/util/zip/ZipOutputStream;
    const/16 v5, 0x800

    :try_start_22
    new-array v5, v5, [B
    :try_end_24
    .catchall {:try_start_22 .. :try_end_24} :catchall_ef

    .line 152
    .local v5, "buffer":[B
    :try_start_24
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 153
    new-instance v6, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v6, v3}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v4, v6

    .line 155
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_31
    const/4 v7, 0x4

    if-ge v6, v7, :cond_8d

    .line 156
    if-ne p1, v6, :cond_3f

    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getUploadFileName()Ljava/lang/String;

    move-result-object v7

    goto :goto_47

    :cond_3f
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v7, v7, v6

    invoke-virtual {v7}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v7

    .line 157
    .local v7, "filename":Ljava/lang/String;
    :goto_47
    if-eqz v7, :cond_8a

    .line 158
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v8, "file":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_8a

    .line 160
    new-instance v9, Ljava/util/zip/ZipEntry;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/android/server/locksettings/LockSettingsServiceLog;->ERROR_CODE:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ".log"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    .line 162
    const/4 v9, 0x0

    .line 163
    .local v9, "len":I
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v10

    .line 164
    :goto_78
    invoke-virtual {v2, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    move v9, v10

    if-lez v10, :cond_84

    .line 165
    const/4 v10, 0x0

    invoke-virtual {v4, v5, v10, v9}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_78

    .line 167
    :cond_84
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 168
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->closeEntry()V
    :try_end_8a
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_8a} :catch_a1
    .catchall {:try_start_24 .. :try_end_8a} :catchall_9f

    .line 155
    .end local v7    # "filename":Ljava/lang/String;
    .end local v8    # "file":Ljava/io/File;
    .end local v9    # "len":I
    :cond_8a
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    .line 176
    .end local v6    # "i":I
    :cond_8d
    if-eqz v2, :cond_94

    :try_start_8f
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93
    .catchall {:try_start_8f .. :try_end_92} :catchall_ef

    goto :goto_94

    :catch_93
    move-exception v6

    .line 177
    :cond_94
    :goto_94
    :try_start_94
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_97
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_97} :catch_98
    .catchall {:try_start_94 .. :try_end_97} :catchall_ef

    goto :goto_99

    :catch_98
    move-exception v6

    .line 178
    :goto_99
    :try_start_99
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_9c
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_9c} :catch_9d
    .catchall {:try_start_99 .. :try_end_9c} :catchall_ef

    goto :goto_cd

    :catch_9d
    move-exception v6

    .line 179
    goto :goto_cd

    .line 176
    :catchall_9f
    move-exception v6

    goto :goto_d8

    .line 172
    :catch_a1
    move-exception v6

    .line 173
    .local v6, "e":Ljava/io/IOException;
    const/4 v0, 0x0

    .line 174
    :try_start_a3
    const-string v7, "LockSettingsLog"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "zipLogFile - error"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ba
    .catchall {:try_start_a3 .. :try_end_ba} :catchall_9f

    .line 176
    .end local v6    # "e":Ljava/io/IOException;
    if-eqz v2, :cond_c1

    :try_start_bc
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c0
    .catchall {:try_start_bc .. :try_end_bf} :catchall_ef

    goto :goto_c1

    :catch_c0
    move-exception v6

    .line 177
    :cond_c1
    :goto_c1
    if-eqz v4, :cond_c8

    :try_start_c3
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_c6
    .catch Ljava/io/IOException; {:try_start_c3 .. :try_end_c6} :catch_c7
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_ef

    goto :goto_c8

    :catch_c7
    move-exception v6

    .line 178
    :cond_c8
    :goto_c8
    if-eqz v3, :cond_cd

    :try_start_ca
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_cd
    .catch Ljava/io/IOException; {:try_start_ca .. :try_end_cd} :catch_9d
    .catchall {:try_start_ca .. :try_end_cd} :catchall_ef

    .line 180
    :cond_cd
    :goto_cd
    :try_start_cd
    const-string v6, "LockSettingsLog"

    const-string/jumbo v7, "zipLogFile - finish"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    nop

    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "gout":Ljava/util/zip/ZipOutputStream;
    .end local v5    # "buffer":[B
    monitor-exit v1
    :try_end_d7
    .catchall {:try_start_cd .. :try_end_d7} :catchall_ef

    .line 182
    return-object v0

    .line 176
    .restart local v2    # "fin":Ljava/io/FileInputStream;
    .restart local v3    # "fout":Ljava/io/FileOutputStream;
    .restart local v4    # "gout":Ljava/util/zip/ZipOutputStream;
    .restart local v5    # "buffer":[B
    :goto_d8
    if-eqz v2, :cond_df

    :try_start_da
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de
    .catchall {:try_start_da .. :try_end_dd} :catchall_ef

    goto :goto_df

    :catch_de
    move-exception v7

    .line 177
    :cond_df
    :goto_df
    if-eqz v4, :cond_e6

    :try_start_e1
    invoke-virtual {v4}, Ljava/util/zip/ZipOutputStream;->close()V
    :try_end_e4
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_e4} :catch_e5
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_ef

    goto :goto_e6

    :catch_e5
    move-exception v7

    .line 178
    :cond_e6
    :goto_e6
    if-eqz v3, :cond_ed

    :try_start_e8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_eb
    .catch Ljava/io/IOException; {:try_start_e8 .. :try_end_eb} :catch_ec
    .catchall {:try_start_e8 .. :try_end_eb} :catchall_ef

    goto :goto_ed

    :catch_ec
    move-exception v7

    .line 179
    :cond_ed
    :goto_ed
    nop

    .end local v0    # "zipFile":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsServiceLog;
    .end local p1    # "type":I
    :try_start_ee
    throw v6

    .line 181
    .end local v2    # "fin":Ljava/io/FileInputStream;
    .end local v3    # "fout":Ljava/io/FileOutputStream;
    .end local v4    # "gout":Ljava/util/zip/ZipOutputStream;
    .end local v5    # "buffer":[B
    .restart local v0    # "zipFile":Ljava/lang/String;
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsServiceLog;
    .restart local p1    # "type":I
    :catchall_ef
    move-exception v2

    monitor-exit v1
    :try_end_f1
    .catchall {:try_start_ee .. :try_end_f1} :catchall_ef

    throw v2
.end method


# virtual methods
.method public addLog(ILjava/lang/String;)V
    .registers 5
    .param p1, "type"    # I
    .param p2, "contents"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v0, v0, p1

    if-nez v0, :cond_1e

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLogFile is null. type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void

    .line 96
    :cond_1e
    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->saveLssLog:Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;

    .line 97
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog$SaveLssLog;->start()V

    .line 98
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 230
    const-string v0, "LockSettingsLog"

    const-string v1, "dump start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const/4 v1, 0x0

    .line 233
    .local v1, "line":Ljava/lang/String;
    const/4 v2, 0x0

    .line 234
    .local v2, "error":Ljava/lang/String;
    const/4 v3, 0x0

    .line 236
    .local v3, "filename":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_b
    const/4 v5, 0x4

    if-ge v4, v5, :cond_dd

    .line 237
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\n----------------- Start "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/locksettings/LockSettingsServiceLog;->ERROR_CODE:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " state -----------------"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    .line 241
    iget-object v5, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;->getLastFileName()Ljava/lang/String;

    move-result-object v3

    .line 242
    if-nez v3, :cond_55

    .line 243
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "<No "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/locksettings/LockSettingsServiceLog;->ERROR_CODE:[Ljava/lang/String;

    aget-object v6, v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " file>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 245
    goto/16 :goto_cb

    .line 248
    :cond_55
    const/4 v5, 0x0

    .line 250
    .local v5, "lineCount":I
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 252
    :try_start_5b
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v8, "r"

    invoke-direct {v7, v3, v8}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/FileNotFoundException; {:try_start_5b .. :try_end_63} :catch_9c
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_63} :catch_94
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_63} :catch_8c
    .catchall {:try_start_5b .. :try_end_63} :catchall_8a

    .line 253
    .local v7, "file":Ljava/io/RandomAccessFile;
    :cond_63
    :try_start_63
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    if-eqz v8, :cond_7a

    .line 254
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 255
    const/4 v1, 0x0

    .line 256
    add-int/lit8 v5, v5, 0x1

    int-to-long v8, v5

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_63

    .line 257
    const-string v8, "<MAX Line reached>"
    :try_end_79
    .catchall {:try_start_63 .. :try_end_79} :catchall_80

    move-object v2, v8

    .line 261
    :cond_7a
    :try_start_7a
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7d
    .catch Ljava/io/FileNotFoundException; {:try_start_7a .. :try_end_7d} :catch_9c
    .catch Ljava/io/IOException; {:try_start_7a .. :try_end_7d} :catch_94
    .catch Ljava/lang/Exception; {:try_start_7a .. :try_end_7d} :catch_8c
    .catchall {:try_start_7a .. :try_end_7d} :catchall_8a

    .line 271
    .end local v7    # "file":Ljava/io/RandomAccessFile;
    if-eqz v2, :cond_aa

    .line 272
    goto :goto_a4

    .line 252
    .restart local v7    # "file":Ljava/io/RandomAccessFile;
    :catchall_80
    move-exception v8

    :try_start_81
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_85

    goto :goto_89

    :catchall_85
    move-exception v9

    :try_start_86
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "error":Ljava/lang/String;
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "i":I
    .end local v5    # "lineCount":I
    .end local p0    # "this":Lcom/android/server/locksettings/LockSettingsServiceLog;
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :goto_89
    throw v8
    :try_end_8a
    .catch Ljava/io/FileNotFoundException; {:try_start_86 .. :try_end_8a} :catch_9c
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8a} :catch_94
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_8c
    .catchall {:try_start_86 .. :try_end_8a} :catchall_8a

    .line 271
    .end local v7    # "file":Ljava/io/RandomAccessFile;
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "error":Ljava/lang/String;
    .restart local v3    # "filename":Ljava/lang/String;
    .restart local v4    # "i":I
    .restart local v5    # "lineCount":I
    .restart local p0    # "this":Lcom/android/server/locksettings/LockSettingsServiceLog;
    .restart local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_8a
    move-exception v6

    goto :goto_cf

    .line 267
    :catch_8c
    move-exception v7

    .line 268
    .local v7, "e":Ljava/lang/Exception;
    :try_start_8d
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 269
    const-string v8, "<Unknown Error>"

    move-object v2, v8

    .line 271
    .end local v7    # "e":Ljava/lang/Exception;
    goto :goto_a4

    .line 264
    :catch_94
    move-exception v7

    .line 265
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 266
    const-string v8, "<IO Error>"

    move-object v2, v8

    .line 271
    .end local v7    # "e":Ljava/io/IOException;
    goto :goto_a4

    .line 261
    :catch_9c
    move-exception v7

    .line 262
    .local v7, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v7}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 263
    const-string v8, "<File not found>"
    :try_end_a2
    .catchall {:try_start_8d .. :try_end_a2} :catchall_8a

    move-object v2, v8

    .line 271
    .end local v7    # "e":Ljava/io/FileNotFoundException;
    nop

    .line 272
    :goto_a4
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_aa
    iget-object v7, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 276
    nop

    .line 278
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "----------------- End "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/locksettings/LockSettingsServiceLog;->ERROR_CODE:[Ljava/lang/String;

    aget-object v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 279
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 236
    .end local v5    # "lineCount":I
    :goto_cb
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_b

    .line 271
    .restart local v5    # "lineCount":I
    :goto_cf
    if-eqz v2, :cond_d7

    .line 272
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 273
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_d7
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->F_LOCK:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 276
    throw v6

    .line 281
    .end local v4    # "i":I
    .end local v5    # "lineCount":I
    :cond_dd
    const-string v4, "dump end"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    return-void
.end method

.method public init()V
    .registers 5

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/4 v1, 0x4

    if-ge v0, v1, :cond_14

    .line 86
    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    new-instance v2, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    sget-object v3, Lcom/android/server/locksettings/LockSettingsServiceLog;->ERROR_CODE:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-direct {v2, v3}, Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;-><init>(Ljava/lang/String;)V

    aput-object v2, v1, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 88
    .end local v0    # "i":I
    :cond_14
    return-void
.end method

.method public uploadLogFile(I)V
    .registers 4
    .param p1, "type"    # I

    .line 101
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsServiceLog;->mLogFile:[Lcom/android/server/locksettings/LockSettingsServiceLog$LogFileManager;

    aget-object v0, v0, p1

    if-nez v0, :cond_1e

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mLogFile is null. type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LockSettingsLog"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void

    .line 106
    :cond_1e
    new-instance v0, Lcom/android/server/locksettings/LockSettingsServiceLog$1;

    invoke-direct {v0, p0, p1}, Lcom/android/server/locksettings/LockSettingsServiceLog$1;-><init>(Lcom/android/server/locksettings/LockSettingsServiceLog;I)V

    .line 120
    invoke-virtual {v0}, Lcom/android/server/locksettings/LockSettingsServiceLog$1;->start()V

    .line 121
    return-void
.end method
