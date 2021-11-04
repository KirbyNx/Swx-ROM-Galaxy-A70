.class Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;
.super Ljava/lang/Object;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DnsLocalLog"
.end annotation


# instance fields
.field private final mLog:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxLines:I

.field final synthetic this$0:Lcom/android/server/connectivity/NetdEventListenerService;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/NetdEventListenerService;I)V
    .registers 4
    .param p2, "maxLines"    # I

    .line 710
    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->this$0:Lcom/android/server/connectivity/NetdEventListenerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    const/4 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    .line 712
    new-instance p1, Ljava/util/ArrayDeque;

    iget v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    invoke-direct {p1, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    .line 713
    return-void
.end method

.method private declared-synchronized append(Ljava/lang/String;)V
    .registers 4
    .param p1, "logLine"    # Ljava/lang/String;

    monitor-enter p0

    .line 716
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    if-lt v0, v1, :cond_11

    .line 717
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    goto :goto_1

    .line 719
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;
    :cond_11
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_18

    .line 720
    monitor-exit p0

    return-void

    .line 715
    .end local p1    # "logLine":Ljava/lang/String;
    :catchall_18
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private encrypt(Ljava/lang/String;I)Ljava/lang/String;
    .registers 8
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "key"    # I

    .line 723
    const-string v0, ""

    .line 724
    .local v0, "encrypted":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_29

    .line 725
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/2addr v2, p2

    rem-int/lit8 v2, v2, 0x7f

    .line 726
    .local v2, "c":I
    const/16 v3, 0x60

    if-ge v2, v3, :cond_16

    .line 727
    add-int/lit8 v2, v2, 0x20

    .line 729
    :cond_16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-char v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 724
    .end local v2    # "c":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 731
    .end local v1    # "i":I
    :cond_29
    return-object v0
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 744
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mLog:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 745
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 746
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/16 v2, 0x36

    invoke-direct {p0, v1, v2}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->encrypt(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1f

    goto :goto_7

    .line 748
    .end local p0    # "this":Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;
    :cond_1d
    monitor-exit p0

    return-void

    .line 743
    .end local v0    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1    # "pw":Ljava/io/PrintWriter;
    :catchall_1f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public log(Ljava/lang/String;)V
    .registers 5
    .param p1, "msg"    # Ljava/lang/String;

    .line 735
    iget v0, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->mMaxLines:I

    if-gtz v0, :cond_5

    .line 736
    return-void

    .line 738
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 739
    .local v0, "c":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 740
    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    const/4 v2, 0x6

    aput-object p1, v1, v2

    const-string v2, "%ty-%tm-%td_%tH:%tM:%tS %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/NetdEventListenerService$DnsLocalLog;->append(Ljava/lang/String;)V

    .line 741
    return-void
.end method
