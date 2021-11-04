.class public Lcom/android/server/bridge/operations/DbObserver;
.super Ljava/lang/Object;
.source "DbObserver.java"


# static fields
.field private static final CALENDAR_EVENT_URI:Landroid/net/Uri;

.field private static final CALENDAR_TASK_URI:Landroid/net/Uri;

.field private static final CON_RAW_CONTACTS_URI:Landroid/net/Uri;


# instance fields
.field private final DELAY_IN_MILLISECONDS:J

.field private TAG:Ljava/lang/String;

.field calendarEventObserver:Landroid/database/ContentObserver;

.field calendarTaskObserver:Landroid/database/ContentObserver;

.field mCalendarRunnable:Ljava/lang/Runnable;

.field mContactRunnable:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

.field private mUserId:I

.field rawContactObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    sget-object v0, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->CON_RAW_CONTACTS_URI:Landroid/net/Uri;

    .line 31
    sget-object v0, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_EVENT_URI:Landroid/net/Uri;

    .line 33
    const-string v0, "content://com.android.calendar/syncTasks"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_TASK_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "mContext"    # Landroid/content/Context;
    .param p2, "mUserId"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    .line 26
    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    .line 27
    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 36
    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/android/server/bridge/operations/DbObserver;->DELAY_IN_MILLISECONDS:J

    .line 37
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    .line 39
    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    .line 40
    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 57
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/DbObserver$1;-><init>(Lcom/android/server/bridge/operations/DbObserver;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContactRunnable:Ljava/lang/Runnable;

    .line 69
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/bridge/operations/DbObserver$2;-><init>(Lcom/android/server/bridge/operations/DbObserver;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/DbObserver$3;-><init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->rawContactObserver:Landroid/database/ContentObserver;

    .line 105
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/DbObserver$4;-><init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarEventObserver:Landroid/database/ContentObserver;

    .line 125
    new-instance v0, Lcom/android/server/bridge/operations/DbObserver$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/bridge/operations/DbObserver$5;-><init>(Lcom/android/server/bridge/operations/DbObserver;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarTaskObserver:Landroid/database/ContentObserver;

    .line 44
    iput-object p1, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    .line 48
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "DbObserver"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandlerThread:Landroid/os/HandlerThread;

    .line 49
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 50
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/bridge/operations/DbObserver;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    .line 54
    const-string/jumbo v0, "rcp"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/SemRemoteContentManager;

    iput-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/bridge/operations/DbObserver;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .line 22
    iget v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/bridge/operations/DbObserver;)Lcom/samsung/android/knox/SemRemoteContentManager;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .line 22
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mRCPManager:Lcom/samsung/android/knox/SemRemoteContentManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/bridge/operations/DbObserver;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .line 22
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/bridge/operations/DbObserver;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .line 22
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/bridge/operations/DbObserver;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/bridge/operations/DbObserver;

    .line 22
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->startCalendarSync()V

    return-void
.end method

.method private registerCalendarObserver()V
    .registers 6

    .line 185
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerCalendarObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_EVENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarEventObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 188
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CALENDAR_TASK_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarTaskObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 190
    return-void
.end method

.method private registerContactObserver()V
    .registers 6

    .line 174
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerContactObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/bridge/operations/DbObserver;->CON_RAW_CONTACTS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->rawContactObserver:Landroid/database/ContentObserver;

    iget v3, p0, Lcom/android/server/bridge/operations/DbObserver;->mUserId:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 177
    return-void
.end method

.method private startCalendarSync()V
    .registers 6

    .line 147
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string v1, "Calendar onChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    monitor-enter v0

    .line 149
    :try_start_a
    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 150
    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/bridge/operations/DbObserver;->mCalendarRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    monitor-exit v0

    .line 152
    return-void

    .line 151
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method private unRegisterCalendarObserver()V
    .registers 3

    .line 193
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterCalendarObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 195
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->calendarTaskObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 196
    return-void
.end method

.method private unRegisterContactObserver()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterContactObserver"

    invoke-static {v0, v1}, Landroid/util/Slog;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v0, p0, Lcom/android/server/bridge/operations/DbObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/bridge/operations/DbObserver;->rawContactObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    return-void
.end method


# virtual methods
.method public registerObserver(Ljava/lang/String;)V
    .registers 3
    .param p1, "mSyncerName"    # Ljava/lang/String;

    .line 155
    const-string v0, "Contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 156
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->registerContactObserver()V

    goto :goto_17

    .line 157
    :cond_c
    const-string v0, "Calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 158
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->registerCalendarObserver()V

    .line 160
    :cond_17
    :goto_17
    return-void
.end method

.method public unRegisterObserver(Ljava/lang/String;)V
    .registers 3
    .param p1, "mSyncerName"    # Ljava/lang/String;

    .line 163
    const-string v0, "Contacts"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 164
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterContactObserver()V

    goto :goto_1e

    .line 165
    :cond_c
    const-string v0, "Calendar"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 166
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterCalendarObserver()V

    goto :goto_1e

    .line 168
    :cond_18
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterContactObserver()V

    .line 169
    invoke-direct {p0}, Lcom/android/server/bridge/operations/DbObserver;->unRegisterCalendarObserver()V

    .line 171
    :goto_1e
    return-void
.end method
