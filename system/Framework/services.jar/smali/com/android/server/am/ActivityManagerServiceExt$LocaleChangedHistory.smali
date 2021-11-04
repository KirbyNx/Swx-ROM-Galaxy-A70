.class Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LocaleChangedHistory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;
    }
.end annotation


# static fields
.field private static final MAX_HISTORY_COUNT:I = 0xa


# instance fields
.field private final mCallerInfo:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDate:Ljava/util/Date;

.field private final mDateFormat:Ljava/text/SimpleDateFormat;

.field private final mHistoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    .line 279
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy/MM/dd HH:mm:ss.SSS zzz"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 280
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDate:Ljava/util/Date;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt$1;)V
    .registers 2
    .param p1, "x0"    # Lcom/android/server/am/ActivityManagerServiceExt$1;

    .line 275
    invoke-direct {p0}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;
    .param p1, "x1"    # Ljava/lang/String;

    .line 275
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->setCallerLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;
    .param p1, "x1"    # Ljava/io/FileDescriptor;
    .param p2, "x2"    # Ljava/io/PrintWriter;
    .param p3, "x3"    # Z

    .line 275
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;
    .param p1, "x1"    # Landroid/os/LocaleList;
    .param p2, "x2"    # Landroid/os/LocaleList;

    .line 275
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V

    return-void
.end method

.method private addLocked(Landroid/os/LocaleList;Landroid/os/LocaleList;)V
    .registers 9
    .param p1, "from"    # Landroid/os/LocaleList;
    .param p2, "to"    # Landroid/os/LocaleList;

    .line 322
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 323
    .local v0, "fromList":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "toList":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 325
    return-void

    .line 327
    :cond_f
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    const-string v3, "%s changed from %s to %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 329
    .local v2, "msg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    new-instance v5, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;

    invoke-direct {v5, p0, v2}, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;-><init>(Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0xa

    if-le v3, v5, :cond_40

    .line 332
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 334
    :cond_40
    return-void
.end method

.method private dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z)V
    .registers 13
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "dumpAll"    # Z

    .line 287
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 288
    if-eqz p3, :cond_a

    .line 289
    const-string v0, "-------------------------------------------------------------------------------"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    :cond_a
    const-string v0, "ACTIVITY MANAGER LOCALE CHANGED HISTORY"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1e

    .line 294
    const-string v0, " (nothing) "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_95

    .line 296
    :cond_1e
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1f
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_95

    .line 297
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mHistoryList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;

    .line 299
    .local v1, "entry":Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "#%d "

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    iget-object v2, v1, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->message:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    const-string v2, " at "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 304
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, v1, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->timeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 305
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDate:Ljava/util/Date;

    iget-wide v5, v1, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->systemTimeMillis:J

    invoke-virtual {v2, v5, v6}, Ljava/util/Date;->setTime(J)V

    .line 306
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mDate:Ljava/util/Date;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    const/4 v2, 0x4

    .line 309
    .local v2, "skipLines":I
    iget-object v3, v1, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;->callstack:Ljava/lang/Throwable;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v5, v3

    :goto_6f
    if-ge v4, v5, :cond_8f

    aget-object v6, v3, v4

    .line 310
    .local v6, "ele":Ljava/lang/StackTraceElement;
    if-nez v2, :cond_8a

    .line 311
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "    "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8c

    .line 313
    :cond_8a
    add-int/lit8 v2, v2, -0x1

    .line 309
    .end local v6    # "ele":Ljava/lang/StackTraceElement;
    :goto_8c
    add-int/lit8 v4, v4, 0x1

    goto :goto_6f

    .line 316
    :cond_8f
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 296
    .end local v1    # "entry":Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory$LocaleChangedEntry;
    .end local v2    # "skipLines":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 319
    .end local v0    # "i":I
    :cond_95
    :goto_95
    return-void
.end method

.method private setCallerLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "caller"    # Ljava/lang/String;

    .line 283
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$LocaleChangedHistory;->mCallerInfo:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 284
    return-void
.end method
