.class public final Lcom/android/server/am/PendingIntentRecord;
.super Landroid/content/IIntentSender$Stub;
.source "PendingIntentRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/PendingIntentRecord$Key;
    }
.end annotation


# static fields
.field public static final FLAG_ACTIVITY_SENDER:I = 0x1

.field public static final FLAG_BROADCAST_SENDER:I = 0x2

.field public static final FLAG_SERVICE_SENDER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field canceled:Z

.field final controller:Lcom/android/server/am/PendingIntentController;

.field final key:Lcom/android/server/am/PendingIntentRecord$Key;

.field lastTag:Ljava/lang/String;

.field lastTagPrefix:Ljava/lang/String;

.field private mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mCancelCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation
.end field

.field public final ref:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/server/am/PendingIntentRecord;",
            ">;"
        }
    .end annotation
.end field

.field sent:Z

.field stringName:Ljava/lang/String;

.field final uid:I

.field private whitelistDuration:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/PendingIntentController;Lcom/android/server/am/PendingIntentRecord$Key;I)V
    .registers 5
    .param p1, "_controller"    # Lcom/android/server/am/PendingIntentController;
    .param p2, "_k"    # Lcom/android/server/am/PendingIntentRecord$Key;
    .param p3, "_u"    # I

    .line 222
    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 68
    iput-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    .line 71
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 72
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 73
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 223
    iput-object p1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    .line 224
    iput-object p2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 225
    iput p3, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 226
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    .line 227
    return-void
.end method

.method private completeFinalize()V
    .registers 5

    .line 558
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_5
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 560
    .local v1, "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    if-ne v1, v2, :cond_2e

    .line 561
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mIntentSenderRecords:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v2, p0}, Lcom/android/server/am/PendingIntentController;->decrementUidStatLocked(Lcom/android/server/am/PendingIntentRecord;)V

    .line 565
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v3, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/ActivityManagerInternal;->removePendingIntentRecordLocked(Ljava/lang/String;)V

    .line 569
    .end local v1    # "current":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    :cond_2e
    monitor-exit v0

    .line 570
    return-void

    .line 569
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_5 .. :try_end_32} :catchall_30

    throw v1
.end method

.method public static synthetic lambda$hlEHdgdG_SS5n3v7IRr7e6QZgLQ(Lcom/android/server/am/PendingIntentRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    return-void
.end method


# virtual methods
.method clearAllowBgActivityStarts(Landroid/os/IBinder;)V
    .registers 3
    .param p1, "token"    # Landroid/os/IBinder;

    .line 259
    if-nez p1, :cond_3

    return-void

    .line 260
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 261
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 262
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 263
    return-void
.end method

.method public detachCancelListenersLocked()Landroid/os/RemoteCallbackList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/android/internal/os/IResultReceiver;",
            ">;"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 284
    .local v0, "listeners":Landroid/os/RemoteCallbackList;, "Landroid/os/RemoteCallbackList<Lcom/android/internal/os/IResultReceiver;>;"
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 285
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 573
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "uid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/PendingIntentRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 574
    const-string v0, " packageName="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 575
    const-string v0, " featureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 576
    const-string v0, " type="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v0}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 577
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    if-eqz v0, :cond_6b

    .line 579
    :cond_50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "activity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 580
    const-string v0, " who="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    :cond_6b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    if-nez v0, :cond_77

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    if-eqz v0, :cond_93

    .line 583
    :cond_77
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestCode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 584
    const-string v0, " requestResolvedType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 586
    :cond_93
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    if-eqz v0, :cond_af

    .line 587
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "requestIntent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 588
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/content/Intent;->toShortString(ZZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 590
    :cond_af
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    if-nez v0, :cond_b7

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-eqz v0, :cond_cf

    .line 591
    :cond_b7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "sent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 592
    const-string v0, " canceled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 594
    :cond_cf
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_117

    .line 595
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    const-string/jumbo v0, "whitelistDuration="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 597
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_dd
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_114

    .line 598
    if-eqz v0, :cond_ec

    .line 599
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 601
    :cond_ec
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 602
    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 603
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 597
    add-int/lit8 v0, v0, 0x1

    goto :goto_dd

    .line 605
    .end local v0    # "i":I
    :cond_114
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 607
    :cond_117
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_149

    .line 608
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCancelCallbacks:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 609
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_125
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v1

    if-ge v0, v1, :cond_149

    .line 610
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  #"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 611
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackItem(I)Landroid/os/IInterface;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_125

    .line 614
    .end local v0    # "i":I
    :cond_149
    return-void
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 548
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/PendingIntentRecord;->canceled:Z

    if-nez v0, :cond_11

    .line 549
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mH:Landroid/os/Handler;

    sget-object v1, Lcom/android/server/am/-$$Lambda$PendingIntentRecord$hlEHdgdG_SS5n3v7IRr7e6QZgLQ;->INSTANCE:Lcom/android/server/am/-$$Lambda$PendingIntentRecord$hlEHdgdG_SS5n3v7IRr7e6QZgLQ;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_11
    .catchall {:try_start_0 .. :try_end_11} :catchall_16

    .line 553
    :cond_11
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 554
    nop

    .line 555
    return-void

    .line 553
    :catchall_16
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 554
    throw v0
.end method

.method public registerCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 266
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_b

    .line 267
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 269
    :cond_b
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 270
    return-void
.end method

.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 22
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 290
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I

    .line 292
    return-void
.end method

.method public sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I
    .registers 55
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "resultTo"    # Landroid/os/IBinder;
    .param p8, "resultWho"    # Ljava/lang/String;
    .param p9, "requestCode"    # I
    .param p10, "flagsMask"    # I
    .param p11, "flagsValues"    # I
    .param p12, "options"    # Landroid/os/Bundle;
    .param p13, "caller"    # Landroid/app/IApplicationThread;

    .line 307
    move-object/from16 v15, p0

    move-object/from16 v14, p2

    move-object/from16 v13, p4

    move-object/from16 v12, p12

    const/4 v0, 0x1

    if-eqz v14, :cond_e

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setDefusable(Z)V

    .line 308
    :cond_e
    if-eqz v12, :cond_13

    invoke-virtual {v12, v0}, Landroid/os/Bundle;->setDefusable(Z)V

    .line 310
    :cond_13
    const/4 v1, 0x0

    .line 311
    .local v1, "duration":Ljava/lang/Long;
    const/4 v2, 0x0

    .line 312
    .local v2, "finalIntent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 313
    .local v3, "allIntents":[Landroid/content/Intent;
    const/4 v4, 0x0

    .line 314
    .local v4, "allResolvedTypes":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 315
    .local v5, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    iget-object v6, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v6, v6, Lcom/android/server/am/PendingIntentController;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 316
    :try_start_1d
    iget-boolean v7, v15, Lcom/android/server/am/PendingIntentRecord;->canceled:Z
    :try_end_1f
    .catchall {:try_start_1d .. :try_end_1f} :catchall_5f1

    const/16 v11, -0x60

    if-eqz v7, :cond_60

    .line 319
    :try_start_23
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Received ACTIVITY intent "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 321
    invoke-virtual {v9, v0}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is canceled"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    monitor-exit v6
    :try_end_55
    .catchall {:try_start_23 .. :try_end_55} :catchall_56

    return v11

    .line 390
    :catchall_56
    move-exception v0

    move-object/from16 v26, p3

    move/from16 v27, p10

    move/from16 v28, p11

    move-object v10, v15

    goto/16 :goto_5fb

    .line 327
    :cond_60
    :try_start_60
    iput-boolean v0, v15, Lcom/android/server/am/PendingIntentRecord;->sent:Z

    .line 328
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_66
    .catchall {:try_start_60 .. :try_end_66} :catchall_5f1

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v7, v8

    if-eqz v7, :cond_70

    .line 329
    :try_start_6b
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    invoke-virtual {v7, v15, v0}, Lcom/android/server/am/PendingIntentController;->cancelIntentSender(Lcom/android/server/am/PendingIntentRecord;Z)V
    :try_end_70
    .catchall {:try_start_6b .. :try_end_70} :catchall_56

    .line 332
    :cond_70
    :try_start_70
    iget-object v7, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v7, v7, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_5f1

    if-eqz v7, :cond_80

    :try_start_76
    new-instance v7, Landroid/content/Intent;

    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestIntent:Landroid/content/Intent;

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_7f
    .catchall {:try_start_76 .. :try_end_7f} :catchall_56

    goto :goto_85

    :cond_80
    :try_start_80
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V
    :try_end_85
    .catchall {:try_start_80 .. :try_end_85} :catchall_5f1

    :goto_85
    move-object v10, v7

    .line 334
    .end local v2    # "finalIntent":Landroid/content/Intent;
    .local v10, "finalIntent":Landroid/content/Intent;
    :try_start_86
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_5e4

    const/high16 v7, 0x4000000

    and-int/2addr v2, v7

    const/4 v7, 0x0

    if-eqz v2, :cond_92

    move v2, v0

    goto :goto_93

    :cond_92
    move v2, v7

    .line 335
    .local v2, "immutable":Z
    :goto_93
    if-nez v2, :cond_100

    .line 336
    if-eqz v14, :cond_cb

    .line 337
    :try_start_97
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->flags:I

    invoke-virtual {v10, v14, v8}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    move-result v8

    .line 338
    .local v8, "changes":I
    and-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_a8

    .line 339
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_a7
    .catchall {:try_start_97 .. :try_end_a7} :catchall_c0

    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v9, "resolvedType":Ljava/lang/String;
    goto :goto_aa

    .line 338
    .end local v9    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :cond_a8
    move-object/from16 v9, p3

    .line 342
    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v9    # "resolvedType":Ljava/lang/String;
    :goto_aa
    :try_start_aa
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->isRemoteAppLaunch()Z

    move-result v16

    if-eqz v16, :cond_b3

    .line 343
    invoke-virtual {v10, v0}, Landroid/content/Intent;->setRemoteAppLaunch(Z)V
    :try_end_b3
    .catchall {:try_start_aa .. :try_end_b3} :catchall_b5

    .line 346
    .end local v8    # "changes":I
    :cond_b3
    move-object v8, v9

    goto :goto_cf

    .line 390
    .end local v2    # "immutable":Z
    :catchall_b5
    move-exception v0

    move/from16 v27, p10

    move/from16 v28, p11

    move-object/from16 v26, v9

    move-object v2, v10

    move-object v10, v15

    goto/16 :goto_5fb

    .end local v9    # "resolvedType":Ljava/lang/String;
    .restart local p3    # "resolvedType":Ljava/lang/String;
    :catchall_c0
    move-exception v0

    move-object/from16 v26, p3

    move/from16 v27, p10

    move/from16 v28, p11

    move-object v2, v10

    move-object v10, v15

    goto/16 :goto_5fb

    .line 347
    .restart local v2    # "immutable":Z
    :cond_cb
    :try_start_cb
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_f3

    .line 349
    .end local p3    # "resolvedType":Ljava/lang/String;
    .local v8, "resolvedType":Ljava/lang/String;
    :goto_cf
    move/from16 v9, p10

    and-int/lit16 v9, v9, -0xc4

    .line 350
    .end local p10    # "flagsMask":I
    .local v9, "flagsMask":I
    and-int v16, p11, v9

    .line 351
    .end local p11    # "flagsValues":I
    .local v16, "flagsValues":I
    :try_start_d5
    invoke-virtual {v10}, Landroid/content/Intent;->getFlags()I

    move-result v17

    not-int v11, v9

    and-int v11, v17, v11

    or-int v11, v11, v16

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_e1
    .catchall {:try_start_d5 .. :try_end_e1} :catchall_e8

    move-object/from16 v26, v8

    move/from16 v27, v9

    move/from16 v28, v16

    goto :goto_10c

    .line 390
    .end local v2    # "immutable":Z
    :catchall_e8
    move-exception v0

    move-object/from16 v26, v8

    move/from16 v27, v9

    move-object v2, v10

    move-object v10, v15

    move/from16 v28, v16

    goto/16 :goto_5fb

    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local v9    # "flagsMask":I
    .end local v16    # "flagsValues":I
    .restart local p3    # "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_f3
    move-exception v0

    move/from16 v9, p10

    move-object/from16 v26, p3

    move/from16 v28, p11

    move/from16 v27, v9

    move-object v2, v10

    move-object v10, v15

    goto/16 :goto_5fb

    .line 353
    .restart local v2    # "immutable":Z
    :cond_100
    move/from16 v9, p10

    :try_start_102
    iget-object v8, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v8, v8, Lcom/android/server/am/PendingIntentRecord$Key;->requestResolvedType:Ljava/lang/String;
    :try_end_106
    .catchall {:try_start_102 .. :try_end_106} :catchall_5d9

    .end local p3    # "resolvedType":Ljava/lang/String;
    .restart local v8    # "resolvedType":Ljava/lang/String;
    move/from16 v28, p11

    move-object/from16 v26, v8

    move/from16 v27, v9

    .line 358
    .end local v8    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .local v26, "resolvedType":Ljava/lang/String;
    .local v27, "flagsMask":I
    .local v28, "flagsValues":I
    :goto_10c
    :try_start_10c
    invoke-static/range {p12 .. p12}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v8
    :try_end_110
    .catchall {:try_start_10c .. :try_end_110} :catchall_5d4

    .line 359
    .local v8, "opts":Landroid/app/ActivityOptions;
    if-eqz v8, :cond_11f

    .line 360
    :try_start_112
    invoke-virtual {v8}, Landroid/app/ActivityOptions;->getPendingIntentLaunchFlags()I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_119
    .catchall {:try_start_112 .. :try_end_119} :catchall_11a

    goto :goto_11f

    .line 390
    .end local v2    # "immutable":Z
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :catchall_11a
    move-exception v0

    move-object v2, v10

    move-object v10, v15

    goto/16 :goto_5fb

    .line 364
    .restart local v2    # "immutable":Z
    .restart local v8    # "opts":Landroid/app/ActivityOptions;
    :cond_11f
    :goto_11f
    :try_start_11f
    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->options:Lcom/android/server/wm/SafeActivityOptions;
    :try_end_123
    .catchall {:try_start_11f .. :try_end_123} :catchall_5d4

    move-object v5, v9

    .line 365
    if-nez v5, :cond_12f

    .line 366
    :try_start_126
    new-instance v9, Lcom/android/server/wm/SafeActivityOptions;

    invoke-direct {v9, v8}, Lcom/android/server/wm/SafeActivityOptions;-><init>(Landroid/app/ActivityOptions;)V
    :try_end_12b
    .catchall {:try_start_126 .. :try_end_12b} :catchall_11a

    move-object v5, v9

    move-object/from16 v29, v5

    goto :goto_134

    .line 368
    :cond_12f
    :try_start_12f
    invoke-virtual {v5, v8}, Lcom/android/server/wm/SafeActivityOptions;->setCallerOptions(Landroid/app/ActivityOptions;)V
    :try_end_132
    .catchall {:try_start_12f .. :try_end_132} :catchall_5d4

    move-object/from16 v29, v5

    .line 371
    .end local v5    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .local v29, "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    :goto_134
    :try_start_134
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;
    :try_end_136
    .catchall {:try_start_134 .. :try_end_136} :catchall_5cd

    if-eqz v5, :cond_14b

    .line 372
    :try_start_138
    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v5, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;
    :try_end_140
    .catchall {:try_start_138 .. :try_end_140} :catchall_144

    move-object v1, v5

    move-object/from16 v30, v1

    goto :goto_14d

    .line 390
    .end local v2    # "immutable":Z
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :catchall_144
    move-exception v0

    move-object v2, v10

    move-object v10, v15

    move-object/from16 v5, v29

    goto/16 :goto_5fb

    .line 371
    .restart local v2    # "immutable":Z
    .restart local v8    # "opts":Landroid/app/ActivityOptions;
    :cond_14b
    move-object/from16 v30, v1

    .line 375
    .end local v1    # "duration":Ljava/lang/Long;
    .local v30, "duration":Ljava/lang/Long;
    :goto_14d
    :try_start_14d
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_151
    .catchall {:try_start_14d .. :try_end_151} :catchall_5c4

    const/4 v5, 0x2

    if-ne v1, v5, :cond_1a5

    :try_start_154
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_1a5

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_1a5

    .line 379
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Landroid/content/Intent;

    move-object v3, v1

    .line 380
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    new-array v1, v1, [Ljava/lang/String;

    move-object v4, v1

    .line 381
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v9, v9

    invoke-static {v1, v7, v3, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    if-eqz v1, :cond_18f

    .line 383
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    iget-object v9, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v9, v9, Lcom/android/server/am/PendingIntentRecord$Key;->allResolvedTypes:[Ljava/lang/String;

    array-length v9, v9

    invoke-static {v1, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    :cond_18f
    array-length v1, v3

    sub-int/2addr v1, v0

    aput-object v10, v3, v1

    .line 387
    array-length v1, v4

    sub-int/2addr v1, v0

    aput-object v26, v4, v1
    :try_end_197
    .catchall {:try_start_154 .. :try_end_197} :catchall_19c

    move-object/from16 v31, v3

    move-object/from16 v32, v4

    goto :goto_1a9

    .line 390
    .end local v2    # "immutable":Z
    .end local v8    # "opts":Landroid/app/ActivityOptions;
    :catchall_19c
    move-exception v0

    move-object v2, v10

    move-object v10, v15

    move-object/from16 v5, v29

    move-object/from16 v1, v30

    goto/16 :goto_5fb

    :cond_1a5
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    .end local v3    # "allIntents":[Landroid/content/Intent;
    .end local v4    # "allResolvedTypes":[Ljava/lang/String;
    .local v31, "allIntents":[Landroid/content/Intent;
    .local v32, "allResolvedTypes":[Ljava/lang/String;
    :goto_1a9
    :try_start_1a9
    monitor-exit v6
    :try_end_1aa
    .catchall {:try_start_1a9 .. :try_end_1aa} :catchall_5b7

    .line 393
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 394
    .local v11, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v33

    .line 395
    .local v33, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 397
    .local v34, "origId":J
    const/16 v36, 0x0

    .line 399
    .local v36, "res":I
    if-eqz v30, :cond_249

    .line 400
    :try_start_1ba
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v11}, Landroid/app/ActivityManagerInternal;->getUidProcessState(I)I

    move-result v1

    .line 401
    .local v1, "procState":I
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v2

    if-nez v2, :cond_224

    .line 402
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 403
    .local v2, "tag":Ljava/lang/StringBuilder;
    const-string/jumbo v3, "pendingintent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static {v2, v11}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 405
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1eb

    .line 407
    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20a

    .line 408
    :cond_1eb
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_1f9

    .line 409
    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;)V

    goto :goto_20a

    .line 410
    :cond_1f9
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_20a

    .line 411
    invoke-virtual {v10}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    :cond_20a
    :goto_20a
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    .line 414
    invoke-virtual/range {v30 .. v30}, Ljava/lang/Long;->longValue()J

    move-result-wide v20

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 413
    move-object/from16 v16, v3

    move/from16 v17, v33

    move/from16 v18, v11

    move/from16 v19, v4

    invoke-virtual/range {v16 .. v22}, Landroid/app/ActivityManagerInternal;->tempWhitelistForPendingIntent(IIIJLjava/lang/String;)V

    .line 415
    .end local v2    # "tag":Ljava/lang/StringBuilder;
    goto :goto_249

    .line 416
    :cond_224
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not doing whitelist "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ": caller state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_242
    .catchall {:try_start_1ba .. :try_end_242} :catchall_243

    goto :goto_249

    .line 539
    .end local v1    # "procState":I
    :catchall_243
    move-exception v0

    move-object v12, v10

    move v9, v11

    move-object v10, v15

    goto/16 :goto_5b3

    .line 420
    :cond_249
    :goto_249
    if-eqz p5, :cond_24d

    move v1, v0

    goto :goto_24e

    :cond_24d
    move v1, v7

    :goto_24e
    move/from16 v37, v1

    .line 421
    .local v37, "sendFinish":Z
    :try_start_250
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I
    :try_end_254
    .catchall {:try_start_250 .. :try_end_254} :catchall_5af

    .line 422
    .local v1, "userId":I
    const/4 v2, -0x2

    if-ne v1, v2, :cond_263

    .line 423
    :try_start_257
    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentController;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v2}, Lcom/android/server/am/UserController;->getCurrentOrTargetUserId()I

    move-result v2
    :try_end_25f
    .catchall {:try_start_257 .. :try_end_25f} :catchall_243

    move v1, v2

    move/from16 v38, v1

    goto :goto_265

    .line 422
    :cond_263
    move/from16 v38, v1

    .line 427
    .end local v1    # "userId":I
    .local v38, "userId":I
    :goto_265
    :try_start_265
    iget v1, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I
    :try_end_267
    .catchall {:try_start_265 .. :try_end_267} :catchall_5af

    if-eq v1, v11, :cond_275

    :try_start_269
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 428
    invoke-virtual {v1, v11}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isUidForeground(I)Z

    move-result v1
    :try_end_271
    .catchall {:try_start_269 .. :try_end_271} :catchall_243

    if-eqz v1, :cond_275

    move v1, v0

    goto :goto_276

    :cond_275
    move v1, v7

    :goto_276
    move/from16 v39, v1

    .line 433
    .local v39, "allowTrampoline":Z
    :try_start_278
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->type:I
    :try_end_27c
    .catchall {:try_start_278 .. :try_end_27c} :catchall_5af

    if-eq v1, v0, :cond_4bd

    if-eq v1, v5, :cond_378

    const/4 v2, 0x3

    if-eq v1, v2, :cond_31d

    const/4 v2, 0x4

    const/4 v3, 0x5

    if-eq v1, v2, :cond_28f

    if-eq v1, v3, :cond_28f

    move-object/from16 v20, v10

    move v9, v11

    move-object v10, v15

    goto/16 :goto_576

    .line 510
    :cond_28f
    :try_start_28f
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->type:I

    if-ne v4, v3, :cond_29e

    move/from16 v21, v0

    goto :goto_2a0

    :cond_29e
    move/from16 v21, v7

    :goto_2a0
    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v4, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget-object v5, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    .line 513
    invoke-virtual {v5, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2b6

    if-eqz v39, :cond_2b3

    goto :goto_2b6

    :cond_2b3
    move/from16 v25, v7

    goto :goto_2b8

    :cond_2b6
    :goto_2b6
    move/from16 v25, v0

    .line 510
    :goto_2b8
    move-object/from16 v16, v1

    move-object/from16 v17, p13

    move/from16 v18, v2

    move-object/from16 v19, v10

    move-object/from16 v20, v26

    move-object/from16 v22, v3

    move-object/from16 v23, v4

    move/from16 v24, v38

    invoke-virtual/range {v16 .. v25}, Landroid/app/ActivityManagerInternal;->startServiceInPackage(Landroid/app/IApplicationThread;ILandroid/content/Intent;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IZ)Landroid/content/ComponentName;

    .line 517
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received SERVICE intent 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 519
    invoke-virtual {v3, v0}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from uid "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 517
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2ff
    .catch Ljava/lang/RuntimeException; {:try_start_28f .. :try_end_2ff} :catch_30f
    .catch Landroid/os/TransactionTooLargeException; {:try_start_28f .. :try_end_2ff} :catch_305
    .catchall {:try_start_28f .. :try_end_2ff} :catchall_243

    .line 527
    move-object/from16 v20, v10

    move v9, v11

    move-object v10, v15

    goto/16 :goto_576

    .line 525
    :catch_305
    move-exception v0

    .line 526
    .local v0, "e":Landroid/os/TransactionTooLargeException;
    const/16 v1, -0x60

    move-object/from16 v20, v10

    move v9, v11

    move-object v10, v15

    move v11, v1

    .end local v36    # "res":I
    .local v1, "res":I
    goto/16 :goto_578

    .line 523
    .end local v0    # "e":Landroid/os/TransactionTooLargeException;
    .end local v1    # "res":I
    .restart local v36    # "res":I
    :catch_30f
    move-exception v0

    .line 524
    .local v0, "e":Ljava/lang/RuntimeException;
    :try_start_310
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startService intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 527
    move-object/from16 v20, v10

    move v9, v11

    move-object v10, v15

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_576

    .line 472
    :cond_31d
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received ACTIVITY intent 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 474
    invoke-virtual {v3, v0}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from uid "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 472
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v0, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v0, v0, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/16 v17, -0x1

    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->activity:Landroid/os/IBinder;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->who:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v3, v3, Lcom/android/server/am/PendingIntentRecord$Key;->requestCode:I

    move-object/from16 v16, v0

    move-object/from16 v18, v1

    move-object/from16 v19, v2

    move/from16 v20, v3

    move/from16 v21, p1

    move-object/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Lcom/android/server/wm/ActivityTaskManagerInternal;->sendActivityResult(ILandroid/os/IBinder;Ljava/lang/String;IILandroid/content/Intent;)V
    :try_end_372
    .catchall {:try_start_310 .. :try_end_372} :catchall_243

    .line 480
    move-object/from16 v20, v10

    move v9, v11

    move-object v10, v15

    goto/16 :goto_576

    .line 440
    :cond_378
    :try_start_378
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;
    :try_end_37c
    .catch Ljava/lang/RuntimeException; {:try_start_378 .. :try_end_37c} :catch_4a5
    .catchall {:try_start_378 .. :try_end_37c} :catchall_49f

    if-eqz v1, :cond_3d0

    :try_start_37e
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentRecord$Key;->allIntents:[Landroid/content/Intent;

    array-length v1, v1

    if-le v1, v0, :cond_3d0

    .line 441
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v3, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 446
    invoke-virtual {v3, v13}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v17
    :try_end_39b
    .catch Ljava/lang/RuntimeException; {:try_start_37e .. :try_end_39b} :catch_3ca
    .catchall {:try_start_37e .. :try_end_39b} :catchall_3c4

    .line 441
    move/from16 v3, v33

    move v4, v11

    move-object/from16 v7, v31

    move-object/from16 v8, v32

    move-object/from16 v9, p7

    move-object/from16 v20, v10

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .local v20, "finalIntent":Landroid/content/Intent;
    move-object/from16 v10, v29

    move/from16 p3, v11

    .end local v11    # "callingUid":I
    .local p3, "callingUid":I
    move/from16 v11, v38

    move/from16 v12, v16

    move-object/from16 v13, p0

    move/from16 v14, v17

    :try_start_3b2
    invoke-virtual/range {v1 .. v14}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivitiesInPackage(IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;IZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v1
    :try_end_3b6
    .catch Ljava/lang/RuntimeException; {:try_start_3b2 .. :try_end_3b6} :catch_3bf
    .catchall {:try_start_3b2 .. :try_end_3b6} :catchall_3b7

    .end local v36    # "res":I
    .restart local v1    # "res":I
    goto :goto_40f

    .line 539
    .end local v1    # "res":I
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local v36    # "res":I
    :catchall_3b7
    move-exception v0

    move/from16 v9, p3

    move-object v10, v15

    move-object/from16 v12, v20

    goto/16 :goto_5b3

    .line 465
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :catch_3bf
    move-exception v0

    move/from16 v14, p3

    goto/16 :goto_4a9

    .line 539
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .end local p3    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    :catchall_3c4
    move-exception v0

    move-object v12, v10

    move v9, v11

    move-object v10, v15

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local p3    # "callingUid":I
    goto/16 :goto_5b3

    .line 465
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local p3    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :catch_3ca
    move-exception v0

    move-object/from16 v20, v10

    move v14, v11

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local p3    # "callingUid":I
    goto/16 :goto_4a9

    .line 440
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local p3    # "callingUid":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    :cond_3d0
    move-object/from16 v20, v10

    move/from16 p3, v11

    .line 448
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local p3    # "callingUid":I
    :try_start_3d4
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget v2, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v5, v3, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v6, v3, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    const/4 v12, 0x0

    const/16 v16, 0x0

    const-string v17, "PendingIntentRecord"

    const/16 v18, 0x0

    iget-object v3, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    .line 454
    move-object/from16 v14, p4

    invoke-virtual {v3, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v19
    :try_end_3f1
    .catch Ljava/lang/RuntimeException; {:try_start_3d4 .. :try_end_3f1} :catch_49b
    .catchall {:try_start_3d4 .. :try_end_3f1} :catchall_493

    .line 448
    move/from16 v3, v33

    move/from16 v4, p3

    move-object/from16 v7, v20

    move-object/from16 v8, v26

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move/from16 v11, p9

    move-object/from16 v13, v29

    move/from16 v14, v38

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, p0

    :try_start_40b
    invoke-virtual/range {v1 .. v19}, Lcom/android/server/wm/ActivityTaskManagerInternal;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v1
    :try_end_40f
    .catch Ljava/lang/RuntimeException; {:try_start_40b .. :try_end_40f} :catch_48d
    .catchall {:try_start_40b .. :try_end_40f} :catchall_484

    .line 459
    .end local v36    # "res":I
    .restart local v1    # "res":I
    :goto_40f
    :try_start_40f
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received ACTIVITY intent 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_42b
    .catch Ljava/lang/RuntimeException; {:try_start_40f .. :try_end_42b} :catch_47c
    .catchall {:try_start_40f .. :try_end_42b} :catchall_471

    move-object/from16 v15, p0

    :try_start_42d
    iget-object v4, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 461
    invoke-virtual {v4, v0}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " res="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from uid "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_443
    .catch Ljava/lang/RuntimeException; {:try_start_42d .. :try_end_443} :catch_46b
    .catchall {:try_start_42d .. :try_end_443} :catchall_461

    move/from16 v14, p3

    .end local p3    # "callingUid":I
    .local v14, "callingUid":I
    :try_start_445
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_44f
    .catch Ljava/lang/RuntimeException; {:try_start_445 .. :try_end_44f} :catch_45d
    .catchall {:try_start_445 .. :try_end_44f} :catchall_454

    .line 467
    move v11, v1

    move v9, v14

    move-object v10, v15

    goto/16 :goto_578

    .line 539
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    :catchall_454
    move-exception v0

    move/from16 v36, v1

    move v9, v14

    move-object v10, v15

    move-object/from16 v12, v20

    goto/16 :goto_5b3

    .line 465
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :catch_45d
    move-exception v0

    move/from16 v36, v1

    goto :goto_4a9

    .line 539
    .end local v14    # "callingUid":I
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local p3    # "callingUid":I
    :catchall_461
    move-exception v0

    move/from16 v9, p3

    move/from16 v36, v1

    move-object v10, v15

    move-object/from16 v12, v20

    .end local p3    # "callingUid":I
    .restart local v14    # "callingUid":I
    goto/16 :goto_5b3

    .line 465
    .end local v14    # "callingUid":I
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    .restart local p3    # "callingUid":I
    :catch_46b
    move-exception v0

    move/from16 v14, p3

    move/from16 v36, v1

    .end local p3    # "callingUid":I
    .restart local v14    # "callingUid":I
    goto :goto_4a9

    .line 539
    .end local v14    # "callingUid":I
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local p3    # "callingUid":I
    :catchall_471
    move-exception v0

    move-object/from16 v10, p0

    move/from16 v9, p3

    move/from16 v36, v1

    move-object/from16 v12, v20

    .end local p3    # "callingUid":I
    .restart local v14    # "callingUid":I
    goto/16 :goto_5b3

    .line 465
    .end local v14    # "callingUid":I
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    .restart local p3    # "callingUid":I
    :catch_47c
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v14, p3

    move/from16 v36, v1

    .end local p3    # "callingUid":I
    .restart local v14    # "callingUid":I
    goto :goto_4a9

    .line 539
    .end local v1    # "res":I
    .end local v14    # "callingUid":I
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local v36    # "res":I
    .restart local p3    # "callingUid":I
    :catchall_484
    move-exception v0

    move-object/from16 v10, p0

    move/from16 v9, p3

    move-object/from16 v12, v20

    .end local p3    # "callingUid":I
    .restart local v14    # "callingUid":I
    goto/16 :goto_5b3

    .line 465
    .end local v14    # "callingUid":I
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    .restart local p3    # "callingUid":I
    :catch_48d
    move-exception v0

    move-object/from16 v15, p0

    move/from16 v14, p3

    .end local p3    # "callingUid":I
    .restart local v14    # "callingUid":I
    goto :goto_4a9

    .line 539
    .end local v14    # "callingUid":I
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local p3    # "callingUid":I
    :catchall_493
    move-exception v0

    move/from16 v9, p3

    move-object v10, v15

    move-object/from16 v12, v20

    .end local p3    # "callingUid":I
    .restart local v14    # "callingUid":I
    goto/16 :goto_5b3

    .line 465
    .end local v14    # "callingUid":I
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    .restart local p3    # "callingUid":I
    :catch_49b
    move-exception v0

    move/from16 v14, p3

    .end local p3    # "callingUid":I
    .restart local v14    # "callingUid":I
    goto :goto_4a9

    .line 539
    .end local v14    # "callingUid":I
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    :catchall_49f
    move-exception v0

    move-object v12, v10

    move v9, v11

    move-object v10, v15

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v14    # "callingUid":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    goto/16 :goto_5b3

    .line 465
    .end local v14    # "callingUid":I
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :catch_4a5
    move-exception v0

    move-object/from16 v20, v10

    move v14, v11

    .line 466
    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v14    # "callingUid":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    :goto_4a9
    :try_start_4a9
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4b0
    .catchall {:try_start_4a9 .. :try_end_4b0} :catchall_4b6

    .line 468
    move v9, v14

    move-object v10, v15

    move/from16 v11, v36

    .end local v0    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_578

    .line 539
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    :catchall_4b6
    move-exception v0

    move v9, v14

    move-object v10, v15

    move-object/from16 v12, v20

    goto/16 :goto_5b3

    .line 485
    .end local v14    # "callingUid":I
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :cond_4bd
    move-object/from16 v20, v10

    move v14, v11

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v14    # "callingUid":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    :try_start_4c0
    iget-object v1, v15, Lcom/android/server/am/PendingIntentRecord;->controller:Lcom/android/server/am/PendingIntentController;

    iget-object v1, v1, Lcom/android/server/am/PendingIntentController;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v3, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v4, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    iget v5, v15, Lcom/android/server/am/PendingIntentRecord;->uid:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    if-eqz p5, :cond_4d5

    move/from16 v16, v0

    goto :goto_4d7

    :cond_4d5
    move/from16 v16, v7

    :goto_4d7
    const/16 v17, 0x0

    iget-object v2, v15, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    .line 490
    move-object/from16 v11, p4

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2
    :try_end_4e1
    .catch Ljava/lang/RuntimeException; {:try_start_4c0 .. :try_end_4e1} :catch_56b
    .catchall {:try_start_4c0 .. :try_end_4e1} :catchall_565

    if-nez v2, :cond_4e9

    if-eqz v39, :cond_4e6

    goto :goto_4e9

    :cond_4e6
    move/from16 v19, v7

    goto :goto_4eb

    :cond_4e9
    :goto_4e9
    move/from16 v19, v0

    .line 485
    :goto_4eb
    move-object/from16 v2, p13

    move v6, v14

    move/from16 v7, v33

    move-object/from16 v8, v20

    move-object/from16 v9, v26

    move-object/from16 v10, p5

    move/from16 v11, p1

    move/from16 v40, v14

    .end local v14    # "callingUid":I
    .local v40, "callingUid":I
    move-object/from16 v14, p6

    move-object/from16 v15, p12

    move/from16 v18, v38

    :try_start_500
    invoke-virtual/range {v1 .. v19}, Landroid/app/ActivityManagerInternal;->broadcastIntentInPackage(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IIILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZIZ)I

    move-result v1

    .line 494
    .local v1, "sent":I
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received BROADCAST intent 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_520
    .catch Ljava/lang/RuntimeException; {:try_start_500 .. :try_end_520} :catch_55f
    .catchall {:try_start_500 .. :try_end_520} :catchall_556

    move-object/from16 v10, p0

    :try_start_522
    iget-object v4, v10, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    .line 496
    invoke-virtual {v4, v0}, Lcom/android/server/am/PendingIntentRecord$Key;->toSecureString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " sent="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " from uid "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_538
    .catch Ljava/lang/RuntimeException; {:try_start_522 .. :try_end_538} :catch_554
    .catchall {:try_start_522 .. :try_end_538} :catchall_552

    move/from16 v9, v40

    .end local v40    # "callingUid":I
    .local v9, "callingUid":I
    :try_start_53a
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 494
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_544
    .catch Ljava/lang/RuntimeException; {:try_start_53a .. :try_end_544} :catch_550
    .catchall {:try_start_53a .. :try_end_544} :catchall_54b

    .line 500
    if-nez v1, :cond_548

    .line 501
    const/16 v37, 0x0

    .line 505
    .end local v1    # "sent":I
    :cond_548
    move/from16 v11, v36

    goto :goto_578

    .line 539
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    :catchall_54b
    move-exception v0

    move-object/from16 v12, v20

    goto/16 :goto_5b3

    .line 503
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :catch_550
    move-exception v0

    goto :goto_56e

    .line 539
    .end local v9    # "callingUid":I
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local v40    # "callingUid":I
    :catchall_552
    move-exception v0

    goto :goto_559

    .line 503
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :catch_554
    move-exception v0

    goto :goto_562

    .line 539
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    :catchall_556
    move-exception v0

    move-object/from16 v10, p0

    :goto_559
    move/from16 v9, v40

    move-object/from16 v12, v20

    .end local v40    # "callingUid":I
    .restart local v9    # "callingUid":I
    goto/16 :goto_5b3

    .line 503
    .end local v9    # "callingUid":I
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    .restart local v40    # "callingUid":I
    :catch_55f
    move-exception v0

    move-object/from16 v10, p0

    :goto_562
    move/from16 v9, v40

    .end local v40    # "callingUid":I
    .restart local v9    # "callingUid":I
    goto :goto_56e

    .line 539
    .end local v9    # "callingUid":I
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local v14    # "callingUid":I
    :catchall_565
    move-exception v0

    move v9, v14

    move-object v10, v15

    move-object/from16 v12, v20

    .end local v14    # "callingUid":I
    .restart local v9    # "callingUid":I
    goto :goto_5b3

    .line 503
    .end local v9    # "callingUid":I
    .restart local v14    # "callingUid":I
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :catch_56b
    move-exception v0

    move v9, v14

    move-object v10, v15

    .line 504
    .end local v14    # "callingUid":I
    .restart local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v9    # "callingUid":I
    :goto_56e
    :try_start_56e
    const-string v1, "ActivityManager"

    const-string v2, "Unable to send startActivity intent"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_575
    .catchall {:try_start_56e .. :try_end_575} :catchall_5ab

    .line 506
    nop

    .line 531
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .end local v9    # "callingUid":I
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v11    # "callingUid":I
    :goto_576
    move/from16 v11, v36

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v36    # "res":I
    .restart local v9    # "callingUid":I
    .local v11, "res":I
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    :goto_578
    if-eqz v37, :cond_5a4

    const/16 v1, -0x60

    if-eq v11, v1, :cond_5a4

    .line 533
    :try_start_57e
    new-instance v2, Landroid/content/Intent;
    :try_end_580
    .catch Landroid/os/RemoteException; {:try_start_57e .. :try_end_580} :catch_5a0
    .catchall {:try_start_57e .. :try_end_580} :catchall_59a

    move-object/from16 v12, v20

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .local v12, "finalIntent":Landroid/content/Intent;
    :try_start_582
    invoke-direct {v2, v12}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v0, v10, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget v8, v0, Lcom/android/server/am/PendingIntentRecord$Key;->userId:I

    move-object/from16 v1, p5

    invoke-interface/range {v1 .. v8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V
    :try_end_593
    .catch Landroid/os/RemoteException; {:try_start_582 .. :try_end_593} :catch_598
    .catchall {:try_start_582 .. :try_end_593} :catchall_594

    .line 536
    goto :goto_5a6

    .line 539
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    :catchall_594
    move-exception v0

    move/from16 v36, v11

    goto :goto_5b3

    .line 535
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :catch_598
    move-exception v0

    goto :goto_5a6

    .line 539
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    :catchall_59a
    move-exception v0

    move-object/from16 v12, v20

    move/from16 v36, v11

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    goto :goto_5b3

    .line 535
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v37    # "sendFinish":Z
    .restart local v38    # "userId":I
    .restart local v39    # "allowTrampoline":Z
    :catch_5a0
    move-exception v0

    move-object/from16 v12, v20

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    goto :goto_5a6

    .line 531
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    :cond_5a4
    move-object/from16 v12, v20

    .line 539
    .end local v20    # "finalIntent":Landroid/content/Intent;
    .end local v37    # "sendFinish":Z
    .end local v38    # "userId":I
    .end local v39    # "allowTrampoline":Z
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :goto_5a6
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    nop

    .line 542
    return v11

    .line 539
    .end local v11    # "res":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v36    # "res":I
    :catchall_5ab
    move-exception v0

    move-object/from16 v12, v20

    .end local v20    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    goto :goto_5b3

    .end local v9    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .local v11, "callingUid":I
    :catchall_5af
    move-exception v0

    move-object v12, v10

    move v9, v11

    move-object v10, v15

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .end local v11    # "callingUid":I
    .restart local v9    # "callingUid":I
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    :goto_5b3
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 540
    throw v0

    .line 390
    .end local v9    # "callingUid":I
    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v33    # "callingPid":I
    .end local v34    # "origId":J
    .end local v36    # "res":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :catchall_5b7
    move-exception v0

    move-object v12, v10

    move-object v10, v15

    move-object v2, v12

    move-object/from16 v5, v29

    move-object/from16 v1, v30

    move-object/from16 v3, v31

    move-object/from16 v4, v32

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    goto :goto_5fb

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v31    # "allIntents":[Landroid/content/Intent;
    .end local v32    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v3    # "allIntents":[Landroid/content/Intent;
    .restart local v4    # "allResolvedTypes":[Ljava/lang/String;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :catchall_5c4
    move-exception v0

    move-object v12, v10

    move-object v10, v15

    move-object v2, v12

    move-object/from16 v5, v29

    move-object/from16 v1, v30

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    goto :goto_5fb

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v30    # "duration":Ljava/lang/Long;
    .local v1, "duration":Ljava/lang/Long;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :catchall_5cd
    move-exception v0

    move-object v12, v10

    move-object v10, v15

    move-object v2, v12

    move-object/from16 v5, v29

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    goto :goto_5fb

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v29    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v5    # "mergedOptions":Lcom/android/server/wm/SafeActivityOptions;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :catchall_5d4
    move-exception v0

    move-object v12, v10

    move-object v10, v15

    move-object v2, v12

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    goto :goto_5fb

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .end local v26    # "resolvedType":Ljava/lang/String;
    .end local v27    # "flagsMask":I
    .end local v28    # "flagsValues":I
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    .local p3, "resolvedType":Ljava/lang/String;
    .restart local p10    # "flagsMask":I
    .restart local p11    # "flagsValues":I
    :catchall_5d9
    move-exception v0

    move-object v12, v10

    move-object v10, v15

    move-object/from16 v26, p3

    move/from16 v28, p11

    move/from16 v27, v9

    move-object v2, v12

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    goto :goto_5fb

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .restart local v10    # "finalIntent":Landroid/content/Intent;
    :catchall_5e4
    move-exception v0

    move/from16 v9, p10

    move-object v12, v10

    move-object v10, v15

    move-object/from16 v26, p3

    move/from16 v28, p11

    move/from16 v27, v9

    move-object v2, v12

    .end local v10    # "finalIntent":Landroid/content/Intent;
    .restart local v12    # "finalIntent":Landroid/content/Intent;
    goto :goto_5fb

    .end local v12    # "finalIntent":Landroid/content/Intent;
    .local v2, "finalIntent":Landroid/content/Intent;
    :catchall_5f1
    move-exception v0

    move/from16 v9, p10

    move-object v10, v15

    move-object/from16 v26, p3

    move/from16 v28, p11

    move/from16 v27, v9

    .end local p3    # "resolvedType":Ljava/lang/String;
    .end local p10    # "flagsMask":I
    .end local p11    # "flagsValues":I
    .restart local v26    # "resolvedType":Ljava/lang/String;
    .restart local v27    # "flagsMask":I
    .restart local v28    # "flagsValues":I
    :goto_5fb
    :try_start_5fb
    monitor-exit v6
    :try_end_5fc
    .catchall {:try_start_5fb .. :try_end_5fc} :catchall_5fd

    throw v0

    :catchall_5fd
    move-exception v0

    goto :goto_5fb
.end method

.method public sendWithResult(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 22
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 296
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;Landroid/app/IApplicationThread;)I

    move-result v0

    return v0
.end method

.method setAllowBgActivityStarts(Landroid/os/IBinder;I)V
    .registers 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .line 246
    if-nez p1, :cond_3

    return-void

    .line 247
    :cond_3
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_c

    .line 248
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForActivitySender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_c
    and-int/lit8 v0, p2, 0x2

    if-eqz v0, :cond_15

    .line 251
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForBroadcastSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_15
    and-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_1e

    .line 254
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mAllowBgActivityStartsForServiceSender:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_1e
    return-void
.end method

.method setWhitelistDurationLocked(Landroid/os/IBinder;J)V
    .registers 7
    .param p1, "whitelistToken"    # Landroid/os/IBinder;
    .param p2, "duration"    # J

    .line 230
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_1c

    .line 231
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-nez v0, :cond_12

    .line 232
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 234
    :cond_12
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2d

    .line 235
    :cond_1c
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v0, :cond_2d

    .line 236
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-gtz v0, :cond_2d

    .line 238
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    .line 242
    :cond_2d
    :goto_2d
    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 617
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 618
    return-object v0

    .line 620
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 621
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "PendingIntentRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 624
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    if-eqz v2, :cond_3a

    .line 626
    const/16 v2, 0x2f

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    iget-object v2, v2, Lcom/android/server/am/PendingIntentRecord$Key;->featureId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    :cond_3a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 630
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->key:Lcom/android/server/am/PendingIntentRecord$Key;

    invoke-virtual {v1}, Lcom/android/server/am/PendingIntentRecord$Key;->typeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 631
    iget-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    if-eqz v1, :cond_8c

    .line 632
    const-string v1, " (whitelist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_50
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_87

    .line 634
    if-eqz v1, :cond_5f

    .line 635
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 637
    :cond_5f
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 638
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    iget-object v2, p0, Lcom/android/server/am/PendingIntentRecord;->whitelistDuration:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    .line 641
    .end local v1    # "i":I
    :cond_87
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 643
    :cond_8c
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 644
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/PendingIntentRecord;->stringName:Ljava/lang/String;

    return-object v1
.end method

.method public unregisterCancelListenerLocked(Lcom/android/internal/os/IResultReceiver;)V
    .registers 3
    .param p1, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 273
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_5

    .line 274
    return-void

    .line 276
    :cond_5
    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 277
    iget-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-gtz v0, :cond_13

    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/PendingIntentRecord;->mCancelCallbacks:Landroid/os/RemoteCallbackList;

    .line 280
    :cond_13
    return-void
.end method
