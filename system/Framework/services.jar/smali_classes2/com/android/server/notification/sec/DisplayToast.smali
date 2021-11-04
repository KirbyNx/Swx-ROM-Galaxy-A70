.class public Lcom/android/server/notification/sec/DisplayToast;
.super Ljava/lang/Object;
.source "DisplayToast.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/sec/DisplayToast$ToastDumpReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_MOBILE_DATA_FILES:Ljava/lang/String; = "com.samsung.android.mobiledoctor.DELETEMOBILEDATAFILES"

.field private static final ACTION_GET_MOBILE_DATA_FILES:Ljava/lang/String; = "com.samsung.android.mobiledoctor.GETMOBILEDATAFILES"

.field private static final ACTION_REQUEST_INTERNET_LOG:Ljava/lang/String; = "com.samsung.android.action.ACTION_REQUEST_INTERNET_LOG"

.field private static final ACTION_TOAST_DUMP_LOG:Ljava/lang/String; = "com.samsung.android.action.ACTION_TOAST_DUMP_LOG"

.field private static final DATE_FORMAT:Ljava/lang/String; = "yy-MM-dd_HH:mm:ss"

.field private static final ENABLE_SAVE_FILE:Z = false

.field private static final EXTRA_TOAST_DUMP_CALLER_PACKAGE:Ljava/lang/String; = "sem_toast_caller_pkg"

.field private static final EXTRA_TOAST_DUMP_CALLER_UID:Ljava/lang/String; = "sem_toast_caller_uid"

.field private static final EXTRA_TOAST_DUMP_DATE:Ljava/lang/String; = "sem_toast_date"

.field private static final EXTRA_TOAST_DUMP_MESSAGE:Ljava/lang/String; = "sem_toast_message"

.field private static final LOG_FILE_PATH:Ljava/lang/String; = "/data/log/ToastLog.txt"

.field private static final MAX_TOAST_DUMP_COUNT:I = 0x1e

.field private static final MAX_TOAST_MESSAGE_LENGTH:I = 0x64

.field private static final TAG:Ljava/lang/String; = "ToastLog"

.field private static sLogMsg:Lcom/android/server/notification/sec/DisplayToast;


# instance fields
.field filter:Landroid/content/IntentFilter;

.field private logList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mMessage:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field mReceiver:Lcom/android/server/notification/sec/DisplayToast$ToastDumpReceiver;

.field private mUid:I

.field private outputContents:Ljava/lang/StringBuffer;

.field private sdfNow:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    new-instance v0, Lcom/android/server/notification/sec/DisplayToast;

    invoke-direct {v0}, Lcom/android/server/notification/sec/DisplayToast;-><init>()V

    sput-object v0, Lcom/android/server/notification/sec/DisplayToast;->sLogMsg:Lcom/android/server/notification/sec/DisplayToast;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    .line 58
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->outputContents:Ljava/lang/StringBuffer;

    .line 59
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yy-MM-dd_HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/notification/sec/DisplayToast;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/notification/sec/DisplayToast;

    .line 35
    iget-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/notification/sec/DisplayToast;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/notification/sec/DisplayToast;

    .line 35
    invoke-direct {p0}, Lcom/android/server/notification/sec/DisplayToast;->dump()V

    return-void
.end method

.method private addToLogList(Ljava/lang/String;)V
    .registers 5
    .param p1, "log"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x1e

    if-ne v1, v2, :cond_19

    .line 68
    iget-object v1, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 71
    :cond_19
    iget-object v1, p0, Lcom/android/server/notification/sec/DisplayToast;->logList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    :goto_1e
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_20
    move-exception v1

    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v1
.end method

.method private dump()V
    .registers 2

    .line 110
    new-instance v0, Lcom/android/server/notification/sec/DisplayToast$1;

    invoke-direct {v0, p0}, Lcom/android/server/notification/sec/DisplayToast$1;-><init>(Lcom/android/server/notification/sec/DisplayToast;)V

    .line 126
    invoke-virtual {v0}, Lcom/android/server/notification/sec/DisplayToast$1;->start()V

    .line 127
    return-void
.end method

.method public static out(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 5
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "context"    # Landroid/content/Context;

    .line 62
    sget-object v0, Lcom/android/server/notification/sec/DisplayToast;->sLogMsg:Lcom/android/server/notification/sec/DisplayToast;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/notification/sec/DisplayToast;->outFile(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    .line 63
    return-void
.end method

.method private outFile(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "context"    # Landroid/content/Context;

    .line 77
    iput-object p1, p0, Lcom/android/server/notification/sec/DisplayToast;->mPackageName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/android/server/notification/sec/DisplayToast;->mMessage:Ljava/lang/String;

    .line 79
    iput p3, p0, Lcom/android/server/notification/sec/DisplayToast;->mUid:I

    .line 80
    iput-object p4, p0, Lcom/android/server/notification/sec/DisplayToast;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/notification/sec/DisplayToast;->sdfNow:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 106
    .local v2, "strNow":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/server/notification/sec/DisplayToast;->sendIntentForToastDumpLog(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method private sendIntentForToastDumpLog(Ljava/lang/String;)V
    .registers 7
    .param p1, "date"    # Ljava/lang/String;

    .line 142
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 143
    .local v0, "broadcastIntent":Landroid/content/Intent;
    const-string v1, "com.samsung.android.action.ACTION_TOAST_DUMP_LOG"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string/jumbo v1, "sem_toast_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    iget-object v1, p0, Lcom/android/server/notification/sec/DisplayToast;->mPackageName:Ljava/lang/String;

    const-string/jumbo v2, "sem_toast_caller_pkg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    iget v1, p0, Lcom/android/server/notification/sec/DisplayToast;->mUid:I

    const-string/jumbo v2, "sem_toast_caller_uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/android/server/notification/sec/DisplayToast;->mMessage:Ljava/lang/String;

    .line 150
    .local v1, "msg":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-le v2, v3, :cond_33

    .line 151
    iget-object v2, p0, Lcom/android/server/notification/sec/DisplayToast;->mMessage:Ljava/lang/String;

    const/4 v3, 0x0

    const/16 v4, 0x63

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 153
    :cond_33
    const-string/jumbo v2, "sem_toast_message"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    :try_start_39
    iget-object v2, p0, Lcom/android/server/notification/sec/DisplayToast;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_3f

    .line 159
    goto :goto_48

    .line 157
    :catch_3f
    move-exception v2

    .line 158
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ToastLog"

    const-string/jumbo v4, "sendBroadcast fails!!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_48
    return-void
.end method
