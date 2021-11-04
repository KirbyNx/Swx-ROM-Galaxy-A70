.class Lcom/android/server/DockObserver$logRecent;
.super Ljava/lang/Object;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DockObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "logRecent"
.end annotation


# static fields
.field private static final LOG_TYPE_REPORT:I = 0x1

.field private static final LOG_TYPE_UEVENT:I = 0x0

.field private static final MAX_LOG_COUNT:I = 0xa


# instance fields
.field private mCurrentReportLogIndex:I

.field private mCurrentUeventLogIndex:I

.field report:[I

.field reportTime:[J

.field reportUsbpdIds:[Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/DockObserver;

.field uEventTime:[J

.field uEventType:[I

.field uEventUsbpdIds:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .registers 3

    .line 131
    iput-object p1, p0, Lcom/android/server/DockObserver$logRecent;->this$0:Lcom/android/server/DockObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentUeventLogIndex:I

    .line 108
    iput p1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentReportLogIndex:I

    .line 132
    const/16 p1, 0xa

    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/server/DockObserver$logRecent;->uEventTime:[J

    .line 133
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/server/DockObserver$logRecent;->uEventType:[I

    .line 134
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/server/DockObserver$logRecent;->reportTime:[J

    .line 135
    new-array v0, p1, [I

    iput-object v0, p0, Lcom/android/server/DockObserver$logRecent;->report:[I

    .line 136
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/DockObserver$logRecent;->uEventUsbpdIds:[Ljava/lang/String;

    .line 137
    new-array p1, p1, [Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/DockObserver$logRecent;->reportUsbpdIds:[Ljava/lang/String;

    .line 138
    return-void
.end method


# virtual methods
.method log(IILjava/lang/String;)V
    .registers 8
    .param p1, "logType"    # I
    .param p2, "state"    # I
    .param p3, "usbpdIds"    # Ljava/lang/String;

    .line 111
    const/4 v0, 0x0

    if-nez p1, :cond_24

    .line 112
    iget v1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentUeventLogIndex:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_b

    iput v0, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentUeventLogIndex:I

    .line 114
    :cond_b
    iget-object v0, p0, Lcom/android/server/DockObserver$logRecent;->uEventTime:[J

    iget v1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentUeventLogIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/android/server/DockObserver$logRecent;->uEventType:[I

    iget v1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentUeventLogIndex:I

    aput p2, v0, v1

    .line 116
    iget-object v0, p0, Lcom/android/server/DockObserver$logRecent;->uEventUsbpdIds:[Ljava/lang/String;

    aput-object p3, v0, v1

    .line 118
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentUeventLogIndex:I

    goto :goto_44

    .line 121
    :cond_24
    iget v1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentReportLogIndex:I

    rem-int/lit8 v1, v1, 0xa

    if-nez v1, :cond_2c

    iput v0, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentReportLogIndex:I

    .line 123
    :cond_2c
    iget-object v0, p0, Lcom/android/server/DockObserver$logRecent;->reportTime:[J

    iget v1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentReportLogIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 124
    iget-object v0, p0, Lcom/android/server/DockObserver$logRecent;->report:[I

    iget v1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentReportLogIndex:I

    aput p2, v0, v1

    .line 125
    iget-object v0, p0, Lcom/android/server/DockObserver$logRecent;->reportUsbpdIds:[Ljava/lang/String;

    aput-object p3, v0, v1

    .line 127
    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/DockObserver$logRecent;->mCurrentReportLogIndex:I

    .line 129
    :goto_44
    return-void
.end method
