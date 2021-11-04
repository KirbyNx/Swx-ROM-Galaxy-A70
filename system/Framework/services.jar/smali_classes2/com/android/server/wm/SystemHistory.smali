.class public Lcom/android/server/wm/SystemHistory;
.super Ljava/lang/Object;
.source "SystemHistory.java"


# instance fields
.field private mEnableLog:Z

.field private mFormat:Landroid/icu/text/SimpleDateFormat;

.field mLogMaxCount:I

.field private final mLogQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 5
    .param p1, "logMaxCount"    # I
    .param p2, "tag"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/SystemHistory;->mEnableLog:Z

    .line 42
    iput p1, p0, Lcom/android/server/wm/SystemHistory;->mLogMaxCount:I

    .line 43
    iput-object p2, p0, Lcom/android/server/wm/SystemHistory;->mTag:Ljava/lang/String;

    .line 45
    new-instance v0, Landroid/icu/text/SimpleDateFormat;

    const-string v1, "<< MM-dd HH:mm:ss.SSS >>"

    invoke-direct {v0, v1}, Landroid/icu/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/SystemHistory;->mFormat:Landroid/icu/text/SimpleDateFormat;

    .line 46
    return-void
.end method

.method private discardOldest()Z
    .registers 4

    .line 65
    iget v0, p0, Lcom/android/server/wm/SystemHistory;->mLogMaxCount:I

    if-gtz v0, :cond_6

    .line 66
    const/4 v0, 0x0

    return v0

    .line 69
    :cond_6
    :goto_6
    iget v0, p0, Lcom/android/server/wm/SystemHistory;->mLogMaxCount:I

    iget-object v1, p0, Lcom/android/server/wm/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_18

    .line 70
    iget-object v0, p0, Lcom/android/server/wm/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto :goto_6

    .line 72
    :cond_18
    return v2
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 6
    .param p1, "log"    # Ljava/lang/String;

    .line 49
    iget-boolean v0, p0, Lcom/android/server/wm/SystemHistory;->mEnableLog:Z

    if-eqz v0, :cond_9

    .line 50
    iget-object v0, p0, Lcom/android/server/wm/SystemHistory;->mTag:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_9
    invoke-direct {p0}, Lcom/android/server/wm/SystemHistory;->discardOldest()Z

    move-result v0

    if-nez v0, :cond_10

    .line 54
    return-void

    .line 57
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/SystemHistory;->mFormat:Landroid/icu/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Landroid/icu/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SystemHistory;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 76
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/wm/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_35

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/SystemHistory;->mLogQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    :cond_35
    return-void
.end method

.method public enableLog(Z)V
    .registers 2
    .param p1, "enableLog"    # Z

    .line 61
    iput-boolean p1, p0, Lcom/android/server/wm/SystemHistory;->mEnableLog:Z

    .line 62
    return-void
.end method
